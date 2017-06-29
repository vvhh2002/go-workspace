#!/usr/bin/env bash

SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do # resolve $SOURCE until the file is no longer a symlink
  DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
  SOURCE="$(readlink "$SOURCE")"
  [[ ${SOURCE} != /* ]] && SOURCE="$DIR/$SOURCE" # if $SOURCE was a relative symlink, we need to resolve it relative to the path where the symlink file was located
done
ROOTDIR="$( cd -P "$( dirname "${SOURCE}" )" && pwd )"

cd ${ROOTDIR}/../

echo ">>>>>>>>Work at : `pwd`"

rm -Rdf .git

mkdir -pv doc/man doc/install out/bin web 3rd/out/bin tools deploy vagrant/tools vagrant/box vagrant/vm
touch 3rd/out/.init deploy/.init doc/install/.init doc/man/.init out/bin/.init tools/.init vagrant/box/.init vagrant/tools/.init vagrant/vm/.init web/.init

git init
git add -A
git commit -a
