CREATE TABLE cars (
    car_make VARCHAR(255),
    car_model VARCHAR(255),
    car_type VARCHAR(255),
    car_price INT
);

INSERT INTO cars (car_make, car_model, car_type, car_price) VALUES
('Ford', 'Mondeo', 'premium', 18200),
('Renault', 'Fuego', 'sport', 16500),
('Citroen', 'Cactus', 'premium', 19000),
('Ford', 'Falcon', 'low cost', 8990),
('Ford', 'Galaxy', 'standard', 12400),
('Renault', 'Megane', 'standard', 14300),
('Citroen', 'Picasso', 'premium', 23400);



SELECT
    car_make,
    car_model,
    car_price,
    AVG(car_price) OVER() AS "overall average price",
    AVG(car_price) OVER (PARTITION BY car_type) AS "car type average price"
FROM cars;

SELECT car_make,
       AVG(car_price) AS average_price,
       MAX(car_price) AS top_price
FROM   cars
GROUP BY car_make;


SELECT car_make,
       car_model,
       car_price,
       AVG(car_price) OVER (PARTITION BY car_make) AS average_make
FROM   cars;




CREATE TABLE Flights (
    flight_id INT AUTO_INCREMENT PRIMARY KEY,
    aircraft_make VARCHAR(50),
    aircraft_model VARCHAR(50),
    flight_number VARCHAR(10),
    scheduled_departure DATETIME,
    real_departure DATETIME,
    scheduled_arrival DATETIME,
    num_of_passengers INT,
    total_revenue DECIMAL(10, 2)
);

-- Inserting the provided data into the Flights table
INSERT INTO Flights (aircraft_make, aircraft_model, flight_number, scheduled_departure, real_departure, scheduled_arrival, num_of_passengers, total_revenue)
VALUES 
    ('Boeing', '757 300', 'FLP003', '2019-01-30 15:00:00', '2019-01-30 15:00:00', '2019-01-30 15:00:00', 260, 82630.10),
    ('Boeing', '737 200', 'FLP003', '2019-02-01 15:00:00', '2019-02-01 15:10:00', '2019-02-01 15:55:00', 195, 58459.34),
    ('Airbus', 'A500', 'FLP003', '2019-02-01 15:00:00', '2019-02-01 15:03:00', '2019-02-01 15:03:55', 312, 91570.87),
    ('Airbus', 'A500', 'FLP001', '2019-10-28 05:00:00', '2019-10-28 05:04:00', '2019-10-28 05:55:00', 298, 87943.00),
    ('Boeing', '737 200', 'FLP002', '2019-10-28 09:00:00', '2019-10-28 09:00:00', '2019-10-28 09:55:00', 178, 56342.45);



SELECT DISTINCT
       flight_number,
       aircraft_model,
    SUM(num_of_passengers) OVER (PARTITION BY flight_number, aircraft_model)
                                                            AS total_passengers,
    SUM(total_revenue) OVER (PARTITION BY flight_number, aircraft_model)
                                                            AS total_revenue
FROM flights
ORDER BY flight_number, aircraft_model;


WITH year_month_data AS (
  SELECT DISTINCT
       EXTRACT(YEAR FROM scheduled_departure) AS year,
       EXTRACT(MONTH FROM scheduled_departure) AS month,
       SUM(num_of_passengers)
              OVER (PARTITION BY EXTRACT(YEAR FROM scheduled_departure),
                                  EXTRACT(MONTH FROM scheduled_departure)
                   ) AS passengers
   FROM  flights
  ORDER BY 1, 2
)
SELECT  year,
        month,
     passengers,
     LAG(passengers) OVER (ORDER BY year, month) passengers_previous_month,
     passengers - LAG(passengers) OVER (ORDER BY year, month) AS passengers_delta
FROM year_month_data;


WITH paris_london_delays AS (
  SELECT DISTINCT
       aircraft_model,
       EXTRACT(YEAR FROM scheduled_departure) AS year,
       EXTRACT(MONTH FROM scheduled_departure) AS month,
       AVG(real_departure - scheduled_departure) AS month_delay
   FROM  flights
   GROUP BY 1, 2, 3
)
SELECT  DISTINCT
     aircraft_model,
     year,
     month,
     month_delay AS monthly_avg_delay,
     AVG(month_delay) OVER (PARTITION BY aircraft_model, year) AS year_avg_delay,
     AVG(month_delay) OVER (PARTITION BY year) AS year_avg_delay_all_models,
     AVG(month_delay) OVER (PARTITION BY aircraft_model, year
                               ORDER BY month
                               ROWS BETWEEN 3 PRECEDING AND CURRENT ROW
                            ) AS rolling_average_last_4_months
 
FROM paris_london_delays
ORDER BY 1,2,3