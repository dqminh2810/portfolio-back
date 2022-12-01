package com.example.demo_portfolio.services;

import com.example.demo_portfolio.domain.*;
import com.example.demo_portfolio.repositories.*;
import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;

import java.util.*;

@Service
public class PersonService {
    private final PersonRepository personRepository;

    @Autowired
    public PersonService(PersonRepository personRepository){
        this.personRepository = personRepository;
    }
    public List<Person> getPersons(){
        return personRepository.findAll();
    }
    public Person getPerson(Long id){
        return personRepository.findById(id).orElse(null);
    }
}
