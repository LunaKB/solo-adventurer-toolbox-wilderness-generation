package com.cmoncrieffe.satwildernessgeneration.entity.exploration;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Getter;

@Entity
@Table(name = "exploration_clue")
@Getter
public class Clue {
    @Id
    @Column(name = "id")
    private int id;

    @Column(name = "description")
    private String description;
}
