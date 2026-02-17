package net.vexnos.lifeseries.commands;

import com.mojang.brigadier.CommandDispatcher;
import net.minecraft.commands.CommandBuildContext;
import net.minecraft.commands.CommandSourceStack;
import net.minecraft.commands.Commands;
import net.minecraft.commands.arguments.EntityArgument;
import net.minecraft.server.level.ServerPlayer;

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
                        .then(net.minecraft.commands.Commands.argument("target", EntityArgument.player())
                                .executes(commandContext -> {
                                    ServerPlayer target = EntityArgument.getPlayer(commandContext, "target");
                                    playTotemAnimation(target);
                                    return 1;
                                }))
        );
    }

    private static void playTotemAnimation(ServerPlayer player) {
        player.level().broadcastEntityEvent(player, (byte) 35);
    }
}
