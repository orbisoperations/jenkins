FROM jenkinsci/blueocean:latest
MAINTAINER Stephen Sullivan <s.sullivan@orbisops.com>

USER root


ENV CURL_CONNECTION_TIMEOUT=360
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
	ansible:latest
	
	

USER jenkins
