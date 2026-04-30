
------------------------------------------------------------------------------------------
-- create or load the settings
------------------------------------------------------------------------------------------
function LoadSettings()
settings = PatchDataLoad(Turbine.DataScope.Character, "Escarmouche_Settings", settings);

	if ( type( settings ) ~= "table" ) then
		settings = { };
	end
	
	if ( not settings.positionX) then		
		settings.positionX = ( Turbine.UI.Display:GetWidth()/2 - 200);		
	end
	
	if ( not settings.positionY) then	
		settings.positionY = ( Turbine.UI.Display.GetHeight()/2 - 200);
	end	
		
	if ( not settings.minimizeX) then	
		settings.minimizeX = 0;
	end

	if ( not settings.minimizeY) then	
		settings.minimizeY = 0;
	end
	
	if ( not settings.shortcutData_1) then	
		settings.shortcutData_1 = tostring("");
	end	
	
	if ( not settings.shortcutType_1) then	
		settings.shortcutType_1 = 6;
	end
	
	if ( not settings.shortcutData_2) then	
		settings.shortcutData_2 = tostring("");
	end	
	
	if ( not settings.shortcutType_2) then	
		settings.shortcutType_2 = 6;
	end
	
	if ( not settings.isMinimizeEnabled) then	
		settings.isMinimizeEnabled = true;
	end

	if ( not settings.isWindowVisible) then	
		settings.isWindowVisible = true;
	end
	
	if ( not settings.escEnable) then	
		settings.escEnable = true;
	end

end