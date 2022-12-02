package com.example.demo_portfolio.repositories;

import com.example.demo_portfolio.domain.*;
import org.springframework.data.jpa.repository.*;
import org.springframework.stereotype.*;

@Repository
public interface PersonRepository extends JpaRepository<Person, Long> {}
