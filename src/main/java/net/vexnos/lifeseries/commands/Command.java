package net.vexnos.lifeseries.commands;

import com.mojang.brigadier.CommandDispatcher;
import net.minecraft.commands.CommandBuildContext;
import net.minecraft.commands.CommandSourceStack;

public abstract class Command {
    public void registerCommand(CommandDispatcher<CommandSourceStack> commandDispatcher) {}
    public void registerCommand(CommandDispatcher<CommandSourceStack> commandDispatcher, CommandBuildContext registryAccess) {
        registerCommand(commandDispatcher);
    }
}