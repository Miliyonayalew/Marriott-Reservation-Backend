CREATE DATABASE Mariot;

CREATE TABLE "User"(
    "id" BIGINT NOT NULL,
    "name" VARCHAR(255) NOT NULL,
    "email" VARCHAR(255) NOT NULL,
    "password" VARCHAR(255) NOT NULL,
    "encrypted_password" VARCHAR(255) NOT NULL,
    "jti" VARCHAR(255) NOT NULL
);
ALTER TABLE
    "User" ADD PRIMARY KEY("id");
CREATE TABLE "reservation"(
    "id" BIGINT NOT NULL,
    "user_id" BIGINT NOT NULL,
    "hotel_id" BIGINT NOT NULL,
    "start_date" BIGINT NOT NULL,
    "end_date" BIGINT NOT NULL
);
ALTER TABLE
    "reservation" ADD PRIMARY KEY("id");
CREATE TABLE "room"(
    "id" BIGINT NOT NULL,
    "name" BIGINT NOT NULL,
    "image" BIGINT NOT NULL,
    "price" BIGINT NOT NULL,
    "description" TEXT NOT NULL,
    "type" VARCHAR(255) NOT NULL
);
ALTER TABLE
    "room" ADD PRIMARY KEY("id");
ALTER TABLE
    "reservation" ADD CONSTRAINT "reservation_hotel_id_foreign" FOREIGN KEY("hotel_id") REFERENCES "room"("id");
ALTER TABLE
    "reservation" ADD CONSTRAINT "reservation_user_id_foreign" FOREIGN KEY("user_id") REFERENCES "User"("id");