#!/bin/sh

echo $CLIENT_ID
echo $CLIENT_SECRET

##First, grab the environment variable of choice...
replace_client_id=$CLIENT_ID
replace_client_seceret=$CLIENT_SECRET

##...then, create another variable for the source text...
find_client_id="CLIENT_ID"
find_client_secret="CLIENT_SECRET"

##NOTE: using gsed on Mac because the native sed does NOT ignore case...
##You can install gsed with 'brew install gnu-sed'
#gsed -i "s/$find/$replace/g" process.env
sed -i "s/$find_client_id/$replace_client_id/g" src/secrets.js
sed -i "s/$find_client_secret/$replace_client_seceret/g" src/secrets.js

npm start

