package com.cmoncrieffe.satwildernessgeneration.controller.utils.minor_terrain;

import com.cmoncrieffe.dice.DiceRoller;
import com.cmoncrieffe.dice.DiceSize;
import com.cmoncrieffe.satwildernessgeneration.repositories.minor_terrain.SettlementRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class SettlementUtils {
    private static SettlementRepository settlementRepository;

    @Autowired
    SettlementUtils(SettlementRepository settlementRepository) {
        SettlementUtils.settlementRepository = settlementRepository;
    }

    public static String[] get() {
        return settlementRepository.getSettlementById(DiceRoller.roll1Based(DiceSize.D100)).getData();
    }
}
