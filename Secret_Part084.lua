ad(87.85)) * CFrame.new(0, 0, 1);
				[\"Right Hip\"] = CFrame.new(0.36, -1.02, -0.35 --[[-0.54]]) * CFrame.fromOrientation(-math.rad(169.81), math.rad(-38.46 - 90), -math.rad(87.85)) * CFrame.new(0, 0, 1) * CFrame.Angles(0, 0, -math.rad(80)) + Vector3.new(0, 0.35, -0.25);
				[\"Left Shoulder\"] = CFrame.new(-0.78, 0, -0.09) * CFrame.Angles(math.rad(-6.56), math.rad(-58.69), math.rad(-0.62)) - Vector3.new(0, 0.23, 0);
			};
			{
				--[\"bw\"] = CFrame.new(0, -0.08, 0) * CFrame.Angles(math.rad(-4), 0, 0),
				[\"rbw\"] = CFrame.new(0.5, 0.5, -0.5) * CFrame.Angles(math.rad(-4), 0, 0),
				[\"lbw\"] = CFrame.new(-0.5, 0.5, -0.5) * CFrame.Angles(math.rad(-4), 0, 0),
				[\"RootJoint\"] = CFrame.new(0, -0.91, -0.92) * CFrame.Angles(math.rad(-80.23), math.rad(0), math.rad(179.98)) + Vector3.new(0, -0.5, 0);
				[\"Neck\"] = CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(-112.86), math.rad(0.01), math.rad(179.98));
				[\"Left Hip\"] = CFrame.new(--[[0.03]] -0.36, -1.02--[[-1.07]], -0.35) * CFrame.fromOrientation(-math.rad(169.33), math.rad(48.17 + 90), -math.rad(-72.8)) * CFrame.new(0, 0, 1) * CFrame.Angles(0, 0, math.rad(80)) + Vector3.new(0, 0.6, -0.25);
				[\"Right Shoulder\"] = CFrame.new(1.08, 0.2, -0.15) * CFrame.Angles(math.rad(-4.28), math.rad(57.06), math.rad(-12.88)) - Vector3.new(0, 0.23, 0);
				[\"Right Hip\"] = CFrame.new(0.36, -1.02, -0.35 --[[-0.54]]) * CFrame.fromOrientation(-math.rad(169.81), math.rad(-38.46 - 90), -math.rad(79.57)) * CFrame.new(0, 0, 1) * CFrame.Angles(0, 0, -math.rad(80)) + Vector3.new(0, 0.6, -0.25);
				[\"Left Shoulder\"] = CFrame.new(-0.77, 0.26, -0.11) * CFrame.Angles(math.rad(-6.5), math.rad(-55.65), math.rad(-0.57)) - Vector3.new(0, 0.23, 0);
			}
		}
	},
	
	cy = {
		m_neck_delay = 1,
		m_hip_delay = 0,
		m_shoulder_delay = 0.5,
		f_neck_delay = 0.5,
		f_hip_delay = 0.5,
		f_shoulder_delay = 0,
		m_delay = 0,
		f_delay = 0.5,
		default = 10,
		sfx = 5.8,
		fortnite = CFrame.Angles(math.rad(30), 0, 0),
		offset = CFrame.new(0, 0.6, -1), --CFrame.new(0, 0.3, -1),
		shield_offset = CFrame.new(0,0,0),
		rshield_offset = CFrame.new(0.5,0.5,-0.5),
		lshield_offset = CFrame.new(-0.5,0.5,-0.5),
		bw_delay = -1,
		c_offset = CFrame.new(0.7, -1.4, -0.7) * CFrame.Angles(math.rad(-28), math.pi/2 + math.rad(40), 0),
		f_when_done = true,
		transparent = false,
		t_transparent = false, --true,
		cumshot = true,
		f_done = {
			[\"RootJoint\"] = CFrame.new(0.02, -0.07, -0.73) * CFrame.Angles(math.rad(-119.51), math.rad(0.77), math.rad(-1.36));
			[\"Left Shoulder\"] = CFrame.new(-1.07, 0.35, -0.25) * CFrame.Angles(math.rad(-136.29), math.rad(-64.22), math.rad(152.66));
			[\"Right Hip\"] = CFrame.new(0.84, -1.13, 0.32) * CFrame.Angles(math.rad(37.25), math.rad(33.65), math.rad(31.86));
			[\"Right Shoulder\"] = CFrame.new(1.11, 0.41, -0.18) * CFrame.Angles(math.rad(-154.27), math.rad(60.38), math.rad(-141.88));
			[\"Left Hip\"] = CFrame.new(-0.95, -1.17, 0.4) * CFrame.Angles(math.rad(46.36), math.rad(-37.37), math.rad(-23.69));
			[\"Neck\"] = CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(-79.45), math.rad(0), math.rad(179.98));
		},
		m_done = {
			--[\"fw\"] = CFrame.Angles(math.rad(-12), 0, 0) * CFrame.new(0, 0, 0.3) - Vector3.new(0,0.35, 0),
			[\"fw\"] = CFrame.Angles(math.rad(25), 0, 0),
			[\"RootJoint\"] = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-77.2), math.rad(-0.01), math.rad(179.98));
			[\"Left Shoulder\"] = CFrame.new(-1.12, 0.21, -0.48) * CFrame.Angles(math.rad(29.4), math.rad(-64.09), math.rad(22.11));
			[\"Right Hip\"] = CFrame.new(1, -1.04, 0.01) * CFrame.Angles(math.rad(-32.09), math.rad(77.65), math.rad(12.73));
			[\"Right Shoulder\"] = CFrame.new(1, 0.4, -0.21) * CFrame.Angles(math.rad(18.51), math.rad(54.36), math.rad(13.01));
			[\"Left Hip\"] = CFrame.new(-1, -1.04, 0.01) * CFrame.Angles(math.rad(-43.42), math.rad(-78.08), math.rad(-24.08));
			[\"Neck\"] = CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(-104.34), math.rad(0.01), math.rad(179.98));
		},
		m = {
			{
				--[\"fw\"] = CFrame.Angles(math.rad(5), 0, 0) * CFrame.new(0, 0, 0.1) - Vector3.new(0,0.35, 0),
				[\"fw\"] = CFrame.Angles(math.rad(30), 0, 0),
				[\"RootJoint\"] = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-97.85), math.rad(0), math.rad(179.98));
				[\"Neck\"] = CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(-111), math.rad(0.01), math.rad(179.98));
				[\"Left Hip\"] = CFrame.new(-1, -1, 0) * CFrame.Angles(math.rad(-43.42), math.rad(-78.08), math.rad(-52.49));
				[\"Right Shoulder\"] = CFrame.new(1, 0.42, -0.2) * CFrame.Angles(math.rad(27.89), math.rad(52.85), math.rad(16.2));
				[\"Right Hip\"] = CFrame.new(1, -1, 0) * CFrame.Angles(math.rad(-32.09), math.rad(77.65), math.rad(41.14));
				[\"Left Shoulder\"] = CFrame.new(-1.13, 0.3, -0.45) * CFrame.Angles(math.rad(36.15), math.rad(-62.98), math.rad(13.62));
			};
			{
				--[\"fw\"] = CFrame.Angles(math.rad(-12), 0, 0) * CFrame.new(0, 0, 0) - Vector3.new(0,0.35, 0),
				[\"fw\"] = CFrame.Angles(math.rad(25), 0, 0),
				[\"RootJoint\"] = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-82.85), math.rad(0), math.rad(179.98));
				[\"Neck\"] = CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(-121.98), math.rad(0.01), math.rad(179.98));
				[\"Left Hip\"] = CFrame.new(-1, -1.04, 0.01) * CFrame.Angles(math.rad(-43.42), math.rad(-78.08), math.rad(-29.24));
				[\"Right Shoulder\"] = CFrame.new(1, 0.4, -0.21) * CFrame.Angles(math.rad(18.51), math.rad(54.36), math.rad(13.01));
				[\"Right Hip\"] = CFrame.new(1, -1.04, 0.01) * CFrame.Angles(math.rad(-32.09), math.rad(77.65), math.rad(17.89));
				[\"Left Shoulder\"] = CFrame.new(-1.12, 0.21, -0.48) * CFrame.Angles(math.rad(29.4), math.rad(-64.09), math.rad(22.11));
			};
		},
		f = {
			{
				[\"bw\"] = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(6), 0, 0),
				[\"RootJoint\"] = CFrame.new(0.02, -0.05, -0.87) * CFrame.Angles(math.rad(-114), math.rad(0.64), math.rad(-1.43));
				[\"Neck\"] = CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(-121.13), math.rad(0.01), math.rad(179.98));
				[\"Left Hip\"] = CFrame.new(-0.95, -1.17, 0.4) * CFrame.Angles(math.rad(52.81), math.rad(-39.8), math.rad(-20.67));
				[\"Right Shoulder\"] = CFrame.new(1.11, 0.41, -0.18) * CFrame.Angles(math.rad(-154.27), math.rad(60.38), math.rad(-142.88));
				[\"Right Hip\"] = CFrame.new(0.84, -1.13, 0.32) * CFrame.Angles(math.rad(39.01), math.rad(34.49), math.rad(31.46));
				[\"Left Shoulder\"] = CFrame.new(-1.07, 0.35, -0.25) * CFrame.Angles(math.rad(-136.29), math.rad(-64.22), math.rad(153.66));
			};
			{
				[\"bw\"] = CFrame.new(0, 0, 0),
				[\"RootJoint\"] = CFrame.new(0.02, -0.07, -0.73) * CFrame.Angles(math.rad(-111.46), math.rad(0.57), math.rad(-1.46));
				[\"Neck\"] = CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(-105.9), math.rad(0.01), math.rad(179.98));
				[\"Left Hip\"] = CFrame.new(-0.95, -1.17, 0.4) * CFrame.Angles(math.rad(54.61), math.rad(-40.38), math.rad(-22.49));
				[\"Right Shoulder\"] = CFrame.new(1.11, 0.41, -0.18) * CFrame.Angles(math.rad(-154.27), math.rad(60.38), math.rad(-138.32));
				[\"Right Hip\"] = CFrame.new(0.84, -1.13, 0.32) * CFrame.Angles(math.rad(43.61), math.rad(37), math.rad(30.96));
				[\"Left Shoulder\"] = CFrame.new(-1.07, 0.35, -0.25) * CFrame.Angles(math.rad(-136.29), math.rad(-64.22), math.rad(149.1));
			};
		}
	},
	dg = {
		m_neck_delay = 1,
		m_hip_delay = 0,
		m_shoulder_delay = 0,
		f_neck_delay = 0.5,
		f_hip_delay = 0,
		f_shoulder_delay = 0,
		m_delay = 0,
		f_delay = 0,
		default = 10,
		sfx = 5.8,
		fortnite = CFrame.Angles(math.rad(-25), 0, 0),
		offset =  CFrame.new(0, 0.1, -1.5),
		shield_offset = CFrame.new(0,0,0),
		rshield_offset = CFrame.new(0.5,0.5,-0.5),
		lshield_offset = CFrame.new(-0.5,0.5,-0.5),
		bw_delay = -1,
		c_offset = CFrame.new(0, -1, -1.9) * CFrame.Angles(math.pi + math.rad(20),0,0),
		f_when_done = true,
		transparent = false,
		t_transparent = false,
		cumshot = true,
		f_done = {
			[\"RootJoint\"] = CFrame.new(0, -1.79, -1.78) * CFrame.Angles(math.rad(165.09), math.rad(0.02), math.rad(-179.99));
			[\"Neck\"] = CFrame.new(0, 0.93, 0.22) * CFrame.Angles(math.rad(25.74), math.rad(-0.02), math.rad(-179.99));
			[\"Left Hip\"] = CFrame.new(-1.11, -1.29, 0.17) * CFrame.Angles(math.rad(18.95), math.rad(-68.12), math.rad(-82.48));
			[\"Right Shoulder\"] = CFrame.new(0.98, 0.99, -0.65) * CFrame.Angles(math.rad(-63.63), math.rad(34.99), math.rad(-95.61));
			[\"Right Hip\"] = CFrame.new(1.14, -1.13, 0.24) * CFrame.Angles(math.rad(2.7), math.rad(72.85), math.rad(95.72));
			[\"Left Shoulder\"] = CFrame.new(-0.98, 0.93, -0.56) * CFrame.Angles(math.rad(-73.43), math.rad(-30.77), math.rad(86.5));
		},
		m_done = {
			[\"fw\"] = CFrame.Angles(math.rad(-26), 0, 0) * CFrame.new(0, 0, 0.2) - Vector3.new(0,0.35, 0),
			[\"RootJoint\"] = CFrame.new(0, -0.1, -1.18) * CFrame.Angles(math.rad(-82.27), math.rad(0), math.rad(179.98));
			[\"Neck\"] = CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(-88.04), math.rad(0), math.rad(179.98));
			[\"Left Hip\"] = CFrame.new(-1, -1, 0) * CFrame.Angles(math.rad(-26.35), math.rad(-78.53), math.rad(-5.69));
			[\