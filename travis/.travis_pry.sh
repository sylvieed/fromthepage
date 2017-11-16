#hook to prevent binding.pry getting into production code
echo "Testing for binding.pry"

if [ "$TRAVIS_PULL_REQUEST" == "true" ]; then
  TEST_BRANCH=$TRAVIS_PULL_REQUEST_BRANCH
else
  TEST_BRANCH=$TRAVIS_BRANCH
fi

echo "Testing $TEST_BRANCH"

DIFF_SEARCH=$(git diff --name-only $TRAVIS_COMMIT_RANGE)

echo $DIFF_SEARCH

PATTERN='binding\.pry'

grep -v '\#' $DIFF_SEARCH | grep -i $PATTERN


if [ "$(grep -v '\#' $DIFF_SEARCH | grep -i $PATTERN)" ]; then
  echo "Exit build; found binding.pry in this commit."
  exit 1
fi
