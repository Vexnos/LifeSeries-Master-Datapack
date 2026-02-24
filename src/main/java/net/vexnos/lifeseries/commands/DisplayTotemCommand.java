package net.vexnos.lifeseries.commands;

import com.mojang.brigadier.CommandDispatcher;
import net.minecraft.commands.CommandBuildContext;
import net.minecraft.commands.CommandSourceStack;
import net.minecraft.commands.Commands;
import net.minecraft.commands.arguments.EntityArgument;
import net.minecraft.server.level.ServerPlayer;

import java.util.Collection;

public class DisplayTotemCommand extends Command {
    // Play Totem Animation
    @Override
    public void registerCommand(CommandDispatcher<CommandSourceStack> dispatcher, CommandBuildContext registryAccess) {
        dispatcher.register(
                Commands.literal("givelife")
                        .requires(commandSourceStack -> commandSourceStack.hasPermission(2))
                        .executes(commandContext -> {
                            ServerPlayer player = commandContext.getSource().getPlayerOrException();
                            playTotemAnimation(player);
                            return 1;
                        })
                        .then(Commands.argument("targets", EntityArgument.players())
                                .executes(commandContext -> {
                                    Collection<? extends ServerPlayer> targets = EntityArgument.getPlayers(commandContext, "targets");
                                    return playTotemAnimation(targets);
                                }))
        );
    }

    private static void playTotemAnimation(ServerPlayer player) {
        player.level().broadcastEntityEvent(player, (byte) 35);
    }

    private static int playTotemAnimation(Collection<? extends ServerPlayer> players) {
        int i = 0;

        for (ServerPlayer player : players) {
            player.level().broadcastEntityEvent(player, (byte) 35);
            i++;
        }

        return i;
    }
}
