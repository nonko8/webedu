#!/bin/bash
read -p "日本で二番目に高い山は槍ヶ岳である。[y/n]" yn
if [ $yn = "n" ]; then
    echo ぴんぽーん！正解です！日本で二番目に高い山は北岳です。
else
    echo ぶー！不正解です。日本で二番目に高い山は北岳です。
fi
