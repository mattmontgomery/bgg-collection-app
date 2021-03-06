FROM heroku/nodejs

RUN git clone https://github.com/mattmontgomery/bgg-api.git api/
RUN git clone https://github.com/mattmontgomery/bgg-collection.git collection/

RUN cd api; npm install

RUN cp collection/dist/* api/public/

EXPOSE 3000
EXPOSE 8080
