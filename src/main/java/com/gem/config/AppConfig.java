package com.gem.config;

import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;

/**
 * 获取文件上传的路径
 */

@Data
@Component
@ConfigurationProperties(prefix = "system")
public class AppConfig {
    private String filePath;//文件存储路径
    private String urlPath;//文件访问路径
}
