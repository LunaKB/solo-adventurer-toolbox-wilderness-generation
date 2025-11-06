package com.cmoncrieffe.satwildernessgeneration.repositories.minor_terrain;

import com.cmoncrieffe.satwildernessgeneration.entity.minor_terrain.LandscapeFeature;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.web.bind.annotation.CrossOrigin;

@CrossOrigin
public interface LandscapeFeatureRepository extends JpaRepository<LandscapeFeature, Integer> {
    LandscapeFeature getLandscapeFeatureById(int id);
}
