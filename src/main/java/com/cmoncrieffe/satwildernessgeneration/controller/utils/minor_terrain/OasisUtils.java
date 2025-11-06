package com.cmoncrieffe.satwildernessgeneration.controller.utils.minor_terrain;

import com.cmoncrieffe.dice.DiceRoller;
import com.cmoncrieffe.dice.DiceSize;
import com.cmoncrieffe.satwildernessgeneration.repositories.minor_terrain.OasisRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class OasisUtils {
    private static OasisRepository oasisRepository;

    @Autowired
    OasisUtils(OasisRepository oasisRepository) {
        OasisUtils.oasisRepository = oasisRepository;
    }

    public static String[] get() {
        return oasisRepository.getOasisById(DiceRoller.roll1Based(DiceSize.D100)).getData();
    }
}
