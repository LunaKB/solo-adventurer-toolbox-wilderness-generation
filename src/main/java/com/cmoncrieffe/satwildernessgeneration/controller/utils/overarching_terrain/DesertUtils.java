package com.cmoncrieffe.satwildernessgeneration.controller.utils.overarching_terrain;

import com.cmoncrieffe.dice.DiceRoller;
import com.cmoncrieffe.dice.DiceSize;
import com.cmoncrieffe.satwildernessgeneration.repositories.overarching_terrain.DesertRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class DesertUtils {
    private static DesertRepository desertRepository;

    @Autowired
    DesertUtils(DesertRepository desertRepository) {
        DesertUtils.desertRepository = desertRepository;
    }

    public static String get() {
        return desertRepository.getDesertById(DiceRoller.roll1Based(DiceSize.D100)).toString();
    }
}
