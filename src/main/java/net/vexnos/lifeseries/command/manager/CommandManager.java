package net.vexnos.lifeseries.command.manager;

import com.mojang.brigadier.CommandDispatcher;
import net.minecraft.commands.CommandBuildContext;
import net.minecraft.commands.CommandSourceStack;
import net.minecraft.commands.Commands;
import net.vexnos.lifeseries.command.GiveLifeCommand;

import java.util.ArrayList;
import java.util.List;

public class CommandManager {
    public static List<Command> commands = new ArrayList<>();
    private static void loadCommands() {
        commands.add(new GiveLifeCommand());
    }

    public static void registerAllCommands(
            CommandDispatcher<CommandSourceStack> dispatcher,
            CommandBuildContext commandRegistryAccess,
            Commands.CommandSelection registrationEnvironment
    ) {
        if (commands.isEmpty()) {
            loadCommands();
        }
        for (Command command : commands) {
            command.register(dispatcher, commandRegistryAccess);
        }
    }
}
