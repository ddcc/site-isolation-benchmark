#!/bin/bash

for m in "Memory\.Total\.PrivateMemoryFootprint" "Memory\.Total\.SharedMemoryFootprint" "PageLoad\.PaintTiming\.NavigationToFirstContentfulPaint "; do
  for f in histograms-web*.txt histograms-www.twitch*.txt histograms-www.wowprogress*.txt histograms-www.espn*.txt histograms-www.eurosport*.txt histograms-www.amazon*.txt histograms-www.legacy*.txt histograms-www.reddit*.txt histograms-www.economist*.txt histograms-www.yelp*.txt histograms-seatguru*.txt histograms-google*.txt; do
    grep -H --color=always "$m" $f
  done
done
