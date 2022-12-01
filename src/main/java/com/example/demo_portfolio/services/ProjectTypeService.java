package com.example.demo_portfolio.services;

import com.example.demo_portfolio.domain.*;
import com.example.demo_portfolio.repositories.*;
import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;

import java.util.*;

@Service
public class ProjectTypeService {
    private final ProjectTypeRepository projectTypeRepository;

    @Autowired
    public ProjectTypeService(ProjectTypeRepository projectTypeRepository){
        this.projectTypeRepository = projectTypeRepository;
    }
    public List<ProjectType> getProjectTypes(){
        return projectTypeRepository.findAll();
    }

}
