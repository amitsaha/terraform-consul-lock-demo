#!/bin/bash
set -e
# needed for click (used by pipenv)
export LANG=C.UTF-8

pushd ../bootstrap-utils
pipenv install
terraform_token=$(pipenv run python get_session_token.py)
popd

terraform init --backend-config=access_token=$terraform_token
