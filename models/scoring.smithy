$version: "2.0"

namespace game.evonytkr

use aws.protocols#restJson1

//EvAns has now released his actual math at https://www.evonyanswers.com/forum/evony-army-generals/best-attacking-reinforcing-and-pvm-army-general-combos\

structure ComponentScores {
  AttackingPrimary:     SituationBuffs
  ReinforcingPrimary:   SituationBuffs
  AttackingSecondary:   SituationBuffs
  ReinforcingSecondary: SituationBuffs
}

structure SituationBuffs {
  BasicAttributeTotal:  Buff
  BuiltinBook:          Buff
  CivilizationCovenant: Buff
  CooperationCovenant:  Buff
  FaithCovenant:        Buff
  HonorCovenant:        Buff
  PeaceCovenant:        Buff
  WarCovenant:          Buff
  Speciality1:          Buff
  Speciality2:          Buff
  Speciality3:          Buff
  Speciality4:          Buff
  Speciality5:          Buff
  Ascending:            Buff
  OtherBooks:           Buff
}

structure EvAnsScores {
  AttackingAsPrimary:   Float
  AttackingAsSecondary: Float
  MonsterAsPrimary:     Float
  MonsterAsSecondary:   Float
}
