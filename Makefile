help:
	@echo "This is the case"


run-test:
	./node_modules/.bin/cucumber.js

run-fix:
	./node_modules/.bin/eslint --fix

run-selenium:
	java –jar selenium-server-standalone-2.48.2.jar
