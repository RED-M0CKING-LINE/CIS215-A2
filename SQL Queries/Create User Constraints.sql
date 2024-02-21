-- /*
ALTER TABLE vehicle 
ADD CONSTRAINT check_fuel_level_range 
CHECK (fuel_level >= 0 AND fuel_level <= 100);

ALTER TABLE trip
ADD CONSTRAINT check_datetime_sequence 
CHECK (datetime_leave < datetime_arrival AND
       datetime_arrival < datetime_returning AND
       datetime_returning < datetime_end);
-- */
ALTER TABLE vehicle
ADD CONSTRAINT check_miles_sequence
CHECK (miles_inital <= miles_oil_change_last AND miles_oil_change_last <= miles_last);
