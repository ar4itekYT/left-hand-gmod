local rh = CreateClientConVar("cl_righthand", 1, true, false, "Choose your hand. 1: Right hand, 0: Left hand.", 0, 1)

timer.Create("RightHand", 1, 0, function()

	for k,v in pairs(ents.GetAll()) do 

		if !rh:GetBool() then

			if (v:IsWeapon() and !v.VMchanged) then 

				if v.ViewModelFlip then v.ViewModelFlip = false 
				else v.ViewModelFlip = true 
				end

				v.VMchanged = true 

			end 

		else
		
			if (v:IsWeapon() and v.VMchange ) then 

				if v.ViewModelFlip then v.ViewModelFlip = false
				else v.ViewModelFlip = true
				end
				
				v.VMchanged = false
				
			end 
		
		end

	end

end)
