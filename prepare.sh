#!/bin/bash
#source prepare.sh パターン名でファイルとディレクトリを自動生成する
mkdir $1
#実装する言語
language=("c++" "TypeScript" "Go")
for i in "${language[@]}"
do
    mkdir $1/${i}
done
# パターンの概要をまとめるREADME
touch $1/README.md
echo "# $1" >$1/README.md
echo "## 概要" >>$1/README.md
echo "## 実装の詳細" >>$1/README.md
echo "## 実装するメリットとデメリット" >>$1/README.md
echo "## メリット" >>$1/README.md
echo "## デメリット" >>$1/README.md
echo "## 実装したコードへのリンク" >>$1/README.md
for i in "${language[@]}"
do
    echo "* [${i}](https://github.com/sakana7392/Design_Patterns/$1/${i})" >>$1/README.md
done