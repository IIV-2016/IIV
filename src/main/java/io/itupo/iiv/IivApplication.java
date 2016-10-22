package io.itupo.iiv;

import javax.servlet.MultipartConfigElement;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.web.multipart.MultipartResolver;

@SpringBootApplication
public class IivApplication {

	public static void main(String[] args) {
		SpringApplication.run(IivApplication.class, args);
	}
}
