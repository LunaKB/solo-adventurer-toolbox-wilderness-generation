package com.cmoncrieffe.satwildernessgeneration.repositories.overarching_terrain;

import com.cmoncrieffe.satwildernessgeneration.entity.overarching_terrain.Swamp;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.web.bind.annotation.CrossOrigin;

@CrossOrigin
public interface SwampRepository extends JpaRepository<Swamp, Integer> {
    Swamp getSwampById(int id);
}
