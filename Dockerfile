FROM heroku/nodejs

RUN git clone https://github.com/mattmontgomery/bgg-api.git api/
RUN git clone https://github.com/mattmontgomery/bgg-collection.git collection/

RUN cd bgg-collection; npm install;
RUN cd bgg-collection; npm run build;
RUN cd bgg-api; npm install

RUN cp collection/dist/* api/public/

EXPOSE 3000
EXPOSE 8080
