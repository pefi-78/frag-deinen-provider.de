#!/bin/bash
# 
# Script zo save the wikipads

BASE_URL=https://yourpart.eu/p/frag-deinen-provider
PADS=("frag-deinen-provider" "frag-deinen-provider-mail-anfrage" "frag-deinen-provider-kampagne" "frag-deinen-provider-anfrage-text" "frag-deinen-provider-kontaktdaten" "frag-deinen-provider-datenschutzerlaerung")


if [ -z "$(git status --porcelain $PWD)" ]; then 
  echo "Working directory clean"
else 
  echo "Uncommitted changes in $PWD"
  git status $PWD
  exit 1
fi


for p in "${PADS[@]}"
do	
	cmd="wget ${BASE_URL}/${p}/export/markdown -O ${p}.md"
        #echo $cmd
	$cmd
    echo        git add "${PWD}/*"
    echo    git commit -m "Update pads"
done

exit 0
