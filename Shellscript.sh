#! /bin/env bash

#submit our job
jobid=$(zowe  zos-jobs submit data-set "PFP.QA.DEVOPS.CNTL(#APF)" --rff jobid --rft string)


echo "Submitted our job, JOB ID is $jobid"


#wait for job to go to output
status="UNKNOWN"
while [ "$status" != "OUTPUT" ]; do    
 echo "Checking status of job $jobid" 
 status=$(zowe zos-jobs view job-status-by-jobid "$jobid" --rff status --rft string)
 echo "Current status is $status"
 sleep 10s
done


echo "Job completed in OUTPUT status. Final result of job: "
zowe zos-jobs view job-status-by-jobid "$jobid"


# get a list of all of the spool files for our job now that it's in output
spool_ids=$(zowe zos-jobs list spool-files-by-jobid "$jobid" --rff id --rft table)

# save each spool ID to a custom file name
#while read -r id; do
#    zowe zos-jobs view spool-file-by-id "$jobid" "$id" > ./${jobid}_spool_${id}.txt
#    echo "Saved spool DD to ./${jobid}_spool_${id}.txt"
#done <<< "$spool_ids"


