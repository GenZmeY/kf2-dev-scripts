//=============================================================================
// KFProj_HighExplosive_M79
//=============================================================================
// High explosive grenade launcher grenade for the M79
//=============================================================================
// Killing Floor 2
// Copyright (C) 2015 Tripwire Interactive LLC
// - John "Ramm-Jaeger" Gibso
//=============================================================================

class KFProj_HighExplosive_M79 extends KFProj_BallisticExplosive
	hidedropdown;

defaultproperties
{
	Physics=PHYS_Falling
	Speed=4000
	MaxSpeed=4000
	TerminalVelocity=4000
	TossZ=150
	GravityScale=.5
    MomentumTransfer=50000.0
    ArmDistSquared=150000 // 4.0 meters
    LifeSpan=25.0f

	bWarnAIWhenFired=true

	ProjFlightTemplate=ParticleSystem'WEP_3P_M79_EMIT.FX_M79_40mm_Projectile'
	ProjFlightTemplateZedTime=ParticleSystem'WEP_3P_M79_EMIT.FX_M79_40mm_Projectile_ZEDTIME'
	ProjDudTemplate=ParticleSystem'WEP_3P_M79_EMIT.FX_M79_40mm_Projectile_Dud'
	GrenadeBounceEffectInfo=KFImpactEffectInfo'FX_Impacts_ARCH.DefaultGrenadeImpacts'
    ProjDisintegrateTemplate=ParticleSystem'ZED_Siren_EMIT.FX_Siren_grenade_disable_01'
	AltExploEffects=KFImpactEffectInfo'WEP_M79_ARCH.M79Grenade_Explosion_Concussive_Force'

	// Grenade explosion light
	Begin Object Class=PointLightComponent Name=ExplosionPointLight
	    LightColor=(R=252,G=218,B=171,A=255)
		Brightness=4.f
		Radius=2000.f
		FalloffExponent=10.f
		CastShadows=False
		CastStaticShadows=FALSE
		CastDynamicShadows=False
		bCastPerObjectShadows=false
		bEnabled=FALSE
		LightingChannels=(Indoor=TRUE,Outdoor=TRUE,bInitialized=TRUE)
	End Object

	// explosion
	Begin Object Class=KFGameExplosion Name=ExploTemplate0
		Damage=225
		DamageRadius=850          //800
		DamageFalloffExponent=2    //2
		DamageDelay=0.f

		// Damage Effects
		MyDamageType=class'KFDT_Explosive_M79'
		KnockDownStrength=0
		FractureMeshRadius=200.0
		FracturePartVel=500.0
		ExplosionEffects=KFImpactEffectInfo'WEP_M79_ARCH.M79Grenade_Explosion'
		ExplosionSound=AkEvent'WW_WEP_SA_M79.Play_WEP_SA_M79_Explosion'

        // Dynamic Light
        ExploLight=ExplosionPointLight
        ExploLightStartFadeOutTime=0.0
        ExploLightFadeOutTime=0.2

		// Camera Shake
		CamShake=CameraShake'FX_CameraShake_Arch.Misc_Explosions.Light_Explosion_Rumble'
		CamShakeInnerRadius=200
		CamShakeOuterRadius=900
		CamShakeFalloff=1.5f
		bOrientCameraShakeTowardsEpicenter=true
	End Object
	ExplosionTemplate=ExploTemplate0

	AmbientSoundPlayEvent=AkEvent'WW_WEP_SA_M79.Play_WEP_SA_M79_Projectile_Loop'
    AmbientSoundStopEvent=AkEvent'WW_WEP_SA_M79.Stop_WEP_SA_M79_Projectile_Loop'
}

