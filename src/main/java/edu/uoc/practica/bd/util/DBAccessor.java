package edu.uoc.practica.bd.util;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public class DBAccessor {

    private String dbname;
    private String host;
    private String port;
    private String user;
    private String passwd;
    private String schema;

    /**
     * Initializes the class loading the database properties file and assigns values
     * to the instance
     * variables.
     *
     * @throws RuntimeException Properties file could not be found.
     */
    public void init() {
        Properties prop = new Properties();

        try (InputStream propStream = getClass().getClassLoader().getResourceAsStream("db.properties")) {
            if (propStream == null) {
                throw new IOException("db.properties file could not be found");
            }
            
            prop.load(propStream);
            this.host = prop.getProperty("host");
            this.port = prop.getProperty("port");
            this.dbname = prop.getProperty("dbname");
            this.user = prop.getProperty("user");
            this.passwd = prop.getProperty("passwd");
            this.schema = prop.getProperty("schema");
        } catch (IOException e) {
            String message = "ERROR: db.properties file could not be found";
            System.err.println(message);
            throw new RuntimeException(message, e);
        }
    }

    /**
     * Obtains a {@link Connection} to the database, based on the values of the
     * <code>db.properties</code> file.
     *
     * @return DB connection or null if a problem occurred when trying to connect.
     * @throws SQLException
     */
    public Connection getConnection() {

        // Load the JDBC driver
        try {
            Class.forName("org.postgresql.Driver");
        } catch (ClassNotFoundException e) {
            System.err.println("ERROR: Failed to load JDBC driver.");
            e.printStackTrace();
            
            return null;
        }

        // Create the JDBC url
        Properties props = new Properties();      
        props.setProperty("user", this.user);
        props.setProperty("password", this.passwd);
        String JDBCurl = "jdbc:postgresql://" + this.host + ":" + this.port + "/" + this.dbname + "?currentSchema=" + this.schema;

        // Connect to the database
        Connection conn = null;
        try {
            conn = DriverManager.getConnection(JDBCurl, props);
        } catch (SQLException e) {
            System.err.println("ERROR: Failed to establish a database connection");
            e.printStackTrace();
            
            return null;
        }

        return conn;
    }
}
