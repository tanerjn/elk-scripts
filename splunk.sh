docker pull splunk/splunk:latest

docker run -d -p 8000:8000 -e "SPLUNK_START_ARGS=--accept-license" -e "SPLUNK_PASSWORD=splunk" -name splunk splunk/:latest
