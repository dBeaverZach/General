--liquibase formatted sql

--changeset zachary:3
INSERT INTO demo_users (id, name, email)
VALUES (1, 'Ana Gomez', 'ana.gomez@example.com');

INSERT INTO demo_users (id, name, email)
VALUES (2, 'Carlos Ramirez', 'carlos.ramirez@example.com');

INSERT INTO demo_users (id, name, email)
VALUES (3, 'Lucía Torres', 'lucia.torres@example.com');