#!/bin/bash
#fine is the command to check logs or files which are modified, accessed, and changed(atime,ctime7mtime)
find /var/log -type f -mtime +7 -exec tar -rvf old_logs.tar {} \: -exec rm {} \;
