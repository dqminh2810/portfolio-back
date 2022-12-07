//package com.example.demo_portfolio.configuration;
//
//import org.springframework.context.annotation.*;
//import org.springframework.http.*;
//import org.springframework.security.config.annotation.web.builders.*;
//import org.springframework.security.config.annotation.web.configuration.*;
//import org.springframework.security.web.*;
//import org.springframework.web.cors.*;
//import org.springframework.web.servlet.config.annotation.*;
//
//import java.util.*;
//
//@EnableWebSecurity
//@Configuration
//public class HttpSecurityConfig{
//    @Bean
//    public SecurityFilterChain filterChain(HttpSecurity http) throws Exception {
//        http.cors();
////                .csrf().disable()
////
////                .antMatcher(HttpMethod.OPTIONS,"/path/to/allow").permitAll()//allow CORS option calls
////                .antMatchers("/resources/**").permitAll()
////                .anyRequest().authenticated()
////                .and()
////                .formLogin()
////                .and()
////                .httpBasic();
//        return http.build();
//    }
//
//    @Bean
//    protected CorsConfigurationSource corsConfigurationSource() {
//        final CorsConfiguration configuration = new CorsConfiguration();
//
//        configuration.setAllowedOrigins(Arrays.asList("http://localhost", "*"));
//        configuration.setAllowedMethods(Arrays.asList("HEAD", "GET", "POST", "PUT", "DELETE", "PATCH"));
//
//        // NOTE: setAllowCredentials(true) is important,
//        // otherwise, the value of the 'Access-Control-Allow-Origin' header in the response
//        // must not be the wildcard '*' when the request's credentials mode is 'include'.
//        configuration.setAllowCredentials(true);
//
//        // NOTE: setAllowedHeaders is important!
//        // Without it, OPTIONS preflight request will fail with 403 Invalid CORS request
//        configuration.setAllowedHeaders(Arrays.asList(
//                "Authorization",
//                "Accept",
//                "Cache-Control",
//                "Content-Type",
//                "Origin",
//                "ajax", // <-- This is needed for jQuery's ajax request.
//                "x-csrf-token",
//                "x-requested-with"
//        ));
//
//        final UrlBasedCorsConfigurationSource source = new UrlBasedCorsConfigurationSource();
//        source.registerCorsConfiguration("/api/**", configuration);
//        return source;
//    }
//
//    @Bean
//    public WebMvcConfigurer corsConfigurer() {
//        return new WebMvcConfigurer() {
//            @Override
//            public void addCorsMappings(CorsRegistry registry) {
//                registry.addMapping("/**")
//                        .allowedMethods("HEAD", "GET", "PUT", "POST", "DELETE", "PATCH");
//            }
//        };
//    }
//
//}
