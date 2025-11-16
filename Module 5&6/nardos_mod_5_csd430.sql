-- Create the database 
CREATE DATABASE IF NOT EXISTS CSD430;

-- Create user (if not already created)
 CREATE USER IF NOT EXISTS 'student1'@'localhost' IDENTIFIED BY 'pass';

-- Grant privileges
GRANT ALL PRIVILEGES ON CSD430.* TO 'student1'@'localhost';
FLUSH PRIVILEGES;

-- Select the database
USE CSD430;

-- Create nardos_movies_data table
CREATE TABLE IF NOT EXISTS nardos_movies_data (
    movie_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    genre VARCHAR(50),
    release_year INT,
    rating DECIMAL(3,1),
    director VARCHAR(100)
);

-- Insert 10 movie records
INSERT INTO nardos_movies_data (title, genre, release_year, rating, director) VALUES
('Inception', 'Sci-Fi', 2010, 8.8, 'Christopher Nolan'),
('The Matrix', 'Sci-Fi', 1999, 8.7, 'Lana Wachowski, Lilly Wachowski'),
('Interstellar', 'Sci-Fi', 2014, 8.6, 'Christopher Nolan'),
('The Dark Knight', 'Action', 2008, 9.0, 'Christopher Nolan'),
('Forrest Gump', 'Drama', 1994, 8.8, 'Robert Zemeckis'),
('Pulp Fiction', 'Crime', 1994, 8.9, 'Quentin Tarantino'),
('The Shawshank Redemption', 'Drama', 1994, 9.3, 'Frank Darabont'),
('The Godfather', 'Crime', 1972, 9.2, 'Francis Ford Coppola'),
('Jurassic Park', 'Adventure', 1993, 8.1, 'Steven Spielberg'),
('Gladiator', 'Action', 2000, 8.5, 'Ridley Scott');CREATE DATABASE IF NOT EXISTS CSD430;
