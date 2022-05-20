create table seniority (
    emple_id int,
    amount_years int,
    PRIMARY KEY (emple_id)
);

create table employee (
    emple_id int,
    name     varchar2(10),
    salary int,
    PRIMARY KEY (emple_id)
);

create table item (
    id int,
    name varchar2(50),
    stock int
);

create table sales (
    id INT,
    nif, char(9),
    pucharse_date date,
    item_id,
    units
);

create table record_history (
    id INTEGER PRIMARY KEY,
    nombre VARCHAR2(50),
    usuario VARCHAR(30),
    fecha CHAR(9)
);

create table t1 (
    id INTEGER PRIMARY KEY,
    column1 VARCHAR2(50),
    column2 VARCHAR2(50)
);

create table audit_t1 (
    id INTEGER PRIMARY KEY,
    t1_id INTEGER,
    t1_column1 VARCHAR2(50),
    t1_column2 VARCHAR2(50)
);
