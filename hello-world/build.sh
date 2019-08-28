#!/bin/bash

export GRAALVM_HOME=/home/thawes/programs/share/graalvm-ce-19.1.1
export PATH=$GRAALVM_HOME/bin:$PATH

native-image --report-unsupported-elements-at-runtime \
             --initialize-at-build-time \
             -jar ./target/hello-world-0.1.0-SNAPSHOT-standalone.jar \
             -H:Name=./target/hello-world
