#!/bin/bash
set -e
# needed for click (used by pipenv)
export LANG=C.UTF-8

pushd ../configuration-utils
pipenv install
terraform_token=$(pipenv run python get_kv_token.py)
popd

terraform apply -target=consul_keys.app1_version -var "app1_version_token=$terraform_token"
