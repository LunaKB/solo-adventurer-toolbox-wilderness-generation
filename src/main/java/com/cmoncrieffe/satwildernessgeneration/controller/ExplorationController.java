package com.cmoncrieffe.satwildernessgeneration.controller;

import com.cmoncrieffe.satwildernessgeneration.controller.utils.exploration.ClueUtils;
import com.cmoncrieffe.satwildernessgeneration.controller.utils.exploration.DiscoveryUtils;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@CrossOrigin
@RestController
@RequestMapping("/wilderness-generation/exploration/generate")
public class ExplorationController {
    @GetMapping("/discovery")
    public ResponseEntity<String> getDiscovery() {
        return ResponseEntity.ok(DiscoveryUtils.get());
    }

    @GetMapping("/clue")
    public ResponseEntity<String> getClue() {
        return ResponseEntity.ok(ClueUtils.get());
    }
}
