package com.cmoncrieffe.satwildernessgeneration.controller.utils;

import com.cmoncrieffe.dice.DiceRoller;
import com.cmoncrieffe.dice.DiceSize;
import com.cmoncrieffe.satwildernessgeneration.repositories.overarching_terrain.CoastalRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class CoastalUtils {
    private static CoastalRepository coastalRepository;

    @Autowired
    CoastalUtils(CoastalRepository coastalRepository) {
        CoastalUtils.coastalRepository = coastalRepository;
    }

    public static String get() {
        return coastalRepository.getCoastalById(DiceRoller.roll1Based(DiceSize.D100)).toString();
    }
}
