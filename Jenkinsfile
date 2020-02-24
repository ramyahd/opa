$ curl -X PUT http://localhost:8181/v1/data/myapi/acl --data-binary @myapi-acl.json
$ curl -X PUT http://localhost:8181/v1/policies/myapi --data-binary @myapi-policy.rego



$ curl -X POST http://localhost:8181/v1/data/myapi/policy/allow \
--data-binary '{ "input": { "user": "alice", "access": "write" } }' \
| jq



$ curl -X POST http://localhost:8181/v1/data/myapi/policy/allow \
--data-binary '{ "input": { "user": "bob", "access": "write" } }' \
| jq
