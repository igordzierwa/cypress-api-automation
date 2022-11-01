FROM cypress/base:14.17.0

#specifying that the work directory of our Docker container is called app
WORKDIR /app

#dependencies will be installed only if the package files change
COPY ./cypress ./cypress
COPY ./cypress.json ./cypress.json
COPY ./package.json ./package.json
COPY ./tsconfig.json ./tsconfig.json

#install the project dependencies so Cypress can be installed.
RUN npm install

CMD npx cypress run