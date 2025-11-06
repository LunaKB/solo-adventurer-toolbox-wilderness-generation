package com.cmoncrieffe.satwildernessgeneration.controller.utils.minor_terrain;

import com.cmoncrieffe.dice.DiceRoller;
import com.cmoncrieffe.dice.DiceSize;
import com.cmoncrieffe.satwildernessgeneration.repositories.minor_terrain.MinorHillRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class MinorHillUtils {
    private static MinorHillRepository minorHillRepository;

    @Autowired
    MinorHillUtils(MinorHillRepository minorHillRepository) {
        MinorHillUtils.minorHillRepository = minorHillRepository;
    }

    public static String[] get() {
        return minorHillRepository.getHillById(DiceRoller.roll1Based(DiceSize.D100)).getData();
    }
}
