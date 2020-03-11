package jen.policy

import data.jen.acl
import input

default allow = false

allow {
        access = acl[input.user]
        access[_] == input.access
}

whocan[user] {
        access = acl[user]
        access[_] == input.access
}
