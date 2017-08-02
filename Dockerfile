FROM jenkins/jenkins:lts
MAINTAINER Stephen Sullivan <sjsullivan7@gmail.com>

USER root
RUN apt-get update && apt-get install -qqy \
 apt-utils \
 ca-certificates \
 groovy2 \
 dos2unix \
 lxc

# SCM Plugins
RUN CURL_CONNECTION_TIMEOUT=30 /usr/local/bin/install-plugins.sh git-server:latest git:latest git-changelog:latest git-client:latest \
	bitbucket:latest stashNotifier:latest branch-api:latest

# Build Related Plugins
RUN CURL_CONNECTION_TIMEOUT=30 /usr/local/bin/install-plugins.sh python:latest gradle:latest selenium:latest \
	jacoco:latest junit:latest repository-connector:latest findbugs:latest \
	nodejs:latest javadoc:latest

# Docker Plugins
RUN CURL_CONNECTION_TIMEOUT=30 /usr/local/bin/install-plugins.sh docker-build-step:latest docker-commons:latest docker-custom-build-environment:latest docker-traceability:latest docker-workflow:latest

# UI plugins
RUN CURL_CONNECTION_TIMEOUT=30 /usr/local/bin/install-plugins.sh blueocean:latest blueocean-web:latest \
	blueocean-git-pipeline:latest pipeline-stage-view:latest pipeline-stage-tags-metadata:latest \
	pipeline-stage-step:latest pipeline-build-step:latest dashboard-view:latest \
	blueocean-pipeline-editor:latest blueocean-display-url:latest


# Misc Plugins
RUN CURL_CONNECTION_TIMEOUT=30 /usr/local/bin/install-plugins.sh job-dsl:latest \
	clamav:latest oauth-credentials:latest jira:latest \
	email-ext:latest fluentd:latest delivery-pipeline-plugin:latest \
	credentials:latest credentials-binding:latest branch-api:latest \
	workflow-aggregator:latest pipeline-utility-steps:latest pipeline-stage-tags-metadata:latest \
	hipchat:latest openstack-cloud:latest ssh-slaves:latest \
	ssh-agent:latest \
	ssh-credentials:latest \
	pam-auth:latest \
	greenballs:latest ldap:latest mailer:latest antisamy-markup-formatter:latest \
	conditional-buildstep:latest matrix-auth:latest s3:latest
	

USER jenkins
