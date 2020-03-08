package myapi.policy


import data.myapi.acl
import input


result[acl[input.servers.metrics]] 
{
  "Alice" == input.servers.branch_name
  "master" == input.servers.name 
  #acl[input.servers[i].branch_name] == input.servers.branch_name
  #acl[input.servers[i].name] == input.servers.name
}
