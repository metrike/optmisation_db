package com.exo1.exo1.mapper;

import com.exo1.exo1.dto.TaskCountPerProjectDto;
import com.exo1.exo1.entity.TaskCountPerProject;
import org.mapstruct.Mapper;

@Mapper(componentModel = "spring")
public interface TaskCountPerProjectMapper {

    TaskCountPerProjectDto toDto(TaskCountPerProject taskCountPerProject);
}
