package com.cmoncrieffe.satwildernessgeneration.controller.utils.exploration;

import com.cmoncrieffe.dice.DiceRoller;
import com.cmoncrieffe.dice.DiceSize;
import com.cmoncrieffe.satwildernessgeneration.repositories.exploration.DiscoveryRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class DiscoveryUtils {
    private static DiscoveryRepository discoveryRepository;

    @Autowired
    DiscoveryUtils(DiscoveryRepository discoveryRepository) {
        DiscoveryUtils.discoveryRepository = discoveryRepository;
    }

    public static String get() {
        return discoveryRepository.getDiscoveryById(DiceRoller.roll1Based(DiceSize.D100)).getDescription();
    }
}
