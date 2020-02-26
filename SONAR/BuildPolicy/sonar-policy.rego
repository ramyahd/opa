package sonar.policy

import data.sonar.gate
import input

default allow = false
allow {
        gate1 = gate[input.user]
        gate1 == input.gate
}

gate {
		gate = gate[input.user.quality-gate]
}


