package myapi.policy

import data.myapi.acl
import input

default allow=false



allow
{
    server := input.servers[_]
    server.id == acl[input.server[_].id]
   # server.branch[_] ==acl[input.server[_].id]
}


#allow
#{
#	server := input.servers[_]
 #   server.id == "alice"
  #  server.branch[_] =="feature"
#}


