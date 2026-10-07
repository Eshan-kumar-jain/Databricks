-- Average taxi trip duration in minutes across all NYC taxi trips.
-- Uses date_diff(MINUTE, ...) to compute the elapsed minutes between
-- pickup and dropoff, then averages that across the full trips dataset.
SELECT AVG(date_diff(MINUTE, tpep_pickup_datetime, tpep_dropoff_datetime)) AS avg_trip_duration_minutes
FROM samples.nyctaxi.trips