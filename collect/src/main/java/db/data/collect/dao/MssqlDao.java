package db.data.collect.dao;

import org.springframework.stereotype.Repository;

import java.sql.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Repository
public class MssqlDao {
    /*
     *   TODO :  DB연결 정보가 SQLServer만으로 규정되어있다
     *    나중에 속성정보를 프로퍼티로 빼거나 파라미터로 받아서 처리하는 공용로직으로 변경이 필요함
     * */
    synchronized
    public List<Map<String, Object>> execQuery(List<String> querys, String dbIp, String dbPort) {
        List<Map<String, Object>> result = new ArrayList<>();

        final String DRIVER = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
        final String USER = "dbajws";
        final String PW = "wjddntjs01!";
        final String URL = String.format("jdbc:sqlserver://%s:%s;", dbIp, dbPort);

        try {
            DriverManager.setLoginTimeout(1);
            Class.forName(DRIVER);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            return result;
        }

        try (Connection con = DriverManager.getConnection(URL, USER, PW)) {
            for (String q : querys) {
                PreparedStatement pstmt = con.prepareStatement(q);
                ResultSet resultSet = pstmt.executeQuery();

                while (resultSet.next()) {
                    ResultSetMetaData metaData = resultSet.getMetaData();
                    int sizeOfColumn = metaData.getColumnCount();
                    Map<String, Object> map = new HashMap<>();
                    for (int indexOfcolumn = 0; indexOfcolumn < sizeOfColumn; indexOfcolumn++) {
                        String column = metaData.getColumnName(indexOfcolumn + 1);
                        String value = resultSet.getString(column);
                        map.put(column, value);
                    }
                    result.add(map);
                }
                resultSet.close();
                pstmt.close();
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return result;
    }
}
