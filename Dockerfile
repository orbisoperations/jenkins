FROM jenkinsci/blueocean:latest
MAINTAINER Stephen Sullivan <s.sullivan@orbisops.com>

USER root


ENV CURL_CONNECTION_TIMEOUT=180
# Pipeline plugin
RUN /usr/local/bin/install-plugins.sh docker-build-step:latest \
	docker-commons:latest \
	docker-custom-build-environment:latest \
	docker-traceability:latest \
	docker-workflow:latest \
	docker-slaves:latest \
	maven:latest \
	openstack-cloud:latest \
	ssh-slaves:latest \
	ssh-agent:latest \
	ssh-credentials:latest \
	greenballs:latest \
	python:latest \
	gradle:latest \
	antisamy-markup-formatter:latest \
	jira:latest \
	slack:latest \
	email-ext:latest \
	delivery-pipeline-plugin:latest \
	selenium:latest \
	nodejs:latest \
	javadoc:latest
	

USER jenkins
