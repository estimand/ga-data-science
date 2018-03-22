#!/bin/sh

# Initialise a Git repository in the current directory
git init

# Check current status
git status

# Create a new file
cat > "quotes.txt" << EOF
I'm an egotistical bastard, and I name all my projects after myself.
First Linux, now git.
 -- Linus Torvalds
EOF

# Check status again
git status

# Tell Git to start tracking changes to 'quotes.txt' (add to staging area)
git add quotes.txt

# Check status again
git status

# Store staged changes (commit)
git commit -m "Added Linus Torvalds quote"

# Create another file
cat > "lyrics.txt" << EOF
There is no dark side of the moon really.
Matter of fact it's all drk.
 -- Pink Floyd, Eclipse
EOF

# And another!
cat > "proverbs.txt" << EOF
A stitch in time saves nine.
EOF

# Check status again
git status

# Add both new files and commit
git add "*.txt"
git commit -m "Added Eclipse lyrics and a proverb"

# Check the log
git log

# Create 'repo1' on GitHub

# Add a remote called 'origin'
git remote add origin https://github.com/your_username/repo1.git

# Push branch 'master' to 'origin' (`-u` remembers this for the next time)
git push -u origin master

# Check and pull changes from 'origin'
# ('pull' is equivalent to 'fetch' followed by 'merge')
git pull origin

# Create a new branch
git branch testing

# Check which branch we are on
git branch

# Switch to branch 'testing'
git checkout testing

# Remove 'proverbs.txt'
git rm proverbs.txt

# Check status
git status

# Commit
git commit -m "Removed proverbs"

# Switch back to branch 'master'
git checkout master

# Merge 'testing' into 'master'
# (No conflicts in this case)
git merge testing

# Remove 'testing' branch
git branch -d testing

# Check log
git log

# Push to remote repository
git push

# Open issue on GitHub.com

# Fix typo in 'lyrics.txt'
sed -i "s/drk/dark/" lyrics.txt

# Add, commit, and push
git add lyrics.txt
git commit -m "Fixed typo in Eclipse lyrics (closes #1)"
git push
