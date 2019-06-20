ARG NODE_VERSION=8
FROM node:${NODE_VERSION}-slim

RUN apt-get update && apt-get install -y lldb-3.9 git gcc g++ make
RUN npm install --unsafe-perm -g llnode



ENTRYPOINT ["llnode", "/usr/local/bin/node", "-c", "/dump/core.dump"]