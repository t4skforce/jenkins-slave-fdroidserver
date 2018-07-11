FROM t4skforce/jenkins-slave

USER root
WORKDIR /tmp/
RUN apt-get update -qqy \
  && apt-get -qqy install fdroidserver sshfs expect \
  && rm -rf /var/lib/apt/lists/* \
  && rm -rf /tmp/* \
  && chown -R jenkins:jenkins /home/jenkins
WORKDIR /home/jenkins
USER jenkins
