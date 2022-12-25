FROM node:lts-alpine3.12 as build1

WORKDIR /frontend
COPY ./frontend/package.json ./
COPY ./frontend/package-lock.json ./
RUN npm install
COPY ./frontend/ ./
RUN npm run build


FROM node:lts-alpine3.12 as build2

WORKDIR /frontend2
COPY ./frontend2/package.json ./
COPY ./frontend2/package-lock.json ./
RUN npm install
COPY ./frontend2/ ./
RUN npm run build


FROM nginx:1.18.0-alpine

COPY  ./webserver/default.conf /etc/nginx/conf.d/default.conf

COPY --from=build1 /frontend/build /usr/share/nginx/html/frontend1
COPY --from=build2 /frontend2/build /usr/share/nginx/html/frontend2