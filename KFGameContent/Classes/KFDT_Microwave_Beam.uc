//=============================================================================
// KFDT_Microwave_Beam
//=============================================================================
// Damage caused by the microwave gun primary fire
//=============================================================================
// Killing Floor 2
// Copyright (C) 2015 Tripwire Interactive LLC
// John "Ramm-Jaeger" Gibson and Andrew Ladenberger
//=============================================================================

class KFDT_Microwave_Beam extends KFDT_Microwave
	abstract;

/** Test obliterate conditions when taking damage */
static function bool CheckObliterate(Pawn P, int Damage)
{
	return default.bCanObliterate;
}

defaultproperties
{
	WeaponDef=class'KFWeapDef_MicrowaveGun'

	// physics impact
	RadialDamageImpulse=750
	KDeathUpKick=750
	KDeathVel=350
    KDamageImpulse=2000

	DoT_Type=DOT_Fire
	DoT_Duration=1.7 //5.0
	DoT_Interval=0.5
	DoT_DamageScale=0.8
	bIgnoreSelfInflictedScale=true


	BurnPower=5.5 //2.5
	MicrowavePower=10
	StumblePower=30

	EffectGroup=255 //None
	bCanObliterate=true
	bCanGib=true
	ModifierPerkList(0)=class'KFPerk_Firebug'
}

