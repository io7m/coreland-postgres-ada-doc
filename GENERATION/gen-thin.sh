#!/bin/sh

if [ $# -ne 1 ]
then
  exit 112
fi

file="$1"
funcs=`egrep '^  (function|procedure)' ${file} | awk '{print $2}'`

for func in ${funcs}
do
  long_func=`echo $func | sed 's/^/PGAda.thin./g'`
  output=`echo $long_func | tr [:upper:] [:lower:] | tr . _`

  (cat <<EOF
(section
  (ref "${output}")
  (title "${long_func}")
  (para funtion_desc "XXX: TODO.")
  (subsection
    (title "synopsis")
    (para-verbatim function_synopsis
"with PGAda.thin;

function ${func}
  (DB            : in PGAda.database.Connection_Type'Class;
   Sequence_Name : in String) return Integer;
"))
  (subsection
    (title "description")
    (para
      "The " (item function "${func}") " function.")))
EOF
) > "a-${output}.ud"
done
