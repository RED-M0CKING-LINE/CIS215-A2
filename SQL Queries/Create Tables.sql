CREATE TABLE `trip` (
	`id` INT NOT NULL AUTO_INCREMENT UNIQUE,
	`driver_id` INT NOT NULL,
	`vehicle_id` INT NOT NULL,
	`vehicle_milage_starting` INT NOT NULL,
	`vehicle_milage_ending` INT NOT NULL,
	`vehicle_condition_starting` TEXT NOT NULL,
	`vehicle_condition_ending` TEXT NOT NULL,
	`datetime_leave` DATETIME NOT NULL,
	`datetime_arrival` DATETIME NOT NULL,
	`datetime_returning` DATETIME NOT NULL,
	`datetime_end` DATETIME NOT NULL,
	`departure_street` tinytext NOT NULL,
	`departure_city` tinytext NOT NULL,
	`departure_state` tinytext NOT NULL,
	`departure_country` tinytext NOT NULL,
	`destination_street` tinytext NOT NULL,
	`destination_city` tinytext NOT NULL,
	`destination_state` tinytext NOT NULL,
	`destination_country` tinytext NOT NULL,
	`trip_reason` TEXT NOT NULL,
	`trip_issues` TEXT,
	PRIMARY KEY (`id`)
);

CREATE TABLE `vehicle` (
	`id` INT NOT NULL AUTO_INCREMENT UNIQUE,
	`oil_change_needed` BOOLEAN NOT NULL DEFAULT '0',
	`miles_oil_change_last` INT NOT NULL,
	`miles_inital` INT NOT NULL,
	`miles_last` INT NOT NULL,
	`fuel_level` tinyint NOT NULL,
	`license_plate` tinytext NOT NULL UNIQUE,
	`condition_inital` TEXT NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `person` (
	`id` INT NOT NULL AUTO_INCREMENT UNIQUE,
	`birth_date` DATE NOT NULL,
	`driver_license_id` tinytext UNIQUE,
	`name_first` tinytext NOT NULL,
	`name_middle` tinytext NOT NULL,
	`name_last` tinytext NOT NULL,
	`address_street` tinytext NOT NULL,
	`address_city` tinytext NOT NULL,
	`address_state` tinytext NOT NULL,
	`address_country` tinytext NOT NULL,
	PRIMARY KEY (`id`)
);

ALTER TABLE `trip` ADD CONSTRAINT `trip_fk0` FOREIGN KEY (`driver_id`) REFERENCES `person`(`id`);

ALTER TABLE `trip` ADD CONSTRAINT `trip_fk1` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicle`(`id`);
