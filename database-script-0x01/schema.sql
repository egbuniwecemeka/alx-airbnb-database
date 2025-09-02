-- A script that designs the database schema

-- User table
create TABLE IF NOT EXISTS `users` (
 id BINARY(16) PRIMARY KEY,
 first_name VARCHAR(256) NOT NULL,
 last_name VARCHAR(256) NOT NULL,
 email VARCHAR(256) UNIQUE NOT NULL,
 password_hash VARCHAR(256) NOT NULL,
 phone_number VARCHAR(20) NULL,
 role ENUM('host', 'guest', 'admin') NOT NULL DEFAULT 'guest',
 created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP);

-- Property table
