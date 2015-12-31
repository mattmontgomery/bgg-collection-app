FROM heroku/nodejs

COPY bgg-api api
COPY bgg-collection collection

RUN cd collection; rm -rf node_modules; npm install; npm run build
RUN cd api; rm -rf node_modules; npm install

RUN cp collection/dist/* api/public/

EXPOSE 3000
EXPOSE 8080
