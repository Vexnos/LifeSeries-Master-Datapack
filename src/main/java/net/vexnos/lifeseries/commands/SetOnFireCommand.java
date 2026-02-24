package net.vexnos.lifeseries.commands;

import com.mojang.brigadier.CommandDispatcher;
import com.mojang.brigadier.arguments.IntegerArgumentType;
import net.minecraft.commands.CommandBuildContext;
import net.minecraft.commands.CommandSourceStack;
import net.minecraft.commands.Commands;
import net.minecraft.commands.arguments.EntityArgument;
import net.minecraft.network.chat.Component;
import net.minecraft.server.level.ServerPlayer;

public class SetOnFireCommand extends Command {
    // Play Totem Animation
    @Override
    public void registerCommand(CommandDispatcher<CommandSourceStack> dispatcher, CommandBuildContext registryAccess) {
        dispatcher.register(
                Commands.literal("setfire")
                        .requires(commandSourceStack -> commandSourceStack.hasPermission(2))
                        .then(Commands.argument("target", EntityArgument.player())
                                .executes(commandContext -> {
                                    ServerPlayer player = EntityArgument.getPlayer(commandContext, "target");
                                    setPlayerOnFire(commandContext.getSource(), player, 100);
                                    return 1;
                                })
                                .then(Commands.argument("ticks", IntegerArgumentType.integer(1))
                                        .executes(commandContext -> {
                                                    ServerPlayer player = EntityArgument.getPlayer(commandContext, "target");
                                                    int ticks = IntegerArgumentType.getInteger(commandContext, "ticks");
                                                    setPlayerOnFire(commandContext.getSource(), player, ticks);
                                                    return 1;
                                                }
                                        )
                                )
                        )
        );
    }

    private void setPlayerOnFire(CommandSourceStack source, ServerPlayer player, int ticks) {
        player.setRemainingFireTicks(ticks);

        source.sendSuccess(
                () -> Component.literal("Set " + player.getName().getString() + " on fire for " + ticks + " ticks"),
                true
        );
    }
}
