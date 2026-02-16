package net.vexnos.lifeseries.command;

import com.mojang.brigadier.CommandDispatcher;
import net.minecraft.commands.CommandSourceStack;
import net.minecraft.server.level.ServerPlayer;
import net.vexnos.lifeseries.command.manager.Command;
import net.vexnos.lifeseries.utils.world.AnimationUtils;

import java.util.List;

public class GiveLifeCommand extends Command {
    public List<String> getAdminCommands() {
        return List.of("givelife");
    }
    public List<String> getNonAdminCommands() {
        return List.of("givelife");
    }

    @Override
    public void register(CommandDispatcher<CommandSourceStack> dispatcher) {
        dispatcher.register(
                literal("givelife")
                        .requires(commandSourceStack -> commandSourceStack.hasPermission(2))
                        .executes(commandContext -> displayTotem(commandContext.getSource()))
        );
    }

    public int displayTotem(CommandSourceStack source) {
        final ServerPlayer self = source.getPlayer();
        if (self == null) return -1;
        AnimationUtils.playTotemAnimation(self);

        return 1;
    }
}
