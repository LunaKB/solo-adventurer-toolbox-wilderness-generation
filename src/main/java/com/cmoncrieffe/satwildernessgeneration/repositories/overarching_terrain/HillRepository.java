package com.cmoncrieffe.satwildernessgeneration.repositories.overarching_terrain;

import com.cmoncrieffe.satwildernessgeneration.entity.overarching_terrain.Hill;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.web.bind.annotation.CrossOrigin;

@CrossOrigin
public interface HillRepository extends JpaRepository<Hill, Integer> {
    Hill getHillById(int id);
}
