# Life Series Datapack
This is a datapack containing the functionality of Third Life, Last Life and Limited Life by *[Grian](https://www.youtube.com/@Grian)*.
Version: 1.21.10

### How to Install
1. Click the Green "Code" button, then click "Download ZIP".
2. Place `LifeSeries-Master-Datapack-master.zip` in your datapacks folder.
3. If you are in the world already, type `/reload`, a notification should come up in Minecraft.
4. Run `/tag <player> add admin` where `<player>` is the username of the player running the datapack.
5. Run `/trigger config` to pull up the config menu. Refer to the config section below.

### Config
When you run `/trigger config`, a text message will appear in chat.
Click on either Third Life, Last Life or Limited Life.
* Third Life: 3 Lives, no Boogeyman, no Life Transferring.
* Last Life: Random amount of Lives, Boogeyman, Life Transferring.
* Limited Life: 24 Hours to Live, Boogeyman, no Life Transferring.

### Gameplay
1. Run `/trigger start` to start your session (ONLY RUN THIS ONCE).
2. To Pause your session, run `/trigger pause`, likewise to resume, run `/trigger resume`.
3. The boogeyman runs automatically on modes where it's enabled. To manually run the boogeyman, run `/trigger boogeyman`.
    * If the Boogeyman succeeds, they will automatically be cured unless a player is killed by a trap. If the kill was the Boogeyman's but they aren't cured, instruct that player to run `/trigger cure`
    * If the Boogeyman fails, then run `/trigger fail` to fail all boogeymen who haven't killed a player at the end of your session.
4. To transfer lives in Last Life, run `/trigger givelife`, you need to be within 5 blocks of a player to transfer a life, you cannot transfer a life as a red name or if you're out. The closest player to you will get the life.
5. Lives will randomly be rolled in Last Life after 2 Minutes of starting the game. If you want to run this earlier, run `/trigger roll`.
6. In Limited Life, players automatically get +30 minutes extra time if they kill a player who is a higher colour than them. If a kill is valid, but they didn't get +30 minutes because it was indirect (e.g., A Trap), that player should run `/trigger 30` to add 30 minutes. Players should not be rewarded +30 minutes if they kill a player on a lower colour or same colour as them (EXCEPTION: IF BOTH PLAYERS ARE RED). Players who die to the Boogeyman in Limited Life lose an extra hour of time. While this is done automatically by a direct kill, it will not trigger if the player died to a trap, so they will need to run `/trigger death` to lose that extra hour.