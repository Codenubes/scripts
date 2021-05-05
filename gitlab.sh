#!/bin/bash
echo ================================================kodrex script execution starts================================================
gitlab-rails runner "token = User.find_by_username('root').personal_access_tokens.create(scopes: [:sudo, :read_user, :read_repository, :api, :read_api], name: 'Automation token'); token.set_token('myprivatetoken123'); token.save!"
#gitlab-rails runner "token = User.find_by_username('root').personal_access_tokens.create(scopes: [:read_user, :read_repository, :api, :read_api], name: 'Automation token'); token.set_token('myprivatetoken123'); token.save!"
curl --header "PRIVATE-TOKEN: myprivatetoken123" --data "email=jon@doe.com&password=P@ssw0rd&username=fck&name=fckDoe" "http://localhost:80/api/v4/users"
curl --request POST --header "PRIVATE-TOKEN: myprivatetoken123" --header "Content-Type: application/json" --data '{"path": "fck_group_path", "name": "fck_group_name" }'   "http://localhost:80/api/v4/projects"
curl --request POST --header "PRIVATE-TOKEN: myprivatetoken123" --header "Content-Type: application/json" --data '{"path": "fck_group_path", "name": "fck_group_name" }'   "http://localhost:80/api/v4/projects/user/fck"
echo ================================================kodrex script execution ends==================================================