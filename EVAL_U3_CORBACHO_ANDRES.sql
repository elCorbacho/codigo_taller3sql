-- ESTUDIANTE: ANDRES CORBACHO MOYA  // 2021-10-07 // se incorporan comentarios para hacer mas entendible la consulta
-- CONSULTA 1 
select
    numrut_cli ||'-'|| dvrut_cli as "RUT CLIENTE", nombre_cli ||' '|| appaterno_cli ||' '|| apmaterno_cli as "NOMBRE CLIENTE",  -- se concatenan los campos rut, nombre, apellido paterno y apellido materno
    renta_cli as "RENTA",                                                       -- se muestra el campo renta
    fonofijo_cli as "TELEFONO FIJO",                                            -- se muestra el campo telefono fijo
    celular_cli as "CELULAR"                                                    -- se muestra el campo celular
    from cliente                                                                -- se selecciona la tabla cliente
    where id_estcivil = 1 or (id_estcivil in (3, 4) and renta_cli >= 800000)    -- se filtra por estado civil soltero o viudo y renta mayor o igual a 800000
    order by appaterno_cli asc, nombre_cli asc                                  -- se ordena por apellido paterno y nombre

---FIN CONSULTA