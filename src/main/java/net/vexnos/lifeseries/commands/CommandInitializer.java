package net.vexnos.lifeseries.commands;

import com.mojang.brigadier.CommandDispatcher;
import net.fabricmc.fabric.api.command.v2.CommandRegistrationCallback;
import net.minecraft.commands.CommandBuildContext;
import net.minecraft.commands.CommandSourceStack;
import net.minecraft.commands.Commands;

import java.util.ArrayList;
import java.util.List;

public class CommandInitializer {
    public static List<Command> commands = new ArrayList<>();

    public static void initializeCommands() {
        CommandRegistrationCallback.EVENT.register(((
                CommandDispatcher<CommandSourceStack> dispatcher,
                CommandBuildContext registryAccess,
                Commands.CommandSelection registrationEnvironment
        ) -> {
            commands.add(new DisplayTotemCommand());

            for (Command command : commands ) {
                command.registerCommand(dispatcher, registryAccess);
            }
        }));
    }
}
