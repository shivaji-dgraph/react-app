FROM node:16.19.0
LABEL maintainer="Shivaji Kharse"

RUN apt-get update
RUN apt-get install -y --no-install-recommends git
RUN apt-get install -y --no-install-recommends curl
RUN apt-get install -y --no-install-recommends ca-certificates
RUN git clone https://github.com/shivaji-dgraph/react-app.git
WORKDIR /react-app
RUN npm install
# only update, don't run upgrade
# pin package versions always & bring in CVE fixes as needed
EXPOSE 3000
CMD ["npm", "start"]