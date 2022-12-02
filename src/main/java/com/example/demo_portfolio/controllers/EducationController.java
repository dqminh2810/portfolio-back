package com.example.demo_portfolio.controllers;

import com.example.demo_portfolio.domain.*;
import com.example.demo_portfolio.services.*;
import org.springframework.beans.factory.annotation.*;
import org.springframework.web.bind.annotation.*;

import java.util.*;

@RestController
@RequestMapping(path="api")
public class EducationController {
    private final EducationService educationService;

    @Autowired
    EducationController(EducationService educationService){
        this.educationService = educationService;
    }

    @GetMapping(value = "/educations")
    List<Education> getEducations(){
        return educationService.getEducations();
    }

    @GetMapping(value = "/education/{educationId}")
    public Education getEducation(@PathVariable(name = "educationId") Long id){
        return educationService.getEducation(id);
    }
}
