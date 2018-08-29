-- MySQL Script generated by MySQL Workbench
-- Sun Aug 19 00:41:19 2018
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema tramisoft1
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema tramisoft1
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `tramisoft1` DEFAULT CHARACTER SET utf8 ;
-- -----------------------------------------------------
-- Schema tramisoft
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema tramisoft
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `tramisoft` DEFAULT CHARACTER SET utf8 ;
USE `tramisoft1` ;

-- -----------------------------------------------------
-- Table `tramisoft1`.`catalogo_tramite`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tramisoft1`.`catalogo_tramite` ;

CREATE TABLE IF NOT EXISTS `tramisoft1`.`catalogo_tramite` (
  `idTramite` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idTramite`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `tramisoft`.`nacionalidad`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tramisoft`.`nacionalidad` ;

CREATE TABLE IF NOT EXISTS `tramisoft`.`nacionalidad` (
  `id_Nacionalidad` INT(3) NOT NULL AUTO_INCREMENT,
  `Nombre_Nacion` VARCHAR(40) NOT NULL,
  PRIMARY KEY (`id_Nacionalidad`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `tramisoft`.`ocupacion`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tramisoft`.`ocupacion` ;

CREATE TABLE IF NOT EXISTS `tramisoft`.`ocupacion` (
  `id_Ocupacion` INT(3) NOT NULL AUTO_INCREMENT,
  `Ocupacion` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`id_Ocupacion`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `tramisoft`.`eps`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tramisoft`.`eps` ;

CREATE TABLE IF NOT EXISTS `tramisoft`.`eps` (
  `id_Eps` INT(3) NOT NULL AUTO_INCREMENT,
  `Eps_Nombre` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`id_Eps`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `tramisoft`.`tipo_persona`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tramisoft`.`tipo_persona` ;

CREATE TABLE IF NOT EXISTS `tramisoft`.`tipo_persona` (
  `id_Tipo_Persona` INT(3) NOT NULL AUTO_INCREMENT,
  `Tipo_Persona` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`id_Tipo_Persona`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `tramisoft`.`tipo_identificacion`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tramisoft`.`tipo_identificacion` ;

CREATE TABLE IF NOT EXISTS `tramisoft`.`tipo_identificacion` (
  `id_Identificacion` INT(3) NOT NULL AUTO_INCREMENT,
  `Tipo_Id` VARCHAR(35) NOT NULL,
  PRIMARY KEY (`id_Identificacion`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `tramisoft`.`estrato`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tramisoft`.`estrato` ;

CREATE TABLE IF NOT EXISTS `tramisoft`.`estrato` (
  `id_Estrato` INT(3) NOT NULL AUTO_INCREMENT,
  `Nivel_Estrato` INT(3) NOT NULL,
  PRIMARY KEY (`id_Estrato`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `tramisoft`.`vivienda`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tramisoft`.`vivienda` ;

CREATE TABLE IF NOT EXISTS `tramisoft`.`vivienda` (
  `id_Vivienda` INT(3) NOT NULL AUTO_INCREMENT,
  `Tipo_Vivienda` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`id_Vivienda`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `tramisoft`.`genero`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tramisoft`.`genero` ;

CREATE TABLE IF NOT EXISTS `tramisoft`.`genero` (
  `id_Genero` INT(3) NOT NULL AUTO_INCREMENT,
  `Tipo_Genero` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`id_Genero`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `tramisoft`.`estado_civil`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tramisoft`.`estado_civil` ;

CREATE TABLE IF NOT EXISTS `tramisoft`.`estado_civil` (
  `id_Estado_Civil` INT(3) NOT NULL AUTO_INCREMENT,
  `Estado_Civil` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`id_Estado_Civil`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `tramisoft`.`solicitante`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tramisoft`.`solicitante` ;

CREATE TABLE IF NOT EXISTS `tramisoft`.`solicitante` (
  `id_Solicitante` INT(3) NOT NULL AUTO_INCREMENT,
  `tipo_persona` VARCHAR(45) NULL,
  `id_Identificacion` INT(3) NOT NULL,
  `numero` VARCHAR(25) NOT NULL,
  `Nombre` VARCHAR(30) NOT NULL,
  `Apellidos` VARCHAR(50) NOT NULL,
  `Celular` VARCHAR(30) NOT NULL,
  `Telefono` VARCHAR(30) NULL,
  `Correo` VARCHAR(40) NOT NULL,
  `id_Nacionalidad` INT(3) NULL,
  `id_Tipo_Persona` INT(3) NULL,
  `id_Estrato` INT(3) NULL,
  `id_Vivienda` INT(3) NULL,
  `id_Genero` INT(3) NULL,
  `id_Estado_Civil` INT(3) NULL,
  `id_Ocupacion` INT(3) NULL,
  `id_Eps` INT(3) NULL,
  PRIMARY KEY (`id_Solicitante`),
  INDEX `id_Nacionalidad` (`id_Nacionalidad` ASC),
  INDEX `id_Tipo_Persona` (`id_Tipo_Persona` ASC),
  INDEX `id_Identificacion` (`id_Identificacion` ASC),
  INDEX `id_Estrato` (`id_Estrato` ASC),
  INDEX `id_Vivienda` (`id_Vivienda` ASC),
  INDEX `id_Genero` (`id_Genero` ASC),
  INDEX `id_Estado_Civil` (`id_Estado_Civil` ASC),
  INDEX `id_Ocupacion` (`id_Ocupacion` ASC),
  INDEX `id_Eps` (`id_Eps` ASC),
  CONSTRAINT `solicitante_ibfk_1`
    FOREIGN KEY (`id_Nacionalidad`)
    REFERENCES `tramisoft`.`nacionalidad` (`id_Nacionalidad`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `solicitante_ibfk_10`
    FOREIGN KEY (`id_Ocupacion`)
    REFERENCES `tramisoft`.`ocupacion` (`id_Ocupacion`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `solicitante_ibfk_11`
    FOREIGN KEY (`id_Eps`)
    REFERENCES `tramisoft`.`eps` (`id_Eps`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `solicitante_ibfk_2`
    FOREIGN KEY (`id_Tipo_Persona`)
    REFERENCES `tramisoft`.`tipo_persona` (`id_Tipo_Persona`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `solicitante_ibfk_3`
    FOREIGN KEY (`id_Identificacion`)
    REFERENCES `tramisoft`.`tipo_identificacion` (`id_Identificacion`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `solicitante_ibfk_4`
    FOREIGN KEY (`id_Estrato`)
    REFERENCES `tramisoft`.`estrato` (`id_Estrato`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `solicitante_ibfk_5`
    FOREIGN KEY (`id_Vivienda`)
    REFERENCES `tramisoft`.`vivienda` (`id_Vivienda`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `solicitante_ibfk_7`
    FOREIGN KEY (`id_Genero`)
    REFERENCES `tramisoft`.`genero` (`id_Genero`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `solicitante_ibfk_9`
    FOREIGN KEY (`id_Estado_Civil`)
    REFERENCES `tramisoft`.`estado_civil` (`id_Estado_Civil`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `tramisoft`.`medio_respuesta`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tramisoft`.`medio_respuesta` ;

CREATE TABLE IF NOT EXISTS `tramisoft`.`medio_respuesta` (
  `idmedio_respuesta` INT NOT NULL AUTO_INCREMENT,
  `medio_respuesta` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idmedio_respuesta`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `tramisoft1`.`Tramite`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tramisoft1`.`Tramite` ;

CREATE TABLE IF NOT EXISTS `tramisoft1`.`Tramite` (
  `idTramite` INT NOT NULL AUTO_INCREMENT,
  `solicitante_id_Solicitante` INT(3) NOT NULL,
  `catalogo_tramite_idTramite` INT NOT NULL,
  `medio_respuesta` INT NOT NULL,
  `Descripcion` VARCHAR(45) NOT NULL,
  `fecha` DATE NOT NULL,
  PRIMARY KEY (`idTramite`),
  INDEX `fk_Tramite_solicitante_idx` (`solicitante_id_Solicitante` ASC),
  INDEX `fk_Tramite_catalogo_tramite1_idx` (`catalogo_tramite_idTramite` ASC),
  INDEX `fk_Tramite_medio_respuesta1_idx` (`medio_respuesta` ASC),
  CONSTRAINT `fk_Tramite_solicitante`
    FOREIGN KEY (`solicitante_id_Solicitante`)
    REFERENCES `tramisoft`.`solicitante` (`id_Solicitante`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Tramite_catalogo_tramite1`
    FOREIGN KEY (`catalogo_tramite_idTramite`)
    REFERENCES `tramisoft1`.`catalogo_tramite` (`idTramite`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Tramite_medio_respuesta1`
    FOREIGN KEY (`medio_respuesta`)
    REFERENCES `tramisoft`.`medio_respuesta` (`idmedio_respuesta`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `tramisoft1`.`catalogo_dependencia`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tramisoft1`.`catalogo_dependencia` ;

CREATE TABLE IF NOT EXISTS `tramisoft1`.`catalogo_dependencia` (
  `idDependencia_administrativa` INT NOT NULL AUTO_INCREMENT,
  `Nombre` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idDependencia_administrativa`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `tramisoft1`.`Responsable`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tramisoft1`.`Responsable` ;

CREATE TABLE IF NOT EXISTS `tramisoft1`.`Responsable` (
  `idResponsable` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idResponsable`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `tramisoft1`.`Cargo`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tramisoft1`.`Cargo` ;

CREATE TABLE IF NOT EXISTS `tramisoft1`.`Cargo` (
  `idCargo` INT NOT NULL AUTO_INCREMENT,
  `Cargocol` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idCargo`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `tramisoft1`.`acceso`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tramisoft1`.`acceso` ;

CREATE TABLE IF NOT EXISTS `tramisoft1`.`acceso` (
  `idAcesso` INT NOT NULL,
  `niveles` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idAcesso`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `tramisoft`.`estado_etapa`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tramisoft`.`estado_etapa` ;

CREATE TABLE IF NOT EXISTS `tramisoft`.`estado_etapa` (
  `id_Estado_Etapa` INT(3) NOT NULL AUTO_INCREMENT,
  `Respuesta` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`id_Estado_Etapa`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `tramisoft`.`dependencia`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tramisoft`.`dependencia` ;

CREATE TABLE IF NOT EXISTS `tramisoft`.`dependencia` (
  `id_Dependencia` INT(3) NOT NULL AUTO_INCREMENT,
  `catalogo_dependencia` INT NOT NULL,
  `Tramite_idTramite` INT NOT NULL,
  `Descripcion` VARCHAR(200) NOT NULL,
  `numero_etapas` VARCHAR(45) NOT NULL,
  `Fecha` DATE NOT NULL,
  PRIMARY KEY (`id_Dependencia`),
  INDEX `fk_dependencia_Tramite1_idx` (`Tramite_idTramite` ASC),
  INDEX `fk_dependencia_Dependencia_administrativa1_idx` (`catalogo_dependencia` ASC),
  CONSTRAINT `fk_dependencia_Tramite1`
    FOREIGN KEY (`Tramite_idTramite`)
    REFERENCES `tramisoft1`.`Tramite` (`idTramite`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_dependencia_Dependencia_administrativa1`
    FOREIGN KEY (`catalogo_dependencia`)
    REFERENCES `tramisoft1`.`catalogo_dependencia` (`idDependencia_administrativa`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `tramisoft`.`responsable_tramite`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tramisoft`.`responsable_tramite` ;

CREATE TABLE IF NOT EXISTS `tramisoft`.`responsable_tramite` (
  `id_Responsable_T` INT(3) NOT NULL AUTO_INCREMENT,
  `dependencia` INT(3) NOT NULL,
  `Responsable_cargo` INT NOT NULL,
  `Cargo_responsable` INT NOT NULL,
  `Telefono` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`id_Responsable_T`),
  INDEX `fk_responsable_tramite_Responsable1_idx` (`Responsable_cargo` ASC),
  INDEX `fk_responsable_tramite_Cargo1_idx` (`Cargo_responsable` ASC),
  INDEX `fk_responsable_tramite_dependencia1_idx` (`dependencia` ASC),
  CONSTRAINT `fk_responsable_tramite_Responsable1`
    FOREIGN KEY (`Responsable_cargo`)
    REFERENCES `tramisoft1`.`Responsable` (`idResponsable`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_responsable_tramite_Cargo1`
    FOREIGN KEY (`Cargo_responsable`)
    REFERENCES `tramisoft1`.`Cargo` (`idCargo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_responsable_tramite_dependencia1`
    FOREIGN KEY (`dependencia`)
    REFERENCES `tramisoft`.`dependencia` (`id_Dependencia`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `tramisoft1`.`Catalogo_documentos`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tramisoft1`.`Catalogo_documentos` ;

CREATE TABLE IF NOT EXISTS `tramisoft1`.`Catalogo_documentos` (
  `iddocumentos` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`iddocumentos`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `tramisoft1`.`Revision`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tramisoft1`.`Revision` ;

CREATE TABLE IF NOT EXISTS `tramisoft1`.`Revision` (
  `idRevision` INT NOT NULL AUTO_INCREMENT,
  `responsable_tramite_id` INT(3) NOT NULL,
  `catalogo_documentos1` INT NOT NULL,
  `Catalogo_documentos2` INT NULL,
  `catalogo_documentos3` INT NULL,
  `catalogo_documentos4` INT NULL,
  PRIMARY KEY (`idRevision`),
  INDEX `fk_Revision_responsable_tramite1_idx` (`responsable_tramite_id` ASC),
  INDEX `fk_Revision_C_documentos1_idx` (`catalogo_documentos1` ASC),
  INDEX `fk_Revision_Catalogo_documentos1_idx` (`Catalogo_documentos2` ASC),
  INDEX `fk_Revision_Catalogo_documentos2_idx` (`catalogo_documentos3` ASC),
  INDEX `fk_Revision_Catalogo_documentos3_idx` (`catalogo_documentos4` ASC),
  CONSTRAINT `fk_Revision_responsable_tramite1`
    FOREIGN KEY (`responsable_tramite_id`)
    REFERENCES `tramisoft`.`responsable_tramite` (`id_Responsable_T`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Revision_C_documentos1`
    FOREIGN KEY (`catalogo_documentos1`)
    REFERENCES `tramisoft1`.`Catalogo_documentos` (`iddocumentos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Revision_Catalogo_documentos1`
    FOREIGN KEY (`Catalogo_documentos2`)
    REFERENCES `tramisoft1`.`Catalogo_documentos` (`iddocumentos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Revision_Catalogo_documentos2`
    FOREIGN KEY (`catalogo_documentos3`)
    REFERENCES `tramisoft1`.`Catalogo_documentos` (`iddocumentos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Revision_Catalogo_documentos3`
    FOREIGN KEY (`catalogo_documentos4`)
    REFERENCES `tramisoft1`.`Catalogo_documentos` (`iddocumentos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `tramisoft1`.`Seguimiento`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tramisoft1`.`Seguimiento` ;

CREATE TABLE IF NOT EXISTS `tramisoft1`.`Seguimiento` (
  `idSeguimiento` INT NOT NULL AUTO_INCREMENT,
  `Revision_idRevision` INT NOT NULL,
  `estado_etapa_id_Estado_Etapa` INT(3) NOT NULL,
  `Respnsable` VARCHAR(45) NOT NULL,
  `Fecha` DATE NOT NULL,
  `Observacion` VARCHAR(200) NOT NULL,
  PRIMARY KEY (`idSeguimiento`),
  INDEX `fk_Seguimiento_estado_etapa1_idx` (`estado_etapa_id_Estado_Etapa` ASC),
  INDEX `fk_Seguimiento_Revision1_idx` (`Revision_idRevision` ASC),
  CONSTRAINT `fk_Seguimiento_estado_etapa1`
    FOREIGN KEY (`estado_etapa_id_Estado_Etapa`)
    REFERENCES `tramisoft`.`estado_etapa` (`id_Estado_Etapa`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Seguimiento_Revision1`
    FOREIGN KEY (`Revision_idRevision`)
    REFERENCES `tramisoft1`.`Revision` (`idRevision`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

USE `tramisoft` ;

-- -----------------------------------------------------
-- Table `tramisoft`.`rol`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tramisoft`.`rol` ;

CREATE TABLE IF NOT EXISTS `tramisoft`.`rol` (
  `id_Rol` INT(3) NOT NULL AUTO_INCREMENT,
  `Nombre_Rol` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`id_Rol`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `tramisoft`.`usuario`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tramisoft`.`usuario` ;

CREATE TABLE IF NOT EXISTS `tramisoft`.`usuario` (
  `id_Usuario` INT(3) NOT NULL AUTO_INCREMENT,
  `id_Rol` INT(3) NOT NULL,
  `Nombre_Empleado` VARCHAR(30) NOT NULL,
  `Apellidos_Empleado` VARCHAR(35) NOT NULL,
  `Identificacion` INT(30) NOT NULL,
  `Nombre_Usuario` VARCHAR(30) NOT NULL,
  `Contraseña_Usuario` VARCHAR(30) NOT NULL,
  `Email` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`id_Usuario`),
  INDEX `id_Rol` (`id_Rol` ASC),
  CONSTRAINT `usuario_ibfk_1`
    FOREIGN KEY (`id_Rol`)
    REFERENCES `tramisoft`.`rol` (`id_Rol`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `tramisoft`.`acceso`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tramisoft`.`acceso` ;

CREATE TABLE IF NOT EXISTS `tramisoft`.`acceso` (
  `acceso_idAcesso` INT NOT NULL,
  `usuario` INT(3) NOT NULL,
  `Nivel_De_Acceso` VARCHAR(30) NOT NULL,
  `fecha_inicio` DATE NOT NULL,
  `fecha_salida` DATE NOT NULL,
  INDEX `fk_acceso_usuario1_idx` (`usuario` ASC),
  INDEX `fk_acceso_acceso1_idx` (`acceso_idAcesso` ASC),
  CONSTRAINT `fk_acceso_usuario1`
    FOREIGN KEY (`usuario`)
    REFERENCES `tramisoft`.`usuario` (`id_Usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_acceso_acceso1`
    FOREIGN KEY (`acceso_idAcesso`)
    REFERENCES `tramisoft1`.`acceso` (`idAcesso`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `tramisoft`.`departamento`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tramisoft`.`departamento` ;

CREATE TABLE IF NOT EXISTS `tramisoft`.`departamento` (
  `id_Departamento` INT(3) NOT NULL AUTO_INCREMENT,
  `id_Nacionalidad` INT(3) NOT NULL,
  `Nombre_Departamento` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`id_Departamento`),
  INDEX `id_Nacionalidad` (`id_Nacionalidad` ASC),
  CONSTRAINT `departamento_ibfk_1`
    FOREIGN KEY (`id_Nacionalidad`)
    REFERENCES `tramisoft`.`nacionalidad` (`id_Nacionalidad`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `tramisoft`.`ciudad`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tramisoft`.`ciudad` ;

CREATE TABLE IF NOT EXISTS `tramisoft`.`ciudad` (
  `id_Ciudad` INT(3) NOT NULL AUTO_INCREMENT,
  `id_Departamento` INT(3) NOT NULL,
  `Nombre_Ciudad` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`id_Ciudad`),
  INDEX `id_Departamento` (`id_Departamento` ASC),
  CONSTRAINT `ciudad_ibfk_1`
    FOREIGN KEY (`id_Departamento`)
    REFERENCES `tramisoft`.`departamento` (`id_Departamento`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `tramisoft`.`comuna`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tramisoft`.`comuna` ;

CREATE TABLE IF NOT EXISTS `tramisoft`.`comuna` (
  `id_Comuna` INT(3) NOT NULL AUTO_INCREMENT,
  `id_Ciudad` INT(3) NOT NULL,
  `Comuna_Nivel` INT(3) NOT NULL,
  PRIMARY KEY (`id_Comuna`),
  INDEX `id_Ciudad` (`id_Ciudad` ASC),
  CONSTRAINT `comuna_ibfk_1`
    FOREIGN KEY (`id_Ciudad`)
    REFERENCES `tramisoft`.`ciudad` (`id_Ciudad`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `tramisoft`.`barrio`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tramisoft`.`barrio` ;

CREATE TABLE IF NOT EXISTS `tramisoft`.`barrio` (
  `id_Barrio` INT(3) NOT NULL AUTO_INCREMENT,
  `id_Comuna` INT(3) NOT NULL,
  `Nombre_Barrio` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`id_Barrio`),
  INDEX `id_Comuna` (`id_Comuna` ASC),
  CONSTRAINT `barrio_ibfk_1`
    FOREIGN KEY (`id_Comuna`)
    REFERENCES `tramisoft`.`comuna` (`id_Comuna`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `tramisoft`.`tipo_tramite`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tramisoft`.`tipo_tramite` ;

CREATE TABLE IF NOT EXISTS `tramisoft`.`tipo_tramite` (
  `id_Tipo_Tramite` INT(3) NOT NULL AUTO_INCREMENT,
  `Nombre_Tipo_Tramite` VARCHAR(30) NOT NULL,
  `catalogo_tramites_idTramite_administrativo` INT NOT NULL,
  PRIMARY KEY (`id_Tipo_Tramite`, `catalogo_tramites_idTramite_administrativo`),
  INDEX `fk_tipo_tramite_catalogo_tramites1_idx` (`catalogo_tramites_idTramite_administrativo` ASC),
  CONSTRAINT `fk_tipo_tramite_catalogo_tramites1`
    FOREIGN KEY (`catalogo_tramites_idTramite_administrativo`)
    REFERENCES `tramisoft1`.`catalogo_tramite` (`idTramite`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;