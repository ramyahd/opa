package myapi.policy

import data.sonar.gate
import input

default allow = false
allow {
        access = gate[input.user]
        access1 := input.access
        access[_] == access1
}
