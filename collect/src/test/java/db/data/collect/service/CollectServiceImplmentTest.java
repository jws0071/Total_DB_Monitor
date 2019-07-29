package db.data.collect.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.Arrays;
import java.util.List;
import java.util.Map;

import static org.springframework.test.util.AssertionErrors.assertTrue;

@RunWith(SpringRunner.class)
@SpringBootTest
public class CollectServiceImplmentTest {
    @Autowired
    CollectService collectService;


    @Test
    public void getCollect() {
        List<Map<String, Object>> result = collectService.getCollect();
        System.out.println(result);
    }
}
