FROM quay.io/keycloak/keycloak:26.0.7
# Copy yout custom theme into the container
COPY ./themes/saudi-re-theme/ /opt/keycloak/themes/saudi-re-theme

COPY ./providers/*.jar /opt/keycloak/providers

RUN ls -l /opt/keycloak/themes/ && ls -l /opt/keycloak/providers

# Optionally set the theme in the Environment variable for the container
ENV KEYCLOAK_THEME=saudi-re-theme
RUN /opt/keycloak/bin/kc.sh build
