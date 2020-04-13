#!/bin/bash

sourcedir=/home/revo/revo/xml

get_ver () {
    file="${sourcedir}/$1"
    idline=$(grep "[$]Id" ${file})
    id1=${idline#*\"$}
    id=${id1%$\"*}
    echo "$id"
}

# trovu dosierojn kun \$Id\$
files=$(grep -l "[$]Id[$]" $@)

for file in ${files}; do
  name=${file#*/}
  #echo $name
  ver=$(get_ver "$name")
  echo "$ver"

  #sed "s/\$Id\$/\$${ver}\$$/" ${file}
  #sed 's|$Id$|$'${ver}'$|g' ${file}
  perl -p -i -e  "s|\044Id\044|\044$ver\044|" ${file}

  git add ${file}
done

