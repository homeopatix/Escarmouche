------------------------------------------------------------------------------------------
-- create the main window
------------------------------------------------------------------------------------------
function CreateMainWindow( )
	if(settings.borderenable == true)then
		EscarmoucheWindow=Turbine.UI.Lotro.GoldWindow(); 
	else
		EscarmoucheWindow=Turbine.UI.Extensions.SimpleWindow(); 
	end
	EscarmoucheWindow:SetSize(200,100); 
	EscarmoucheWindow:SetText(Strings.PluginName); 
	EscarmoucheWindow.Message=Turbine.UI.Label(); 
	EscarmoucheWindow.Message:SetParent(EscarmoucheWindow); 
	EscarmoucheWindow.Message:SetSize(150,10); 
	EscarmoucheWindow.Message:SetPosition(EscarmoucheWindow:GetWidth()/2 - 75, EscarmoucheWindow:GetHeight()/2 + 30); 
	EscarmoucheWindow.Message:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter); 
	if(settings.borderenable == true)then
		EscarmoucheWindow.Message:SetText(Strings.PluginText);  
	end
	EscarmoucheWindow:SetVisible(settings.isWindowVisible);
	EscarmoucheWindow:SetWantsKeyEvents(true);

	EscarmoucheWindow:SetPosition(settings.positionX, settings.positionY);

------------------------------------------------------------------------------------------
-- escarmouche helper center window
------------------------------------------------------------------------------------------

	if(settings.borderenable == true)then
		centerWindow = Turbine.UI.Extensions.SimpleWindow();
		centerWindow:SetSize( 40 , 40 );
		centerWindow:SetParent( EscarmoucheWindow );
		centerWindow:SetPosition( 55 ,EscarmoucheWindow:GetHeight()/2 - 12);
		centerWindow:SetVisible( true );
		centerWindow:SetBackColor( Turbine.UI.Color( .6, .5, .7, .5) );

		centerWindow2 = Turbine.UI.Extensions.SimpleWindow();
		centerWindow2:SetSize( 40 , 40 );
		centerWindow2:SetParent( EscarmoucheWindow );
		centerWindow2:SetPosition( 110 ,EscarmoucheWindow:GetHeight()/2 - 12);
		centerWindow2:SetVisible( true );
		centerWindow2:SetBackColor( Turbine.UI.Color( .6, .5, .7, .5) );
	else
		centerWindow = Turbine.UI.Extensions.SimpleWindow();
		centerWindow:SetSize( 40 , 40 );
		centerWindow:SetParent( EscarmoucheWindow );
		centerWindow:SetPosition( 55 ,EscarmoucheWindow:GetHeight()/2 - 12);
		centerWindow:SetVisible( true );
		centerWindow:SetBackColor( Turbine.UI.Color( .6, .5, .7, .5) );

		centerWindow2 = Turbine.UI.Extensions.SimpleWindow();
		centerWindow2:SetSize( 40 , 40 );
		centerWindow2:SetParent( EscarmoucheWindow );
		centerWindow2:SetPosition( 96 ,EscarmoucheWindow:GetHeight()/2 - 12);
		centerWindow2:SetVisible( true );
		centerWindow2:SetBackColor( Turbine.UI.Color( .6, .5, .7, .5) );
	end
	

	centerLabel = Turbine.UI.Label();
	centerLabel:SetParent(centerWindow);
	centerLabel:SetPosition( 0, 0 );
	centerLabel:SetSize( 40, 40  );
	centerLabel:SetText( "" );
	centerLabel:SetTextAlignment( Turbine.UI.ContentAlignment.MiddleCenter );
	centerLabel:SetZOrder(-1);
	centerLabel:SetMouseVisible(false);

	centerLabel = Turbine.UI.Label();
	centerLabel:SetParent(centerWindow2);
	centerLabel:SetPosition( 0, 0 );
	centerLabel:SetSize( 40, 40  );
	centerLabel:SetText( "" );
	centerLabel:SetTextAlignment( Turbine.UI.ContentAlignment.MiddleCenter );
	centerLabel:SetZOrder(-1);
	centerLabel:SetMouseVisible(false);

	centerQS1 = Turbine.UI.Lotro.Quickslot();
	centerQS1:SetParent( centerWindow );
	centerQS1:SetPosition( 1, 1 );
	centerQS1:SetSize( 36, 36 );
	centerQS1:SetUseOnRightClick(false);
	centerQS1:SetWantsUpdates(true);

	centerQS2 = Turbine.UI.Lotro.Quickslot();
	centerQS2:SetParent( centerWindow2 );
	centerQS2:SetPosition( 1, 1 );
	centerQS2:SetSize( 36, 36 );
	centerQS2:SetUseOnRightClick(false);
	centerQS2:SetWantsUpdates(true);
end