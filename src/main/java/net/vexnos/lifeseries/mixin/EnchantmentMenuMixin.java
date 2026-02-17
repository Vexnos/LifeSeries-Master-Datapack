package net.vexnos.lifeseries.mixin;

import net.minecraft.world.inventory.EnchantmentMenu;
import net.minecraft.world.item.enchantment.EnchantmentInstance;
import org.spongepowered.asm.mixin.Mixin;
import org.spongepowered.asm.mixin.injection.At;
import org.spongepowered.asm.mixin.injection.ModifyVariable;

import java.util.List;

@Mixin(EnchantmentMenu.class)
public abstract class EnchantmentMenuMixin {
    @ModifyVariable(
            method = "getEnchantmentList",
            at = @At("STORE"),
            ordinal = 0
    )
    private static List<EnchantmentInstance> clampLevelsToOne(
            List<EnchantmentInstance> original
    ) {
        for (int i = 0; i < original.size(); i++) {
            EnchantmentInstance instance = original.get(i);

            if (instance.level() > 1) {
                original.set(i, new EnchantmentInstance(instance.enchantment(), 1));
            }
        }

        return original;
    }
}
