
#!/bin/bash

# Backup Script

SOURCE_DIR="$HOME/devops-learning"
BACKUP_DIR="$HOME/backup"

# Create backup directory if not exists
mkdir -p "$BACKUP_DIR"

# Create backup
tar -czf "$BACKUP_DIR/backup_$(date +%Y%m%d_%H%M%S).tar.gz" "$SOURCE_DIR"

# Display result
if [ $? -eq 0 ]; then
    echo "Backup completed successfully!"
else
    echo "Backup failed!"
fi
