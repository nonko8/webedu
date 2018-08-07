#!/bin/bash
dirname="/home/nonko8/workspaces/webedu/niconico-ranking-rss"
mkdir -p $dirname
filename="${dirname}/hourly-ranking-`date +'%Y%m%d%H%M'`.xml"
echo "Save to $filename"
curl -s -o $filename -H "User-Agent: CrawlBot; git@nonko8.com" http://www.nicovideo.jp/ranking/fav/hourly/all?rss=2.0&lang=ja-jp
