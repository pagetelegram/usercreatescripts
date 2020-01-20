#!/bin/bash
echo Please specify name to change password:
read name
sudo passwd $name
