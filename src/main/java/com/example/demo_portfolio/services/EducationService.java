package com.example.demo_portfolio.services;

import com.example.demo_portfolio.domain.*;
import com.example.demo_portfolio.repositories.*;
import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;

import java.util.*;

@Service
public class EducationService {
    private final EducationRepository educationRepository;

    @Autowired
    public EducationService(EducationRepository educationRepository){
        this.educationRepository = educationRepository;
    }
    public List<Education> getEducations(){
        return educationRepository.findAll();
    }
    public Education getEducation(Long id){
        return educationRepository.findById(id).orElse(null);
    }
}
