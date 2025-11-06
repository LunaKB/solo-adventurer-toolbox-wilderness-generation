package com.cmoncrieffe.satwildernessgeneration.controller.utils.minor_terrain;

import com.cmoncrieffe.dice.DiceRoller;
import com.cmoncrieffe.dice.DiceSize;
import com.cmoncrieffe.satwildernessgeneration.repositories.minor_terrain.ClearingRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class ClearingUtils {
    private static ClearingRepository clearingRepository;

    @Autowired
    ClearingUtils(ClearingRepository clearingRepository) {
        ClearingUtils.clearingRepository = clearingRepository;
    }

    public static String[] get() {
        return clearingRepository.getClearingById(DiceRoller.roll1Based(DiceSize.D100)).getData();
    }
}
