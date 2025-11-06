package com.cmoncrieffe.satwildernessgeneration.controller.utils.minor_terrain;

import com.cmoncrieffe.dice.DiceRoller;
import com.cmoncrieffe.dice.DiceSize;
import com.cmoncrieffe.satwildernessgeneration.repositories.minor_terrain.StructureRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class StructureUtils {
    private static StructureRepository structureRepository;

    @Autowired
    StructureUtils(StructureRepository structureRepository) {
        StructureUtils.structureRepository = structureRepository;
    }

    public static String[] get() {
        return structureRepository.getStructureById(DiceRoller.roll1Based(DiceSize.D100)).getData();
    }
}

