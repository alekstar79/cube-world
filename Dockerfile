# Nginx Service ===================================================

FROM node:16.15.0-alpine as build-stage

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

# Node  Service ==================================================

# FROM node:16.15.0-alpine
#
# RUN mkdir -p /<dir>
# WORKDIR /<dir>
#
# COPY package.json .
# RUN npm install
# COPY . .
#
# EXPOSE $PORT
#
# CMD ["npm", "run", "serve"]

# ================================================================
