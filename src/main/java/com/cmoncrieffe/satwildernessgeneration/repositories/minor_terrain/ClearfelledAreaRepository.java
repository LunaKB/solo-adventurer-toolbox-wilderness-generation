package com.cmoncrieffe.satwildernessgeneration.repositories.minor_terrain;

import com.cmoncrieffe.satwildernessgeneration.entity.minor_terrain.ClearfelledArea;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.web.bind.annotation.CrossOrigin;

@CrossOrigin
public interface ClearfelledAreaRepository extends JpaRepository<ClearfelledArea, Integer> {
    ClearfelledArea getClearfelledAreaById(int id);
}
