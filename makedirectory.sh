#!/bin/bash
echo insert directory:
read dir
echo directory name?
read name
if [ -d $dir ]; then
tar --totals -cf $name.tar $dir
sleep 1
echo success
else echo directory does not exist
fi 
