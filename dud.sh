#!/usr/bin/env bash

function greet {
  echo "Hello!"
}

TIMEFORMAT="Task completed in %3lR"
time ${@:-default}
