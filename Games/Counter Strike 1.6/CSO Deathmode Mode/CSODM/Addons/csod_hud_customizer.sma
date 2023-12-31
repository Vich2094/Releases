#include <amxmodx> 
#include <amxmisc> 

#define PLUGIN "HUD Customizer 0.4" 
#define VERSION "0.4" 
#define AUTHOR "Igoreso" 

#define HUD_HIDE_RHA (1<<3)


new g_msgHideWeapon
new bool:g_bHideRHA
new g_cvarHideRHA

public plugin_init() 
{ 
	register_plugin(PLUGIN, VERSION, AUTHOR) 
	g_msgHideWeapon = get_user_msgid("HideWeapon")
	register_event("ResetHUD", "onResetHUD", "b")
	register_message(g_msgHideWeapon, "msgHideWeapon")
	g_cvarHideRHA = register_cvar("amx_hud_hide_radar_health_armor", "1")
	HudApplyCVars()
} 

public onResetHUD(id)
{
	HudApplyCVars()
	new iHideFlags = GetHudHideFlags()
	if(iHideFlags)
	{
		message_begin(MSG_ONE, g_msgHideWeapon, _, id)
		write_byte(iHideFlags)
		message_end()
	}	
}

public msgHideWeapon()
{
	new iHideFlags = GetHudHideFlags()
	if(iHideFlags)
		set_msg_arg_int(1, ARG_BYTE, get_msg_arg_int(1) | iHideFlags)
}

GetHudHideFlags()
{
	new iFlags
	if( g_bHideRHA )
		iFlags |= HUD_HIDE_RHA
	return iFlags
}

HudApplyCVars()
{
	g_bHideRHA = bool:get_pcvar_num(g_cvarHideRHA)
}