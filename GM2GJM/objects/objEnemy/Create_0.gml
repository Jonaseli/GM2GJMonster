difficultyModifier = 1;

baseHP = 10;
baseDmg = 1;
baseAttackSpeed = 1;

vitality = 1 * difficultyModifier;
strength = 1 * difficultyModifier;
dexterity = 1 * difficultyModifier;

movementSpeed = 2.2;
agroRange = 300;
maintainedDistance = 1;
strollDistance = 350;

remainingHP = baseHP * vitality;
damage = baseDmg * strength;
attackSpeed = baseAttackSpeed / dexterity;

chosenX = x;
chosenY = y;

