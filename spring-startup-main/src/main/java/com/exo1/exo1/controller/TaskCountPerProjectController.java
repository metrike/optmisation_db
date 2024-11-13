package com.exo1.exo1.controller;

import com.exo1.exo1.dto.TaskCountPerProjectDto;
import com.exo1.exo1.service.TaskCountPerProjectService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/task-counts")
public class TaskCountPerProjectController {

    private final TaskCountPerProjectService service;

    public TaskCountPerProjectController(TaskCountPerProjectService service) {
        this.service = service;
    }

    @GetMapping("/all")
    public List<TaskCountPerProjectDto> getAllTaskCounts() {
        return service.findAll();
    }
}
