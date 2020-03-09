package myapi.policy


import data.myapi.acl
import input


result[s[_]]
{
  s := acl[input.servers]
  
  }

#result[s[i].metrics]
#{
 # s := servers[_]
 # a := s[i].branch_name
 # b := s[i].name
  #servers[_] = input.servers.branch_name
  #servers[_] = input.servers.name
 # a == input.servers.branch_name
 # b == input.servers.name
  #servers[i].branch_name == input.servers.branch_name
  #servers[i].name == input.servers.name 
#}
