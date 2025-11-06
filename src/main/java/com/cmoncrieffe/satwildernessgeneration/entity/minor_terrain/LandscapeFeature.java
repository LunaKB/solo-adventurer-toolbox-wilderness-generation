package com.cmoncrieffe.satwildernessgeneration.entity.minor_terrain;

import jakarta.persistence.*;
import lombok.Getter;

@Entity
@Table(name = "minor_landscape_feature")
@Getter
public class LandscapeFeature {
    @Id
    @Column(name = "id")
    private int id;

    @Column(name = "description")
    private String description;
}
