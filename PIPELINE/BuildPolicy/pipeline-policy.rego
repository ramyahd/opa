package myapi.policy


import data.myapi.acl
import input

default allow =false

result[acl[input.servers[_].metrics]] 
{
 
  acl[input.servers[i].branch_name] == input.servers.branch_name
  acl[input.servers[i].name] == input.servers.name
}
