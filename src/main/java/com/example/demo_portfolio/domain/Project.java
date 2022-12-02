package com.example.demo_portfolio.domain;

import jakarta.persistence.*;
import lombok.*;

import java.util.*;

@Entity
@Table
@Data
public class Project {
    @Id
    @GeneratedValue( strategy=GenerationType.AUTO )
    Long id;
    @Column(length = 2048)
    String description;
    String establishment;
    String name;
    String from_date;
    String to_date;
    @ManyToOne
    ProjectType type;
    @ElementCollection
    List<String> technologies;
}
