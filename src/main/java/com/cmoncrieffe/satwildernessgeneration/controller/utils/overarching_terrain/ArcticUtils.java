package com.cmoncrieffe.satwildernessgeneration.controller.utils.overarching_terrain;

import com.cmoncrieffe.dice.DiceRoller;
import com.cmoncrieffe.dice.DiceSize;
import com.cmoncrieffe.satwildernessgeneration.repositories.overarching_terrain.ArcticRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class ArcticUtils {
    private static ArcticRepository arcticRepository;

    @Autowired
    ArcticUtils(ArcticRepository arcticRepository) {
        ArcticUtils.arcticRepository = arcticRepository;
    }

    public static String get() {
        return arcticRepository.getArcticById(DiceRoller.roll1Based(DiceSize.D100)).toString();
    }
}
