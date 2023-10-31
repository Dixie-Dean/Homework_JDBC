package com.example.homework_jdbc.repository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ClassPathResource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.HashMap;
import java.util.stream.Collectors;

@Repository
public class MyRepository {
    private final String script = read("myScript.sql");

    @Autowired
    private NamedParameterJdbcTemplate namedParameterJdbcTemplate;

    public String getProductName(String name) {
        var parameters = new HashMap<String, String>();
        parameters.put("name", name);

        var result = namedParameterJdbcTemplate.query(
                script, parameters, (rs, rowNum) -> {
                    var customerName = rs.getString("name");
                    var product = rs.getString("product_name");
                    return "Customer: " + customerName + " | " + "Product: " + product;
                });
        return result.toString();
    }

    private static String read(String scriptFileName) {
        try (InputStream is = new ClassPathResource(scriptFileName).getInputStream();
             BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(is))) {
            return bufferedReader.lines().collect(Collectors.joining("\n"));
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
}
