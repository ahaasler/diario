#!/bin/sh

day() {
    mkdir -p $(date +"manuscript/%Y/%m") && echo $(date +"## %d") > $(date +"manuscript/%Y/%m/%d.md")
    echo $(date +"%Y/%m/%d.md") >> manuscript/Book.txt
    if [[ -n $EDITOR ]]; then $EDITOR $(date +"manuscript/%Y/%m/%d.md") ; else echo 'No default editor to open day'; fi
}

month() {
    mkdir -p $(date +"manuscript/%Y/%m") && echo $(LC_ALL='es_ES.UTF-8' date +"# %Y, %B") > $(date +"manuscript/%Y/%m/index.md")
    echo $(date +"%Y/%m/index.md") >> manuscript/Book.txt
}
