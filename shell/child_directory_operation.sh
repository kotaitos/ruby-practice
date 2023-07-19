#!/bin/bash

touch child-directory-a/test.txt

cd child-directory-a/

mv test.txt ../child-directory-b/

cd ../child-directory-b/

mv test.txt ../
