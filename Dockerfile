FROM jenkinsci/blueocean:latest
MAINTAINER Stephen Sullivan <s.sullivan@orbisops.com>

USER root


ENV CURL_CONNECTION_TIMEOUT=360
ENV CURL_RETRY_MAX_TIME=120
ENV CURL_RETRY=6

# Pipeline plugin
RUN /usr/local/bin/install-plugins.sh docker-build-step:latest \
	docker-commons:latest \
	docker-custom-build-environment:latest \
	docker-traceability:latest \
	docker-workflow:latest \
	docker-slaves:latest \
	openstack-cloud:latest \
	maven:latest \
	job-dsl:latest \
	python:latest \
	gradle:latest \
	s3:latest \
	slack:latest \
	ansible:latest \
	ssh-slaves:latest \
	ssh-agent:latest \
	ssh-credentials:latest \
	antisamy-markup-formatter:latest \
	cloudbees-folder:latest \
	ant:latest \
	ws-cleanup:latest \
	workflow-aggregator:latest \
	pipeline-stage-view:latest \
	conditional-buildstep:latest \
	git:latest \
	matrix-auth:latest pam-auth:latest ldap:latest \
	email-ext:latest mailer:latest
	
	
# The Maven plugin is being super flaky when downloading from Jenkins
RUN /usr/local/bin/install-plugins.sh maven:latest
	
	

USER jenkins
