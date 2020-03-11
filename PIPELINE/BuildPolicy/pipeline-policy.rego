package jenkinss.policy


import data.jenkinss.acl
import input


#result[s[_]]
#{
 # s := result.servers
  #
  #}
  
foo[name2] {
    name2 := acl[input.name]
    name2 == input.name
    name1 = acl[input.branch_name]
    name1[_] == input.branch_name
    }
  
  
#foo[acl[input.servers[i].metrics]] {
 #   acl[input.servers[i].branch_name] == input.branch_name
  #  acl[input.servers[i].name] == input.name
    
   # }

#result[input.servers.branch_name]
#{
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
