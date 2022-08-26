-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           10.4.24-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              12.0.0.6468
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Copiando estrutura do banco de dados para db_imobiliaria
CREATE DATABASE IF NOT EXISTS `db_imobiliaria` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `db_imobiliaria`;

-- Copiando estrutura para tabela db_imobiliaria.tb_imovel
CREATE TABLE IF NOT EXISTS `tb_imovel` (
  `id_imovel` int(11) NOT NULL AUTO_INCREMENT,
  `endereco` varchar(100) NOT NULL,
  `cidade` varchar(25) NOT NULL,
  `estado` varchar(2) NOT NULL,
  `valor` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_imovel`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela db_imobiliaria.tb_imovel: ~8 rows (aproximadamente)
INSERT INTO `tb_imovel` (`id_imovel`, `endereco`, `cidade`, `estado`, `valor`) VALUES
	(10, 'Avenida Thomaz Fortunato 2000 ', 'Americana', 'SP', '200.000'),
	(11, 'Rua das Amoras 105 Parque Flora matos', 'Nova Odessa', 'SP', '300.000'),
	(12, 'Rua Felicio Zamperlin 102 Parque Dom Pedro II', 'Americana', 'SP', '350.000'),
	(13, 'Rua das Palmeiras 300 Parque Austria', 'Limeira', 'SP', '200.000'),
	(14, 'Avenida Dom Pedro 3000 Frezarin', 'Sumaré', 'SP', '125.000'),
	(19, 'Rua gondim da fonseca 94 Antonio Zanaga', 'Americana', 'SP', '190.000'),
	(30, 'Rua Das Mantiqueiras 300 Jardim Planalto', 'Ubêrlandia', 'MG', '217.500'),
	(33, 'Rua dos Gansos 101 Parque dos Palmares', 'Boituva', 'SP', '120.000'),
	(34, 'Rua das Acacias 109 Parque Austria', 'Americana', 'SP', '130.000');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
