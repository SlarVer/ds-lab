package by.kas.web.controller;

import by.kas.web.entity.Query;
import by.kas.web.entity.Roster;
import by.kas.web.entity.User;
import by.kas.web.service.QueryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class QueryController {
    @Autowired
    private QueryService queryService;

    private ModelAndView modelAndView = new ModelAndView("query");

    @GetMapping("/query")
    public ModelAndView showQuery(){
        modelAndView.addObject("query", new Query());
        modelAndView.addObject("logs");
        return modelAndView;
    }

    @PostMapping("/queryprocess")
    public ModelAndView queryProcess(@ModelAttribute("query") Query query){
        String condition;
        List resultSet = queryService.execute(query.getQuery());
        if (resultSet.get(0) instanceof Roster) {
            condition = "roster";
        } else {
            condition = "string";
        }
        modelAndView.addObject("condition", condition);
        modelAndView.addObject("resultset", resultSet);
        return modelAndView;
    }
}
