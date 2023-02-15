#include common_scripts\utility;
#include maps\mp\_utility;
#include maps\mp\gametypes\_hud_util;

init()
{
    precacheMenu("tos_menu");

    level thread on_player_connect();
}

on_player_connect()
{
    for(;;)
    {
        level waittill("connected", player);

        /*
            Menu Resp
        */
        player thread foce_menu_resp();
    }
}

foce_menu_resp()
{
	self endon("disconnect");
	for(;;)
	{
		self waittill("menuresponse", menu, response);
    }
}