package com.cmoncrieffe.satwildernessgeneration.entity.minor_terrain;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Getter;

@Entity
@Table(name = "minor_waterway")
@Getter
public class Waterway {
    @Id
    @Column(name = "id")
    private int id;

    @Column(name = "description")
    private String description;

    @Column(name = "notes")
    private String notes;

    public String[] getData() {
        return new String[]{description, notes};
    }
}
