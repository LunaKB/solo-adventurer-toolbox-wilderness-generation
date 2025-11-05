package com.cmoncrieffe.satwildernessgeneration.entity.overarching_terrain;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Getter;

@Entity
@Table(name = "overarching_desert")
@Getter
public class Desert {
    @Id
    @Column(name = "id")
    private int id;

    @Column(name = "feature")
    private String feature;

    @Column(name = "size")
    private String size;

    @Override
    public String toString() {
        return String.format("%s%s", feature, (size.isBlank()) ? size : ": " + size );
    }
}
