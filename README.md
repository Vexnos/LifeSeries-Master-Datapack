# Life Series Datapack
This is a datapack containing the functionality of Third Life, Last Life and Limited Life by *[Grian](https://www.youtube.com/@Grian)*.

Version: 1.21.10

Some members of the Life Series use a resource pack to make armour less visible. If you want to use this, a good option is *[Minimal Armour](https://modrinth.com/resourcepack/hoffens-minimal-armor)* by Hoffen which was the resource pack used in Wild Life.

## How to Install
1. Go to the 'Releases' page and download the datapack and resourcepack from there.
2. Place `LifeSeries_Data_v1.0.0.zip` in your datapacks folder.
3. Place `LifeSeries_Resources_v1.0.0.zip` in your resourcepacks folder.
4. Run `/tag <player> add admin` where `<player>` is the username of the player acting as the admin.
5. If you are in the world already, type `/reload`, a notification should come up in Minecraft.
6. Run `/trigger config` to pull up the config menu. Refer to the config section below.

## Config
When you run `/trigger config`, a text message will appear in chat.
Click on either Third Life, Last Life or Limited Life.
* Third Life: 3 Lives, no Boogeyman, no Life Transferring.
* Last Life: Random amount of Lives, Boogeyman, Life Transferring.
* Limited Life: 24 Hours to Live, Boogeyman, no Life Transferring.
Next, there are several config options for customization, choose according to your preferred style if you don't want to play the pre-set modes above.
* Amount of Lives in Third Life: Either 3 or 6.
* Enable or Disable the Boogeyman.
* Enable or Disable Life Transferring (Cannot be enabled in Limited Life because it runs on time, not lives).
* Difficulty: Easy, Normal or Hard.
* keepInventory: On or Off (Is already set in pre-set modes).
* Worldborder Size (Set your desired worldborder center or it will default to 0, 0): 300, 400, 500, 700, or 1000 (Earlier seasons of the Life Series used a border size of 700, more recent seasons use a border size of 400-500) - (IMPORTANT: In 1.21.10, the Worldborders are now separate per dimension, if you want a worldborder in the Nether and/or the End, you will need to travel to that dimension and set the worldborder manually)

Next there are some admin only triggers to spawn the Enchanting Table and Optional Spawn Zone (Will set the world spawn)

## Gameplay
1. Run `/trigger setSessionTime set <value_in_hours>` where `<value_in_hours>` is the amount of hours you want your session to last. Once this timer expires, the session will end. If you do not wish for this to happen, set `<value_in_hours>` to `-1` to disable the session timer.
2. Run `/trigger start` to start your session, to end your session, run `/trigger end`.
3. To Pause your session, run `/trigger pause`, likewise to resume, run `/trigger resume` (these are only used for mid-session breaks).
4. The boogeyman runs automatically on modes where it's enabled. To manually run the boogeyman, run `/trigger boogeyman`.
    * If the Boogeyman succeeds, they will automatically be cured unless a player is killed by a trap. If the kill was the Boogeyman's but they aren't cured, instruct that player to run `/trigger cure`
    * If the Boogeyman fails, then run `/trigger fail` to fail all boogeymen who haven't killed a player at the end of your session.
5. To transfer lives in Last Life, run `/trigger givelife`, you need to be within 5 blocks of a player to transfer a life, you cannot transfer a life as a red name or if you're out. The closest player to you will get the life.
6. Lives will randomly be rolled in Last Life after 2 Minutes of starting the game. If you want to run this earlier, run `/trigger roll`.
7. In Limited Life, players automatically get +30 minutes extra time if they kill a player who is a higher colour than them. If a kill is valid, but they didn't get +30 minutes because it was indirect (e.g., A Trap), that player should run `/trigger 30` to add 30 minutes. Players should not be rewarded +30 minutes if they kill a player on a lower colour or same colour as them (EXCEPTION: IF BOTH PLAYERS ARE RED). Players who die to the Boogeyman in Limited Life lose an extra hour of time. While this is done automatically by a direct kill, it will not trigger if the player died to a trap, so they will need to run `/trigger death` to lose that extra hour.

### Loot
* Some Hostile and Passive mobs have a 5% chance to drop their spawn egg, this increases with Looting.
* Wither Skeletons have an increased chance to drop their Wither Skulls (now 5% instead of 2.5%).
* Skeleton and Zombie Horse Spawn Eggs are available in Dungeon Chests (They will spawn already tamed and with saddles like in Secret Life).

### Custom Recipes
Inside the datapack is a bundled function to unlock all recipes for all players.
* Enchanting Table and Helmets are not craftable.
* TNT is crafted with 4 Sand, 4 Paper and 1 Gunpowder. This recipe grants the player 2 TNT per craft.
* Magma Cream can be crafted into Slime Balls.
* Name Tags are craftable with 1 Paper and 1 String.
* Saddles are craftable with 3 Leather and 1 Iron Ingot.
* Spawners are craftable with 8 Iron Bars and 1 Blaze Powder.
* End Crystals are crafted with an Amethyst Shard in place of the Eye of Ender.

### Enchanting Table Edits
* Mending, Swift Sneak, and Soul Speed are now available from the Enchanting Table.
* Silk Touch and Mending have higher weights, allowing them to appear more frequently in the Enchanting Table.
* Soul Speed and Swift Sneak are available in Villager Trades.