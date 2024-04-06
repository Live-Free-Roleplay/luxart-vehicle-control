--[[
---------------------------------------------------
LUXART VEHICLE CONTROL V3 (FOR FIVEM)
---------------------------------------------------
Coded by Lt.Caine
ELS Clicks by Faction
Additions by TrevorBarns
---------------------------------------------------
FILE: SIRENS.lua
PURPOSE: Associate specific sirens with specific
vehicles. Siren assignments. 
---------------------------------------------------
SIREN TONE TABLE: 
	ID- Generic Name	(SIREN STRING)									[vehicles.awc name]
	1 - Airhorn 		(SIRENS_AIRHORN)								[AIRHORN_EQD]
	2 - Wail 			(VEHICLES_HORNS_SIREN_1)						[SIREN_PA20A_WAIL]
	3 - Yelp 			(VEHICLES_HORNS_SIREN_2)						[SIREN_2]
	4 - Priority 		(VEHICLES_HORNS_POLICE_WARNING)					[POLICE_WARNING]
	5 - CustomA* 		(RESIDENT_VEHICLES_SIREN_WAIL_01)				[SIREN_WAIL_01]
	6 - CustomB* 		(RESIDENT_VEHICLES_SIREN_WAIL_02)				[SIREN_WAIL_02]
	7 - CustomC* 		(RESIDENT_VEHICLES_SIREN_WAIL_03)				[SIREN_WAIL_03]
	8 - CustomD* 		(RESIDENT_VEHICLES_SIREN_QUICK_01)				[SIREN_QUICK_01]
	9 - CustomE* 		(RESIDENT_VEHICLES_SIREN_QUICK_02)				[SIREN_QUICK_02]
	10 - CustomF* 		(RESIDENT_VEHICLES_SIREN_QUICK_03)				[SIREN_QUICK_03]
	11 - Powercall 		(VEHICLES_HORNS_AMBULANCE_WARNING)				[AMBULANCE_WARNING]
	12 - FireHorn	 	(VEHICLES_HORNS_FIRETRUCK_WARNING)				[FIRE_TRUCK_HORN]
	13 - Firesiren 		(RESIDENT_VEHICLES_SIREN_FIRETRUCK_WAIL_01)		[SIREN_FIRETRUCK_WAIL_01]
	14 - Firesiren2 	(RESIDENT_VEHICLES_SIREN_FIRETRUCK_QUICK_01)	[SIREN_FIRETRUCK_QUICK_01]
]]

RequestScriptAudioBank("DLC_SERVERSIDEAUDIO\\OISS_SSA_VEHAUD_LSPD_NEW", false)
RequestScriptAudioBank("DLC_SERVERSIDEAUDIO\\OISS_SSA_VEHAUD_BCSO_NEW", false)
RequestScriptAudioBank("DLC_SERVERSIDEAUDIO\\OISS_SSA_VEHAUD_SAHP_NEW", false)
RequestScriptAudioBank("DLC_SERVERSIDEAUDIO\\OISS_SSA_VEHAUD_LSPP_NEW", false)
RequestScriptAudioBank("DLC_SERVERSIDEAUDIO\\OISS_SSA_VEHAUD_LSFD_NEW", false)
RequestScriptAudioBank("DLC_SERVERSIDEAUDIO\\OISS_SSA_VEHAUD_LSCOFD_NEW", false)
RequestScriptAudioBank("DLC_SERVERSIDEAUDIO\\OISS_SSA_VEHAUD_SAMS_NEW", false)

-- CHANGE SIREN NAMES, AUDIONAME, AUDIOREF
SIRENS = {	
	--[[1]]	  { Name = 'Airhorn', 		String = 'SIRENS_AIRHORN', 								Ref = 0 }, --1
	--[[2]]	  { Name = 'Wail', 			String = 'VEHICLES_HORNS_SIREN_1', 						Ref = 0 }, --2
	--[[3]]	  { Name = 'Yelp', 			String = 'VEHICLES_HORNS_SIREN_2', 						Ref = 0 }, --3
	--[[4]]	  { Name = 'Priority', 		String = 'VEHICLES_HORNS_POLICE_WARNING', 				Ref = 0 }, --4
	--[[5]]	  { Name = 'CustomA', 		String = 'RESIDENT_VEHICLES_SIREN_WAIL_01', 			Ref = 0 }, --5
	--[[6]]	  { Name = 'CustomB', 		String = 'RESIDENT_VEHICLES_SIREN_WAIL_02', 			Ref = 0 }, --6
	--[[7]]	  { Name = 'CustomC', 		String = 'RESIDENT_VEHICLES_SIREN_WAIL_03', 			Ref = 0 }, --7
	--[[8]]	  { Name = 'CustomD', 		String = 'RESIDENT_VEHICLES_SIREN_QUICK_01', 			Ref = 0 }, --8
	--[[9]]	  { Name = 'CustomE',		String = 'RESIDENT_VEHICLES_SIREN_QUICK_02',			Ref = 0 }, --9
	--[[10]]  { Name = 'CustomF',		String = 'RESIDENT_VEHICLES_SIREN_QUICK_03', 			Ref = 0 }, --10
	--[[11]]  { Name = 'Powercall', 	String = 'VEHICLES_HORNS_AMBULANCE_WARNING', 			Ref = 0 }, --11
	--[[12]]  { Name = 'Fire Horn', 	String = 'VEHICLES_HORNS_FIRETRUCK_WARNING', 			Ref = 0 }, --12
	--[[13]]  { Name = 'Fire Yelp', 	String = 'RESIDENT_VEHICLES_SIREN_FIRETRUCK_WAIL_01', 	Ref = 0 }, --13
	--[[14]]  { Name = 'Fire Wail', 	String = 'RESIDENT_VEHICLES_SIREN_FIRETRUCK_QUICK_01', 	Ref = 0 }, --14
  { Name = 'Epsilon Airhorn', 	String = 'OISS_SSA_VEHAUD_LSPD_NEW_HORN', 	Ref = 'OISS_SSA_VEHAUD_LSPD_NEW_SOUNDSET' },
  { Name = 'Epsilon Wail', 	String = 'OISS_SSA_VEHAUD_LSPD_NEW_SIREN_ADAM', 	Ref = 'OISS_SSA_VEHAUD_LSPD_NEW_SOUNDSET' },
  { Name = 'Epsilon Yelp', 	String = 'OISS_SSA_VEHAUD_LSPD_NEW_SIREN_BOY', 	Ref = 'OISS_SSA_VEHAUD_LSPD_NEW_SOUNDSET' },
  { Name = 'Epsilon Priority', 	String = 'OISS_SSA_VEHAUD_LSPD_NEW_SIREN_CHARLES', 	Ref = 'OISS_SSA_VEHAUD_LSPD_NEW_SOUNDSET' },
  { Name = 'Fire Airhorn', 	String = 'OISS_SSA_VEHAUD_LSFD_NEW_HORN', 	Ref = 'OISS_SSA_VEHAUD_LSFD_NEW_SOUNDSET' },
  { Name = 'Fire Wail', 	String = 'OISS_SSA_VEHAUD_LSFD_NEW_SIREN_ADAM', 	Ref = 'OISS_SSA_VEHAUD_LSFD_NEW_SOUNDSET' },
  { Name = 'Fire Yelp', 	String = 'OISS_SSA_VEHAUD_LSFD_NEW_SIREN_BOY', 	Ref = 'OISS_SSA_VEHAUD_LSFD_NEW_SOUNDSET' },
  { Name = 'Fire Priority', 	String = 'OISS_SSA_VEHAUD_LSFD_NEW_SIREN_CHARLES', 	Ref = 'OISS_SSA_VEHAUD_LSFD_NEW_SOUNDSET' },
}

--ASSIGN SIRENS TO VEHICLES
SIREN_ASSIGNMENTS = {
	--['<gameName>'] = {tones},
	--['DEFAULT'] = { 1, 2, 3, 4 }, 
  ['DEFAULT'] = { 15, 16, 17, 18 }, 
	['amr13fpiu'] = { 15, 16, 17, 22 },
  ['amr16fpiu'] = { 15, 16, 17, 22 }, 
  ['amr18tahoe'] = { 15, 16, 17, 22 }, 
  ['amrf150'] = { 15, 16, 17, 22 }, 
  ['amrf250'] = { 15, 16, 17, 22 }, 
}