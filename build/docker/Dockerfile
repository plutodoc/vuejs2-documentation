# one
FROM impossible98/node
WORKDIR /src/
COPY ./ ./
RUN make build
# two
FROM nginx:alpine
COPY --from=0 /src/docs/.vuepress/dist/ /usr/share/nginx/html/
EXPOSE 80
