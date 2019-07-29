package db.data.collect.service;



import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;



public interface CollectService {
    List<Map<String, Object>>  getCollect();
}
