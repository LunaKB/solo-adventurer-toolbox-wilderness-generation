package com.cmoncrieffe.satwildernessgeneration.controller.utils.exploration;

import com.cmoncrieffe.dice.DiceRoller;
import com.cmoncrieffe.dice.DiceSize;
import com.cmoncrieffe.satwildernessgeneration.repositories.exploration.ClueRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class ClueUtils {
    private static ClueRepository clueRepository;

    @Autowired
    ClueUtils(ClueRepository clueRepository) {
        ClueUtils.clueRepository = clueRepository;
    }

    public static String get() {
        return clueRepository.getClueById(DiceRoller.roll1Based(DiceSize.D100)).getDescription();
    }
}