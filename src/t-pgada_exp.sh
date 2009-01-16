#!/bin/sh

cat <<EOF
(subsection
  (title "standard use cases")
  (para-verbatim example "
EOF

echo "# compile Ada source using the library"
echo "$ pgada-conf compile cflags incdir"
pgada-conf compile incdir cflags
echo
echo

echo "# link object files against the static library"
echo "$ pgada-conf compile ldflags slibdir"
pgada-conf compile slibdir ldflags
echo
echo

echo "# link object files against the dynamic library"
echo "$ pgada-conf compile ldflags dlibdir"
pgada-conf compile dlibdir ldflags
echo
echo

cat <<EOF
"))

(subsection
  (title "other use cases")
  (para-verbatim example "
EOF

echo "$ pgada-conf version"
pgada-conf version
echo
echo

echo "$ pgada-conf incdir"
pgada-conf incdir
echo
echo

echo "$ pgada-conf dlibdir"
pgada-conf dlibdir
echo
echo

echo "$ pgada-conf slibdir"
pgada-conf slibdir
echo
echo

echo "$ pgada-conf cflags"
pgada-conf cflags
echo
echo

echo "$ pgada-conf ldflags"
pgada-conf ldflags
echo
echo

echo "$ pgada-conf compile incdir"
pgada-conf compile incdir
echo
echo

echo "$ pgada-conf compile dlibdir"
pgada-conf compile dlibdir
echo
echo

echo "$ pgada-conf compile slibdir"
pgada-conf compile slibdir
echo
echo

cat <<EOF
"))
EOF

