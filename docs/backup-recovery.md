# Backup and Recovery Runbook

## Objective

Demonstrate local application data backup, restoration,
and integrity verification.

## Recovery Workflow

1. Identify application data.
2. Generate an original SHA-256 checksum.
3. Create a compressed backup archive.
4. Verify archive contents.
5. Restore the application file.
6. Compare restored data against the original checksum.
7. Document the recovery results.

## AWS Recovery Equivalents

| Service | Recovery Mechanism |
|---|---|
| S3 | Versioning and backup policies |
| EBS | Snapshots and volume restoration |
| EFS | AWS Backup |
| Glacier | Archive retrieval |

## Recovery Objectives

RPO: Maximum acceptable data loss measured in time.

RTO: Maximum acceptable time to restore service.

## Verified Results

- Compressed backup creation: PASSED
- Application file restoration: PASSED
- SHA-256 integrity verification: PASSED
- Data persistence after remounting: PASSED

A backup should not be considered reliable merely because
it exists. Restoration must be tested.

The local backup does not establish off-site resilience
or production disaster recovery readiness.
