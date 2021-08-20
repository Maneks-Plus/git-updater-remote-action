response_code=$(curl --max-time 6 --write-out %{http_code} --silent --output /dev/null "$1")
if [[ "$response_code" -ne 200 ]] ; then
    # Something went wrong, echo non-zero number to indicate failure
    echo 1
else
    # Git Updater sucessfully ran on Wordpress, echo 0 to indicate success
    echo 0
fi