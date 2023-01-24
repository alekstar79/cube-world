FROM ubuntu:20.04 as build-stage

RUN apt update && apt upgrade -y
RUN apt install -y build-essential curl net-tools checkinstall libssl-dev autoconf make && apt clean
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -
RUN apt install -y nodejs

RUN mkdir -p /app
WORKDIR /app

COPY package.json .
RUN npm install
COPY . .

RUN npm run build

FROM nginx:stable-alpine as production-stage
COPY --from=build-stage /app/dist /usr/share/nginx/html

EXPOSE $DOC_PORT

CMD ["nginx", "-g", "daemon off;"]
