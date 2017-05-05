#!/bin/bash

VALUE=$(cat)

echo "$VALUE" | \
  sed 's/feat:/🔥  feat:/ ' | \
  sed 's/fix:/🐞  fix:/' | \
  sed 's/refactor:/♻️  refactor:/' | \
  sed 's/refact:/♻️  refact:/' | \
  sed 's/chore:/🔧  chore:/' | \
  sed 's/docs:/📝  docs:/' | \
  sed 's/style:/👔  style:/' | \
  sed 's/test:/🍏  test:/' | \
  sed 's/Merge/🌱  Merge/' | \
  sed 's/merge:/🌱  merge:/' | \
  sed 's/wip:/🚫  wip:/'
