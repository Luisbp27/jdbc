package edu.uoc.practica.bd.uocdb.exercise1;

import edu.uoc.practica.bd.util.Column;
import edu.uoc.practica.bd.util.DBAccessor;
import edu.uoc.practica.bd.util.Report;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class Exercise1PrintReportOverQuery {

    public static void main(String[] args) {
        Exercise1PrintReportOverQuery app = new Exercise1PrintReportOverQuery();
        app.run();
    }

    private void run() {
        DBAccessor dbAccessor = new DBAccessor();
        dbAccessor.init();

        // With this implementation, the connection is closed automatically
        try (Connection conn = dbAccessor.getConnection()) {
            if (conn != null) {
                // With this implementation, the statement and the result set are closed
                // automatically
                try (Statement statement = conn.createStatement();
                        ResultSet resultSet = statement.executeQuery(
                                "SELECT id_dog, name_dog, num_visits, num_dif_vaccines, date_last_vaccine, num_drugs, num_tests FROM REPORT_DOG ORDER BY num_visits DESC, name_dog ASC")) {

                    List<Column> columns = Arrays.asList(
                            new Column("Id dog", 7, "id_dog"),
                            new Column("Name dog", 8, "name_dog"),
                            new Column("Num visits", 10, "num_visits"),
                            new Column("Num dif. vac.", 13, "num_dif_vaccines"),
                            new Column("Date last vac.", 14, "date_last_vaccine"),
                            new Column("Num drugs", 9, "num_drugs"),
                            new Column("Num tests", 9, "num_tests"));

                    Report report = new Report();
                    report.setColumns(columns);
                    List<Object> list = new ArrayList<>();

                    // Taking the data from the query
                    while (resultSet.next()) {
                        list.add(new Exercise1Row(
                                resultSet.getInt("id_dog"),
                                resultSet.getString("name_dog"),
                                resultSet.getInt("num_visits"),
                                resultSet.getInt("num_dif_vaccines"),
                                resultSet.getDate("date_last_vaccine") == null ? "null"
                                        : resultSet.getDate("date_last_vaccine").toString(),
                                resultSet.getInt("num_drugs"),
                                resultSet.getInt("num_tests")));
                    }

                    // Setting the data to the report
                    if (list.isEmpty()) {
                        System.out.println("List without results");
                    } else {
                        report.setColumns(columns);
                        report.printReport(list);
                    }

                } catch (SQLException e) {
                    System.err.println("ERROR: Failed to execute the SQL query");
                    e.printStackTrace();
                }

            }
        } catch (SQLException e) {
            System.err.println("ERROR: Failed to establish a database connection");
            e.printStackTrace();
        }
    }
}
