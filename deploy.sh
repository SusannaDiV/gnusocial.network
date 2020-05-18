#!/bin/bash
hugo
mv public/docs/try/index.{html,php}
lang="pt es gl it"
for i in $lang
do
        mv public/$i/docs/try/index.{html,php}
done
