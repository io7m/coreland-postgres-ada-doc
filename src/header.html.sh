#!/bin/sh

pkg=`head -n 1 m_pkg.txt`
cat <<EOF
<div class="core_header">
  <a href="/">coreland</a> / <a href="/doc">doc</a> - ${pkg} documentation
  <hr />
</div>
EOF
