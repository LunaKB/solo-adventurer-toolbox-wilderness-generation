package com.cmoncrieffe.satwildernessgeneration.repositories.overarching_terrain;

import com.cmoncrieffe.satwildernessgeneration.entity.overarching_terrain.Grassland;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.web.bind.annotation.CrossOrigin;

@CrossOrigin
public interface GrasslandRepository extends JpaRepository<Grassland, Integer> {
    Grassland getGrasslandById(int id);
}
