package com.example.demo_portfolio.controllers;

import com.example.demo_portfolio.domain.*;
import com.example.demo_portfolio.services.*;
import org.springframework.beans.factory.annotation.*;
import org.springframework.web.bind.annotation.*;

import java.util.*;

@RestController
@RequestMapping(path="api")
public class ProjectController {
    private final ProjectService projectService;

    @Autowired
    ProjectController(ProjectService projectService){
        this.projectService = projectService;
    }

    @GetMapping(value = "/projects")
    List<Project> getProjects(){
        return projectService.getProjects();
    }

    @GetMapping(value = "/project/{projectId}")
    public Project getProject(@PathVariable(name = "projectId") Long id){
        return projectService.getProject(id);
    }
}
