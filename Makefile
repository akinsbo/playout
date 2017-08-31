VARIABLE="my-file"

help:
	@echo ""
	@echo ""
	@echo "help: \t Generates this"
	@echo ""
	@echo "*install and setup commands*"
	@echo "one-time-installs: \t Do this first. Generates webdriver-manager \
	and watchman brew install for FS_EVENT error \
	when npm test is run on Mac systems"
	@echo "one-time-setup-for_all_projects: \t start selenium server for this project"
	@echo "one-time-setup-for_this_project: \tsetup dev dependecies and dependecies"
	@echo ""
	@echo "*eslints commands*"
	@echo "fix-run: \t eslint fixes syntax"
	@echo "eslint-reset: \t reset your eslint configuration"
	@echo ""
	@echo "*project commands*"
	@echo "start: \t Starts the project"
	@echo ""
	@echo "*run in this order*: \n\tmake one-time-installs \n\t\
	make one-time-setup-for_all_projects \n\t\
	make one-time-setup-for_this_project"
	@echo ""

one-time-installs:
	@echo "Installing selenium server wrapped in webdriverio globally \
	for cucumber-mink"
	npm install -g webdriver-manager
	@echo "Install watchman to carter for FS_EVENT error when npm test is run"
	brew install watchman

one-time-setup-for_all_projects:
	@echo "Setup cucumber-mink"
	@echo "==================="
	@echo "starting webdriver-manager"
	@echo "By default selenium server is running at http://localhost:4444/wd/hub"
	webdriver-manager start
	@echo "Clearing out the server and driver files. \
	If webdriver-manager start does not work, try to clear out the saved files"
	webdriver-manager clean
	@echo "==================="
	@echo "restarting webdriver-manager"
	webdriver-manager start
	@echo "updating the selenium location into the webdriver manager location"
	webdriver-manager update
	@echo "finished setting up cucumber-mink you may test it as such \
	./node_modules/.bin/cucumber-mink features/entity/entity.feature -- -f pretty"

one-time-setup-for_this_project:
	@echo "npm install does this but this shows a stepwise line-grouped install"
	@echo "Setup one-time for this project"
	@echo "==================="
	@echo "Setup dev dependencies"
	@echo "==================="
	npm install --save-dev \
	eslint eslint@>=4.1.1 eslint-plugin-react \
	mocha \
	sass-loader node-sass \
	cucumber cucumber-mink webdriverio wdio-cucumber-framework \
	wdio-spec-reporter wdio-phantomjs-service wdio-selenium-standalone-service \
	@echo "Setup dependencies"
	@echo "==================="
	npm install --save \
	material-ui \
	redux react-redux \
	react-tap-event-plugin
	@echo "Set up the event addon \
	(should be natively incorporated into react soon)"
	@echo "Setup eslint"
	./node_modules/.bin/eslint --init
	@echo "Run fix-run for eslint fix"
	@echo "For a single file, use ./node_modules/.bin/eslint yourfile.js --fix"
	@echo "setup webdriverio"
	@echo "chose cucumber when asked for framework to allow BDD"
	./node_modules/.bin/wdio config


test-run:
	@echo "Running cucumber-mink"
	./node_modules/.bin/cucumber-mink features/entity/entity.feature -- -f pretty
	@echo "For testing a single file, use something like 	\
	./node_modules/.bin/cucumber-mink features/entity/entity.feature -- -f pretty"


fix-run:
	./node_modules/.bin/eslint --fix
	@echo "./node_modules/.bin/eslint $VARIABLE.js"

eslint-reset:
	@echo "Setup eslint"
	./node_modules/.bin/eslint --init

run-selenium:
	java –jar selenium-server-standalone-2.48.2.jar

run-wdio-integration-test:
	./node_modules/.bin/wdio wdio.conf.js

start:
	npm start
