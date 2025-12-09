#!/usr/bin/env python3

import mysql.connector
import csv
import re

# Configure MySQL connection
db_config = {
    'host': 'localhost',
    'user': 'root',
    'password': 'password',  # Replace with your MySQL root password
    'database': 'Music'
}

# Connect to the MySQL database
conn = mysql.connector.connect(**db_config)
cursor = conn.cursor()

# Prepare SQL insert statement
insert_query = "INSERT INTO songs (title, artist) VALUES (%s, %s)"

# Open the CSV file
with open('/usr/local/hadoop/output.csv', 'r', encoding='ISO-8859-1') as csvfile:
    reader = csv.reader(csvfile)
    next(reader)  # Skip the header
    record_count = 0
    for row in reader:
        if len(row) == 2:
            # Use regex to replace any sequence of whitespace characters with a single space
            title = re.sub(r'\s+', ' ', row[0]).strip()
            artist = re.sub(r'\s+', ' ', row[1]).strip()
            cursor.execute(insert_query, (title, artist))

            record_count += 1
            if record_count >= 500:  # Stops after inserting 200 records
                break

# Commit the transaction
conn.commit()

# Close the database connection
cursor.close()
conn.close()

print(f"Successfully inserted {record_count} records into the MySQL database.")

