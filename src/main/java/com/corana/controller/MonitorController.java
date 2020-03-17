package com.corana.controller;

import com.corana.Response.Response;
import com.corana.Response.Total;
import org.springframework.http.*;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.client.RestTemplate;

import javax.servlet.http.HttpServletRequest;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.Arrays;
import java.util.List;

/**
 * @author Karthikeyan on 14-03-2020
 */

@Controller
public class MonitorController {

    @GetMapping(value = "/all", produces = MediaType.APPLICATION_JSON_VALUE)
    private String getAllDetails(HttpServletRequest request) throws URISyntaxException {
        RestTemplate restTemplate = new RestTemplate();

        HttpHeaders headers = new HttpHeaders();
        headers.setAccept(Arrays.asList(MediaType.APPLICATION_JSON));
        headers.add("user-agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36");
        HttpEntity<String> entity = new HttpEntity<String>("parameters", headers);

        ResponseEntity<Response[]> exchange = restTemplate.exchange(new URI("https://corona.lmao.ninja/countries"), HttpMethod.GET, entity, Response[].class);
        ResponseEntity<Total> exchange1 = restTemplate.exchange(new URI("https://corona.lmao.ninja/all"), HttpMethod.GET, entity, Total.class);

        List<Response> responses = Arrays.asList(exchange.getBody());
        request.setAttribute("responses",responses);
        request.setAttribute("total",exchange1.getBody());
        return "welcome";
    }



}
