package com.example.demo_portfolio.domain;

import jakarta.persistence.*;
import lombok.*;

@Entity
@Table
@Data
@AllArgsConstructor
public class Skill {
    @Id
    @SequenceGenerator(
            name="skill_seq",
            sequenceName="skill_seq",
            allocationSize=1
    )
    @GeneratedValue(
            strategy = GenerationType.SEQUENCE,
            generator = "skill_seq"
    )
    Long id;
    String name;
    @ManyToOne
    SkillType type;

    public Skill() {}
}
