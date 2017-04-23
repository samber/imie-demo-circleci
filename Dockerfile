##
# NAME             : samber/imie-demo-circleci
# VERSION          : latest
# DOCKER-VERSION   : 1.13
# DESCRIPTION      :
# TO_BUILD         : docker build --pull=true --no-cache -t samber/imie-demo-circleci .
# TO_SHIP          : docker push samber/imie-demo-circleci
# TO_RUN           : docker run -d samber/imie-demo-circleci
##

FROM node:7

WORKDIR /usr/src/app
CMD node index.js

COPY . /usr/src/app

RUN npm install