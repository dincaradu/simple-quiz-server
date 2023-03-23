
FROM node:fermium-alpine

RUN mkdir parse

ADD . /parse
WORKDIR /parse/build/
RUN npm install

# ENV APP_ID parse
# ENV MASTER_KEY parse@master123!
# # Connection strig to mongo db
# ENV DATABASE_URI postgres://postgres:password@postgres/postgres

# Optional (default : 'parse/cloud/main.js')
# ENV CLOUD_CODE_MAIN /parse/build/cloud/main.js

# Optional (default : '/parse')
# ENV PARSE_MOUNT mountPath

EXPOSE 1337

# Uncomment if you want to access cloud code outside of your container
# A main.js file must be present, if not Parse will not start

VOLUME /parse            

CMD [ "npm", "start" ]
