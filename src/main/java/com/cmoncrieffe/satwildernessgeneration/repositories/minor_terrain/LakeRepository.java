package com.cmoncrieffe.satwildernessgeneration.repositories.minor_terrain;

import com.cmoncrieffe.satwildernessgeneration.entity.minor_terrain.Lake;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.web.bind.annotation.CrossOrigin;

@CrossOrigin
public interface LakeRepository extends JpaRepository<Lake, Integer> {
    Lake getLakeById(int id);
}
