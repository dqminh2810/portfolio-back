package com.example.demo_portfolio.controllers;

import com.example.demo_portfolio.domain.*;
import com.example.demo_portfolio.services.*;
import org.springframework.beans.factory.annotation.*;
import org.springframework.web.bind.annotation.*;

import java.util.*;

@RestController
@RequestMapping(path="api")
public class PersonController {
    private final PersonService personService;

    @Autowired
    PersonController(PersonService personService){
        this.personService = personService;
    }

    @GetMapping(value="/persons")
    List<Person> getPersons(){
        return personService.getPersons();
    }

    @GetMapping(value = "/person/{personId}")
    public Person getPerson(@PathVariable(name = "personId") Long id){
        return personService.getPerson(id);
    }
}
