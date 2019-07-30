package db.data.collect.dao;

import org.springframework.stereotype.Repository;

import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Repository
public class TiberoDao {
    /*
     *   TODO :  DB연결 정보가 SQLServer만으로 규정되어있다
     *    나중에 속성정보를 프로퍼티로 빼거나 파라미터로 받아서 처리하는 공용로직으로 변경이 필요함
     * */
    synchronized
    //public List<Map<String, Object>> execQuery(List<String> querys, String dbIp, String dbPort, String dbPort) {
    public List<Map<String, Object>> execQuery(String dbIp, String dbPort) {
        List<Map<String, Object>> result = new ArrayList<>();
        final String DRIVER = "com.tmax.tibero.jdbc.TbDriver";
        final String USER = "dbajws";
        final String PW = "tibero";
        //final String URL = String.format("jdbc:oracle:thin:@//%s:%s/%s;", dbIp, dbPort);
        final String URL = "jdbc:tibero:thin:@10.100.34.12:18629:DTPHRD";
        System.out.println(URL);
        try {
            Class.forName(DRIVER);
            System.out.println("jdbc driver 로딩 성공");
            DriverManager.getConnection(URL, USER, PW);
            System.out.println("Tibero 연결 성공");
        } catch (ClassNotFoundException e) {
            System.out.println("jdbc driver 로딩 실패");
        } catch (SQLException e) {
            System.out.println(e);
            System.out.println("Tibero 연결 실패");
        }
        return result;
    }
}
