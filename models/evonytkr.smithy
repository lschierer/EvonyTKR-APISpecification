$version: "2.0"

namespace game.evonytkr

use aws.protocols#restJson1

/// Allow users to obtain information on Generals, General Pairs, General Conflicts, General SkillBooks, General Specialities, and related information for Evony TKR
@title("Evony TKR API Service")
@restJson1
service WebApi {
  version: "2024-10-03"
  resources: [
    General
  ]
}
