package myapi.policy


import data.myapi.acl
import input


result[acl[input.servers[i].metrics]] 
{
  acl[servers[i].branch_name] == input.servers.branch_name
  acl[servers[i].name] == input.servers.name
}
