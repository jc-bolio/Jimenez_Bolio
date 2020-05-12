-- Elimina la base de datos si ya existe
drop schema if exists fes_aragon;

-- Se crea la base de datos
create schema if not exists fes_aragon default character set utf8 collate utf8_spanish2_ci;
use fes_aragon;

-- Se crea la tabla alumno
create table alumno (
	nombre_usuario text not null,
    carrera text not null,
    no_cuenta int(10) not null,
    direccion text not null,
    telefono varchar(8) not null,
    email text not null,
    contraseña varchar(8) not null,
    fecha_registro datetime not null default current_timestamp,
    permisos int(11) not null default 2
) engine = InnoDB default charset = utf8;

-- define la llave primaria
alter table alumno
add primary key(no_cuenta);

-- confirma la transacción o proceso actual, haciendo que sus cambios sean permanentes
commit;

-- agrega registros
insert into alumno (nombre_usuario, carrera, no_cuenta, direccion, 
telefono, email, contraseña, fecha_registro, permisos) 
values ('Julio Bolio', 'ICO', '1334480', 'Japón 27',
 '55123456', 'juliobolio12@aragon.unam.mx', 'password','2020-05-12 17:44:00', 2);
