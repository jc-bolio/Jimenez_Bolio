-- Elimina la base de datos si ya existe
drop schema if exists test_php;

-- Se crea la base de datos
create schema if not exists test_php default character set utf8 collate utf8_spanish2_ci;
use test_php;

-- Se crea la tabla alumno
create table persona (
	nombre_usuario text not null,
    carrera text not null,
    no_cuenta int(10) not null,
    direccion text not null,
    telefono varchar(10) not null,
    email text not null,
    `password` varchar(8) not null,
    FechaRegistro datetime not null default current_timestamp,
    Permisos int(11) not null default 1
) engine = InnoDB default charset=latin1;

-- define la llave primaria
alter table persona
add primary key(no_cuenta);

-- confirma la transacción o proceso actual, haciendo que sus cambios sean permanentes
commit;

-- agrega registros
insert into persona (nombre_usuario, carrera, no_cuenta, direccion, 
telefono, email, `password`, FechaRegistro, Permisos) 
values ('Alberto Gonzalez Ledesm', 'ICO', 8411868, 'Enrique Torres Calderon #37', '5539554880', 'gonzalez_alberto@hotmail.com', '123456', '2018-10-30 20:22:01', 2),
('Fernando Sánchez Beristain', 'ICO', 413010836, 'Calle Monterrey #11 Col Jardines de Guadalupe C.P. 57140 Cd. Nezahualcoyotl Estado de México', '5539229638', 'fernandoberistain2@hotmail.com', '123456', '2018-10-30 20:05:40', 2),
('Aaron Velazco Agustin', 'ICO', 413112576, 'Nube 8 Col. La peñas', '5539229638', 'fernandoberistain2@hotmail.com', '123456', '2018-10-30 20:05:26', 1),
('David Mendoza Calette', 'ico', 1234567890, 'carmen no 186', '56406718', 'calette50@hotmail.com', 'citlali', '2018-10-26 15:25:33', 2);