#!/bin/bash

{
    while true
    do
        clear
        figlet -f slant "Welcome to Terraform" | lolcatjs
        sleep 1
    done
} &

PID=$!

{
    sleep 10
    kill $PID
} &

wait $PID