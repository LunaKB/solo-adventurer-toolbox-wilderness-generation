package com.cmoncrieffe.satwildernessgeneration.controller.utils.minor_terrain;

import com.cmoncrieffe.dice.DiceRoller;
import com.cmoncrieffe.dice.DiceSize;
import com.cmoncrieffe.satwildernessgeneration.repositories.minor_terrain.RockyOutcropRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class RockyOutcropUtils {
    private static RockyOutcropRepository rockyOutcropRepository;

    @Autowired
    RockyOutcropUtils(RockyOutcropRepository rockyOutcropRepository) {
        RockyOutcropUtils.rockyOutcropRepository = rockyOutcropRepository;
    }

    public static String[] get() {
        return rockyOutcropRepository.getRockyOutcropById(DiceRoller.roll1Based(DiceSize.D100)).getData();
    }
}
