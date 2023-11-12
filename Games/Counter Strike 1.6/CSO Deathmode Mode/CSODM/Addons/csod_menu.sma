#include <amxmodx>
#include <amxmisc>
#include <fun>

#define PLUGIN  "CSO Deatmatch Game Menu"
#define VERSION "1.0"
#define AUTHOR  "Jesus Christ"

public plugin_init()
{
	register_plugin(PLUGIN, VERSION, AUTHOR)
	register_clcmd("chooseteam", "csod_menu")
	register_clcmd("say /shop", "csod_menu")
	register_clcmd("say /market", "csod_menu")
	register_clcmd("say /menu", "csod_menu")	
	register_clcmd("say /csodmenu", "csod_menu")
}

/*================================================================================
 [Main Menu]
=================================================================================*/

public csod_menu(id)
{
	new menuz;
	static amenu[512];
	formatex(amenu,charsmax(amenu),"\wCSO Deathmatch Mode\w Main Menu^n")
	menuz = menu_create(amenu,"csod_devam")

	formatex(amenu,charsmax(amenu),"\wWeapons Free")
	menu_additem(menuz,amenu,"1")
	
	formatex(amenu,charsmax(amenu),"\wUpgrades Free")
	menu_additem(menuz,amenu,"2")

	formatex(amenu,charsmax(amenu),"\wAdmin Menu")
	menu_additem(menuz,amenu,"3")
	
	menu_setprop(menuz,MPROP_EXIT,MEXIT_ALL)
	menu_display(id,menuz,0)
	
	return PLUGIN_HANDLED
}	
public csod_devam(id,menu,item)
{
	if(item == MENU_EXIT)
	{
		menu_destroy(menu)
		return PLUGIN_HANDLED
	}
	new access,callback,data[6],iname[64]
	
	menu_item_getinfo(menu,item,access,data,5,iname,63,callback)
	
	new key = str_to_num(data)
	
	if(key == 1)
	{
		shop(id)
	}
	else if(key == 2)
	{
		upgrades(id)
	}
	else if(key == 3)
	{
		client_cmd(id, "amxmodmenu")
	}
	menu_destroy(menu)
	return PLUGIN_HANDLED
}

/*================================================================================
 [Shop Menu]
=================================================================================*/

public shop(id)
{
	new menuz;
	static amenu[512];
	formatex(amenu,charsmax(amenu),"\wCSO Deathmatch Mode\wWeapons Menu^n")
	menuz = menu_create(amenu,"shop_devam")

	formatex(amenu,charsmax(amenu),"\wRifles")
	menu_additem(menuz,amenu,"1")
	
	formatex(amenu,charsmax(amenu),"\wSMGS")
	menu_additem(menuz,amenu,"2")
	
	formatex(amenu,charsmax(amenu),"\wShotguns")
	menu_additem(menuz,amenu,"3")
	
	formatex(amenu,charsmax(amenu),"\wPistols")
	menu_additem(menuz,amenu,"4")	

	formatex(amenu,charsmax(amenu),"\wEquipments")
	menu_additem(menuz,amenu,"5")	

	menu_setprop(menuz,MPROP_EXIT,MEXIT_ALL)
	menu_display(id,menuz,0)
	
	return PLUGIN_HANDLED
}	

public shop_devam(id,menu,item)
{
	if(item == MENU_EXIT)
	{
		menu_destroy(menu)
		return PLUGIN_HANDLED
	}
	new access,callback,data[6],iname[64]
	
	menu_item_getinfo(menu,item,access,data,5,iname,63,callback)
	
	new key = str_to_num(data)
	
	if(key == 1)
	{
		rifles(id)
	}
	else if(key == 2)
	{
		smgs(id)
	}
	else if(key == 3)
	{
		shotguns(id)
	}
	else if(key == 4)
	{
		pistols(id)
	}
	else if(key == 5)
	{
		equipments(id)
	}
	menu_destroy(menu)
	return PLUGIN_HANDLED
}

public rifles(id)
{
	new menuz;
	static amenu[512];
	formatex(amenu,charsmax(amenu),"\wCSO Deathmatch Mode\w Weapons Menu^n")
	menuz = menu_create(amenu,"rifles_devam")

	formatex(amenu,charsmax(amenu),"\wRifle 1")
	menu_additem(menuz,amenu,"1")
	
	formatex(amenu,charsmax(amenu),"\wRifle 2")
	menu_additem(menuz,amenu,"2")
	
	formatex(amenu,charsmax(amenu),"\wRifle 3")
	menu_additem(menuz,amenu,"3")
	
	formatex(amenu,charsmax(amenu),"\wRifle 4")
	menu_additem(menuz,amenu,"4")	

	formatex(amenu,charsmax(amenu),"\wRifle 5")
	menu_additem(menuz,amenu,"5")	

	menu_setprop(menuz,MPROP_EXIT,MEXIT_ALL)
	menu_display(id,menuz,0)
	
	return PLUGIN_HANDLED
}	

public rifles_devam(id,menu,item)
{
	if(item == MENU_EXIT)
	{
		menu_destroy(menu)
		return PLUGIN_HANDLED
	}
	new access,callback,data[6],iname[64]
	
	menu_item_getinfo(menu,item,access,data,5,iname,63,callback)
	
	new key = str_to_num(data)
	
	if(key == 1)
	{
			//
	}
	else if(key == 2)
	{
			//
	}
	else if(key == 3)
	{
			//
	}
	else if(key == 4)
	{
			//
	}
	else if(key == 5)
	{
			//
	}
	menu_destroy(menu)
	return PLUGIN_HANDLED
}

public smgs(id)
{
	new menuz;
	static amenu[512];
	formatex(amenu,charsmax(amenu),"\wCSO Deathmatch Mode\w SMG Menu^n")
	menuz = menu_create(amenu,"smgs_devam")

	formatex(amenu,charsmax(amenu),"\wSMG 1")
	menu_additem(menuz,amenu,"1")
	
	formatex(amenu,charsmax(amenu),"\wSMG 2")
	menu_additem(menuz,amenu,"2")
	
	formatex(amenu,charsmax(amenu),"\wSMG 3")
	menu_additem(menuz,amenu,"3")
	
	formatex(amenu,charsmax(amenu),"\wSMG 4")
	menu_additem(menuz,amenu,"4")	

	formatex(amenu,charsmax(amenu),"\wSMG 5")
	menu_additem(menuz,amenu,"5")	

	menu_setprop(menuz,MPROP_EXIT,MEXIT_ALL)
	menu_display(id,menuz,0)
	
	return PLUGIN_HANDLED
}	

public smgs_devam(id,menu,item)
{
	if(item == MENU_EXIT)
	{
		menu_destroy(menu)
		return PLUGIN_HANDLED
	}
	new access,callback,data[6],iname[64]
	
	menu_item_getinfo(menu,item,access,data,5,iname,63,callback)
	
	new key = str_to_num(data)
	
	if(key == 1)
	{
			//
	}
	else if(key == 2)
	{
			//
	}
	else if(key == 3)
	{
			//
	}
	else if(key == 4)
	{
			//
	}
	else if(key == 5)
	{
			//
	}
	menu_destroy(menu)
	return PLUGIN_HANDLED
}

public shotguns(id)
{
	new menuz;
	static amenu[512];
	formatex(amenu,charsmax(amenu),"\wCSO Deathmatch Mode\w Shotgun Menu^n")
	menuz = menu_create(amenu,"shotguns_devam")

	formatex(amenu,charsmax(amenu),"\wSHOTGUN 1")
	menu_additem(menuz,amenu,"1")
	
	formatex(amenu,charsmax(amenu),"\wSHOTGUN 2")
	menu_additem(menuz,amenu,"2")
	
	formatex(amenu,charsmax(amenu),"\wSHOTGUN 3")
	menu_additem(menuz,amenu,"3")
	
	formatex(amenu,charsmax(amenu),"\wSHOTGUN 4")
	menu_additem(menuz,amenu,"4")	

	formatex(amenu,charsmax(amenu),"\wSHOTGUN 5")
	menu_additem(menuz,amenu,"5")	

	menu_setprop(menuz,MPROP_EXIT,MEXIT_ALL)
	menu_display(id,menuz,0)
	
	return PLUGIN_HANDLED
}	

public shotguns_devam(id,menu,item)
{
	if(item == MENU_EXIT)
	{
		menu_destroy(menu)
		return PLUGIN_HANDLED
	}
	new access,callback,data[6],iname[64]
	
	menu_item_getinfo(menu,item,access,data,5,iname,63,callback)
	
	new key = str_to_num(data)
	
	if(key == 1)
	{
			//
	}
	else if(key == 2)
	{
			//
	}
	else if(key == 3)
	{
			//
	}
	else if(key == 4)
	{
			//
	}
	else if(key == 5)
	{
			//
	}
	menu_destroy(menu)
	return PLUGIN_HANDLED
}

public pistols(id)
{
	new menuz;
	static amenu[512];
	formatex(amenu,charsmax(amenu),"\wCSO Deathmatch Mode\w Pistol Menu^n")
	menuz = menu_create(amenu,"pistols_devam")

	formatex(amenu,charsmax(amenu),"\wPISTOL 1")
	menu_additem(menuz,amenu,"1")
	
	formatex(amenu,charsmax(amenu),"\wPISTOL 2")
	menu_additem(menuz,amenu,"2")
	
	formatex(amenu,charsmax(amenu),"\wPISTOL 3")
	menu_additem(menuz,amenu,"3")
	
	formatex(amenu,charsmax(amenu),"\wPISTOL 4")
	menu_additem(menuz,amenu,"4")	

	formatex(amenu,charsmax(amenu),"\wPISTOL 5")
	menu_additem(menuz,amenu,"5")	

	menu_setprop(menuz,MPROP_EXIT,MEXIT_ALL)
	menu_display(id,menuz,0)
	
	return PLUGIN_HANDLED
}	

public pistols_devam(id,menu,item)
{
	if(item == MENU_EXIT)
	{
		menu_destroy(menu)
		return PLUGIN_HANDLED
	}
	new access,callback,data[6],iname[64]
	
	menu_item_getinfo(menu,item,access,data,5,iname,63,callback)
	
	new key = str_to_num(data)
	
	if(key == 1)
	{
			//
	}
	else if(key == 2)
	{
			//
	}
	else if(key == 3)
	{
			//
	}
	else if(key == 4)
	{
			//
	}
	else if(key == 5)
	{
			//
	}
	menu_destroy(menu)
	return PLUGIN_HANDLED
}

public equipments(id)
{
	new menuz;
	static amenu[512];
	formatex(amenu,charsmax(amenu),"\wCSO Deathmatch Mode\w Equipment Menu^n")
	menuz = menu_create(amenu,"equipments_devam")

	formatex(amenu,charsmax(amenu),"\wEQUIPMENT 1")
	menu_additem(menuz,amenu,"1")
	
	formatex(amenu,charsmax(amenu),"\wEQUIPMENT 2")
	menu_additem(menuz,amenu,"2")
	
	formatex(amenu,charsmax(amenu),"\wEQUIPMENT 3")
	menu_additem(menuz,amenu,"3")
	
	formatex(amenu,charsmax(amenu),"\wEQUIPMENT 4")
	menu_additem(menuz,amenu,"4")	

	formatex(amenu,charsmax(amenu),"\wEQUIPMENT 5")
	menu_additem(menuz,amenu,"5")	

	menu_setprop(menuz,MPROP_EXIT,MEXIT_ALL)
	menu_display(id,menuz,0)
	
	return PLUGIN_HANDLED
}	

public equipments_devam(id,menu,item)
{
	if(item == MENU_EXIT)
	{
		menu_destroy(menu)
		return PLUGIN_HANDLED
	}
	new access,callback,data[6],iname[64]
	
	menu_item_getinfo(menu,item,access,data,5,iname,63,callback)
	
	new key = str_to_num(data)
	
	if(key == 1)
	{
			//
	}
	else if(key == 2)
	{
			//
	}
	else if(key == 3)
	{
			//
	}
	else if(key == 4)
	{
			//
	}
	else if(key == 5)
	{
			//
	}
	menu_destroy(menu)
	return PLUGIN_HANDLED
}

/*================================================================================
 [Upgrades Menu]
=================================================================================*/

public upgrades(id)
{
	new menuz;
	static amenu[512];
	formatex(amenu,charsmax(amenu),"\wCSO Deathmatch Mode \w Upgrades Menu^n")
	menuz = menu_create(amenu,"upgrades_devam")

	formatex(amenu,charsmax(amenu),"\wGet HP \d+50")
	menu_additem(menuz,amenu,"1")
	
	formatex(amenu,charsmax(amenu),"\wGet Armor \d+50^n")
	menu_additem(menuz,amenu,"2")
	
	menu_setprop(menuz,MPROP_EXIT,MEXIT_ALL)
	menu_display(id,menuz,0)
	
	return PLUGIN_HANDLED
}	

public upgrades_devam(id,menu,item)
{
	if(item == MENU_EXIT)
	{
		menu_destroy(menu)
		return PLUGIN_HANDLED
	}
	new access,callback,data[6],iname[64]
	
	menu_item_getinfo(menu,item,access,data,5,iname,63,callback)
	
	new key = str_to_num(data)
	
	if(key == 1)
	{
		set_user_health(id, get_user_health(id) + 50)
	}
	else if(key == 2)
	{
		set_user_armor(id, get_user_armor(id) + 50)
	}
	menu_destroy(menu)
	return PLUGIN_HANDLED
}