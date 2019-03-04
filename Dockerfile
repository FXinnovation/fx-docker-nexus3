FROM sonatype/nexus3:3.15.2

ENV NEXUS_PLUGINS="${NEXUS_HOME}/system" \
    KEYCLOAK_PLUGIN_VERSION="0.3.2-SNAPSHOT"

ARG BUILD_DATE
ARG VCS_REF
ARG VERSION

ADD ./resources /resources

USER root

RUN /resources/build && rm -rf resources

USER nexus

LABEL "maintainer"="cloudsquad@fxinnovation.com" \
      "org.label-schema.name"="nexus3" \
      "org.label-schema.base-image.name"="sonatype/nexus3" \
      "org.label-schema.base-image.version"="3.15.2" \
      "org.label-schema.description"="Sonatype Nexus 3 in a container" \
      "org.label-schema.url"="https://www.sonatype.com/nexus-repository-oss" \
      "org.label-schema.vcs-url"="https://bitbucket.org/fxadmin/public-common-docker-nexus3" \
      "org.label-schema.vendor"="FXinnovation" \
      "org.label-schema.schema-version"="1.0.0-rc.1" \
      "org.label-schema.applications.nexus.version"="3.15.2" \
      "org.label-schema.vcs-ref"=$VCS_REF \
      "org.label-schema.version"=$VERSION \
      "org.label-schema.build-date"=$BUILD_DATE \
      "org.label-schema.usage"="docker run -d -v [PATH_TO_DATA]:/nexus-data fxinnovation/nexus3:${VERSION}"
