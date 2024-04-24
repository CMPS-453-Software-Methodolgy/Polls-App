# Django Polls App [![Action status][ci-badge]][ci-workflow] [![Coverage Status][coverage-badge]][coverage-url]

The project is deployed on [Render][render-url].

To develop/test this website, clone this repository and follow the instructions:

## Install Python requirements

[![python][python-badge]][python-url]

```bash
pip install -r requirements.txt
```

## Apply Migrations

```bash
python manage.py migrate
```

## Collect Static Files

```bash
python manage.py collectstatic --no-input
```


## Run Django Web Server

```bash
python manage.py runserver
```

## Install Cypress [![NodeJS v18 LTS][nodejs-badge]][nodejs-url] [![Cypress Version][cypress-badge]][cypress-url]

Download and install [Node JS vs18 LTS][nodejs-url]

If the installation is successful, you will be able to run `npm` command from the CMD, bash, or terminal.

Open another CMD prompt, bash, or terminal, navigate to the project's root directory, and run the command:

```bash
npm install cypress
```

This will download the cypress binaries in `node_modules` directory.


## Run Cypress E2E tests

### Run the Django TestServer
Run the Django development server with data from the given fixture (`testdb.json`):

```bash
python manage.py testserver cypress/fixtures/testdb.json --no-input
```

To execute all the cypress tests in a browser, run the following command:
```bash
npx cypress open
```
This command will open a browser window. Select the test as `E2E`.

If there are multiple browsers on your machine, it will prompt to you to choose a browser to run Cypress tests.

Upon choosing a browser to run Cypress tests, click on the `test.cy.js` file to start the tests.

To run the tests browser less:
```bash
npx cypress run --headless
```


[ci-badge]: https://github.com/seshagiriprabhu/poll-app/actions/workflows/base.yml/badge.svg
[ci-workflow]: https://github.com/seshagiriprabhu/poll-app/actions/workflows/main.yml
[coverage-badge]: https://img.shields.io/coverallsCoverage/github/seshagiriprabhu/poll-app.svg
[coverage-url]: https://coveralls.io/github/seshagiriprabhu/poll-app
[python-badge]: https://img.shields.io/badge/Python-3.9%7C3.10%7C3.11-3776AB.svg?style=flat&logo=python&logoColor=white
[python-url]: https://www.python.org
[nodejs-badge]: https://img.shields.io/badge/node-18-brightgreen.svg
[nodejs-url]: https://nodejs.org/en/download/
[cypress-badge]: https://img.shields.io/badge/cypress-13.8.1-brightgreen.svg
[cypress-url]: https://www.cypress.io/
[render-url]: https://polls-app-2iql.onrender.com/
