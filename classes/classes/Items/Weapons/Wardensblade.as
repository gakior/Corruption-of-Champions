/**
 * ...
 * @author Zevos
 */
package classes.Items.Weapons 
{
	import classes.Items.Weapon;
	import classes.PerkLib;
	import classes.Player;

	public class Wardensblade extends WeaponWithPerk
	{
		
		public function Wardensblade() 
		{
			super("WDBlade", "WardensBlade", "Warden’s blade", "a Warden’s blade", "slash", 15, 1200, "Wrought from alchemy, not the forge, this sword is made from sacred wood and resonates with Yggdrasil’s song.", "Daoist's Focus", PerkLib.DaoistsFocus, 0.4, 0, 0, 0);
		}
		
		override public function get description():String {
			var desc:String = _description;
			//Type
			desc += "\n\nType: Weapon (Sword)";
			//Attack
			desc += "\nAttack: " + String(attack);
			//Value
			desc += "\nBase value: " + String(value);
			//Perk
			desc += "\nSpecial: Daoist's Focus (+40% Soulskill Power)";
			desc += "\nSpecial: Blade-Warden (enables Blade Dance soul skill)";
			return desc;
		}
		
		override public function playerEquip():Weapon {
			while (game.player.findPerk(PerkLib.BladeWarden) >= 0) game.player.removePerk(PerkLib.BladeWarden);
			game.player.createPerk(PerkLib.BladeWarden,0,0,0,0);
			return super.playerEquip();
		}
		
		override public function playerRemove():Weapon {
			while (game.player.findPerk(PerkLib.BladeWarden) >= 0) game.player.removePerk(PerkLib.BladeWarden);
			return super.playerRemove();
		}
		
	}

}