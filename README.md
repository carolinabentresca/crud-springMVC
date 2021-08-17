# crud-springMVC

# TEMA : Crud-SpringMVC

#PROYECTO JAVA WEB : Web Application

#CARPETA "WEB-INF" :
  
  - applicationContext.xml : Archivo de config.
  - dispatcher-Servlet.xml : Archivo de config.
  - web.xml : Archivo de config.  
  - jsp :   "index.jsp" / "editar.jsp" / "agregar.jsp".
  
#PAQUETE "Config" : 
  
  - CLASE "Conexion" :   Conexion a la base de datos "Personal", mediante JDBC.
  
#PAQUETE "Entity" :   
  
  - CLASE "personal" :   Clase entidad, de la tabla "personal".
  
#PAQUETE "Controller" : 
  
  - CLASE "Controlador" :  Se encarga de atender los mensajes que manda
    el usuario desde el menu principal "index.htm" y selecciona las vistas
    "editar.htm","agregar.htm","eliminar.htm", que son utilizadas para 
     mostrar el modelo (los datos manejados por la app).
  
