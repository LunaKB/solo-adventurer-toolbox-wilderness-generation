package com.cmoncrieffe.satwildernessgeneration.repositories.minor_terrain;

import com.cmoncrieffe.satwildernessgeneration.entity.minor_terrain.MinorSwamp;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.web.bind.annotation.CrossOrigin;

@CrossOrigin
public interface MinorSwampRepository extends JpaRepository<MinorSwamp, Integer> {
    MinorSwamp getMinorSwampById(int id);
}
