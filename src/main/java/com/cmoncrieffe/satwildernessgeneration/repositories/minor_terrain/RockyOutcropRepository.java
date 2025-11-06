package com.cmoncrieffe.satwildernessgeneration.repositories.minor_terrain;

import com.cmoncrieffe.satwildernessgeneration.entity.minor_terrain.RockyOutcrop;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.web.bind.annotation.CrossOrigin;

@CrossOrigin
public interface RockyOutcropRepository extends JpaRepository<RockyOutcrop,Integer> {
    RockyOutcrop getRockyOutcropById(int id);
}
