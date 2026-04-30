
EscarmoucheCommand = Turbine.ShellCommand();

------------------------------------------------------------------------------------------
-- commands
------------------------------------------------------------------------------------------
function EscarmoucheCommand:Execute( command, arguments )

	if ( arguments == "help" ) then
		Turbine.Shell.WriteLine(Strings.PluginHelp);
	elseif ( arguments == "show" ) then
		--Turbine.Shell.WriteLine("Show the Escarmouche Window");
		EscarmoucheWindow:SetVisible(true);
		settings.isWindowVisible = true;
		SaveSettings();
	elseif ( arguments == "esc" ) then
		if(settings.escEnable == "true") then
			Turbine.Shell.WriteLine(Strings.PluginEscDesable);
			settings.escEnable = "false";
		else
			Turbine.Shell.WriteLine(Strings.PluginEscEnable);
			settings.escEnable = "true";
		end
		SaveSettings();
------------------------------------------------------------------------------------------
-- toggle command--
------------------------------------------------------------------------------------------
	elseif ( arguments == "toggle" ) then
		if(settings.isWindowVisible == "true")then
			Turbine.Shell.WriteLine(rgb["start"] .. Strings.PluginName .. rgb["clear"] .. " - " .. Strings.PluginWindowHide);
			EscarmoucheWindow:SetVisible(false);
			settings.isWindowVisible = "false";
		else
			Turbine.Shell.WriteLine(rgb["start"] .. Strings.PluginName .. rgb["clear"] .. " - " .. Strings.PluginWindowShow);
			EscarmoucheWindow:SetVisible(true);
			settings.isWindowVisible = "true";
		end
		SaveSettings();
------------------------------------------------------------------------------------------
-- alt command--
------------------------------------------------------------------------------------------
	elseif ( arguments == "alt" ) then
		if(settings.altEnable == true) then
			Turbine.Shell.WriteLine(rgb["start"] .. Strings.PluginName .. rgb["clear"] .. " - " .. Strings.PluginAltDesable);
			settings.altEnable = false;
		else
			Turbine.Shell.WriteLine(rgb["start"] .. Strings.PluginName .. rgb["clear"] .. " - " .. Strings.PluginAltEnable);
			settings.altEnable = true;
		end
		SaveSettings();
	elseif ( arguments == "border" ) then
		EscarmoucheWindow:SetVisible(false);
		settings.isWindowVisible = false;
		if(settings.borderenable == true) then
			Turbine.Shell.WriteLine(rgb["start"] .. Strings.PluginName .. rgb["clear"] .. " - " .. Strings.PluginBorderDesable);
			settings.borderenable = false;
		else
			Turbine.Shell.WriteLine(rgb["start"] .. Strings.PluginName .. rgb["clear"] .. " - " .. Strings.PluginBorderEnable);
			settings.borderenable = true;
		end
		CreateMainWindow();
		CreateTheShortCuts();
		EscarmoucheWindow:SetVisible(true);
		settings.isWindowVisible = true;
		SaveSettings();
	elseif ( arguments == "hide" ) then
		--Turbine.Shell.WriteLine("Hide the Escarmouche Window");
		EscarmoucheWindow:SetVisible(false);
		settings.isWindowVisible = false;
		SaveSettings();
	------------------------------------------------------------------------------------------
-- default if nothing is right command--
------------------------------------------------------------------------------------------
	elseif ( arguments ~= "help" or 
			arguments ~= "show" or 
			arguments ~= "hide" or 
			arguments ~= "esc" or 
			arguments ~= "alt" or 
			arguments ~= "toggle" or 
			arguments ~= "border") then
			-- nothing found, so display the help
		Turbine.Shell.WriteLine(Strings.PluginHelp);
	end
end

Turbine.Shell.AddCommand( "Es;Escarmouche", EscarmoucheCommand );