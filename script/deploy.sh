git config user.name "Travis CI"
git config user.email "rrdelaney@outlook.com"
git remote add deploy https://${GITHUB_TOKEN}@github.com/rrdelaney/rrdelaney.github.io.git
git checkout --orphan masterStaging
git reset -- .
git add -f index.html
git add CNAME
git commit -m "Travis CI Build"
git push --force --quiet -u deploy masterStaging:master
