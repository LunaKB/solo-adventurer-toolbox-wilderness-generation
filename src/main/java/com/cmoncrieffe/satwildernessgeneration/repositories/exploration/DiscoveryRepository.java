package com.cmoncrieffe.satwildernessgeneration.repositories.exploration;

import com.cmoncrieffe.satwildernessgeneration.entity.exploration.Discovery;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.web.bind.annotation.CrossOrigin;

@CrossOrigin
public interface DiscoveryRepository extends JpaRepository<Discovery,Integer> {
    Discovery getDiscoveryById(int id);
}
