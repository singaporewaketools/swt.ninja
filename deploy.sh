#!/bin/bash

echo -e "\033[0;32mDeploying updates to s3...\033[0m"

# Build the project.
hugo # if using a theme, replace with `hugo -t <YOURTHEME>`

# Go To Public folder
cd public
# sync to s3 bucket
aws s3 sync . s3://swt-prod-root


# Come Back up to the Project Root
cd ..