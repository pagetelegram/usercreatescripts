#!/bin/bash
echo Delete what user:
read name
sudo deluser --remove-home $name
