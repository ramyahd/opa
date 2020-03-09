package myapi.policy


import pipeline-acl.servers
import input



result[servers[i].metrics]
{
  #servers = acl[input.servers]
  #servers[_] = input.servers.branch_name
  #servers[_] = input.servers.name
  servers[i].branch_name == input.servers.branch_name
  servers[i].name == input.servers.name 
}
