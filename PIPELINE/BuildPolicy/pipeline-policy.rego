package pipeline.policy


import data.pipeline.acl
import input


result[acl[input.servers[i].metrics]] 
{
    acl[input.servers[i].branch_name] == "input.servers[i].branch_name"
    acl[input.servers[i].name] == "input.servers[i].name"
    
}
