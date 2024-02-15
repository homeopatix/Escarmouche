ResourcePath = "Homeopatix/Escarmouche/Resources/";

Images = {
	MinimizedIcon = ResourcePath .. "Escarmouche.tga",
};


function CreateLocalizationInfo()
	Strings = {};

	if Turbine.Engine.GetLanguage() == Turbine.Language.German then
		Strings.PluginName = "Helper";
		Strings.PluginText = "Escarmouche";
		Strings.PluginText_1 = "Ruf den Soldaten an";
		Strings.PluginText_2 = "F\195\188hre den Soldaten";
		Strings.PluginEscEnable = "Escarmouche - Escape-Taste aktiviert";
		Strings.PluginEscDesable = "Escarmouche - Escape-Taste deaktiviert";
		Strings.PluginAltEnable = "Alt-Taste aktiviert";
		Strings.PluginAltDesable = "Alt-Taste deaktiviert";
		Strings.PluginWindowShow = "Schaufenster.";
		Strings.PluginWindowHide = "Verstecke das Fenster.";
		Strings.PluginBorderDesable = "Border deaktiviert";
		Strings.PluginBorderEnable = "Border aktiviert";
		Strings.PluginHelp = " *** Escarmouche Aide ***\n\n" ..
		"/show zeige das Fenster\n" ..
		"/hide verstecke das Fenster\n" ..
		"/alt - Aktivieren oder deaktivieren Sie die alt-Taste um das Symbol zu verschieben.\n" ..
		"/toggle - Fenster ein-oder ausblenden\n\n" ..
		"/esc aktiviert oder deaktiviert das Fenster, das mit der Escape-Taste geschlossen wird";

	elseif Turbine.Engine.GetLanguage() == Turbine.Language.French then
		Strings.PluginName = "Helper";
		Strings.PluginText = "Escarmouche";
		Strings.PluginText_1 = "Appeler le soldat";
		Strings.PluginText_2 = "Diriger le soldat";
		Strings.PluginEscEnable = "Escarmouche - Touche Escape activ\195\169";
		Strings.PluginEscDesable = "Escarmouche - Touche Escape desactiv\195\169";
		Strings.PluginAltEnable = "Touche Alt activ\195\169";
		Strings.PluginAltDesable = "Touche Alt desactiv\195\169";
		Strings.PluginWindowShow = "Affiche la fen\195\168tre.";
		Strings.PluginWindowHide = "Cache la fen\195\168tre.";
		Strings.PluginBorderDesable = "Border desactiv\195\169";
		Strings.PluginBorderEnable = "Border activ\195\169";
		Strings.PluginHelp = " *** Escarmouche Aide ***\n\n" ..
		"/show affiche la fenetre\n" ..
		"/hide cache la fenetre\n" ..
		"/alt - Active ou d\195\169sactive la touche alt pour le d\195\169placement de l'icon.\n" ..
		"/toggle - affiche ou cache la fenetre.\n\n" ..
		"/esc active ou d\195\169sactive la fermeture de fenetre avec la touche escape";

	elseif Turbine.Engine.GetLanguage() == Turbine.Language.English then
		Strings.PluginName = "Helper";
		Strings.PluginText = "Escarmouche";
		Strings.PluginText_1 = "Call the soldier";
		Strings.PluginText_2 = "Lead the soldier";
		Strings.PluginEscEnable = "Escarmouche - Escape key Activated";
		Strings.PluginEscDesable = "Escarmouche - Escape key Desactivated";
		Strings.PluginAltEnable = "Alt key Activated";
		Strings.PluginAltDesable = "Alt key Desactivated";
		Strings.PluginWindowShow = "Show the window.";
		Strings.PluginWindowHide = "Hide the window.";
		Strings.PluginBorderDesable = "Border Desactivated";
		Strings.PluginBorderEnable = "Border Activated";
		Strings.PluginHelp = " *** Escarmouche Aide ***\n\n" ..
		"/show show the window\n" ..
		"/hide hide the window\n" ..
		"/alt - Activate or deactivate the alt key to move the icon.\n" ..
		"/toggle - display or hide the window.\n\n" ..
		"/esc activates or deactivates window closing with the escape key";	
	end
end
