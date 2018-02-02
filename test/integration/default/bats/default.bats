#!/usr/bin/env bats
 
@test "Validate status code for statsd exporter" {
  run curl -s -o /dev/null -w "%{http_code}" localhost:9102/metrics
  [[ $output = "200" ]]
}