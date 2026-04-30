------------------------------------------------------------------------------------------
-- setting the shortcuts
------------------------------------------------------------------------------------------
function CreateTheShortCuts()

	if(settings.shortcutData_1 ~= "") then
		centerQS1:SetShortcut( Turbine.UI.Lotro.Shortcut( 6, settings.shortcutData_1 ) );
	end

	if(settings.shortcutData_2 ~= "") then
		centerQS2:SetShortcut( Turbine.UI.Lotro.Shortcut( 6, settings.shortcutData_2 ) );
	end

	settings.shortcutData_1 = "0x7001AA28"; -- fishing
	settings.shortcutData_2 = "0x7001C4C8"; -- canne a peche en lebthron
end

------------------------------------------------------------------------------------------
-- mouse click handler
------------------------------------------------------------------------------------------
function MouseHandler()
	centerQS1.MouseEnter = function(sender, args)
		EscarmoucheWindow.Message:SetText(""); 
		EscarmoucheWindow.Message:SetText(Strings.PluginText_1); 
	end

	centerQS2.MouseEnter = function(sender, args)
		EscarmoucheWindow.Message:SetText("");
		EscarmoucheWindow.Message:SetText(Strings.PluginText_2); 
	end

	centerQS1.MouseLeave = function(sender, args)
		EscarmoucheWindow.Message:SetText(Strings.PluginText);
	end

	centerQS2.MouseLeave = function(sender, args)
		EscarmoucheWindow.Message:SetText(Strings.PluginText);
	end
end

------------------------------------------------------------------------------------------
-- setting the shortcuts for drag and drop
------------------------------------------------------------------------------------------
function SetDragAndDrop()
	centerQS1.DragDrop = function(sender, args)
		local tmp = Turbine.UI.Lotro.Quickslot();
		
		tmp = centerQS1:GetShortcut();
		tmp = tmp:GetData();
	
		local tmp2 = Turbine.UI.Lotro.Quickslot();
		tmp2 = centerQS1:GetShortcut();
		tmp2 = tmp2:GetType();

	
		--Turbine.Shell.WriteLine("Data : " .. tmp); -- display the ID of the schortcut
		--Turbine.Shell.WriteLine("Type : " .. tmp2); -- display the Type of the schortcut

		settings.shortcutData_1 = tmp;

		SaveSettings();
	end
	centerQS2.DragDrop = function(sender, args)
		local tmp = Turbine.UI.Lotro.Quickslot();
		
		tmp = centerQS2:GetShortcut();
		tmp = tmp:GetData();
	
		settings.shortcutData_2 = tmp;

		SaveSettings();
	end
end