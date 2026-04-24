# Salesforce Metadata + CI/CD Setup

This repository is scaffolded with Salesforce DX metadata structure and GitHub Actions workflows for:

1. **Pull Request Validation** on every PR into `main`.
2. **Post-merge Deployment** on every push to `main`.

## Folder structure

- `force-app/main/default/` contains Salesforce metadata.
- `.github/workflows/pr-validation.yml` validates metadata for PRs.
- `.github/workflows/deploy-on-merge.yml` deploys metadata after merge.

## Required GitHub Secret

Add this repository secret before running workflows:

- `SF_AUTH_URL`: SFDX auth URL for the target Salesforce org.

## Notes

- Validation uses `sf project deploy validate`.
- Deployment uses `sf project deploy start`.
- Both run local tests (`RunLocalTests`).
