package db.data.collect.controller;

import db.data.collect.service.CollectService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;
import java.util.Map;

@Controller
public class CollectController {

    @Autowired
    CollectService collectService;

    @GetMapping("/")
    public List<Map<String, Object>> connect() {
        System.out.println("controller");
        return collectService.getCollect();
    }


}
