package com.cmoncrieffe.satwildernessgeneration.controller.utils.minor_terrain;

import com.cmoncrieffe.dice.DiceRoller;
import com.cmoncrieffe.dice.DiceSize;
import com.cmoncrieffe.satwildernessgeneration.repositories.minor_terrain.LandscapeFeatureRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class LandscapeFeatureUtils {
    private static LandscapeFeatureRepository landscapeFeatureRepository;

    @Autowired
    LandscapeFeatureUtils(LandscapeFeatureRepository landscapeFeatureRepository) {
        LandscapeFeatureUtils.landscapeFeatureRepository = landscapeFeatureRepository;
    }

    public static String get() {
        return landscapeFeatureRepository.getLandscapeFeatureById(DiceRoller.roll1Based(DiceSize.D20)).getDescription();
    }
}
