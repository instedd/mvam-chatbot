CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `location_adm0_id` int(11) DEFAULT NULL,
  `location_adm1_id` int(11) DEFAULT NULL,
  `location_mkt_id` int(11) DEFAULT NULL,
  `location_lat` float DEFAULT NULL,
  `location_lng` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `locations_adm0` (
  `id` int(11),
  `name` varchar(255),
  PRIMARY KEY(`id`),
  KEY `index_locations_adm0_on_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `locations_adm1` (
  `id` int(11),
  `name` varchar(255),
  `location_adm0_id` int(11),
  PRIMARY KEY(`id`),
  KEY `index_locations_adm1_on_adm0_id` (`location_adm0_id`),
  KEY `index_locations_adm1_on_name` (`name`),
  KEY `index_locations_adm1_on_adm0_id_and_name` (`location_adm0_id`, `name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `locations_mkt` (
  `id` int(11),
  `name` varchar(255),
  `location_adm1_id` int(11),
  PRIMARY KEY(`id`),
  KEY `index_locations_mkt_on_adm1_id` (`location_adm1_id`),
  KEY `index_locations_mkt_on_name` (`name`),
  KEY `index_locations_mkt_on_adm1_id_and_name` (`location_adm1_id`, `name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
