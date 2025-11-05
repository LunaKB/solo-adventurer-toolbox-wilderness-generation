package com.cmoncrieffe.satwildernessgeneration.controller.utils;

import com.cmoncrieffe.dice.DiceRoller;
import com.cmoncrieffe.dice.DiceSize;
import com.cmoncrieffe.satwildernessgeneration.repositories.overarching_terrain.SwampRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class SwampUtils {
    private static SwampRepository swampRepository;

    @Autowired
    SwampUtils(SwampRepository swampRepository) {
        SwampUtils.swampRepository = swampRepository;
    }

    public static String get() {
        return swampRepository.getSwampById(DiceRoller.roll1Based(DiceSize.D100)).toString();
    }
}
