#!/usr/bin/env python3
import sys

# Use a set to track seen song titles
seen_titles = set()

# Output the CSV header
print('Title,Artist')

for line in sys.stdin:
    # Strip and split the line by commas
    split_line = line.strip().split(',', 1)
    
    if len(split_line) == 2:
        title, artist = split_line
        if title not in seen_titles:
            seen_titles.add(title)
            # Output title first, then artist
            print(f'{title},{artist}')
    else:
        # Log the error and the problematic line
        print(f"Error processing line: {line.strip()}. Reason: Expected 2 values, got {len(split_line)}", file=sys.stderr)

