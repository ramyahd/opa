package myapi.policy

import data.sonar.acl
import input

default allow = false
allow {
        access = acl[input.user]
        access1 := input.access
        access[_] == access1
}
