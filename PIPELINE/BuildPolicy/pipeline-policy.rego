package myapi.policy


import data.myapi.acl
import input



result[input.servers.branch_name]
{
 
  acl[data.servers[i].branch_name] == input.servers.branch_name
  acl[data.servers[i].name] == input.servers.name 
}
