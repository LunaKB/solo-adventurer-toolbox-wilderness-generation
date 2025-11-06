package com.cmoncrieffe.satwildernessgeneration.repositories.minor_terrain;

import com.cmoncrieffe.satwildernessgeneration.entity.minor_terrain.Wood;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.web.bind.annotation.CrossOrigin;

@CrossOrigin
public interface WoodRepository extends JpaRepository<Wood, Integer> {
    Wood getWoodById(int id);
}
