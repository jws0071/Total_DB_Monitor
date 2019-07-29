package db.data.collect.service;

import db.data.collect.mapper.CollectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class CollectServiceImplment implements  CollectService{

    @Autowired
    CollectMapper collectMapper;

    @Override
    public List<Map<String, Object>>  getCollect() {

//        Map<String, String> temp = new HashMap<String, String>();
//        List list = new ArrayList();
//        temp.put("2","2");
//        list.add(temp);
//        System.out.println("service");
        return collectMapper.getCollect();
    }
}
