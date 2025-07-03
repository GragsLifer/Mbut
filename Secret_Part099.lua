ion playAnimation(animName, transitionTime, humanoid) 
		
	local roll = math.random(1, animTable[animName].totalWeight) 
	local origRoll = roll
	local idx = 1
	while (roll > animTable[animName][idx].weight) do
		roll = roll - animTable[animName][idx].weight
		idx = idx + 1
	end
--		print(animName .. \" \" .. idx .. \" [\" .. origRoll .. \"]\")
	local anim = animTable[animName][idx].anim

	-- switch animation		
	if (anim ~= currentAnimInstance) then
		
		if (currentAnimTrack ~= nil) then
			currentAnimTrack:Stop(transitionTime)
			currentAnimTrack:Destroy()
		end

		currentAnimSpeed = 1.0
	
		-- load it to the humanoid; get AnimationTrack
		currentAnimTrack = humanoid:LoadAnimation(anim)
		currentAnimTrack.Priority = Enum.AnimationPriority.Core
		 
		-- play the animation
		currentAnimTrack:Play(transitionTime)
		currentAnim = animName
		currentAnimInstance = anim

		-- set up keyframe name triggers
		if (currentAnimKeyframeHandler ~= nil) then
			currentAnimKeyframeHandler:disconnect()
		end
		currentAnimKeyframeHandler = currentAnimTrack.KeyframeReached:connect(keyFrameReachedFunc)
		
	end

end

-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------

local toolAnimName = \"\"
local toolAnimTrack = nil
local toolAnimInstance = nil
local currentToolAnimKeyframeHandler = nil

function toolKeyFrameReachedFunc(frameName)
	if (frameName == \"End\") then
--		print(\"Keyframe : \".. frameName)	
		playToolAnimation(toolAnimName, 0.0, Humanoid)
	end
end


function playToolAnimation(animName, transitionTime, humanoid, priority)	 
		
		local roll = math.random(1, animTable[animName].totalWeight) 
		local origRoll = roll
		local idx = 1
		while (roll > animTable[animName][idx].weight) do
			roll = roll - animTable[animName][idx].weight
			idx = idx + 1
		end
--		print(animName .. \" * \" .. idx .. \" [\" .. origRoll .. \"]\")
		local anim = animTable[animName][idx].anim

		if (toolAnimInstance ~= anim) then
			
			if (toolAnimTrack ~= nil) then
				toolAnimTrack:Stop()
				toolAnimTrack:Destroy()
				transitionTime = 0
			end
					
			-- load it to the humanoid; get AnimationTrack
			toolAnimTrack = humanoid:LoadAnimation(anim)
			if priority then
				toolAnimTrack.Priority = priority
			end
			 
			-- play the animation
			toolAnimTrack:Play(transitionTime)
			toolAnimName = animName
			toolAnimInstance = anim

			currentToolAnimKeyframeHandler = toolAnimTrack.KeyframeReached:connect(toolKeyFrameReachedFunc)
		end
end

function stopToolAnimations()
	local oldAnim = toolAnimName

	if (currentToolAnimKeyframeHandler ~= nil) then
		currentToolAnimKeyframeHandler:disconnect()
	end

	toolAnimName = \"\"
	toolAnimInstance = nil
	if (toolAnimTrack ~= nil) then
		toolAnimTrack:Stop()
		toolAnimTrack:Destroy()
		toolAnimTrack = nil
	end


	return oldAnim
end

-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------


function onRunning(speed)
	if speed > 0.01 then
		playAnimation(\"walk\", 0.1, Humanoid)
		if currentAnimInstance and currentAnimInstance.AnimationId == \"http://www.roblox.com/asset/?id=180426354\" then
			setAnimationSpeed(speed / 14.5)
		end
		pose = \"Running\"
	else
		if emoteNames[currentAnim] == nil then
			playAnimation(\"idle\", 0.1, Humanoid)
			pose = \"Standing\"
		end
	end
end

function onDied()
	pose = \"Dead\"
end

function onJumping()
	playAnimation(\"jump\", 0.1, Humanoid)
	jumpAnimTime = jumpAnimDuration
	pose = \"Jumping\"
end

function onClimbing(speed)
	playAnimation(\"climb\", 0.1, Humanoid)
	setAnimationSpeed(speed / 12.0)
	pose = \"Climbing\"
end

function onGettingUp()
	pose = \"GettingUp\"
end

function onFreeFall()
	if (jumpAnimTime <= 0) then
		playAnimation(\"fall\", fallTransitionTime, Humanoid)
	end
	pose = \"FreeFall\"
end

function onFallingDown()
	pose = \"FallingDown\"
end

function onSeated()
	pose = \"Seated\"
end

function onPlatformStanding()
	pose = \"PlatformStanding\"
end

function onSwimming(speed)
	if speed > 0 then
		pose = \"Running\"
	else
		pose = \"Standing\"
	end
end

function getTool()	
	for _, kid in ipairs(Figure:GetChildren()) do
		if kid.className == \"Tool\" then return kid end
	end
	return nil
end

function getToolAnim(tool)
	for _, c in ipairs(tool:GetChildren()) do
		if c.Name == \"toolanim\" and c.className == \"StringValue\" then
			return c
		end
	end
	return nil
end

function animateTool()
	
	if (toolAnim == \"None\") then
		playToolAnimation(\"toolnone\", toolTransitionTime, Humanoid, Enum.AnimationPriority.Idle)
		return
	end

	if (toolAnim == \"Slash\") then
		playToolAnimation(\"toolslash\", 0, Humanoid, Enum.AnimationPriority.Action)
		return
	end

	if (toolAnim == \"Lunge\") then
		playToolAnimation(\"toollunge\", 0, Humanoid, Enum.AnimationPriority.Action)
		return
	end
end

function moveSit()
	RightShoulder.MaxVelocity = 0.15
	LeftShoulder.MaxVelocity = 0.15
	RightShoulder:SetDesiredAngle(3.14 /2)
	LeftShoulder:SetDesiredAngle(-3.14 /2)
	RightHip:SetDesiredAngle(3.14 /2)
	LeftHip:SetDesiredAngle(-3.14 /2)
end

local lastTick = 0

function move(time)
	local amplitude = 1
	local frequency = 1
  	local deltaTime = time - lastTick
  	lastTick = time

	local climbFudge = 0
	local setAngles = false

  	if (jumpAnimTime > 0) then
  		jumpAnimTime = jumpAnimTime - deltaTime
  	end

	if (pose == \"FreeFall\" and jumpAnimTime <= 0) then
		playAnimation(\"fall\", fallTransitionTime, Humanoid)
	elseif (pose == \"Seated\") then
		playAnimation(\"sit\", 0.5, Humanoid)
		return
	elseif (pose == \"Running\") then
		playAnimation(\"walk\", 0.1, Humanoid)
	elseif (pose == \"Dead\" or pose == \"GettingUp\" or pose == \"FallingDown\" or pose == \"Seated\" or pose == \"PlatformStanding\") then
--		print(\"Wha \" .. pose)
		stopAllAnimations()
		amplitude = 0.1
		frequency = 1
		setAngles = true
	end

	if (setAngles) then
		local desiredAngle = amplitude * math.sin(time * frequency)

		RightShoulder:SetDesiredAngle(desiredAngle + climbFudge)
		LeftShoulder:SetDesiredAngle(desiredAngle - climbFudge)
		RightHip:SetDesiredAngle(-desiredAngle)
		LeftHip:SetDesiredAngle(-desiredAngle)
	end

	-- Tool Animation handling
	local tool = getTool()
	if tool and tool:FindFirstChild(\"Handle\") then
	
		local animStringValueObject = getToolAnim(tool)

		if animStringValueObject then
			toolAnim = animStringValueObject.Value
			-- message recieved, delete StringValue
			animStringValueObject.Parent = nil
			toolAnimTime = time + .3
		end

		if time > toolAnimTime then
			toolAnimTime = 0
			toolAnim = \"None\"
		end

		animateTool()		
	else
		stopToolAnimations()
		toolAnim = \"None\"
		toolAnimInstance = nil
		toolAnimTime = 0
	end
end

-- connect events
Humanoid.Died:connect(onDied)
Humanoid.Running:connect(onRunning)
Humanoid.Jumping:connect(onJumping)
Humanoid.Climbing:connect(onClimbing)
Humanoid.GettingUp:connect(onGettingUp)
Humanoid.FreeFalling:connect(onFreeFall)
Humanoid.FallingDown:connect(onFallingDown)
Humanoid.Seated:connect(onSeated)
Humanoid.PlatformStanding:connect(onPlatformStanding)
Humanoid.Swimming:connect(onSwimming)

-- setup emote chat hook
game:GetService(\"Players\").LocalPlayer.Chatted:connect(function(msg)
	local emote = \"\"
	if msg == \"/e dance\" then
		emote = dances[math.random(1, #dances)]
	elseif (string.sub(msg, 1, 3) == \"/e \") then
		emote = string.sub(msg, 4)
	elseif (string.sub(msg, 1, 7) == \"/emote \") then
		emote = string.sub(msg, 8)
	end
	
	if (pose == \"Standing\" and emoteNames[emote] ~= nil) then
		playAnimation(emote, 0.1, Humanoid)
	end

end)


-- main program

-- initialize to idle
playAnimation(\"idle\", 0.1, Humanoid)
pose = \"Standing\"

while Figure.Parent ~= nil do
	local _, time = wait(0.1)
	move(time)
end


"
    obj598966.Parent = obj679097
        local obj691226 = Instance.new("StringValue")
        obj691226.Name = "idle"
        obj691226.Parent = obj598966
            local obj547891 = Instance.new("Animation")
            obj547891.Name = "Animation1"
            obj547891.Parent = obj691226
                local obj134620 = Instance.new("NumberValue")
                obj134620.Name = "Weight"
                obj134620.Parent = obj547891
            local obj416450 = Instance.new("Animation")
            obj416450.Name = "Animation2"
            obj416450.Parent = obj691226
                local obj571260 = Instance.new("NumberValue")
                obj571260.Name = "Weight"
                obj571260.Parent = obj416450
        local obj446011 = Instance.new("StringValue")
        obj446011.Name = "walk"
        obj446011.Parent = obj598966
            local obj888993 = Instance.new("Animation")
            obj888993.Name = "WalkAnim"
            obj888993.Parent = obj446011
        local obj155912 = Instance.new("StringValue")
        obj155912.Name = "run"
        obj155912.Parent = obj598966
            local obj293522 = Instance.new("Animation")
  