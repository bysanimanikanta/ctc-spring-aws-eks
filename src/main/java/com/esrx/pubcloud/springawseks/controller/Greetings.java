package com.esrx.pubcloud.springawseks.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.info.BuildProperties;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/labday/")
public class Greetings {

    Logger logger = LoggerFactory.getLogger(Greetings.class);

    @Value("${MESSAGE_FROM: DEFAULT}")
    private String messageFrom;

    @Autowired
    BuildProperties  buildProperties;

    @RequestMapping("greetings")
    public String greet() {
        logger.info("Message from " + messageFrom + ": Hello, this is CTC Lab day and application version is " +
                buildProperties.getArtifact() + "-" + buildProperties.getVersion());
        return "Message from " + messageFrom + ": Hello, this is CTC Lab day and application version is " +
                buildProperties.getArtifact() + "-" + buildProperties.getVersion();
    }
}
