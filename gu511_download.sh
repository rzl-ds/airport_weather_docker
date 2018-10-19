#!/usr/bin/bash
mkdir -p /data/weather

curl --silent -o /data/weather/dca.weather.json https://soa.smext.faa.gov/asws/api/airport/status/DCA

STATUS_CODE=$?
echo "$(date +'%Y-%m-%d %H:%M:%S')    $MYVAR    gu511_download.sh    $STATUS_CODE"

cat /data/weather/dca.weather.json
echo

exit $?
