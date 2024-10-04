$version: "2.0"

namespace game.evonytkr

/// A unique identifier 
@length(min: 1, max: 128)
@pattern("^[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}$")
string Uuid

enum ValueUnits {
  PERCENTAGE = "percentage"
  FLAT = "flat"
}

structure BuffValue {
  number: Integer
  unit: ValueUnits
}

structure Buff {
  marchSizeIncrease:      Float
  attackIncrease:         Float
  DefenseIncreae:         Float
  HPIncrease:             Float
  GroundAttackDebuff:     Float
  RangedAttackDebuff:     Float
  MountedAttakDebuff:     Float
  SiegeAttackDebuff:      Float
  OverallAttackDebuff:    Float
  GroundToughnessDebuff:  Float
  RangedToughnessDebuff:  Float
  MountedToughnessDebuff: Float
  SiegeToughnessDebuff:   Float
  OverallToughnessDebuff: Float
}

enum BuffAttributes {
  ATTACK = "Attack"
  ATTACKSPEED = "Attack Speed"
  DEATHTOSURVIVAL = "Death to Survival"
  DEATHTOSOUL = "Death to Soul"
  DEATHTOWOUNDED = "Death to Wounded"
  DEFENSE = "Defense"
  DESERTERCAPACITY = "Deserter Capacity"
  DOUBLEITEMSDROPRATE = "Double Items Drop Rate"
  HP = "HP"
  HEALINGSPEED = "Healing Speed"
  HOSPITALCAPACITY = "Hospital Capacity"
  LEADERSHIP = "Leadership"
  LOAD = "Load"
  MARCHSIZECAPACITY = "March Size Capacity"
  MARCHTIME = "March Time"
  MARCHINGSPEED = "Marching Speed"
  MARCHINGSPEEDTOMONSTERS = "Marching Speed to Monsters"
  MONSTERSATTACK = "MonstersAttack"
  POLITICS = "Politics"
  RALLYCAPACITY = "Rally Capacity"
  RANGE = "Range"
  RESOURCESPRODUCTION = "Resources Production"
  STAMINACOST = "Stamina cost"
  SUBCITYCONSTRUCTIONSPEED = "SubCity Construction Speed"
  SUBCITYGOLDPRODUCTION = "SubCity Gold Production"
  SUBCITYTRAININGSPEED = "SubCity Training Speed"
  SUBCITYTROOPCAPACITY = "SubCity Troop Capacity"
  TRAININGCAPACITY = "Training Capacity"
  TRAININGSPEED = "Training Speed"
  WOUNDEDTODEATH = "Wounded to Death"

}

/// An enum describing conditions that restrict when Buffs apply
enum BuffConditions {
  AGAINSTMONSTERS = "Against Monsters"
  ATTACKING = "Attacking"
  DEFENDING = "Defending"
  DURINGSVS = "During SvS"
  INCITY = "In City"
  INMAINCITY = "In Main City"
  MARCHING = "Marching"
  REINFORCING = "Reinforcing"
  WHENCITYMAYOR = "When City Mayor"
  WHENCITYMAYORFORTHISSUBCITY = "When City Mayor for this SubCity"
  WHENDEFENDINGOUTSIDETHEMAINCITY = "When Defending Outside The Main City"
  WHENRALLYING = "When Rallying"
  WHENTHEMAINDEFENSEGENERAL = "When The Main Defense General"
  WHENANOFFICER = "When an officer"
  BRINGSADRAGON = "brings a dragon"
  BRINGSDRAGONORBEASTTOATTACK = "brings dragon or beast to attack"
  DRAGONTOTHEATTACK = "dragon to the attack"
  LEADINGTHEARMYTOATTACK = "leading the army to attack"
}

enum DeBuffConditions {
  ENEMY = "Enemy"
  ENEMYINCITY = "Enemy In City"
  REDUCESENEMY = "Reduces Enemy"
  REDUCESENEMYINATTACK = "Reduces Enemy in Attack"
  REDUCESENEMYWITHADRAGON = "Reduces Enemy with a Dragon"
  REDUCES = "Reduces"

}

enum BuffClasses {
  GROUNDTROOPS = "Ground Troops"
  MOUNTEDTROOPS = "Mounted Troops"
  RANGEDTROOPS = "Ranged Troops"
  SIEGEMACHINES = "Siege Machines"
  ALLTROOPS = "All Troops"
  MONSTERS = "Monsters"

}

enum GeneralKeys {
  GROUNDTROOPS = "Ground Troops"
  MAYOR = "Mayor"
  MOUNTEDTROOPS = "Mounted Troops"
  OFFICER = "Officer"
  RANGEDTROOPS = "Ranged Troops"
  SIEGEMACHINES = "Siege Machines"
  WALL = "Wall"
}

enum AscendingLevels {
  NONE = "None"
  PURPLE1 = "1Purple"
  PURPLE2 = "2Purple"
  PURPLE3 = "3Purple"
  PURPLE4 = "4Purple"
  PURPLE5 = "5Purple"
  RED1 = "1Red"
  RED2 = "2Red"
  RED3 = "3Red"
  RED4 = "4Red"
  RED5 = "5Red"

}

enum SpecialityLevels {
  NONE = "None"
  GREEN = "Green"
  BLUE = "Blue"
  PURPLE = "Purple"
  ORANGE = "Orange"
  GOLD = "Gold"
}
