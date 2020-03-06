package myapi.policy


import data.myapi.acl
import input


result[input.servers[i].metrics] 
{
   access = acl[input.servers]
   access[].branch_name == input.servers.branch_name
   access[].name == input.servers.name
    
   
     #  access[input.servers[i].branch_name] == input.servers.branch_name
   #acl[input.servers[i].name] == input.servers.name
}
