package com.cmoncrieffe.satwildernessgeneration.controller.utils.minor_terrain;

import com.cmoncrieffe.dice.DiceRoller;
import com.cmoncrieffe.dice.DiceSize;
import com.cmoncrieffe.satwildernessgeneration.repositories.minor_terrain.MinorSwampRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class MinorSwampUtils {
    private static MinorSwampRepository minorSwampRepository;

    @Autowired
    MinorSwampUtils(MinorSwampRepository minorSwampRepository) {
        MinorSwampUtils.minorSwampRepository = minorSwampRepository;
    }

    public static String[] get() {
        return minorSwampRepository.getMinorSwampById(DiceRoller.roll1Based(DiceSize.D100)).getData();
    }
}
