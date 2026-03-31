#!/bin/bash
# Author: divyanshushekhar05-lab (24MEI10089)
# ------------------------------------------------------------
# Script: 05-manifesto.sh
# Purpose: Interactively collect user input and generate a personalized
#          Open Source manifesto, appending it to a text file named after
#          the current user.
# ------------------------------------------------------------

# Prompt 1: Favorite Python feature
read -p "1) What is your favorite Python feature (e.g., list comprehensions, async/await)? " feature

# Prompt 2: How do you contribute to the Python community?
read -p "2) How do you contribute to the Python community (e.g., code, docs, mentorship)? " contribution

# Prompt 3: Your vision for the future of Open Source Python
read -p "3) In one sentence, describe your vision for the future of Open Source Python: " vision

# Construct the manifesto paragraph using the collected answers
manifesto="As a passionate Python developer, I love $feature. I contribute to the community by $contribution. My vision: $vision"

# Define the output file name based on the current user
output_file="${USER}_manifesto.txt"

# Append the manifesto to the file, creating it if it does not exist
echo "$manifesto" >> "$output_file"

# Inform the user of the successful operation
echo "Your manifesto has been saved to $output_file"
