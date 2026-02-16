package net.vexnos.lifeseries.utils.world;

import net.minecraft.network.protocol.game.ClientboundEntityEventPacket;
import net.minecraft.server.level.ServerPlayer;

public class AnimationUtils {
    public static void playTotemAnimation(ServerPlayer player) {
        player.connection.send(new ClientboundEntityEventPacket(player, (byte) 35));
    }
}
