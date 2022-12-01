package com.example.demo_portfolio.controllers;

import com.example.demo_portfolio.domain.*;
import com.example.demo_portfolio.services.*;
import org.springframework.web.bind.annotation.*;

import java.util.*;

@RestController
@RequestMapping(path="api")
public class SkillController {

    private final SkillService skillService;

    public SkillController(SkillService skillService) {
        this.skillService = skillService;
    }

    @GetMapping(value = "/skills")
    public List<Skill> getSkills(){
        return skillService.getSkills();
    }

    @GetMapping(value = "/skill/{skillId}")
    public Skill getSkill(@PathVariable(name = "skillId") Long id){
        System.out.println(id);
        return skillService.getSkill(id);
    }
}
