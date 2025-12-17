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


[11.1.8] - 2025-11-30

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

[11.1.9] 

### Added
Added ##test to reamme file

[11.1.10] 
### Changed
minor change to CI chain

[11.1.12]
### Changed
Change to ci workflow

[11.1.13]
### Changed
Moved playbook.yml into cd.yml

[11.1.14-15]
### Changed
Changed and updater the website footer
Added another hostname in ansible hosts

[11.1.16-19]
### Added
Added the hostname variable in the render template

[11.1.20]
### Fixed
small changes to cd.yml

[11.1.21]
### Added
Added ansible users and importing vault file.

[11.1.22]
### Fixed
Small fix to boot.sh script

[11.1.23]
### Fixed
added /health to the url in the ansible "health check wait" task

[11.2.0] (kmom03)

### Added
Added the bandit tool to the environment
Added a run bandit makefile command
Added a run trivy makefile command
Added ssh_config
New ansible 10-first-minutes task ot use new sshd_config
Added the Dockle tool
New make command to run dockle
Created a automated healthcheck for dockerfile_prod
New workflow pre_cd.yml that will run Dockle, trivy and Bandit

### Changed

### Removed

### Deprecated

### Fixed
Bumped flask-login 0.5.0 -> 0.6.3 to work with new dependencies
bumped falsk-wtf 0.15.1 -> 1.2.1 to work with new dependecies

### Security
Bumped werkzeug package to 3.0.3 from 2.0.1
Bumbped flask package to 2.3.3 from 2.0.1
Prod dockerfile now updates setuptools to 78.1.1
Bumped dockerfile:prod base imagefrom 3.8 to 3.12

[11.2.1-0]
### Fixed
dockle makefile command fixed

[11.2.2]
### Fixed
Minor fix to pre_cd.yml

[11.2.4]
### Changed
Remove dockerfile_prod syntax line
Dockerifle_prod: Added new run command "apk add --no-cache curl"

[11.2.5]
### Added
adde the cryptography package in requirements/prod.txt

[11.2.6-7]
### Added
Added the gather instances task in ansible/provision_instances.yml
added database port_rules in ansible/roles/security_groups/vars/main.yml

### removed
removed the create secuirty groups taks in ansible/provision_instances.yml

[11.2.8-12]
Just several tries to get trough workflows and deploy recourses

[11.2.13]
### Removed
Removed the CI workflow to be ran in .github/workflows/cd.yml

[11.2.14-15]
### Added
Added docker content trust in .github/workflows/cd.yml

### Changed
minor change in run command in docker/Dockerfile_test

[11.3.0]
### Added 
ansible/monitoring.yml firsr version of new monitoring instace in ansible
Port_rules for monitoring ansible/roles/security_groups/vars/main.yml
Added prometheus.yml
Added prometheus container in docker-compose.yml
Added alertmanager.yml first verison
Added grafarna container to docker-compose.yml
added alertmanage container to docker-compose.yml
Added node-exported contianer to docker-compose.yml
New route /slow in app/main/routes.py
Added gunicorn_config.py
new job named flask in prometheus.yml
Added rules.yml rules and alerts for alermanager

### changes
Changes boot.sh  - -c gunicorn_config.p is executed

[11.3.1]
### changes
changes to trivy and dockle makefile job

[11.3.2]
### changes
added comments in Makefil

[11.3.3]
### changes
Small change to Makefile

[11.3.4]
### fixed
fixed gitgobbling in makefile