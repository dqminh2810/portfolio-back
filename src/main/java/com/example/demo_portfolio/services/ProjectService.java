package com.example.demo_portfolio.services;

import com.example.demo_portfolio.domain.*;
import com.example.demo_portfolio.repositories.*;
import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;

import java.util.*;

@Service
public class ProjectService {
    private final ProjectRepository projectRepository;

    @Autowired
    public ProjectService(ProjectRepository projectRepository){
        this.projectRepository = projectRepository;
    }
    public List<Project> getProjects(){
        return projectRepository.findAll();
    }
    public Project getProject(Long id){
        return projectRepository.findById(id).orElse(null);
    }
}
