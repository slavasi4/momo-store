FROM node:16.0-alpine as builder
WORKDIR /usr/src/app
COPY . .
RUN npm install && npm run build

FROM nginx:1.23
COPY --from=builder /usr/src/app/dist/ /usr/share/nginx/html/
COPY --from=builder /usr/src/app/dist/ /usr/share/nginx/html/momo-store/
COPY default.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
