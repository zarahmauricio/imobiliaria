-- ----------------------------------------------------------------------------
-- MySQL Workbench Migration
-- Migrated Schemata: imobiliaria_sql
-- Source Schemata: imobiliaria
-- Created: Mon Aug  3 17:34:54 2020
-- Workbench Version: 6.3.8
-- ----------------------------------------------------------------------------

SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------------------------------------------------------
-- Schema imobiliaria_sql
-- ----------------------------------------------------------------------------
DROP SCHEMA IF EXISTS `imobiliaria_sql` ;
CREATE SCHEMA IF NOT EXISTS `imobiliaria_sql` ;

-- ----------------------------------------------------------------------------
-- Table imobiliaria_sql.failed_jobs
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `imobiliaria_sql`.`failed_jobs` (
  `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `connection` TEXT NOT NULL,
  `queue` TEXT NOT NULL,
  `payload` LONGTEXT NOT NULL,
  `exception` LONGTEXT NOT NULL,
  `failed_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

-- ----------------------------------------------------------------------------
-- Table imobiliaria_sql.migrations
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `imobiliaria_sql`.`migrations` (
  `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` VARCHAR(255) NOT NULL,
  `batch` INT(11) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 3;

-- ----------------------------------------------------------------------------
-- Table imobiliaria_sql.users
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `imobiliaria_sql`.`users` (
  `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NOT NULL,
  `email` VARCHAR(255) NOT NULL,
  `email_verified_at` TIMESTAMP NULL DEFAULT NULL,
  `password` VARCHAR(255) NOT NULL,
  `remember_token` VARCHAR(100) NULL DEFAULT NULL,
  `created_at` TIMESTAMP NULL DEFAULT NULL,
  `updated_at` TIMESTAMP NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `users_email_unique` (`email` ASC))
ENGINE = InnoDB;
SET FOREIGN_KEY_CHECKS = 1;
