package com.example.demo_portfolio.domain;

import jakarta.persistence.*;
import lombok.*;

import java.util.*;

@Entity
@Table
@Data
public class Person {
    @Id
    @GeneratedValue( strategy=GenerationType.AUTO )
    Long id;
    String name;
    String domain;
    @Column(length = 2048)
    String description;
    String email;
    String establishment;
    String github;
    String linkedin;
    String status;
    String tel;
    @OneToMany
    List<Education> education;
    @OneToMany
    List<Project> projects;
    @OneToMany
    List<Skill> skills;
}
