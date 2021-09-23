
--  age (in seconds) at which the explosion actor deletes itself
--  make sure this exceedes the age of all effects
LifeSpan = 5.0

Effects =
{
	{
		Type = "trail",
		Texture = "mods/weapon_pack/effects/media/trail.tga",
		LocalPosition = { x = 0, y = 0, z = 9.0 },
		Colour = { 175, 190, 255, 255 },
		Additive = false,
		Width = 20,
		Length = 0.40,
		Keyframes = 100,
		KeyframePeriod = 0.05,
		RepeatRate = 0.001,
		ScrollRate = 0,
		FattenRate = 0,
	},
	{
		Type = "sparks",
		TimeToTrigger = 0.0,
		SparkCount = 16,
		BurstPeriod = 0.010,
		SparksPerBurst = 1,
		LocalPosition = { x = 0, y = 0, z = -1 },
		Sprite = path .. "/effects/media/HowitzerParticles11.png",

		Gravity = 0,

		NormalDistribution =					-- distribute sparks evenly between two angles with optional variation
		{
			Mean = 0,
			StdDev = 15,						-- standard deviation at each iteration in degrees (zero will make them space perfectly even)
		},
		
		Keyframes =							
		{
			{
				Angle = 0,
				RadialOffsetMin = 0,
				RadialOffsetMax = 0,
				ScaleMean = 3.0,
				ScaleStdDev = .2,
				SpeedStretch = 0,
				SpeedMean = 50,
				SpeedStdDev = 0,
				Drag = 0.1,
				RotationMean = 0,
				RotationStdDev = 20,
				RotationalSpeedMean = 0,
				RotationalSpeedStdDev = 25,	
				AgeMean = 0.19,
				AgeStdDev = 0.1,
				AlphaKeys = { 0.1, 1 },
				ScaleKeys = { 0.1, 0.2 },
				colour = { 255, 255, 255, 255 },
			},
		},
	},
}
SoundEvent = "mods/VanillaPlusBank/EMP_trail"