package com.cmoncrieffe.satwildernessgeneration.repositories.overarching_terrain;

import com.cmoncrieffe.satwildernessgeneration.entity.overarching_terrain.Forest;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.web.bind.annotation.CrossOrigin;

@CrossOrigin
public interface ForestRepository extends JpaRepository<Forest, Integer> {
    Forest getForestById(int id);
}
