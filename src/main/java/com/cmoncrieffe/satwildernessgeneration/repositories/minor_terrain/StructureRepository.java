package com.cmoncrieffe.satwildernessgeneration.repositories.minor_terrain;

import com.cmoncrieffe.satwildernessgeneration.entity.minor_terrain.Structure;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.web.bind.annotation.CrossOrigin;

@CrossOrigin
public interface StructureRepository extends JpaRepository<Structure, Integer> {
    Structure getStructureById(int id);
}
