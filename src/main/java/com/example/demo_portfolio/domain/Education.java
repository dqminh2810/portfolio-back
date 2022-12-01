package com.example.demo_portfolio.domain;

import jakarta.persistence.*;
import lombok.*;

import java.util.*;

@Entity
@Table
@Data
public class Education {
    @Id
    @GeneratedValue( strategy=GenerationType.AUTO )
    Long id;
    String description;
    String domain;
    String establishment;
    String from_date;
    String to_date;
}
