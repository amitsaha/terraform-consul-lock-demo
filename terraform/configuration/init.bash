#!/bin/bash
set -e

pushd ../bootstrap-utils
pipenv install
terraform_token=$(pipenv run python get_session_token.py)
popd

terraform init --backend-config=access_token=$terraform_token
