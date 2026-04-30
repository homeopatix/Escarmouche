
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
		settings.isWindowVisible = tostring("true");
	end
	
	if ( not settings.escEnable) then	
		settings.escEnable = tostring("false");
	end

	if ( not settings.altEnable) then	
		settings.altEnable = true;
	end

	if ( not settings.borderenable) then	
		settings.borderenable = false;
	end

	------------------------------------------------------------------------------------------
-- RGB color codes --
------------------------------------------------------------------------------------------
rgb = {
    start = "<rgb=#DAA520>",
    gold = "<rgb=#FFD700>",
    orange = "<rgb=#EE8F12>",
    white = "<rgb=#FFFFFF>",
    green = "<rgb=#1FE126>",
    blue = "<rgb=#1FCDE1>",
    purple = "<rgb=#9B41CE>",
    yellow = "<rgb=#FFFF00>",
    grey = "<rgb=#C7C7BE>",
    red = "<rgb=#FF0000>",
    error = "<rgb=#FF0000>",
    clear = "</rgb>"
};
end

------------------------------------------------------------------------------------------
-- create the save settings
------------------------------------------------------------------------------------------
function SaveSettings()
	settings.positionX = tostring(settings.positionX);
   	settings.positionY = tostring(settings.positionY);
	settings.minimizeX = tostring(settings.minimizeX);
   	settings.minimizeY = tostring(settings.minimizeY);
	settings.isWindowVisible = tostring(settings.isWindowVisible);
	settings.shortcutData_1 = tostring(settings.shortcutData_1);
   	settings.shortcutData_2 = tostring(settings.shortcutData_2);
   	settings.escEnable = tostring(settings.escEnable);
	settings.altEnable = settings.altEnable;
	settings.borderenable = settings.borderenable;
   
   -- save the settings
	PatchDataSave( Turbine.DataScope.Character, "Escarmouche_Settings", settings);
end