package com.cmoncrieffe.satwildernessgeneration.controller.utils;

import com.cmoncrieffe.dice.DiceRoller;
import com.cmoncrieffe.dice.DiceSize;
import com.cmoncrieffe.satwildernessgeneration.repositories.overarching_terrain.HillRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class HillUtils {
    private static HillRepository hillRepository;

    @Autowired
    HillUtils(HillRepository hillRepository) {
        HillUtils.hillRepository = hillRepository;
    }

    public static String get() {
        return hillRepository.getHillById(DiceRoller.roll1Based(DiceSize.D100)).toString();
    }
}
