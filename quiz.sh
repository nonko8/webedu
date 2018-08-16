#!/bin/bash
read -p "Question!日本で二番目に高い山は槍ヶ岳である。[y/n]" yn
if [ $yn = "n" ]; then
    echo ピンポーン！正解です！日本で二番目に高い山は北岳です。
else
    echo ブッブー！不正解です。日本で二番目に高い山は北岳です。
fi
