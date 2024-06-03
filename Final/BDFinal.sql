-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           10.6.10-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Copiando estrutura do banco de dados para techbuddy
CREATE DATABASE IF NOT EXISTS `techbuddy` /*!40100 DEFAULT CHARACTER SET utf8mb3 */;
USE `techbuddy`;

-- Copiando estrutura para tabela techbuddy.cad_funcionarios
CREATE TABLE IF NOT EXISTS `cad_funcionarios` (
  `Código` int(10) NOT NULL AUTO_INCREMENT,
  `Nome` varchar(50) NOT NULL,
  `Telefone` bigint(20) NOT NULL DEFAULT 0,
  `UF` char(2) NOT NULL,
  `Cidade` varchar(25) NOT NULL,
  `Rua` varchar(50) NOT NULL,
  `Bairro` varchar(50) NOT NULL,
  `CEP` int(8) DEFAULT NULL,
  `Complemento` varchar(50) DEFAULT NULL,
  `Número` char(5) NOT NULL,
  `Data de Registro` datetime NOT NULL,
  `CPF` char(14) NOT NULL,
  `Sexo` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Código`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;

-- Copiando dados para a tabela techbuddy.cad_funcionarios: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `cad_funcionarios` DISABLE KEYS */;
INSERT INTO `cad_funcionarios` (`Código`, `Nome`, `Telefone`, `UF`, `Cidade`, `Rua`, `Bairro`, `CEP`, `Complemento`, `Número`, `Data de Registro`, `CPF`, `Sexo`) VALUES
	(1, 'FEnix', 558199999999, 'PE', 'vicencia', 'kusahkfjahd', 'dgfbfdbf', 55850000, 'dasdasd', '12', '2022-11-03 19:52:15', '44444444444444', 'Aos fins de semana');
/*!40000 ALTER TABLE `cad_funcionarios` ENABLE KEYS */;

-- Copiando estrutura para tabela techbuddy.cad_produtos
CREATE TABLE IF NOT EXISTS `cad_produtos` (
  `Código` int(5) NOT NULL AUTO_INCREMENT,
  `Nome` varchar(50) NOT NULL DEFAULT '',
  `Valor` float NOT NULL DEFAULT 0,
  `Estoque` int(5) NOT NULL DEFAULT 0,
  `Peso` varchar(50) NOT NULL DEFAULT '',
  `Fornecedor` varchar(50) NOT NULL DEFAULT '',
  `Fabricante` varchar(50) NOT NULL DEFAULT '',
  `Tipo` varchar(50) NOT NULL DEFAULT '',
  `Data de Registro` datetime NOT NULL,
  PRIMARY KEY (`Código`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;

-- Copiando dados para a tabela techbuddy.cad_produtos: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `cad_produtos` DISABLE KEYS */;
INSERT INTO `cad_produtos` (`Código`, `Nome`, `Valor`, `Estoque`, `Peso`, `Fornecedor`, `Fabricante`, `Tipo`, `Data de Registro`) VALUES
	(1, 'Cavalo de Troia (Tamanho Real)', 333, 2, 'sla', 'teste', 'algo', '', '2022-11-03 19:56:41');
/*!40000 ALTER TABLE `cad_produtos` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
