package sonar.policy

import data.sonar.gate
import input

default allow = false
allow {
        qualitygate = gate[input.user]
        qualitygate[_] == input.qualitygate
}





