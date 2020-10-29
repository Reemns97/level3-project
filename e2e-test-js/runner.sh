#!/bin/sh

code=0
testfile=$1
files=$testfile

#if [ -z $testfile ]
#then
 # files=$(ls /e2e-test-js/homepage_test.js
#	ls /e2e-test-js/login_test.js 
#	ls /e2e-test-js/catalogue_test.js
#	ls /e2e-test-js/cart_test.js
#	ls /e2e-test-js/checkout_test.js)
#fi



if [ -z $testfile ]
then
  files=$(ls /e2e-test-js/*_test.js)
fi



for test in $files
do
  #node /e2e-test-js/test_helper.js
  casperjs test $test
  ret=$?
  if [ ! $ret == "0" ]; then code=1; fi
done

exit $code
