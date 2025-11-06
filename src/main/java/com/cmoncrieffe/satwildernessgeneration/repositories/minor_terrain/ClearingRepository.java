package com.cmoncrieffe.satwildernessgeneration.repositories.minor_terrain;

import com.cmoncrieffe.satwildernessgeneration.entity.minor_terrain.Clearing;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.web.bind.annotation.CrossOrigin;

@CrossOrigin
public interface ClearingRepository extends JpaRepository<Clearing, Integer> {
    Clearing getClearingById(int id);
}
