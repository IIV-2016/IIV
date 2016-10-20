package io.itupo.iiv.configuration;

import org.springframework.context.annotation.Configuration;

@Configuration
public class WebConfiguration{
    private static final String[] CLASSPATH_RESOURCE_LOCATIONS = {
            "classpath:/META-INF/resources/", "classpath:/resources/",
            "classpath:/static/", "classpath:/public/"
    };
}
