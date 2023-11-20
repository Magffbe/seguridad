-- Active: 1700447869191@@dpg-cldbv1l4lnec73e871ug-a.oregon-postgres.render.com@5432@figuef
create table tbl_role
(
    id SERIAL PRIMARY key,
    name_rol VARCHAR (100),
    is_active BOOLEAN DEFAULT true,
    created_date TIMESTAMP DEFAULT current_timestamp,
    delete_date TIMESTAMP,
    update_date TIMESTAMP
);

insert into tbl_role
(name_rol)
VALUES
('Admin'),
('Client');

select * from tbl_role;

create table tbl_user
(
    user_name varchar (30)PRIMARY key,
    email varchar (70) UNIQUE,
    pass varchar (30),
    profile_picture bytea,
    id_rol int REFERENCES tbl_role(id),
    is_active BOOLEAN DEFAULT true,
    created_date TIMESTAMP DEFAULT current_timestamp,
    delete_date TIMESTAMP,
    update_date TIMESTAMP
);

insert into tbl_user
(user_name, email, pass, id_rol)
VALUES
('figuef', 'fabiolafigueroa@unitec.edu', 'Hola10$', 1),
('alumno01', 'alumno@unitec.edu', 'Hola11$', 2);