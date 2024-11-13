package com.exo1.exo1.service;

import com.exo1.exo1.dto.TaskCountPerProjectDto;
import com.exo1.exo1.mapper.TaskCountPerProjectMapper;
import com.exo1.exo1.repository.TaskCountPerProjectRepository;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class TaskCountPerProjectService {

    private final TaskCountPerProjectRepository repository;
    private final TaskCountPerProjectMapper mapper;

    public TaskCountPerProjectService(TaskCountPerProjectRepository repository, TaskCountPerProjectMapper mapper) {
        this.repository = repository;
        this.mapper = mapper;
    }

    public List<TaskCountPerProjectDto> findAll() {
        return repository.findAll().stream()
                .map(mapper::toDto)
                .collect(Collectors.toList());
    }
}
