package com.cmoncrieffe.satwildernessgeneration.controller;

import com.cmoncrieffe.satwildernessgeneration.controller.utils.minor_terrain.*;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@CrossOrigin
@RestController
@RequestMapping("/wilderness-generation/minor/generate")
public class MinorTerrainController {
    @GetMapping("/clearfelled")
    public ResponseEntity<String[]> getClearfelledArea() {
        return ResponseEntity.ok(ClearfelledAreaUtils.get());
    }

    @GetMapping("/clearing")
    public ResponseEntity<String[]> getClearing() {
        return ResponseEntity.ok(ClearingUtils.get());
    }

    @GetMapping("/gully")
    public ResponseEntity<String[]> getGully() {
        return ResponseEntity.ok(GullyUtils.get());
    }

    @GetMapping("/hill")
    public ResponseEntity<String[]> getHill() {
        return ResponseEntity.ok(MinorHillUtils.get());
    }

    @GetMapping("/lake")
    public ResponseEntity<String[]> getLake() {
        return ResponseEntity.ok(LakeUtils.get());
    }

    @GetMapping("/landscape")
    public ResponseEntity<String> getLandscape() {
        return ResponseEntity.ok(LandscapeFeatureUtils.get());
    }

    @GetMapping("/monument")
    public ResponseEntity<String[]> getMonument() {
        return ResponseEntity.ok(MonumentUtils.get());
    }

    @GetMapping("/mountain")
    public ResponseEntity<String[]> getMountain() {
        return ResponseEntity.ok(MinorMountainUtils.get());
    }

    @GetMapping("/oasis")
    public ResponseEntity<String[]> getOasis() {
        return ResponseEntity.ok(OasisUtils.get());
    }

    @GetMapping("/outcrop")
    public ResponseEntity<String[]> getOutcrop() {
        return ResponseEntity.ok(RockyOutcropUtils.get());
    }

    @GetMapping("/settlement")
    public ResponseEntity<String[]> getSettlement() {
        return ResponseEntity.ok(SettlementUtils.get());
    }

    @GetMapping("/structure")
    public ResponseEntity<String[]> getStructure() {
        return ResponseEntity.ok(StructureUtils.get());
    }

    @GetMapping("/swamp")
    public ResponseEntity<String[]> getSwamp() {
        return ResponseEntity.ok(MinorSwampUtils.get());
    }

    @GetMapping("/waterway")
    public ResponseEntity<String[]> getWaterway() {
        return ResponseEntity.ok(WaterwayUtils.get());
    }

    @GetMapping("/wood")
    public ResponseEntity<String[]> getWood() {
        return ResponseEntity.ok(WoodUtils.get());
    }
}
