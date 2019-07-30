package db.data.collect.service;

import org.quartz.Job;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;

public class JobTest implements Job {
    @Override
    public void execute(JobExecutionContext context) throws JobExecutionException {
        /*
         * Job Interface를 implements하여
         * execute 메소드에 로직을 넣는다.
         * */
        System.out.println("--------------------------job수행---------------------------");
        System.out.println("--------------------------스케줄러---------------------------");
    }
}
