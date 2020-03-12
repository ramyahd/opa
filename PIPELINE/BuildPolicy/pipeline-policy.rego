package jenkinss.policy


import data.jenkinss.acl
import input


foo[s[_]]
{
    
  #}
  
#foo[metrics] {
 #   name2 = acl[input.branch_name]
  #  name2 == input.name
   # }
    #name1 = acl[input.branch_name]
    #name1[_] == input.branch_name
   # metrics = acl[input.branch_name.metrics]
    #}
  
  
  foo[acl[input[i].metrics]] {
    acl[input[i].branch_name] == input.branch_name
    acl[input[i].name] == input.name
    
    }

#foo[msg]
#{
 # name = acl[input.name]
  #branch_name = acl[input.branch_name]
  #metrics = acl[metrics]
  #name == input.name
  #branch_name == input.branch_name
  
  #msg := "metrics not reached"
  #}
  
  #s := servers[_]
  #s[i].branch_name == input.servers.branch_name
  #s[i].name == input.servers.name
 # a := s[i].branch_name
 # b := s[i].name
  #servers[_] = input.servers.branch_name
  #servers[_] = input.servers.name
 # a == input.servers.branch_name
 # b == input.servers.name
   #server := input.servers[_]
   #server.branch_name = input.servers.branch_name
  # input.servers.branch_name == acl[input.servers[i].branch_name]
   #input.servers.name == acl[input.servers[i].name]
  #acl.servers[i].branch_name == input.servers.branch_name
  #acl.servers[i].name == input.servers.name 
  #s := acl[input.servers[i].metrics]
#}
