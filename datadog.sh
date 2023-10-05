docker pull datadog/agent:latest

docker run --name datadog \
-e DD_API_KEY= "api key" \
-e DD_SITE="datadoghq.eu" \
-e DD_APM_ENABLED=true \
-e DD_APM_NON_LOCAL_TRAFFIC=true \
-e DD_SYSTEM_PROBE_ENABLED=true \
-e DD_APM_RECEIVER_SOCKET=/opt/datadog/apm/inject/run/apm.socket \
-e DD_DOGSTATSD_SOCKET=/opt/datadog/apm/inject/run/dsd.socket \
-mount /opt/datadog/apm:/opt/datadog/apm \
-v /var/run/docker.sock:/var/run/docker.sock:ro \
-v /proc/:/host/proc/:ro \
-v /sys/fs/cgroup/:/host/sys/fs/cgroup:ro \
-v /var/lib/docker/containers:/var/lib/docker/containers:ro \
-p 6000:8125/udp \
gcr.io/datadoghq/agent:7


