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
    DBAccessor dbaccessor = new DBAccessor();
    dbaccessor.init();
    Connection conn = dbaccessor.getConnection();

    if (conn != null) {
      Statement cstmt = null;
      ResultSet resultSet = null;

      try {

        List<Column> columns = Arrays.asList(new Column("Id dog", 7, "id_dog"),
            new Column("Name dog", 8, "name_dog"),
            new Column("Num visits", 10, "num_visits"),
            new Column("Num dif. vac.", 13, "num_dif_vaccines"),
            new Column("Date last vac.", 14, "date_last_vaccine"),
            new Column("Num drugs", 9, "num_drugs"),
            new Column("Num tests", 9, "num_tests"));

        Report report = new Report();
        report.setColumns(columns);
        List<Object> list = new ArrayList<Object>();

        // TODO Execute SQL sentence
        
        // TODO Loop over results and get the main values
        
        // TODO End loop
       
      } 
      // TODO Close All resources
      finally {
      }
    }
  }
}
