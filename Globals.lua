ResourcePath = "Homeopatix/Escarmouche/Resources/";

Images = {
	MinimizedIcon = ResourcePath .. "Escarmouche.tga",
};


function CreateLocalizationInfo()
	Strings = {};

	if Turbine.Engine.GetLanguage() == Turbine.Language.German then
		Strings.PluginName = "Helper";
		Strings.PluginText = "Escarmouche";
		Strings.PluginText_1 = "Soldat rufen";
		Strings.PluginText_2 = "Soldat f\195\188hren";
		Strings.PluginEscEnable = "Escape-Taste aktiviert";
		Strings.PluginEscDesable = "Escape-Taste deaktiviert";
		Strings.PluginAltEnable = "Alt-Taste aktiviert";
		Strings.PluginAltDesable = "Alt-Taste deaktiviert";
		Strings.PluginWindowShow = "Fenster wird angezeigt";
		Strings.PluginWindowHide = "Fenster wird ausgeblendet";
		Strings.PluginBorderDesable = "Fensterrahmen deaktiviert";
		Strings.PluginBorderEnable = "Fensterrahmen aktiviert";
		Strings.PluginHelp = " *** Escarmouche Hilfe ***\n\n" ..
		"/es show - Zeigt das Fenster an.\n" ..
		"/es hide - Blendet das Fenster aus.\n" ..
		"/es alt - Alt-Taste gedr\195\188ckt halten, um das Symbol zu verschieben.\n" ..
		"/es toggle - Fenster anzeigen/ausblenden.\n\n" ..
		"/es esc - Aktiviert/Deaktiviert die Escape-Taste, um das Fenster zu schlie\195\159en.";

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
		"/es show affiche la fenetre\n" ..
		"/es hide cache la fenetre\n" ..
		"/es alt - Active ou d\195\169sactive la touche alt pour le d\195\169placement de l'icon.\n" ..
		"/es toggle - affiche ou cache la fenetre.\n\n" ..
		"/es esc active ou d\195\169sactive la fermeture de fenetre avec la touche escape";

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
		"/es show show the window\n" ..
		"/es hide hide the window\n" ..
		"/es alt - Activate or deactivate the alt key to move the icon.\n" ..
		"/es toggle - display or hide the window.\n\n" ..
		"/es esc activates or deactivates window closing with the escape key";	
	end
end
