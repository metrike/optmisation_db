package com.exo1.exo1.dto;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class TaskCountPerProjectDto {
    @Schema(accessMode = Schema.AccessMode.READ_ONLY)
    private Long projetId;
    private Long taskCount;


}
