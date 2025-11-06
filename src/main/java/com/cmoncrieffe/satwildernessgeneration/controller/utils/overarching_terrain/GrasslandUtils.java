package com.cmoncrieffe.satwildernessgeneration.controller.utils.overarching_terrain;

import com.cmoncrieffe.dice.DiceRoller;
import com.cmoncrieffe.dice.DiceSize;
import com.cmoncrieffe.satwildernessgeneration.repositories.overarching_terrain.GrasslandRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class GrasslandUtils {
    private static GrasslandRepository grasslandRepository;

    @Autowired
    GrasslandUtils(GrasslandRepository grasslandRepository) {
        GrasslandUtils.grasslandRepository = grasslandRepository;
    }

    public static String get() {
        return grasslandRepository.getGrasslandById(DiceRoller.roll1Based(DiceSize.D100)).toString();
    }
}
