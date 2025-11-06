package com.cmoncrieffe.satwildernessgeneration.controller.utils.minor_terrain;

import com.cmoncrieffe.dice.DiceRoller;
import com.cmoncrieffe.dice.DiceSize;
import com.cmoncrieffe.satwildernessgeneration.repositories.minor_terrain.ClearfelledAreaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class ClearfelledAreaUtils {
    private static ClearfelledAreaRepository clearfelledAreaRepository;

    @Autowired
    ClearfelledAreaUtils(ClearfelledAreaRepository clearfelledAreaRepository) {
        ClearfelledAreaUtils.clearfelledAreaRepository = clearfelledAreaRepository;
    }

    public static String[] get() {
        return clearfelledAreaRepository.getClearfelledAreaById(DiceRoller.roll1Based(DiceSize.D100)).getData();
    }
}
