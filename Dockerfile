FROM node:12.18.3-buster

# -----------------------------------------------------------------------------
# Install Angular Cli
# -----------------------------------------------------------------------------
RUN \
  npm install -g @angular/cli

# -----------------------------------------------------------------------------
# WORKDIR is the generic /app folder. All volume mounts of the actual project
# code need to be put into /app.
# -----------------------------------------------------------------------------
WORKDIR /app

EXPOSE 4200

CMD ng serve --host 0.0.0.0