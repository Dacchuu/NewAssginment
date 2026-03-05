#!/bin/bash
# run_demo.sh - Demo script for Jenkins with archived logs
# Code for 2.0 Version
LOG_DIR="logs"
mkdir -p "$LOG_DIR"

LOG_FILE="$LOG_DIR/demo_$(date +'%Y%m%d_%H%M%S').log"
echo "Starting demo script at $(date)" | tee -a "$LOG_FILE"

# Example: check if git is installed
if ! command -v git &> /dev/null; then
    echo "Git is not installed. Installing..." | tee -a "$LOG_FILE"
    sudo apt-get update && sudo apt-get install -y git | tee -a "$LOG_FILE"
fi

# Example: check if curl is installed
if ! command -v curl &> /dev/null; then
    echo "Curl is not installed. Installing..." | tee -a "$LOG_FILE"
    sudo apt-get update && sudo apt-get install -y curl | tee -a "$LOG_FILE"
fi

# Actual script commands
echo "Hello from Jenkins!" | tee -a "$LOG_FILE"
echo "Listing current directory:" | tee -a "$LOG_FILE"
ls -lah | tee -a "$LOG_FILE"

echo "Demo script finished at $(date)" | tee -a "$LOG_FILE"
