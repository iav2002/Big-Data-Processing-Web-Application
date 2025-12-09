#!/usr/bin/env python3
import sys
import csv
import re

# Regular expression to match only words containing letters (ignores non-letter characters)
pattern = re.compile("^[A-Za-z\s]+$")

# Reads input line by line
reader = csv.reader(sys.stdin)
next(reader)  # Skip the header

for row in reader:
    title = row[0]  # The 1st column is title
    artist = row[3]  # The 4th column is artist

    # Apply the pattern to both artist and title
    if pattern.match(title) and pattern.match(artist):
        print(f'{title},{artist}')
