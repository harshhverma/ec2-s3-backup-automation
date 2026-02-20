#!/bin/bash

DATE=$(date +%Y-%m-%d-%H-%M-%S)
BACKUP_FILE="backup-$DATE.tar.gz"

tar -czf $BACKUP_FILE /home/ec2-user

aws s3 cp $BACKUP_FILE s3://harsh-cloud-backup-bucket-2026/

echo "Backup completed at $DATE"