-- CREATE TABLE client (
--                       id int primary key generated by default as identity,
--                       full_name character(100) NOT NULL,
--                       address character(100) NOT NULL,
--                       phone_number character(20) NOT NULL,
--                       status boolean NOT NULL,
--                       login character(10),
--                       password character(10)
-- );

-- CREATE TABLE dog (
--                      id int primary key generated by default as identity,
--                      name character(100) NOT NULL,
--                      breed character(100) NOT NULL,
--                      age int not null check (age > 0 and age < 25),
--                      client_id int references client(id) on delete set null
-- );
-- create table room_type (
--                            id int primary key generated by default as identity,
--                            room_type character(100) NOT NULL
-- );
--
--
-- create table room_info (
--                          id int primary key generated by default as identity,
--                          room_number int NOT NULL unique check(room_number > 0),
--                          description character(100) NOT NULL,
--                          price int not null check(price > 0),
--                          type_id int references room_type(id) on delete set null
-- );

-- create table booking (
--                          id int primary key generated by default as identity,
--                          reservation_date_time timestamp without time zone check (reservation_date_time >= now()),
--                          date_in date check ( date_in >= now()),
--                          date_out date check (date_out > date_in),
--                          client_id int references client(id) on delete set null,
--                          room_info_id int references room_info(id) on delete set null,
--                          room_type_id int references dog(id) on delete set null ,
--                          dog_id int references dog(id) on delete set null
--
-- );


--  create table booking_room(
-- booking_id int not null,type
-- room_id int not null,
-- primary key(booking_id,room_id),
-- foreign key (booking_id) references booking(id) on delete set null,
-- foreign key (room_id) references room_info(id) on delete set null
--  );

-- create table rating(
--      id int primary key generated by default as identity,
--      figure int check (figure >=1 and figure <=5),
--      comment character(200),
--      room_id int references room_info(id) on delete set null,
--      client_id int references client(id) on delete set null
-- );


-- INSERT INTO client (full_name, address, phone_number, login, password)
-- VALUES
--     ('novikova a.b.', 'minsk', 2345678, 'stasya', '1313');
--
-- insert into dog (name, breed, age, client_id)
-- values ('jeki', 'erk', 2, 1);
--
-- insert into room_info(room_number, description, price, type_id)
-- values (1, 'норм', 100, 1),
--        (2, 'средне', 200, 2),
--        (3, 'хорошо', 300, 3);
--
-- insert into room_type(type)
-- values ('standart'),('suite'), ('vip');
--
-- insert into booking (reservation_date_time, date_in, date_out, client_id,room_info_id, room_type_id, dog_id)
-- values ('2023-02-05 20:00:00', '2023-02-11','2023-02-13', 1, 1, 1, 1),
--        ('2023-02-06 21:00:00', '2023-02-15','2023-02-17', 1, 2, 2, 1);

-- insert into rating (figure, comment, room_id, client_id)
-- values (5, 'good', 1, 1);


