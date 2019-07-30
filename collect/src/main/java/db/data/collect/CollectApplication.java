package db.data.collect;

import db.data.collect.service.JobSchedulerTest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class CollectApplication {
	@Autowired
	private JobSchedulerTest scheduler;

	public static void main(String[] args) {
		SpringApplication.run(CollectApplication.class, args);
	}

}
