//=============================================================================
// KFDT_Bludgeon_MedicBatHeavy
//=============================================================================
// Killing Floor 2
// Copyright (C) 2019 Tripwire Interactive LLC
//=============================================================================

// Toxic Weapon with added Bludgeon functionality
class KFDT_Bludgeon_MedicBatHeavy extends KFDT_Bludgeon
	abstract
	hidedropdown;

// Damage type to use for the damage over time effect
var class<KFDamageType> DoTDamageType;

/** Called when damage is dealt to apply additional damage type (e.g. Damage Over Time) */
static function ApplySecondaryDamage(KFPawn Victim, int DamageTaken, optional Controller InstigatedBy)
{
	if (default.DoTDamageType.default.DoT_Type != DOT_None)
	{
		Victim.ApplyDamageOverTime(DamageTaken, InstigatedBy, default.DoTDamageType);
	}
}

defaultproperties
{
	//Physics
	KDamageImpulse=3000
	KDeathUpKick=0
	KDeathVel=425

	//Afflictions
	PoisonPower=20
	StumblePower=100
	MeleeHitPower=150

	DoTDamageType=class'KFDT_Toxic_MedicBatDoT'

	WeaponDef=class'KFWeapDef_MedicBat'

	ModifierPerkList(0)=class'KFPerk_FieldMedic'
	ModifierPerkList(1)=class'KFPerk_Berserker'

	// Don't do damage to teammates
	bNoFriendlyFire=true
}
