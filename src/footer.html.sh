#!/bin/sh

pkg=`head -n 1 m_pkg.txt`
cat <<EOF
<div class="core_footer">
  <hr />
  <a href="/">coreland</a> / <a href="/doc">doc</a> - ${pkg} documentation
</div>
EOF
