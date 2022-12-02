package com.example.demo_portfolio.domain;

import jakarta.persistence.*;
import lombok.*;

@Entity
@Table
@Data
public class SkillType {
    @Id
    @GeneratedValue( strategy=GenerationType.AUTO )
    Long id;
    String name;
}
