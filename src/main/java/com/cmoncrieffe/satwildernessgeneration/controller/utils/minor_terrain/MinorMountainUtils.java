package com.cmoncrieffe.satwildernessgeneration.controller.utils.minor_terrain;

import com.cmoncrieffe.dice.DiceRoller;
import com.cmoncrieffe.dice.DiceSize;
import com.cmoncrieffe.satwildernessgeneration.repositories.minor_terrain.MinorMountainRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class MinorMountainUtils {
    private static MinorMountainRepository minorMountainRepository;

    @Autowired
    MinorMountainUtils(MinorMountainRepository minorMountainRepository) {
        MinorMountainUtils.minorMountainRepository = minorMountainRepository;
    }

    public static String[] get() {
        return minorMountainRepository.getMountainById(DiceRoller.roll1Based(DiceSize.D100)).getData();
    }
}
