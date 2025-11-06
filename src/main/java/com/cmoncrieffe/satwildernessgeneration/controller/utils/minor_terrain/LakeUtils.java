package com.cmoncrieffe.satwildernessgeneration.controller.utils.minor_terrain;

import com.cmoncrieffe.dice.DiceRoller;
import com.cmoncrieffe.dice.DiceSize;
import com.cmoncrieffe.satwildernessgeneration.repositories.minor_terrain.LakeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class LakeUtils {
    private static LakeRepository lakeRepository;

    @Autowired
    LakeUtils(LakeRepository lakeRepository) {
        LakeUtils.lakeRepository = lakeRepository;
    }

    public static String[] get() {
        return lakeRepository.getLakeById(DiceRoller.roll1Based(DiceSize.D100)).getData();
    }
}
