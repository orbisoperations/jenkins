FROM jenkinsci/blueocean:latest
MAINTAINER Stephen Sullivan <s.sullivan@orbisops.com>

USER root
RUN apt-get update && apt-get install -qqy \
 apt-utils \
 ca-certificates \
 groovy2 \
 dos2unix \
 lxc 

ENV CURL_CONNECTION_TIMEOUT=180
# Pipeline plugin
RUN /usr/local/bin/install-plugins.sh workflow-job:latest \
	workflow-aggregator:latest \
	workflow-multibranch:latest \
	git-server:latest git:latest \
	git-changelog:latest git-client:latest \
	bitbucket:latest \
	cloudbees-bitbucket-branch-source:latest \
	stashNotifier:latest \
	branch-api:latest \
	python:latest \
	gradle:latest \
	selenium:latest \
	jacoco:latest \
	junit:latest \
	repository-connector:latest \
	findbugs:latest \
	nodejs:latest \
	javadoc:latest \
	docker-build-step:latest \
	docker-commons:latest \
	docker-custom-build-environment:latest \
	docker-traceability:latest \
	docker-workflow:latest \
	docker-slaves:latest \
	swarm:latest \
	pipeline-stage-view:latest \
	pipeline-stage-tags-metadata:latest \
	pipeline-stage-step:latest \
	pipeline-build-step:latest \
	pipeline-model-definition \
	pipeline-maven \
	dashboard-view:latest \
	job-dsl:latest \
	oauth-credentials:latest \
	jira:latest \
	jira-steps:latest \
	email-ext:latest \
	fluentd:latest \
	delivery-pipeline-plugin:latest \
	credentials:latest \
	credentials-binding:latest \
	pipeline-utility-steps:latest \
	hipchat:latest \
	openstack-cloud:latest \
	ssh-slaves:latest \
	ssh-agent:latest \
	ssh-credentials:latest \
	pam-auth:latest \
	greenballs:latest \
	ldap:latest \
	mailer:latest \
	antisamy-markup-formatter:latest \
	conditional-buildstep:latest \
	matrix-auth:latest \
	s3:latest \
	slack:latest \
	thinBackup:latest \
	ansible:latest \
	nexus-artifact-uploader:latest \
	gitlab-plugin:latest \
	sonar:latest
	

USER jenkins
