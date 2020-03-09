package myapi.policy


import data.myapi.acl
import input



#result[acl[input.servers[i].metrics]]
metrics = data.servers[i].metrics
{
 
  data.servers[i].branch_name == input.servers.branch_name
  data.servers[i].name == input.servers.name 
}
