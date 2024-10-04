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
  @required
  builtInBook: Buff
  otherBooks: Titles
  @required
  specialities: Specialities
  basicAttributes: BasicAttributes
  EvAnsScores: EvAnsScores
  ComponentScores: ComponentScores
}


structure BasicAttributes {
  @required
  attack:               Float
  attack_base:          Float
  attack_increment:     Float
  @required
  defense:              Float
  defense_base:         Float
  defense_increment:    Float
  @required
  leadership:           Float
  leadership_base:      Float
  leadership_increment: Float
  @required
  politics:             Float
  politics_base:        Float
  politics_increment:   Float
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

@pattern("^([A-Z][^0-9\n]+)$")
string Title

list Titles {
  member: Title
}

map Speciality {
  key: SpecialityLevels
  value: Buff
}

@length(min: 3, max: 5)
list Specialities {
  member: Speciality
}
