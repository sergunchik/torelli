#!/bin/sh

set -e

[ -z "${GITHUB_PAT}" ] && exit 0
echo 2
[ "${TRAVIS_BRANCH}" != "main" ] && exit 0
echo 3

git config --global user.email "torelli@galkin.org.ru"
git config --global user.name "Sergey Galkin"
echo 4
git clone -b gh-pages https://${GITHUB_PAT}@github.com/${TRAVIS_REPO_SLUG}.git book-output
cd book-output
cp -r ../_book/* ./
git add --all *
git commit -m"Update the book" || true
git push -q origin gh-pages
echo 5
