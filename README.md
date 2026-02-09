# Life Series Datapack
This is a datapack containing the functionality of Third Life, Last Life and Limited Life by *[Grian](https://www.youtube.com/@Grian)*.

Version: 1.21.10

## How to Install
1. Click the Green "Code" button, then click "Download ZIP".
2. Place `LifeSeries-Master-Datapack-master.zip` in your datapacks folder.
3. If you are in the world already, type `/reload`, a notification should come up in Minecraft.
4. Run `/tag <player> add admin` where `<player>` is the username of the player running the datapack.
5. Run `/trigger config` to pull up the config menu. Refer to the config section below.

## Config
When you run `/trigger config`, a text message will appear in chat.
Click on either Third Life, Last Life or Limited Life.
* Third Life: 3 Lives, no Boogeyman, no Life Transferring.
* Last Life: Random amount of Lives, Boogeyman, Life Transferring.
* Limited Life: 24 Hours to Live, Boogeyman, no Life Transferring.
Next, there are several config options, choose according to your preferred style.
* Enable or Disable the Boogeyman
* Enable or Disable Life Transferring (Cannot be enabled in Limited Life because it runs on time, not lives)
* Difficulty: Easy, Normal or Hard
* Worldborder Size (Set your worldborder center or it will default to 0, 0): 500, 700, or 1000 (Earlier seasons of Third Life used a border size of 700, more recent seasons use a border of 500)
Next there are some admin only triggers to spawn the Enchanting Table and Optional Spawn Zone (Will set the world spawn)

## Gameplay
1. Run `/trigger start` to start your session (ONLY RUN THIS ONCE).
2. To Pause your session, run `/trigger pause`, likewise to resume, run `/trigger resume`. Note that running the resume function will trigger the boogeyman again, if you don't want this, run `/schedule clear thirdlife:boogeyman/notice` after running `/trigger resume`.
3. The boogeyman runs automatically on modes where it's enabled. To manually run the boogeyman, run `/trigger boogeyman`.
    * If the Boogeyman succeeds, they will automatically be cured unless a player is killed by a trap. If the kill was the Boogeyman's but they aren't cured, instruct that player to run `/trigger cure`
    * If the Boogeyman fails, then run `/trigger fail` to fail all boogeymen who haven't killed a player at the end of your session.
4. To transfer lives in Last Life, run `/trigger givelife`, you need to be within 5 blocks of a player to transfer a life, you cannot transfer a life as a red name or if you're out. The closest player to you will get the life.
5. Lives will randomly be rolled in Last Life after 2 Minutes of starting the game. If you want to run this earlier, run `/trigger roll`.
6. In Limited Life, players automatically get +30 minutes extra time if they kill a player who is a higher colour than them. If a kill is valid, but they didn't get +30 minutes because it was indirect (e.g., A Trap), that player should run `/trigger 30` to add 30 minutes. Players should not be rewarded +30 minutes if they kill a player on a lower colour or same colour as them (EXCEPTION: IF BOTH PLAYERS ARE RED). Players who die to the Boogeyman in Limited Life lose an extra hour of time. While this is done automatically by a direct kill, it will not trigger if the player died to a trap, so they will need to run `/trigger death` to lose that extra hour.

### Loot
* Some Hostile and Passive mobs have a 5% chance to drop their spawn egg, this increases with Looting.
* Wither Skeletons have an increased chance to drop their Wither Skulls (now 5% instead of 2.5%).

### Custom Recipes
Inside the datapack is a bundled function to unlock all recipes for all players.
* Enchanting Table and Helmets are not craftable
* TNT is crafted with 4 Sand, 4 Paper and 1 Gunpowder. This recipe grants the player 2 TNT per craft.
* Magma Cream can be crafted into Slime Balls
* Name Tags are craftable with 1 Paper and 1 String
* Saddles are craftable with 3 Leather and 1 Iron Ingot
* Spawners are craftable with 8 Iron Bars

### Enchanting Table Edits
* Mending is now available from the Enchanting Table
* Silk Touch and Mending have higher weights, allowing them to appear more frequently in the Enchanting Table