package sonar.policy

import data.sonar.gate
import input

default allow = false
allow {
        quality-gate = gate[input.user]
        quality-gate == input.quality-gate
}



