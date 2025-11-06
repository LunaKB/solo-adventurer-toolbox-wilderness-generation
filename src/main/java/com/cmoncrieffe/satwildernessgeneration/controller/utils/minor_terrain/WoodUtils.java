package com.cmoncrieffe.satwildernessgeneration.controller.utils.minor_terrain;

import com.cmoncrieffe.dice.DiceRoller;
import com.cmoncrieffe.dice.DiceSize;
import com.cmoncrieffe.satwildernessgeneration.repositories.minor_terrain.WoodRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class WoodUtils {
    private static WoodRepository woodRepository;

    @Autowired
    WoodUtils(WoodRepository woodRepository) {
        WoodUtils.woodRepository = woodRepository;
    }

    public static String[] get() {
        return woodRepository.getWoodById(DiceRoller.roll1Based(DiceSize.D100)).getData();
    }
}
