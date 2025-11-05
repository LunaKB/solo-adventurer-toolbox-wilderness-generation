package com.cmoncrieffe.satwildernessgeneration.controller.utils;

import com.cmoncrieffe.dice.DiceRoller;
import com.cmoncrieffe.dice.DiceSize;
import com.cmoncrieffe.satwildernessgeneration.repositories.overarching_terrain.ForestRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class ForestUtils {
    private static ForestRepository forestRepository;

    @Autowired
    ForestUtils(ForestRepository forestRepository) {
        ForestUtils.forestRepository = forestRepository;
    }

    public static String get() {
        return forestRepository.getForestById(DiceRoller.roll1Based(DiceSize.D100)).toString();
    }
}
