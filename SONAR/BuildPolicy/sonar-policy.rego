package sonar.policy

import data.sonar.gate
import input


allow_quality_gate[explanation]
{
        qualitygate := gate[input.user.qulalitygate]
        is_qualtiygate(qualitygate)
        explanation:= "qualtiy metric not reached"
   
}


is_qualtiygate(qualitygate)
{
     qualitygate[_] == qualitygate
}

is_qualityimage(qualitygate)
{
        qulalitygate[_] != qualitygate
}






