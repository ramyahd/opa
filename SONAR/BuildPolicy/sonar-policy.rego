package sonar.policy

import data.sonar.gate
import input


allow_quality_gate[explanation]
{
        user := gate[input.user]
        qualitygate := user[_].qualitygate
        is_qualitygate(qualitygate)
        explanation:= "quality metric not reached"
   
}


      is_qualitygate(qualitygate)
{
        [_, quality_tag] := split(qualitygate, ":")
        quality_tag == qualitygate[_]
}



      is_qualitygate(qualitygate)
{
      not contains(qualitygate, ":")
}

