package net.vexnos.lifeseries.commands;

import com.mojang.brigadier.CommandDispatcher;
import net.fabricmc.fabric.api.command.v2.CommandRegistrationCallback;
import net.minecraft.commands.CommandBuildContext;
import net.minecraft.commands.CommandSourceStack;
import net.minecraft.commands.Commands;

import java.util.ArrayList;
import java.util.List;

import static net.vexnos.lifeseries.Lifeseries.LOGGER;
import static net.vexnos.lifeseries.Lifeseries.MOD_ID;

public class CommandInitializer {
    public static List<Command> commands = new ArrayList<>();

    public static void initializeCommands() {
        CommandRegistrationCallback.EVENT.register(((
                CommandDispatcher<CommandSourceStack> dispatcher,
                CommandBuildContext registryAccess,
                Commands.CommandSelection registrationEnvironment
        ) -> {
            commands.add(new DisplayTotemCommand());
            commands.add(new SetOnFireCommand());

            for (Command command : commands ) {
                command.registerCommand(dispatcher, registryAccess);
            }

            LOGGER.info("Registering mod commands for " + MOD_ID);
        }));
    }
}
