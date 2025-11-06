package com.cmoncrieffe.satwildernessgeneration.repositories.minor_terrain;

import com.cmoncrieffe.satwildernessgeneration.entity.minor_terrain.MinorHill;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.web.bind.annotation.CrossOrigin;

@CrossOrigin
public interface MinorHillRepository extends JpaRepository<MinorHill, Integer> {
    MinorHill getHillById(int id);
}
