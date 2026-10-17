#!/bin/bash

echo "=============================="
echo "Student Information"
echo "=============================="
echo "Name: Bakdaulet"
echo "Surname: Askar"
echo "Group: IT2-2306"
echo "Student ID: 38030"

echo
echo "=============================="
echo "System Information"
echo "=============================="

echo "Username: $(whoami)"
echo "Hostname: $(hostname)"
echo "Current Date: $(date)"
echo "Operating System: $(uname -s)"
echo "Disk Usage:"
df -h /
echo "Memory Usage:"
free -h

echo
if [ -f "$HOME/devops/askar_bakdaulet/Askar_Bakdaulet_info.txt" ]; then
    echo "Student information file exists."
else
    echo "Student information file does not exist."
fi
