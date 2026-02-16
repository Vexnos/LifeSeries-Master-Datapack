package net.vexnos.lifeseries;

import net.fabricmc.api.ModInitializer;

import net.fabricmc.fabric.api.command.v2.CommandRegistrationCallback;
import net.vexnos.lifeseries.command.manager.CommandManager;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class Lifeseries implements ModInitializer {
	public static final String MOD_ID = "lifeseries";
	public static final Logger LOGGER = LoggerFactory.getLogger(MOD_ID);

	@Override
	public void onInitialize() {
		CommandRegistrationCallback.EVENT.register(CommandManager::registerAllCommands);
	}
}