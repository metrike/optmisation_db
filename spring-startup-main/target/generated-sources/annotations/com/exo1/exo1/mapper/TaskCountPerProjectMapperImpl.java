package com.exo1.exo1.mapper;

import com.exo1.exo1.dto.TaskCountPerProjectDto;
import com.exo1.exo1.entity.TaskCountPerProject;
import javax.annotation.processing.Generated;
import org.springframework.stereotype.Component;

@Generated(
    value = "org.mapstruct.ap.MappingProcessor",
    date = "2024-11-13T14:30:51+0100",
    comments = "version: 1.5.5.Final, compiler: javac, environment: Java 23 (Oracle Corporation)"
)
@Component
public class TaskCountPerProjectMapperImpl implements TaskCountPerProjectMapper {

    @Override
    public TaskCountPerProjectDto toDto(TaskCountPerProject taskCountPerProject) {
        if ( taskCountPerProject == null ) {
            return null;
        }

        TaskCountPerProjectDto taskCountPerProjectDto = new TaskCountPerProjectDto();

        taskCountPerProjectDto.setProjetId( taskCountPerProject.getProjetId() );
        taskCountPerProjectDto.setTaskCount( taskCountPerProject.getTaskCount() );

        return taskCountPerProjectDto;
    }
}
