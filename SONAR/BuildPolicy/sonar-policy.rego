package sonar.policy

import data.sonar.gate
import input

default allow = false
allow {
        gate = gate[input.user]
        qualitygate[_] == input.gate
}



