package myapi1.policy


#import data.myapi1.acl
import servers


#result[s[_]]
#{
 # s := result.servers
  #
  #}
  
  
  
foo[servers[i].metrics] {
    servers[i].branch_name == "feature"
    servers[i].name == "Alice"
    
    }

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
