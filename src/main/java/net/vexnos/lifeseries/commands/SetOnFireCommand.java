package net.vexnos.lifeseries.commands;

import com.mojang.brigadier.CommandDispatcher;
import com.mojang.brigadier.arguments.IntegerArgumentType;
import net.minecraft.commands.CommandBuildContext;
import net.minecraft.commands.CommandSourceStack;
import net.minecraft.commands.Commands;
import net.minecraft.commands.arguments.EntityArgument;
import net.minecraft.network.chat.Component;
import net.minecraft.world.entity.Entity;

import java.util.Collection;

public class SetOnFireCommand extends Command {
    // Set Entities on Fire
    @Override
    public void registerCommand(CommandDispatcher<CommandSourceStack> dispatcher, CommandBuildContext registryAccess) {
        dispatcher.register(
                Commands.literal("setfire")
                        .requires(commandSourceStack -> commandSourceStack.hasPermission(2))
                        .then(Commands.argument("targets", EntityArgument.entities())
                                .executes(commandContext -> {
                                    Collection<? extends Entity> entities = EntityArgument.getEntities(commandContext, "targets");
                                    setEntitiesOnFire(commandContext.getSource(), entities, 100);
                                    return 1;
                                })
                                .then(Commands.argument("ticks", IntegerArgumentType.integer(1))
                                        .executes(commandContext -> {
                                                    Collection<? extends Entity> entities = EntityArgument
                                                            .getEntities(commandContext, "targets");
                                                    int ticks = IntegerArgumentType.getInteger(commandContext, "ticks");
                                                    setEntitiesOnFire(commandContext.getSource(), entities, ticks);
                                                    return 1;
                                                }
                                        )
                                )
                        )
        );
    }

    private void setEntitiesOnFire(CommandSourceStack source, Collection<? extends Entity> entities, int ticks) {
        for (Entity entity : entities) {
            entity.setRemainingFireTicks(ticks);
        }

        source.sendSuccess(
                () -> Component.literal("Set " + entities.size() + " entit" + (entities.size() == 1 ? "y" : "ies")
                        + " on fire for " + ticks + " ticks"),
                true
        );
    }
}
