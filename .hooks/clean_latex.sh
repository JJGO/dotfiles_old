#!/bin/bash
K=0
((K+=$(find . -type f -name '*.aux' -exec trash -v {} \; | wc -l)))
((K+=$(find . -type f -name '*.fdb_latexmk' -exec trash -v {} \; | wc -l)))
((K+=$(find . -type f -name '*.fls' -exec trash -v {} \; | wc -l)))
((K+=$(find . -type f -name '*.log' -exec trash -v {} \; | wc -l)))
((K+=$(find . -type f -name '*.out' -exec trash -v {} \; | wc -l)))
((K+=$(find . -type f -name '*.synctex.gz' -exec trash -v {} \; | wc -l)))
terminal-notifier -title "$K LaTeX aux files deleted" -message ""
exit 0;