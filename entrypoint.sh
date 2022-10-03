#!/bin/sh -l

echo "Hello Alonso, running this little shit..."
time=$(date)
echo "::set-output name=time::$time"
java -jar app.jar $1 $2
