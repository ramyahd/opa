package myapi.policy

import data.myapi.acl
import input


#default gate = 50
deny[reason]{
        access = acl[input.user]
        access[_] == input.access
        #value := input.access 
       	#not allows(value)
        #reason := "gate limit not reached" 
}

#allows(value) {
#		gate == value
#}
