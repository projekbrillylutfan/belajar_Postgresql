-- Active: 1729346896710@@127.0.0.1@5432@belajar_database_postgresql_pzn@public
SELECT datname from pg_database;

select * from pg_tables WHERE schemaname = 'public';

CREATE Table barang (
    kode INT not NULL,
    name VARCHAR(100) not NULL,
    harga INT not NULL DEFAULT 1000,
    jumlah INT not NULL DEFAULT 0,
    waktu_dibuat TIMESTAMP not null DEFAULT CURRENT_TIMESTAMP
);

alter Table barang add column deskripsi TEXT;

alter table barang DROP COLUMN deskripsi;

alter table barang RENAME COLUMN name to nama;

TRUNCATE barang;

DROP Table barang;

CREATE Table products (
    id VARCHAR(10) not NULL,
    name VARCHAR(100) not NULL,
    description TEXT,
    price int NOT NULL,
    quantity int NOT NULL DEFAULT 0,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO products(id, name, price, quantity)
VALUES ('P0001', 'Pensil', 1000, 100);

INSERT INTO products(id, name, description, price, quantity)
VALUES ('P0002', 'Penghapus', 'Penghapus warna', 2000, 200);


insert into products(id, name, price, quantity)
values ('P0003', 'Mie Ayam Ceker', 20000, 100),
       ('P0004', 'Mie Ayam Spesial', 25000, 100),
       ('P0005', 'Mie Ayam Yamin', 15000, 100);

SELECT * FROM products;

SELECT id, name, price, quantity from products;

alter table products
    add PRIMARY KEY (id);