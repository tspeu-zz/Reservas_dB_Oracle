CREATE OR REPLACE FUNCTION  "USUARIO_ADMINISTRADOR" 
-- función que retorna true en caso de que el rol del usuario pasado
-- como parámetro es ADMINISTRADOR y false en caso contrario
(p_username in varchar2)
return BOOLEAN
is

begin
  -- retornamos el valor de la comparación
  return (rol_usuario(p_username) = 'ADMINISTRADOR');

-- tratamos las posibles excepciones  
exception
  when others then
     raise_application_error(-20001,'Se ha producido un error en la función 
         [rol_usuario] - '||sqlcode||' -ERROR- '||sqlerrm);    
end;
/
 CREATE OR REPLACE FUNCTION  "ROL_USUARIO" 
-- función que devuelve el rol del usuario pasado como parámetro
(p_username in varchar2)
return varchar2
is
  rol_usuario roles_usuario.rol%type;
begin
  -- recuperamos el rol
  select rol
    into rol_usuario
    from usuarios,
         roles_usuario
   where p_username = usuario 
     and usuarios.id_rol = roles_usuario.id_rol;
   -- y lo retornamos  
   return rol_usuario;  
-- tratamos las posibles excepciones   
exception
   when others then
     raise_application_error(-20001,'Se ha producido un error en la función 
         [rol_usuario] - '||sqlcode||' -ERROR- '||sqlerrm);    
end;
/
 CREATE OR REPLACE FUNCTION  "RESERVA" 
-- función a la que le pasamos como parámetro el código de una reserva y retorna
-- un string compuesto por el recurso y las fechas de inicio y fin de la reserva
(idreserva in NUMBER)
return VARCHAR2
is
ret varchar2(150);
  rec recursos.recurso%type;
  hora_ini varchar2(10);
  hora_fin varchar2(10);
begin
   -- recuperamos el recurso de la reserva
   select recursos.recurso
    into rec
    from reservas,
         recursos
   where reservas.id_recurso = recursos.id_recurso
     and reservas.id_reserva = idreserva;
   
   -- recuperamos la hora de inicio de la reserva 
   select to_char(fecha_ini, 'HH24:MI')
     into hora_ini
     from reservas
    where reservas.id_reserva = idreserva; 
    
   -- recuperamos la hora de fin de la reserva
   select to_char(fecha_fin, 'HH24:MI')
     into hora_fin
     from reservas
    where reservas.id_reserva = idreserva;             
    
    -- componemos el texto y lo retornamos
    ret := rec || ': ' || hora_ini || ' - ' || hora_fin;
    return ret;     
end;
/
 CREATE OR REPLACE FUNCTION  "RECURSO_DISPONIBLE" 
-- Función a la que le pasamos un código de recurso y un rango de fechas y nos retorna true
-- en caso de que no exista ninguna reserva para dicho recurso en ese rango de fechas. En
-- caso de que exista alguna reserva para dicho recurso en ese rango de fechas, retorna false
(
  RECURSO IN reservas.id_recurso%type  
, F_INI IN reservas.fecha_ini%type  
, F_FIN IN reservas.fecha_fin%type    
) RETURN BOOLEAN IS 

  
  recur reservas.id_recurso%type;
  cursor c_recursos is
    -- buscaremos entre los recursos
    select id_recurso
      -- de las reservas
      from reservas
      -- el recurso dado
     where id_recurso = recurso

       -- en el rango de fechas
       and ((f_ini between fecha_ini and fecha_fin) 
        or (f_fin between fecha_ini and fecha_fin)
        or (f_ini >= fecha_ini and f_fin <= fecha_fin));
      
BEGIN

 
 open c_recursos;
 fetch c_recursos into recur;
 -- si no se encuentra el recurso
 if (c_recursos%notfound) then
    -- cerramos el cursor y devolvemos que está disponible
    close c_recursos;
    return true;

 -- si se encontro el recurso
 else
    -- cerramos el cursor y devolvemos que no está disponible
    close c_recursos;
    return false;
 end if;   
-- tratamos las excepciones    
exception 

    when  NO_DATA_FOUND then
       close c_recursos;
       return true;
    when others then
      raise_application_error(-20001,'Se ha producido un error en la función 
          [recurso_disponible] - '||sqlcode||' -ERROR- '||sqlerrm);    


END RECURSO_DISPONIBLE;
/
 CREATE OR REPLACE FUNCTION  "NOMBRE_COMPLETO" 
-- función que nos devuelve un string compuesto con los apellidos y nombre, 
-- pasados como parametros, separados por una coma
(n in VARCHAR2,
a1 in VARCHAR2,
a2 in VARCHAR2)
return varchar2
as
 ret varchar2(100);
begin
 ret :=   a1 || ' ' || a2 || ', ' || n; 
 return ret;   
end;
/
 CREATE OR REPLACE FUNCTION  "JEFE_USU" 
-- función que nos devuelve el código de empleado correspondiente al jefe del 
-- usuario que se le pasa como parámetro
(
 usu in usuarios.usuario%type
) return number as 
 jefe number;
 
 begin
   -- buscamos los jefes
   select d.id_jefe
     into jefe
     -- de los departamentos
     from departamentos d
         , usuarios u
         , empleados e   
     -- cuyo departamento coincide con el del usuario 
    where u.usuario = usu 
      and u.id_empleado = e.id_empleado
      and d.id_departamento = e.id_departamento;
   -- devolvemos el resultado 
   
   return jefe;
   
 exception
   when no_data_found then
       -- el departamento todavía no tiene un jefe asignado
       jefe := null;
       return jefe;
    when others then
       raise_application_error(-20001,'se ha producido un error en la función [jefe_usu] - '||sqlcode||' -error- '||sqlerrm);
 
 end jefe_usu;
/
 CREATE OR REPLACE FUNCTION  "JEFE_EMP" 
-- función que nos devuelve el código de empleado correspondiente al jefe del 
-- empleado que se le pasa como parámetro
(
  idempleado in number
) return number as 
jefe number;
begin
  select d.id_jefe
    into jefe
    from departamentos d
        , empleados e
    where e.id_empleado = idempleado
      and d.id_departamento = e.id_departamento;
   
   return jefe;
 
exception
  when no_data_found then
    jefe := null;
    return jefe;
  when others then
    muestra_error(sqlcode, sqlerrm, 'jefe_emp');
end jefe_emp;
/
 CREATE OR REPLACE FUNCTION  "ES_USUARIO_ACTIVO" 
-- función que nos devuelve true si el empleado al que pertenece el usuario pasado como
-- parámetro, se encuentra en activo. En caso contrario devuelve false
( 
 usu in usuarios.usuario%type
)
return  BOOLEAN is 
f_baja empleados.fecha_baja%type;
emp empleados.id_empleado%type;
begin 
  -- primero recuperamos el empleado del usuario
  select id_empleado
    into emp
    from  usuarios
   where usuario = usu;
   
   -- y seguidamente recuperamos la fecha de baja de dicho empleado
   select fecha_baja 
     into f_baja
     from empleados
    where id_empleado = emp;
  
   -- si no se ha puesto fecha de baja sigue en activo
   if (f_baja is null) then
     return true;
   else
     return false;
   end if;  
exception 
   when others then
      raise_application_error(-20001, 'Error en la función es_usuario_activo'||sqlcode||' -error- '||sqlerrm);
end es_usuario_activo;  -- fin de la función
/
 CREATE OR REPLACE FUNCTION  "ES_JEFE_USU" 
-- función que nos devuelve true si el usuario que se le pasa como parámetro
-- es jefe del departamento en el que trabaja
(
 usu in usuarios.usuario%type
) return number as 
idempleado usuarios.id_empleado%type;
begin
	-- recuperamos el id_empleado del usuario
	select id_empleado
	  into idempleado
	  from usuarios
	 where usuario = usu; 
	-- y lo comparamos con el de su jefe 
	if (jefe_usu(usu) = idempleado) then  
	  return 's';
	else
	  return 'n';
	end if;
exception
   when others then
      raise_application_error(-20001, 'Error en la función e_es_jefe_usu'||sqlcode||' -error- '||sqlerrm);
end es_jefe_usu;
/
 CREATE OR REPLACE FUNCTION  "ES_JEFE_EMP" 
-- función que nos devuelve true si el empleado cuyo código se le pasa como parámetro
-- es jefe del departamento en el que trabaja
(
 idempleado in empleados.id_empleado%type
) 
return number as 
jefe number;
err_num number;
err_msg varchar2(255);
begin
	if jefe_emp(idempleado) = idempleado then  
	    return 's';
    else
       return 'n';
    end if;
    
exception
  when others then
     raise_application_error(-20001,'se ha producido un error en la función [es_jefe_emp] - '||sqlcode||' -error- '||sqlerrm);
end es_jefe_emp;
/
 CREATE OR REPLACE FUNCTION  "DAME_STRING_HORASMINUTOS" (f in date)
  return varchar2
as  ret varchar2(10);
begin
  ret := substr(to_char(f, 'dd/mm/yyyy hh24:mi'), 12, 5);
  return ret;
end;
/
 CREATE OR REPLACE FUNCTION  "DAME_STRING_DIA" (f in date)
  return VARCHAR2
as  ret varchar2(10);
begin
  ret := substr(to_char(f, 'dd/mm/yyyy hh24:mi'), 0, 10);
  return ret;
end;
/
 CREATE OR REPLACE FUNCTION  "AUTENTICA_USUARIO" 
 -- función que nos devuelve true si el usuario y password pasados como parámetros
 -- se corresponden con los almacenados en la base de datos
 -- Esta función se utiliza para autenticar a los usuarios que intentan acceder a 
 -- a aplicación
(
 p_username in usuarios.usuario%type, 
 p_password in usuarios.password%type
 )
return BOOLEAN
is
  idemp usuarios.id_empleado%type;
begin
  -- recuperamos el id_empleado
  select usuarios.id_empleado
    into idemp      
    from usuarios,
         empleados
         -- cuyo usuario coincide con el pasado
   where p_username = usuario 
         -- y cuyo password también coincide
     and p_password = password
     and usuarios.id_empleado = empleados.id_empleado
     -- ojo, si el usuario fué dado de baja no puede autenticarse
     and empleados.fecha_baja is null;
     
   -- si la consulta devolvió un valor, la autenticación fué correcta
   return TRUE;  
exception
  -- si la consulta no devolvió ningún valor, la autenticación no fué correcta
  when no_data_found then
     return FALSE;
  -- tratamos el resto de las excepciones   
  when others then
     raise_application_error(-20001,'Se ha producido un error en la función 
         [autentica_usuario] - '||sqlcode||' -ERROR- '||sqlerrm);    
end;
/
 CREATE OR REPLACE PROCEDURE  "MUESTRA_ERROR" 
( 
  err_num in number, err_msg in varchar2, 
  funcion in varchar2
) as
begin
	dbms_output.put_line('error:'||to_char(err_num) || ', producido en la función: ' || funcion);
	dbms_output.put_line(err_msg);
end muestra_error;
/
 