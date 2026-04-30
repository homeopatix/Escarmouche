------------------------------------------------------------------------------------------
-- import librarys
------------------------------------------------------------------------------------------ 
import "Homeopatix.Escarmouche.Librarys";

Turbine.Shell.WriteLine("<rgb=#DAA520>Escarmouche</rgb> <rgb=#DDDDDD>".. plugin:GetVersion() .." par Homeo</rgb>")

CreateLocalizationInfo();
LoadSettings();

------------------------------------------------------------------------------------------
-- create the main window
------------------------------------------------------------------------------------------
CreateMainWindow();

------------------------------------------------------------------------------------------
-- setting the shortcuts
------------------------------------------------------------------------------------------
CreateTheShortCuts();

------------------------------------------------------------------------------------------
-- mouse handler
------------------------------------------------------------------------------------------
MouseHandler();

------------------------------------------------------------------------------------------
-- setting the shortcuts for drag and drop
------------------------------------------------------------------------------------------
SetDragAndDrop();

------------------------------------------------------------------------------------------
-- handle minimizeIcon
------------------------------------------------------------------------------------------
if(settings.isWindowVisible == "true") then
	MainMinimizedIcon = MinimizedIcon(Images.MinimizedIcon, 32, 32, EscarmoucheWindow:SetVisible(true));
else
	MainMinimizedIcon = MinimizedIcon(Images.MinimizedIcon, 32, 32, EscarmoucheWindow:SetVisible(false));
end
MainMinimizedIcon:SetPosition(settings.minimizeX, settings.minimizeY);
MainMinimizedIcon:SetZOrder(0);
MainMinimizedIcon.PositionChanged = function()
	settings.minimizeX = MainMinimizedIcon:GetLeft();
	settings.minimizeY = MainMinimizedIcon:GetTop();
	SaveSettings();
end

function EscarmoucheWindow:Closing(sender, args)
	settings.isWindowVisible = "false";
	SaveSettings();
end

------------------------------------------------------------------------------------------
-- event handling
------------------------------------------------------------------------------------------
EscarmoucheWindow.KeyDown=function(sender, args)
	if ( args.Action == Turbine.UI.Lotro.Action.Escape ) then
		if(settings.escEnable == "true") then
			EscarmoucheWindow:SetVisible(false);
			settings.isWindowVisible = "false";
			SaveSettings();
		end
	end
	
	-- https://www.lotro.com/forums/showthread.php?493466-How-to-hide-a-window-on-F12&p=6581962#post6581962
	if ( args.Action == 268435635 ) then
		hudVisible=not hudVisible;
		if hudVisible then
			EscarmoucheWindow:SetVisible(false);
			MainMinimizedIcon:SetVisible(false);
		else
			if(settings.isWindowVisible == "true") then
				EscarmoucheWindow:SetVisible(true);
			else
				EscarmoucheWindow:SetVisible(false);
			end
			MainMinimizedIcon:SetVisible(true);
		end
	end
end

------------------------------------------------------------------------------------------
-- if the position changes, save the new window location
------------------------------------------------------------------------------------------
EscarmoucheWindow.PositionChanged = function( sender, args )
    local x,y = EscarmoucheWindow:GetPosition();
    settings.positionX = x;
    settings.positionY = y;
	SaveSettings();
end