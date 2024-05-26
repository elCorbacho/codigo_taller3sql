---CONSULTA

select
    numrut_cli ||'-'|| dvrut_cli as "RUT CLIENTE", nombre_cli ||' '|| appaterno_cli ||' '|| apmaterno_cli as "NOMBRE CLIENTE", 
    renta_cli as "RENTA",  
    fonofijo_cli as "TELEFONO FIJO", 
    celular_cli as "CELULAR" 
    from cliente  
    where id_estcivil = 1 or (id_estcivil in (3, 4) and renta_cli >= 800000) 
    order by appaterno_cli asc, nombre_cli asc