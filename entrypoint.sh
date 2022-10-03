#!/bin/sh -l

echo "Hello Alonso, running this little shit..."
time=$(date)
echo "::set-output name=time::$time"
java -jar app.jar clean_final_output_winners.txt clean_final_output_star.txt
