package com.example.demo_portfolio.services;

import com.example.demo_portfolio.domain.*;
import com.example.demo_portfolio.repositories.*;
import jakarta.persistence.*;
import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;

import java.util.*;

@Service
public class SkillService {
    private final SkillRepository skillRepository;

    @Autowired
    public SkillService(SkillRepository skillRepository){
        this.skillRepository = skillRepository;
    }
    public List<Skill> getSkills(){
        return skillRepository.findAll();
    }
    public Skill getSkill(Long id){
        return skillRepository.findById(id).orElse(null);
    }
}
