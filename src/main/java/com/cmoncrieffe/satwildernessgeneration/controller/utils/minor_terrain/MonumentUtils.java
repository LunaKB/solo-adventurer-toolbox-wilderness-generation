package com.cmoncrieffe.satwildernessgeneration.controller.utils.minor_terrain;

import com.cmoncrieffe.dice.DiceRoller;
import com.cmoncrieffe.dice.DiceSize;
import com.cmoncrieffe.satwildernessgeneration.repositories.minor_terrain.MonumentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class MonumentUtils {
    private static MonumentRepository monumentRepository;

    @Autowired
    MonumentUtils(MonumentRepository monumentRepository) {
        MonumentUtils.monumentRepository = monumentRepository;
    }

    public static String[] get() {
        return monumentRepository.getMonumentById(DiceRoller.roll1Based(DiceSize.D20)).getData();
    }
}
