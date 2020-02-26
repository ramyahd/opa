package sonar.policy

import data.sonar.gate
import input

default allow = false
default gate=50
allow {
        qualitygate = gate[input.user]
        qualitygate[_] == input.qualitygate
}


gate {
		gate = gate[input.user.qualitygate]
}


