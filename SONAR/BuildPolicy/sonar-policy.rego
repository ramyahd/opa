package sonar.policy

import data.sonar.gate
import input

default allow = false
default gate = 50
allow {
        gate = gate[input.user]
        gate1 == input.gate
}
gate {
		gate = gate[input.user.quality-gate]
}
