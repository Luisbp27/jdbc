package edu.uoc.practica.bd.uocdb.exercise2;

import edu.uoc.practica.bd.util.DBAccessor;
import edu.uoc.practica.bd.util.FileUtilities;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

public class Exercise2InsertAndUpdateDataFromFile {

  private FileUtilities fileUtilities;

  public Exercise2InsertAndUpdateDataFromFile() {
    super();
    fileUtilities = new FileUtilities();
  }

  public static void main(String[] args) {
    Exercise2InsertAndUpdateDataFromFile app = new Exercise2InsertAndUpdateDataFromFile();
    app.run();
  }

  private void run() {
    List<List<String>> fileContents = null;

    try {
      fileContents = fileUtilities.readFileFromClasspath("exercise2.data");
    } catch (FileNotFoundException e) {
      System.err.println("ERROR: File not found");
      e.printStackTrace();
    } catch (IOException e) {
      System.err.println("ERROR: I/O error");
      e.printStackTrace();
    }

		if (fileContents == null) {
			return;
		}

    DBAccessor dbaccessor = new DBAccessor();
    dbaccessor.init();
    Connection conn = dbaccessor.getConnection();

	if (conn == null) {
		return;
	}

	// TODO Prepare everything before updating or inserting

    try {    	
      // TODO Update or insert the dog and visit from every row in file
    	
      // TODO Validate transaction
    }
    // TODO Close resources and check exceptions
    finally {
      }
  }
  
  /**
 * Function that, given a date in String format, returns the date plus one year in Date format. 
 */
  private java.sql.Date getVisitDate(String date) {
	  try {
		  Calendar c = Calendar.getInstance();
		  c.setTime(getDateFromStringOrNull(date));
		  c.add(Calendar.YEAR, 1);
		  java.sql.Date sqlDate = new java.sql.Date(c.getTime().getTime());
		  return sqlDate;
		  
	} catch (Exception e) {
		System.err.println("ERROR: getting visit date");
        System.err.println(e.getMessage());
		return null;
	}
	  }

  private void setPSUpdateDog(PreparedStatement updateStatement, List<String> row)
      throws SQLException {
    String[] rowArray = (String[]) row.toArray(new String[0]);
    
    setValueOrNull(updateStatement, 1, getValueIfNotNull(rowArray, 1)); // name_dog
    setValueOrNull(updateStatement, 2, getValueIfNotNull(rowArray, 2)); // breed
    setValueOrNull(updateStatement, 3, getDateFromStringOrNull(getValueIfNotNull(rowArray, 3))); // birth
    setValueOrNull(updateStatement, 4, getDateFromStringOrNull(getValueIfNotNull(rowArray, 4))); // death
    setValueOrNull(updateStatement, 5, getValueIfNotNull(rowArray, 5)); // sex
    setValueOrNull(updateStatement, 6, getValueIfNotNull(rowArray, 6)); // color
    setValueOrNull(updateStatement, 7, getValueIfNotNull(rowArray, 7)); // fur
    setValueOrNull(updateStatement, 8,
        getIntegerFromStringOrNull(getValueIfNotNull(rowArray, 8)));  // id_owner
    setValueOrNull(updateStatement, 9,
            getIntegerFromStringOrNull(getValueIfNotNull(rowArray, 9)));  // num_vaccines
    setValueOrNull(updateStatement, 10, 
    		getIntegerFromStringOrNull(getValueIfNotNull(rowArray, 0))); // id_dog
  }

  private void setPSInsertDog(PreparedStatement insertStatement, List<String> row)
      throws SQLException {
    String[] rowArray = (String[]) row.toArray(new String[0]);

    setValueOrNull(insertStatement, 1,
            getIntegerFromStringOrNull(getValueIfNotNull(rowArray, 0)));  // id_dog
    setValueOrNull(insertStatement, 2, getValueIfNotNull(rowArray, 1)); // name_dog
    setValueOrNull(insertStatement, 3, getValueIfNotNull(rowArray, 2)); // breed
    setValueOrNull(insertStatement, 4, getDateFromStringOrNull(getValueIfNotNull(rowArray, 3))); // birth
    setValueOrNull(insertStatement, 5, getDateFromStringOrNull(getValueIfNotNull(rowArray, 4))); // death
    setValueOrNull(insertStatement, 6, getValueIfNotNull(rowArray, 5)); // sex
    setValueOrNull(insertStatement, 7, getValueIfNotNull(rowArray, 6)); // color
    setValueOrNull(insertStatement, 8, getValueIfNotNull(rowArray, 7)); // fur
    setValueOrNull(insertStatement, 9,
        getIntegerFromStringOrNull(getValueIfNotNull(rowArray, 8)));  // id_owner
    setValueOrNull(insertStatement, 10,
            getIntegerFromStringOrNull(getValueIfNotNull(rowArray, 9)));  // num_vaccines
  }

  private void setPSInsertVisit(PreparedStatement insertStatement, List<String> row)
      throws SQLException {
    String[] rowArray = (String[]) row.toArray(new String[0]);

    setValueOrNull(insertStatement, 1,
        getIntegerFromStringOrNull(getValueIfNotNull(rowArray, 0))); // id_dog
    setValueOrNull(insertStatement, 2, getVisitDate(getValueIfNotNull(rowArray, 3))); // date
  }

  private Integer getIntegerFromStringOrNull(String integer) {
    return (integer != null) ? Integer.valueOf(integer) : null;
  }

  private String getValueIfNotNull(String[] rowArray, int index) {
    return (index < rowArray.length && rowArray[index].length() > 0) ? rowArray[index] : null;
  }

  private void setValueOrNull(PreparedStatement preparedStatement, int parameterIndex,
      Integer value) throws SQLException {
		if (value == null) {
			preparedStatement.setNull(parameterIndex, Types.INTEGER);
		} else {
			preparedStatement.setInt(parameterIndex, value);
		}
  }

  private void setValueOrNull(PreparedStatement preparedStatement, int parameterIndex, String value)
      throws SQLException {
		if (value == null || value.length() == 0) {
			preparedStatement.setNull(parameterIndex, Types.VARCHAR);
		} else {
			preparedStatement.setString(parameterIndex, value);
		}
  }
  
  private void setValueOrNull(PreparedStatement preparedStatement, int parameterIndex, java.sql.Date date)
	      throws SQLException {
			if (date == null) {
				preparedStatement.setNull(parameterIndex, Types.DATE);
			} else {
				preparedStatement.setDate(parameterIndex, date);
			}
	  }
  
  /**
   * Function that, given a date in String format, returns the date in Date format. 
   */
  private java.sql.Date getDateFromStringOrNull(String date) {
		if (date == null) {
			return null;
		}
		try {
			Date d = new SimpleDateFormat("yyyy-MM-dd").parse(date);
			java.sql.Date sqlDate = new java.sql.Date(d.getTime());
			return sqlDate;
		} catch (ParseException e) {
			return null;
		}
  }
}
