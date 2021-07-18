#!/bin/sh

set -e

[ -z "${GITHUB_PAT}" ] && exit 0
[ "${TRAVIS_BRANCH}" != "main" ] && exit 0

git config --global user.email "torelli@galkin.org.ru"
git config --global user.name "Sergey Galkin"
git clone -b gh-pages https://${GITHUB_PAT}@github.com/${TRAVIS_REPO_SLUG}.git book-output
cd book-output
echo 4
cp -r ../_book/* ./
echo 5
git add --all *
git commit -m"Update the book" || true
echo 6
git push -q origin gh-pages
echo 7
