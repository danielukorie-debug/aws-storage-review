# Storage Troubleshooting Runbook

## Linux Storage Diagnostics

| Command | Purpose |
|---|---|
| lsblk | Identify block devices |
| blkid | Identify file system types |
| findmnt | Inspect mounted file systems |
| df -h | Inspect storage capacity |
| df -i | Inspect inode utilization |
| du -sh | Inspect directory utilization |
| losetup -j IMAGE | Identify associated loop devices |
| sha256sum -c | Verify file integrity |

## Protected EXT4 Recovery Directory

The lost+found directory is normally protected.

An unprivileged du command may fail with Permission denied.

Use authorized administrative privileges for inspection.
Do not delete the directory or weaken its permissions.

## File Permission Failure

1. Identify the affected file.
2. Inspect ownership and permissions.
3. Determine the minimum required access.
4. Apply the appropriate permission change.
5. Verify application access.

Owner-only read and write permissions use chmod 600.

Avoid chmod 777 as a general troubleshooting solution.

## S3 Access Denied

1. Verify AWS identity and credentials.
2. Review IAM policies.
3. Review bucket policies.
4. Review public access block settings.
5. Review KMS permissions when applicable.
6. Review applicable organization and endpoint policies.

Do not make private storage public to resolve access errors.

## EBS Troubleshooting

1. Verify volume state and Availability Zone.
2. Verify instance attachment.
3. Inspect the operating system block device.
4. Identify the existing file system.
5. Verify mount configuration and permissions.

Never format a disk without confirming its identity,
contents, ownership, and authorization.

## EFS Connectivity

1. Verify file system and mount target availability.
2. Check DNS resolution.
3. Check routing and network ACLs.
4. Review security group access to TCP 2049.
5. Verify NFS client configuration.
6. Review POSIX and applicable IAM permissions.

The local TCP simulation is not an actual AWS EFS mount.

## Safe Loop Device Cleanup

1. Verify the correct mount point and device.
2. Flush pending writes.
3. Unmount the file system.
4. Detach the associated loop device when necessary.
5. Allow time for asynchronous cleanup.
6. Verify that the mount and association are removed.

Do not force unmount or detach unrelated devices.

## Verified Project Outcome

The final corrective exercise successfully validated
permissions, storage monitoring, application data integrity,
file system unmounting, and loop device detachment.
