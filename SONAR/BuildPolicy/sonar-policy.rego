package sonar.policy

import data.sonar.gate
import input



deny[reason] {
        qualitygate = gate[input.user]
        qualitygate[_] != input.qualitygate
        reason:= "Qualtiy gate not reached"
}






