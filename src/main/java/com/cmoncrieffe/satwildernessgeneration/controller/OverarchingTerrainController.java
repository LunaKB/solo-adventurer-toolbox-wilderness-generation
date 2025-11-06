package com.cmoncrieffe.satwildernessgeneration.controller;

import com.cmoncrieffe.satwildernessgeneration.controller.utils.overarching_terrain.*;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@CrossOrigin
@RestController
@RequestMapping("/wilderness-generation/overarching/generate")
public class OverarchingTerrainController {
    @GetMapping("/arctic")
    public ResponseEntity<String> getArctic() {
        return ResponseEntity.ok(ArcticUtils.get());
    }

    @GetMapping("/coastal")
    public ResponseEntity<String> getCoastal() {
        return ResponseEntity.ok(CoastalUtils.get());
    }

    @GetMapping("/desert")
    public ResponseEntity<String> getDesert() {
        return ResponseEntity.ok(DesertUtils.get());
    }

    @GetMapping("/forest")
    public ResponseEntity<String> getForest() {
        return ResponseEntity.ok(ForestUtils.get());
    }

    @GetMapping("/grassland")
    public ResponseEntity<String> getGrassland() {
        return ResponseEntity.ok(GrasslandUtils.get());
    }

    @GetMapping("/hill")
    public ResponseEntity<String> getHill() {
        return ResponseEntity.ok(HillUtils.get());
    }

    @GetMapping("/mountain")
    public ResponseEntity<String> getMountain() {
        return ResponseEntity.ok(MountainUtils.get());
    }

    @GetMapping("/swamp")
    public ResponseEntity<String> getSwamp() {
        return ResponseEntity.ok(SwampUtils.get());
    }
}
