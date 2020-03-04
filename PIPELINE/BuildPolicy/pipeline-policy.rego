package myapi.policy

import data.myapi.acl
import input

default allow=false



allow
{
    access := acl[input.server[_].id]
    server := input.servers[_]
    access[_] == server.id
   # server.branch[_] ==acl[input.server[_].id]
}


#allow
#{
#	server := input.servers[_]
 #   server.id == "alice"
  #  server.branch[_] =="feature"
#}


