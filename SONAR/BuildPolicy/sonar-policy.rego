package sonar.policy

import data.sonar.gate
import input


allow_quality_gate[explanation]
{
        user := gate[input.user]
        qualitygate := user[_].qualitygate
        is_qualtiygate(qualitygate)
        explanation:= "qualtiy metric not reached"
   
}


is_qualtiygate(qualitygate)
{
        [_, quality_tag] := split(qualitygate, ":")
        qualitytag == qualitygate[_]
}



is_qualityimage(qualitygate)
{
      not contains(qualitygate, ":")
}






