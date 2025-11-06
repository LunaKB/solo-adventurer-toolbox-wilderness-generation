package com.cmoncrieffe.satwildernessgeneration.controller.utils.minor_terrain;

import com.cmoncrieffe.dice.DiceRoller;
import com.cmoncrieffe.dice.DiceSize;
import com.cmoncrieffe.satwildernessgeneration.repositories.minor_terrain.WaterwayRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class WaterwayUtils {
    private static WaterwayRepository waterwayRepository;

    @Autowired
    WaterwayUtils(WaterwayRepository waterwayRepository) {
        WaterwayUtils.waterwayRepository = waterwayRepository;
    }

    public static String[] get() {
        return waterwayRepository.getWaterwayById(DiceRoller.roll1Based(DiceSize.D100)).getData();
    }
}
