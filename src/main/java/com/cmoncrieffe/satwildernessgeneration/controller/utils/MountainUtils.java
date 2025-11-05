package com.cmoncrieffe.satwildernessgeneration.controller.utils;

import com.cmoncrieffe.dice.DiceRoller;
import com.cmoncrieffe.dice.DiceSize;
import com.cmoncrieffe.satwildernessgeneration.repositories.overarching_terrain.MountainRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class MountainUtils {
    private static MountainRepository mountainRepository;

    @Autowired
    MountainUtils(MountainRepository mountainRepository) {
        MountainUtils.mountainRepository = mountainRepository;
    }

    public static String get() {
        return mountainRepository.getMountainById(DiceRoller.roll1Based(DiceSize.D100)).toString();
    }
}
