package com.esrx.pubcloud.springawseks;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.actuate.autoconfigure.security.servlet.ManagementWebSecurityAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication(exclude = {ManagementWebSecurityAutoConfiguration.class})
public class SpringAwsEksApplication {

	public static void main(String[] args) {
		SpringApplication.run(SpringAwsEksApplication.class, args);
	}

}
