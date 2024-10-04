$version: "2.0"

namespace game.evonytkr

use aws.protocols#restJson1

/// Models a General in Evony TKR
structure GeneralProperties {
  @required
  name: GeneralName
  ascendingAttributes: AscendingAttribute
  hasCovenant: Boolean
  @required
  level: GeneralLevel
  @required
  type: GeneralKeys
  // basicAttributes,
  // builtInBook,
  // EvAnsScores,
  // otherBooks,
  // specialities,

}

/// The response from the API endpoint Contains a general and a Unique identifier. 
resource General {
  
  identifiers: {
    id: Uuid
  }
    
  properties: { 
    data: GeneralProperties
  }

    
  read: GetGeneral
}

@http(method: "GET", uri: "/general/byName/{id}")
@readonly
operation GetGeneral {
  output := for General {
    @required
    $id

    @required
    $data
  }
  input := for General {
    @httpLabel
    @required
    $id
  }

  errors: [
        GeneralNotFound 
    ]
}

@httpError(404)
@error("client")
structure GeneralNotFound {
    message: String
    id: Uuid
}


map AscendingAttribute {
  key: AscendingLevels
  value: Buff
}

@pattern("^([^0-9\n]+)$")
string GeneralName

@range(min: 1, max: 45)
integer GeneralLevel
