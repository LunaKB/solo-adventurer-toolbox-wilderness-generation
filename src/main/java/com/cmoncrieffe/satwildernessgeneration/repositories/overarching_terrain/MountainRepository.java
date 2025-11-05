package com.cmoncrieffe.satwildernessgeneration.repositories.overarching_terrain;

import com.cmoncrieffe.satwildernessgeneration.entity.overarching_terrain.Mountain;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.web.bind.annotation.CrossOrigin;

@CrossOrigin
public interface MountainRepository extends JpaRepository<Mountain, Integer> {
    Mountain getMountainById(int id);
}
