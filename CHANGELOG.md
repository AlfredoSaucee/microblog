# Changelog

All changes will be documented in this changelog.

Types of changes:
- Added: For new features.
- Changed: for changes in existing functionality.
- Deprecated: for soon-to-be removed features.
- Removed: for now removed features.
- Fixed: for any bug fixes.
- Security: in case of vulnerabilities.


[11.0.6] - 2025-11-18

### Added
- GitHub badge added to README.md
- Follow post functionality, users can follow each other and see others posts
- Docker compose and a service for prod
- Docker containers for the app, db and tests
- Runtime script boot.sh for container deployment
- Two new workflows: one for automatic testing on pushes and PRs, one for automatic image pushing to DockerHub


### Changed
- Fixed inaccuracy in commit-conventions.txt description

### Removed

### Deprecated

### Fixed
- Makefile to handle errors gracefully
- Pytest permissions error

### Security


[11.1.7] - 2025-11-30

### Added
- Version route at /version to display application version from environment variable
- Ansible site.yml playbook for complete continous deployement chain
- commit-conventions.txt in root for commit clarity
- New workflow playbook.yml that runs the complete CI CD on github actions
- Setup ansible to deploy a nginx loadbalancer, microbloblog vm instances and a mysql database.
- Implemented a rolling deployment cd strategy 
- New /health health check route
- New integration test for /version
### Changed

### Removed

### Deprecated

### Fixed
- Make file problem with installing requierments (make install dev) fixed.

### Security
- added vault.yml for secure password management in the ansible workflow.