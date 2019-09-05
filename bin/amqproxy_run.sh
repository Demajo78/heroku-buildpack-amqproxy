#!/usr/bin/env bash
until amqproxy -l 127.0.0.1 -p 5673 $CLOUDAMQP_URL; do
    echo "AQMPROXY crashed with exit code $?.  Respawning.." >&2
    sleep 1
done