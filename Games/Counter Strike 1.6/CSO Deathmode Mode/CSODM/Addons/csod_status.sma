#include <amxmodx>
#include <engine>
#include <dhudmessage>
 
public plugin_init() 
{
	register_plugin("Real-Like HP/AP HUD", "1.0", "<VeCo>")
 
	new ent = create_entity("info_target")
	entity_set_string(ent,EV_SZ_classname,"env_hud")
	entity_set_float(ent,EV_FL_nextthink,get_gametime() + 1.0)
 
	register_think("env_hud","env_hud_think")
}

public env_hud_think(ent)
{
	entity_set_float(ent,EV_FL_nextthink,get_gametime() + 1.0)
 
	static i_players[32],i_num, i,ii
	get_players(i_players,i_num,"a")
 
	for(i=0;i<i_num;i++)
	{
		ii = i_players[i]
		static nick[32]
		get_user_name(ii, nick, charsmax(nick))
 
		set_dhudmessage(255, 170, 0, 0.01, 0.18, 0, 1.0, 1.0, 0.0, 0.0)
		show_dhudmessage(ii, "[CSO Deatmatch Mode]^nN: %s^nHP: %i^nArmor: %i^n" , nick, get_user_health(ii), get_user_armor(ii))
	}
}  