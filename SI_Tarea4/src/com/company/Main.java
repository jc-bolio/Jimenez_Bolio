package com.company;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Main {

    public static void main(String[] args) {
        String host;
        String dbName;

        try{

            //1.- CARGAR DRIVER
            //Encarga de hacer la conexion a la base de datos por un metodo estatico
            Class.forName("com.mysql.cj.jdbc.Driver");

            //DEFINIR URL
            host="jdbc:mysql://localhost:3306/";
            //Nombre de la base de datos
            dbName="prueba_venta";

            //3.- ESTABLECER CONEXION
            //En caso de tener un usuario y contraseña ponerlo
            Connection db = DriverManager.getConnection(host + dbName,"root","propizzaA12");

            //Es la sentencia a ejecutar
            Statement  st = db.createStatement();

            //ResuSet es un objeto tipo tabla
            ResultSet rs = st.executeQuery("SELECT * FROM productos");

            //Si no encuentra ningun registro desplegara el mensaje

            while(rs.next())
                System.out.println(rs.getString("NOMBREARTICULO")+" "+rs.getString("CODIGOARTICULO")+" " );

            //Recomendable siempre cerrar los metodos
            rs.close();

        }catch(ClassNotFoundException | SQLException e){

            System.out.println("Problema de conexion "+e);
        }
    }
}
