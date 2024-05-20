# Following are environment variables required for default test framework setup
GODOG_DEBUG=false
GODOG_MY_APP_URL=http://localhost:1234
GODOG_JSON_SCHEMA_DIR=./assets/test_server/doc/schema

# git_dir is path to default git folder with repository
git_dir=./.git

# github_actions_dir is path to github actions directory with workflow
github_actions_dir=./.github

# features_dir is path to directory with features
features_dir=./features

# gitignore_path is path to .gitignore file
gitignore_path=./.gitignore

# assets_dir is path to directory with temporary assets
assets_dir=./assets

all: env download-dependencies

# env creates .env file and populates it with default values
env:
	touch .env
	echo "GODOG_DEBUG=${GODOG_DEBUG}\n\
	GODOG_MY_APP_URL=${GODOG_MY_APP_URL}\n\
	GODOG_JSON_SCHEMA_DIR=${GODOG_JSON_SCHEMA_DIR}" > .env

# download-dependencies download go packages and godog binary
download-dependencies:
	go mod download
	go install github.com/cucumber/godog/cmd/godog@v0.12.6

# clean removes directories with binaries, git repository, github actions workflow and test suite
clean:
	rm -rf ${git_dir}
	rm -rf ${github_actions_dir}
	rm -rf ${assets_dir}
	rm ${gitignore_path}

# tests-using-host demonstrates how tests can be run using godog binary on host side
# command runs all tests from features/7timer/* directory
tests-using-host:
	godog --format=progress --concurrency=2 --random ${features_dir}/7timer



