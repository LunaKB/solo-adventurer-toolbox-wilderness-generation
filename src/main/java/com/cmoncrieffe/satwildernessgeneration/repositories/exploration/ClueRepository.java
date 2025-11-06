package com.cmoncrieffe.satwildernessgeneration.repositories.exploration;

import com.cmoncrieffe.satwildernessgeneration.entity.exploration.Clue;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.web.bind.annotation.CrossOrigin;

@CrossOrigin
public interface ClueRepository extends JpaRepository<Clue, Integer> {
    Clue getClueById(int id);
}
