// Tasarim: xT_9000
// Edits: TAKTAK26

#include <a_samp>

main()
{
	print("				[TS]				");
	print("Texture Studio GTAMulti.com Özel!");
	print("		 xT_9000 & TAKTAK26			");
}

new bool:JustConnected[MAX_PLAYERS];

public OnPlayerRequestClass(playerid, classid)
{
	TogglePlayerSpectating(playerid, true);
	if(JustConnected[playerid])
	{
		JustConnected[playerid] = false;
		SetTimerEx("OnPlayerRequestClass", 100, false, "ii", playerid, classid);
	}
	else
	{
		TogglePlayerSpectating(playerid, false);
		SpawnPlayer(playerid);
	}
	return 1;
}

public OnPlayerConnect(playerid)
{
	GameTextForPlayer(playerid,"~r~~b~Texture Studio 1.8 ~ 1.9",2500,5);
	JustConnected[playerid] = true;
	return 1;
}

public OnGameModeInit()
{
	SetGameModeText("TS 1.8");
	UsePlayerPedAnims();

	AddPlayerClass(265,1958.3783,1343.1572,15.3746,270.1425,0,0,0,0,-1,-1);

    print("Script");
    ConnectNPC("1","1");
    
	return 1;
}
