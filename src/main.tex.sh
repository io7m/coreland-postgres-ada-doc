#!/bin/sh

pkg=`head -n 1 m_pkg.txt`
cat <<EOF
\ss

\def\headcmd {
  {\tfd \pagenumber / \totalnumberofpages}
}

\setupheadertexts[${pkg} documentation][chapter]
% \setupheader[][before=\headcmd]
EOF
