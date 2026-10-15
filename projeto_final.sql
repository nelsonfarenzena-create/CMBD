-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           8.4.3 - MySQL Community Server - GPL
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              12.8.0.6908
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Copiando estrutura do banco de dados para producao
CREATE DATABASE IF NOT EXISTS `producao` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `producao`;

-- Copiando estrutura para tabela producao.clientes
CREATE TABLE IF NOT EXISTS `clientes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `cpf_cnpj` varchar(18) NOT NULL,
  `rua` varchar(255) DEFAULT NULL,
  `telefone` varchar(100) NOT NULL,
  `telefone2` varchar(100) DEFAULT NULL,
  `numero` varchar(50) DEFAULT NULL,
  `bairro` varchar(100) DEFAULT NULL,
  `cep` varchar(10) DEFAULT NULL,
  `referencia` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela producao.clientes: ~100 rows (aproximadamente)
INSERT INTO `clientes` (`id`, `nome`, `cpf_cnpj`, `rua`, `telefone`, `telefone2`, `numero`, `bairro`, `cep`, `referencia`) VALUES
	(1, 'Hugo Silva', '242.854.204-96', 'Rua Barao do Rio Branco', '(48) 99935-2424', '(48) 97912-1520', '564', 'Itacorubi', '88030-095', 'Proximo ao(a) farmacia'),
	(2, 'Nicolas Almeida', '303.833.765-99', 'Rua das Palmeiras', '(48) 99928-7873', '(48) 94611-8359', '1233', 'Centro', '88603-284', 'Proximo ao(a) padaria'),
	(3, 'Ana Costa', '259.320.881-53', 'Rua Barao do Rio Branco', '(48) 92674-2519', '(48) 97224-2584', '866', 'Estreito', '88367-867', 'Proximo ao(a) posto de saude'),
	(4, 'Wesley Cardoso', '570.649.227-58', 'Rua Sete de Setembro', '(48) 92291-5803', '(48) 96925-4150', '1653', 'Centro', '88721-071', 'Proximo ao(a) escola'),
	(5, 'Carla Almeida', '987.203.489-45', 'Av. Central', '(48) 98428-6977', '(48) 93664-7065', '593', 'Trindade', '88363-214', 'Proximo ao(a) farmacia'),
	(6, 'Rafael Oliveira', '846.350.267-69', 'Av. Getulio Vargas', '(48) 97216-5422', '(48) 94598-6313', '1301', 'Agronomica', '88863-786', 'Proximo ao(a) padaria'),
	(7, 'Daniel Almeida', '510.374.167-37', 'Rua das Acacias', '(48) 96155-4483', '(48) 99179-7482', '66', 'Lagoa da Conceicao', '88905-936', 'Proximo ao(a) posto de saude'),
	(8, 'Elias Pereira', '674.651.369-84', 'Rua Sete de Setembro', '(48) 98019-7543', '(48) 96930-4593', '286', 'Itacorubi', '88141-521', 'Proximo ao(a) escola'),
	(9, 'Gustavo Oliveira', '256.742.263-97', 'Av. Central', '(48) 97916-2040', '(48) 97304-7252', '97', 'Campeche', '88610-479', 'Proximo ao(a) mercado'),
	(10, 'Igor Nascimento', '838.217.798-78', 'Rua das Palmeiras', '(48) 95371-6573', '(48) 92827-5808', '1763', 'Centro', '88445-161', 'Proximo ao(a) escola'),
	(11, 'Elias Silva', '612.880.282-74', 'Rua Barao do Rio Branco', '(48) 92743-5889', '(48) 99317-4258', '1794', 'Canasvieiras', '88156-382', 'Proximo ao(a) posto de saude'),
	(12, 'Karina Alves', '713.431.600-12', 'Av. Central', '(48) 92832-6947', '(48) 96038-4923', '1890', 'Capoeiras', '88059-246', 'Proximo ao(a) mercado'),
	(13, 'Larissa Oliveira', '878.645.884-26', 'Av. Brasil', '(48) 93103-8787', '(48) 93705-5342', '1499', 'Barreiros', '88540-893', 'Proximo ao(a) mercado'),
	(14, 'Natalia Gomes', '806.305.830-49', 'Av. Paulista', '(48) 97537-7118', '(48) 98177-9479', '1903', 'Capoeiras', '88462-123', 'Proximo ao(a) escola'),
	(15, 'Pedro Almeida', '667.335.702-38', 'Av. Brasil', '(48) 91117-2163', '(48) 91964-4750', '693', 'Centro', '88069-927', 'Proximo ao(a) padaria'),
	(16, 'Carla Araujo', '785.597.319-79', 'Av. Brasil', '(48) 93167-8744', '(48) 94981-8749', '1053', 'Itacorubi', '88826-416', 'Proximo ao(a) posto de saude'),
	(17, 'Mariana Santos', '533.520.578-16', 'Av. Brasil', '(48) 92612-1993', '(48) 97596-6559', '1350', 'Kobrasol', '88819-882', 'Proximo ao(a) posto de saude'),
	(18, 'Gabriela Almeida', '243.532.287-45', 'Av. Paulista', '(48) 98579-5092', '(48) 92235-8260', '390', 'Capoeiras', '88827-882', 'Proximo ao(a) ponto de onibus'),
	(19, 'Kevin Santos', '195.871.969-40', 'Rua das Flores', '(48) 93724-7658', '(48) 98956-8886', '1336', 'Capoeiras', '88218-885', 'Proximo ao(a) mercado'),
	(20, 'Zeca Souza', '371.902.903-68', 'Rua XV de Novembro', '(48) 95673-7930', '(48) 98973-3536', '777', 'Centro', '88194-303', 'Proximo ao(a) ponto de onibus'),
	(21, 'Nicolas Souza', '865.421.158-16', 'Av. Getulio Vargas', '(48) 98811-9238', '(48) 99701-3579', '1507', 'Capoeiras', '88058-983', 'Proximo ao(a) mercado'),
	(22, 'Helena Oliveira', '169.791.982-40', 'Rua das Acacias', '(48) 97615-2964', '(48) 95033-1651', '381', 'Trindade', '88634-083', 'Proximo ao(a) padaria'),
	(23, 'Beatriz Monteiro', '309.785.833-50', 'Av. Getulio Vargas', '(48) 94910-5351', '(48) 97484-3144', '1071', 'Estreito', '88687-660', 'Proximo ao(a) posto de saude'),
	(24, 'Tiago Martins', '109.569.736-82', 'Rua Marechal Deodoro', '(48) 92638-2200', '(48) 99808-4492', '1903', 'Lagoa da Conceicao', '88518-271', 'Proximo ao(a) mercado'),
	(25, 'Isabela Fernandes', '478.391.261-66', 'Rua Coronel Pedro', '(48) 99900-5956', '(48) 99666-1128', '141', 'Pantanal', '88683-836', 'Proximo ao(a) farmacia'),
	(26, 'Kevin Lima', '370.218.209-80', 'Rua Coronel Pedro', '(48) 93546-5462', '(48) 95616-4450', '1359', 'Trindade', '88734-351', 'Proximo ao(a) farmacia'),
	(27, 'Nicolas Nascimento', '194.749.533-45', 'Rua das Palmeiras', '(48) 91722-1058', '(48) 96464-3143', '1001', 'Coqueiros', '88652-268', 'Proximo ao(a) mercado'),
	(28, 'Karina Martins', '109.214.177-98', 'Rua das Palmeiras', '(48) 93442-9938', '(48) 91590-7049', '1446', 'Kobrasol', '88596-565', 'Proximo ao(a) padaria'),
	(29, 'João Gomes', '915.981.140-55', 'Rua XV de Novembro', '(48) 94441-5088', '(48) 92684-6794', '86', 'Coqueiros', '88798-573', 'Proximo ao(a) posto de saude'),
	(30, 'Beatriz Cardoso', '985.266.919-32', 'Rua Barao do Rio Branco', '(48) 97755-1406', '(48) 93938-6442', '317', 'Pantanal', '88801-953', 'Proximo ao(a) farmacia'),
	(31, 'Beatriz Almeida', '210.491.993-14', 'Rua Sete de Setembro', '(48) 98711-4644', '(48) 94269-8541', '327', 'Lagoa da Conceicao', '88358-312', 'Proximo ao(a) escola'),
	(32, 'Olivia Almeida', '436.385.985-18', 'Rua das Flores', '(48) 95573-6753', '(48) 99346-7548', '1352', 'Itacorubi', '88695-863', 'Proximo ao(a) ponto de onibus'),
	(33, 'Juliana Araujo', '282.694.371-14', 'Rua das Flores', '(48) 92776-8119', '(48) 96663-6139', '237', 'Pantanal', '88446-620', 'Proximo ao(a) posto de saude'),
	(34, 'Helena Santos', '360.145.825-65', 'Av. Beira Mar', '(48) 91027-9518', '(48) 99821-4228', '1843', 'Jardim Atlantico', '88372-441', 'Proximo ao(a) farmacia'),
	(35, 'Eduarda Araujo', '837.407.619-49', 'Av. Getulio Vargas', '(48) 97691-6344', '(48) 97592-5844', '643', 'Ingleses', '88567-130', 'Proximo ao(a) mercado'),
	(36, 'Mariana Gomes', '866.278.730-82', 'Rua Duque de Caxias', '(48) 95930-7653', '(48) 99977-1006', '1926', 'Kobrasol', '88311-293', 'Proximo ao(a) escola'),
	(37, 'Nicolas Gomes', '429.576.552-66', 'Av. Central', '(48) 94501-9375', '(48) 98752-3780', '1188', 'Jardim Atlantico', '88674-086', 'Proximo ao(a) escola'),
	(38, 'Sabrina Ribeiro', '195.938.869-40', 'Rua Duque de Caxias', '(48) 96085-4680', '(48) 94262-3414', '1297', 'Jardim Atlantico', '88025-047', 'Proximo ao(a) posto de saude'),
	(39, 'Pedro Rocha', '566.524.744-83', 'Av. Getulio Vargas', '(48) 94185-7291', '(48) 99099-7547', '1741', 'Lagoa da Conceicao', '88249-151', 'Proximo ao(a) mercado'),
	(40, 'Ana Santos', '923.812.630-69', 'Av. Central', '(48) 91822-5082', '(48) 92988-8478', '871', 'Itacorubi', '88136-820', 'Proximo ao(a) farmacia'),
	(41, 'Elias Ribeiro', '727.934.836-74', 'Rua das Palmeiras', '(48) 97991-9976', '(48) 98305-3607', '1220', 'Estreito', '88761-882', 'Proximo ao(a) ponto de onibus'),
	(42, 'Fernanda Martins', '383.884.896-76', 'Rua Sete de Setembro', '(48) 98939-4919', '(48) 95499-8206', '1540', 'Itacorubi', '88079-730', 'Proximo ao(a) escola'),
	(43, 'Sabrina Almeida', '182.241.254-39', 'Rua Sete de Setembro', '(48) 97275-3503', '(48) 94505-2052', '688', 'Estreito', '88424-417', 'Proximo ao(a) padaria'),
	(44, 'Vitor Alves', '952.530.498-84', 'Rua Santos Dumont', '(48) 91320-7232', '(48) 98814-1096', '852', 'Centro', '88965-360', 'Proximo ao(a) farmacia'),
	(45, 'Tiago Carvalho', '651.865.852-79', 'Rua das Acacias', '(48) 94613-8999', '(48) 94595-5471', '1827', 'Campeche', '88446-497', 'Proximo ao(a) ponto de onibus'),
	(46, 'Bruno Carvalho', '841.269.960-69', 'Rua Marechal Deodoro', '(48) 93091-9751', '(48) 91441-7455', '1370', 'Ingleses', '88606-577', 'Proximo ao(a) ponto de onibus'),
	(47, 'Bruno Oliveira', '286.151.366-58', 'Rua Duque de Caxias', '(48) 96363-4467', '(48) 98449-6355', '878', 'Agronomica', '88345-779', 'Proximo ao(a) ponto de onibus'),
	(48, 'Yasmin Nascimento', '358.954.183-70', 'Av. Central', '(48) 91317-9837', '(48) 91853-6733', '1949', 'Campeche', '88229-665', 'Proximo ao(a) ponto de onibus'),
	(49, 'Eduarda Souza', '959.120.736-29', 'Av. Central', '(48) 94908-3068', '(48) 98758-2874', '64', 'Itacorubi', '88577-970', 'Proximo ao(a) farmacia'),
	(50, 'Nicolas Martins', '271.720.721-24', 'Rua Barao do Rio Branco', '(48) 93683-6096', '(48) 92771-1420', '525', 'Lagoa da Conceicao', '88951-319', 'Proximo ao(a) posto de saude'),
	(51, 'Larissa Carvalho', '177.706.807-90', 'Av. Beira Mar', '(48) 94978-2669', '(48) 95941-2983', '1929', 'Canasvieiras', '88815-579', 'Proximo ao(a) farmacia'),
	(52, 'Carla Fernandes', '170.618.763-53', 'Rua das Palmeiras', '(48) 91207-7882', '(48) 99031-2729', '878', 'Ingleses', '88443-983', 'Proximo ao(a) posto de saude'),
	(53, 'Ximena Martins', '851.634.766-44', 'Rua Barao do Rio Branco', '(48) 99817-8921', '(48) 98616-8136', '314', 'Kobrasol', '88845-748', 'Proximo ao(a) farmacia'),
	(54, 'Marcos Nascimento', '385.561.349-69', 'Rua Marechal Deodoro', '(48) 97209-6511', '(48) 91470-9098', '1745', 'Itacorubi', '88871-332', 'Proximo ao(a) mercado'),
	(55, 'Lucas Rocha', '448.386.710-99', 'Av. Paulista', '(48) 95526-1166', '(48) 99464-4130', '727', 'Lagoa da Conceicao', '88087-247', 'Proximo ao(a) posto de saude'),
	(56, 'Beatriz Rocha', '587.761.828-72', 'Rua das Palmeiras', '(48) 98342-1282', '(48) 92524-5820', '1553', 'Itacorubi', '88226-414', 'Proximo ao(a) escola'),
	(57, 'Pedro Lima', '666.643.452-64', 'Rua Duque de Caxias', '(48) 96419-6764', '(48) 98434-5438', '1192', 'Estreito', '88313-257', 'Proximo ao(a) ponto de onibus'),
	(58, 'Olivia Santos', '860.648.880-98', 'Rua Barao do Rio Branco', '(48) 94033-4138', '(48) 94545-8933', '395', 'Estreito', '88283-741', 'Proximo ao(a) mercado'),
	(59, 'Marcos Ribeiro', '403.332.469-32', 'Av. Getulio Vargas', '(48) 95952-1231', '(48) 99751-3073', '580', 'Trindade', '88280-046', 'Proximo ao(a) farmacia'),
	(60, 'Daniel Alves', '989.870.602-23', 'Rua Sete de Setembro', '(48) 91200-5658', '(48) 98690-8843', '1429', 'Agronomica', '88451-348', 'Proximo ao(a) escola'),
	(61, 'Lucas Souza', '216.941.166-61', 'Rua Sete de Setembro', '(48) 99056-2213', '(48) 91878-3485', '1928', 'Campeche', '88152-830', 'Proximo ao(a) ponto de onibus'),
	(62, 'Larissa Lima', '882.526.720-86', 'Av. Brasil', '(48) 94697-9561', '(48) 97232-8381', '509', 'Trindade', '88930-453', 'Proximo ao(a) padaria'),
	(63, 'Tiago Monteiro', '161.724.857-22', 'Av. Beira Mar', '(48) 94404-4457', '(48) 95335-2330', '626', 'Jardim Atlantico', '88160-245', 'Proximo ao(a) padaria'),
	(64, 'Lucas Alves', '561.805.708-70', 'Av. Brasil', '(48) 95771-1534', '(48) 94792-5720', '321', 'Centro', '88723-289', 'Proximo ao(a) ponto de onibus'),
	(65, 'Elias Oliveira', '906.910.740-85', 'Rua Duque de Caxias', '(48) 94241-7965', '(48) 92880-9922', '479', 'Pantanal', '88230-663', 'Proximo ao(a) posto de saude'),
	(66, 'João Nascimento', '269.911.414-86', 'Rua das Acacias', '(48) 95728-8195', '(48) 93037-8679', '292', 'Trindade', '88705-311', 'Proximo ao(a) mercado'),
	(67, 'Zeca Nascimento', '182.712.140-65', 'Rua das Palmeiras', '(48) 96280-5102', '(48) 91423-2496', '1106', 'Barreiros', '88234-984', 'Proximo ao(a) ponto de onibus'),
	(68, 'Larissa Monteiro', '690.141.881-32', 'Rua das Flores', '(48) 98708-9502', '(48) 98245-5557', '1567', 'Ingleses', '88185-599', 'Proximo ao(a) posto de saude'),
	(69, 'Caio Rocha', '441.428.786-23', 'Av. Brasil', '(48) 93634-6403', '(48) 97744-9117', '963', 'Estreito', '88295-678', 'Proximo ao(a) ponto de onibus'),
	(70, 'Zeca Alves', '358.431.218-61', 'Rua das Flores', '(48) 99431-1018', '(48) 99889-8569', '932', 'Trindade', '88423-055', 'Proximo ao(a) posto de saude'),
	(71, 'Mariana Ribeiro', '740.552.878-16', 'Rua Marechal Deodoro', '(48) 94335-5375', '(48) 99998-3146', '1276', 'Lagoa da Conceicao', '88949-294', 'Proximo ao(a) ponto de onibus'),
	(72, 'Diana Rocha', '918.345.826-30', 'Av. Brasil', '(48) 96091-1224', '(48) 97684-2527', '60', 'Ingleses', '88230-861', 'Proximo ao(a) padaria'),
	(73, 'Hugo Martins', '610.833.398-75', 'Av. Brasil', '(48) 95479-7807', '(48) 98905-8736', '1327', 'Campeche', '88249-467', 'Proximo ao(a) farmacia'),
	(74, 'Kevin Pereira', '620.864.239-18', 'Av. Beira Mar', '(48) 95526-7798', '(48) 96568-9318', '391', 'Pantanal', '88273-840', 'Proximo ao(a) padaria'),
	(75, 'Ana Lima', '693.775.601-29', 'Rua Barao do Rio Branco', '(48) 98316-9824', '(48) 98935-6654', '612', 'Campeche', '88340-565', 'Proximo ao(a) padaria'),
	(76, 'Juliana Carvalho', '814.344.685-59', 'Rua Santos Dumont', '(48) 94826-7730', '(48) 91715-6213', '1911', 'Estreito', '88762-484', 'Proximo ao(a) farmacia'),
	(77, 'Yasmin Carvalho', '255.607.137-26', 'Rua Duque de Caxias', '(48) 99229-6439', '(48) 92644-8213', '1623', 'Campeche', '88102-538', 'Proximo ao(a) escola'),
	(78, 'Elias Silva', '258.176.580-43', 'Rua Barao do Rio Branco', '(48) 96546-7512', '(48) 92315-6383', '296', 'Kobrasol', '88872-690', 'Proximo ao(a) escola'),
	(79, 'Juliana Carvalho', '993.654.136-89', 'Rua Marechal Deodoro', '(48) 92121-4846', '(48) 95708-4727', '1284', 'Canasvieiras', '88764-092', 'Proximo ao(a) ponto de onibus'),
	(80, 'Caio Santos', '554.270.810-48', 'Av. Central', '(48) 91474-1753', '(48) 96314-1919', '1298', 'Canasvieiras', '88300-367', 'Proximo ao(a) mercado'),
	(81, 'Ximena Gomes', '679.798.911-33', 'Rua XV de Novembro', '(48) 93785-3868', '(48) 92293-7267', '501', 'Capoeiras', '88634-699', 'Proximo ao(a) ponto de onibus'),
	(82, 'Pedro Rocha', '572.753.360-68', 'Rua Coronel Pedro', '(48) 95183-1153', '(48) 98622-5712', '1195', 'Agronomica', '88693-559', 'Proximo ao(a) farmacia'),
	(83, 'Karina Oliveira', '406.754.534-98', 'Rua Santos Dumont', '(48) 95097-8484', '(48) 95949-4263', '1936', 'Estreito', '88393-873', 'Proximo ao(a) padaria'),
	(84, 'Fernanda Santos', '688.402.816-47', 'Av. Paulista', '(48) 91359-7484', '(48) 95497-1132', '782', 'Jardim Atlantico', '88579-885', 'Proximo ao(a) posto de saude'),
	(85, 'Daniel Cardoso', '894.918.335-87', 'Rua Barao do Rio Branco', '(48) 96772-4588', '(48) 94115-5106', '1018', 'Campeche', '88694-773', 'Proximo ao(a) posto de saude'),
	(86, 'Isabela Santos', '416.907.551-14', 'Rua Coronel Pedro', '(48) 96977-3153', '(48) 92476-5835', '1286', 'Ingleses', '88334-765', 'Proximo ao(a) mercado'),
	(87, 'Beatriz Costa', '997.474.643-74', 'Av. Paulista', '(48) 95465-3695', '(48) 95210-8894', '271', 'Lagoa da Conceicao', '88990-825', 'Proximo ao(a) padaria'),
	(88, 'Sabrina Araujo', '244.872.331-96', 'Av. Central', '(48) 97511-6992', '(48) 92479-7464', '236', 'Barreiros', '88014-270', 'Proximo ao(a) mercado'),
	(89, 'Juliana Santos', '788.368.698-58', 'Rua Santos Dumont', '(48) 97086-2775', '(48) 94830-8724', '755', 'Ingleses', '88025-634', 'Proximo ao(a) escola'),
	(90, 'Kevin Araujo', '164.750.943-69', 'Rua Coronel Pedro', '(48) 95951-7689', '(48) 92911-3290', '1250', 'Itacorubi', '88046-968', 'Proximo ao(a) escola'),
	(91, 'Carla Lima', '650.238.497-68', 'Rua Santos Dumont', '(48) 97078-9850', '(48) 97866-3531', '238', 'Trindade', '88906-424', 'Proximo ao(a) farmacia'),
	(92, 'Gabriela Rocha', '806.479.322-66', 'Av. Getulio Vargas', '(48) 98285-4868', '(48) 96942-2627', '836', 'Coqueiros', '88702-376', 'Proximo ao(a) mercado'),
	(93, 'Juliana Fernandes', '225.968.943-68', 'Rua das Flores', '(48) 92501-4475', '(48) 91349-1828', '816', 'Coqueiros', '88805-341', 'Proximo ao(a) farmacia'),
	(94, 'Pedro Pereira', '949.883.667-36', 'Av. Central', '(48) 94538-4817', '(48) 96383-3417', '1157', 'Itacorubi', '88807-922', 'Proximo ao(a) mercado'),
	(95, 'Natalia Silva', '653.356.917-32', 'Rua Sete de Setembro', '(48) 92801-1422', '(48) 93159-1243', '1759', 'Agronomica', '88366-808', 'Proximo ao(a) farmacia'),
	(96, 'Pedro Monteiro', '153.229.859-63', 'Rua Marechal Deodoro', '(48) 99619-2862', '(48) 92041-8802', '33', 'Agronomica', '88459-796', 'Proximo ao(a) posto de saude'),
	(97, 'Ximena Ribeiro', '326.729.144-94', 'Av. Getulio Vargas', '(48) 99543-5941', '(48) 98504-1510', '224', 'Barreiros', '88062-490', 'Proximo ao(a) padaria'),
	(98, 'Zeca Gomes', '554.175.182-51', 'Rua Duque de Caxias', '(48) 93430-2076', '(48) 93067-5505', '222', 'Barreiros', '88639-648', 'Proximo ao(a) escola'),
	(99, 'Marcos Alves', '643.401.564-74', 'Rua Barao do Rio Branco', '(48) 98048-2624', '(48) 92874-4522', '666', 'Kobrasol', '88440-462', 'Proximo ao(a) padaria'),
	(100, 'Olivia Gomes', '525.847.197-50', 'Rua Marechal Deodoro', '(48) 97992-6120', '(48) 95176-7132', '1695', 'Barreiros', '88976-156', 'Proximo ao(a) ponto de onibus');

-- Copiando estrutura para tabela producao.compra
CREATE TABLE IF NOT EXISTS `compra` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_fornecedor` int NOT NULL,
  `id_produto` int NOT NULL,
  `quantidade` float NOT NULL,
  `codigo` varchar(100) DEFAULT NULL,
  `data_compra` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_fornecedor` (`id_fornecedor`),
  KEY `id_produto` (`id_produto`),
  CONSTRAINT `compra_ibfk_1` FOREIGN KEY (`id_fornecedor`) REFERENCES `fornecedor` (`id`),
  CONSTRAINT `compra_ibfk_2` FOREIGN KEY (`id_produto`) REFERENCES `produtos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela producao.compra: ~100 rows (aproximadamente)
INSERT INTO `compra` (`id`, `id_fornecedor`, `id_produto`, `quantidade`, `codigo`, `data_compra`) VALUES
	(1, 100, 13, 787.89, 'COMP-20260001', '2026-06-07 17:56:00'),
	(2, 45, 53, 271.5, 'COMP-20260002', '2025-11-01 15:36:00'),
	(3, 78, 61, 47.09, 'COMP-20260003', '2024-10-09 12:09:00'),
	(4, 80, 78, 684, 'COMP-20260004', '2025-02-15 01:25:00'),
	(5, 43, 89, 245.2, 'COMP-20260005', '2026-02-02 15:58:00'),
	(6, 35, 48, 30.03, 'COMP-20260006', '2026-04-17 09:19:00'),
	(7, 36, 63, 859.65, 'COMP-20260007', '2025-12-02 03:55:00'),
	(8, 30, 18, 307.48, 'COMP-20260008', '2026-01-31 14:49:00'),
	(9, 42, 35, 731.51, 'COMP-20260009', '2025-09-11 20:05:00'),
	(10, 25, 57, 219.28, 'COMP-20260010', '2026-04-23 13:47:00'),
	(11, 63, 98, 521.34, 'COMP-20260011', '2025-01-17 01:32:00'),
	(12, 21, 9, 318.01, 'COMP-20260012', '2025-06-02 12:08:00'),
	(13, 100, 68, 880.54, 'COMP-20260013', '2024-01-30 05:12:00'),
	(14, 26, 8, 257, 'COMP-20260014', '2025-04-12 01:58:00'),
	(15, 47, 91, 207.12, 'COMP-20260015', '2025-01-12 14:32:00'),
	(16, 51, 82, 923.84, 'COMP-20260016', '2025-11-28 00:15:00'),
	(17, 48, 63, 598.1, 'COMP-20260017', '2024-06-30 15:37:00'),
	(18, 71, 45, 350.81, 'COMP-20260018', '2026-05-07 08:47:00'),
	(19, 89, 12, 292.22, 'COMP-20260019', '2025-01-30 01:10:00'),
	(20, 74, 100, 965.27, 'COMP-20260020', '2026-05-27 07:41:00'),
	(21, 29, 87, 214.66, 'COMP-20260021', '2025-10-29 13:32:00'),
	(22, 3, 100, 967.47, 'COMP-20260022', '2025-11-29 00:30:00'),
	(23, 17, 83, 181.47, 'COMP-20260023', '2026-03-31 00:14:00'),
	(24, 33, 78, 807.03, 'COMP-20260024', '2024-11-08 22:45:00'),
	(25, 83, 36, 429.57, 'COMP-20260025', '2025-01-20 11:29:00'),
	(26, 33, 28, 472.03, 'COMP-20260026', '2025-11-24 16:52:00'),
	(27, 80, 51, 588.64, 'COMP-20260027', '2024-01-08 16:42:00'),
	(28, 48, 72, 650.87, 'COMP-20260028', '2025-09-15 09:19:00'),
	(29, 88, 14, 486.92, 'COMP-20260029', '2024-12-10 08:40:00'),
	(30, 42, 36, 268.54, 'COMP-20260030', '2025-12-29 20:19:00'),
	(31, 25, 20, 522.12, 'COMP-20260031', '2024-09-03 01:51:00'),
	(32, 77, 52, 663.93, 'COMP-20260032', '2025-11-28 04:46:00'),
	(33, 4, 84, 502.4, 'COMP-20260033', '2024-10-29 08:58:00'),
	(34, 54, 52, 394.39, 'COMP-20260034', '2024-02-06 18:45:00'),
	(35, 74, 25, 349.74, 'COMP-20260035', '2025-12-31 07:43:00'),
	(36, 69, 82, 787.05, 'COMP-20260036', '2026-07-17 21:22:00'),
	(37, 65, 39, 846.97, 'COMP-20260037', '2026-05-10 21:56:00'),
	(38, 72, 24, 300.85, 'COMP-20260038', '2025-04-27 04:47:00'),
	(39, 34, 93, 810.26, 'COMP-20260039', '2026-02-20 05:43:00'),
	(40, 43, 84, 98.41, 'COMP-20260040', '2024-12-29 07:47:00'),
	(41, 40, 54, 790.21, 'COMP-20260041', '2024-12-05 11:16:00'),
	(42, 75, 38, 469.12, 'COMP-20260042', '2024-04-30 15:03:00'),
	(43, 82, 75, 584.51, 'COMP-20260043', '2025-09-27 02:30:00'),
	(44, 25, 65, 128.62, 'COMP-20260044', '2025-11-28 12:33:00'),
	(45, 39, 53, 63.52, 'COMP-20260045', '2026-05-24 04:08:00'),
	(46, 26, 44, 415.1, 'COMP-20260046', '2025-08-06 14:09:00'),
	(47, 41, 92, 188.55, 'COMP-20260047', '2024-03-23 15:21:00'),
	(48, 81, 23, 320.28, 'COMP-20260048', '2024-02-29 00:28:00'),
	(49, 36, 27, 763.58, 'COMP-20260049', '2024-06-21 18:48:00'),
	(50, 21, 63, 787.36, 'COMP-20260050', '2026-03-09 02:08:00'),
	(51, 79, 56, 637.15, 'COMP-20260051', '2025-02-17 13:30:00'),
	(52, 50, 1, 47.35, 'COMP-20260052', '2024-07-23 23:23:00'),
	(53, 2, 42, 759.28, 'COMP-20260053', '2025-06-27 06:01:00'),
	(54, 87, 1, 630.42, 'COMP-20260054', '2024-09-11 07:44:00'),
	(55, 45, 40, 137.64, 'COMP-20260055', '2025-01-27 16:37:00'),
	(56, 40, 22, 74.63, 'COMP-20260056', '2024-02-16 09:18:00'),
	(57, 59, 94, 525.09, 'COMP-20260057', '2025-06-20 10:27:00'),
	(58, 88, 18, 349.31, 'COMP-20260058', '2026-07-12 15:22:00'),
	(59, 97, 25, 173.23, 'COMP-20260059', '2026-07-17 12:01:00'),
	(60, 30, 29, 729.9, 'COMP-20260060', '2024-05-14 06:46:00'),
	(61, 3, 76, 509.59, 'COMP-20260061', '2024-05-06 11:45:00'),
	(62, 84, 5, 381.44, 'COMP-20260062', '2025-10-17 08:49:00'),
	(63, 69, 80, 58.1, 'COMP-20260063', '2024-02-19 21:06:00'),
	(64, 84, 3, 57.75, 'COMP-20260064', '2024-04-28 13:28:00'),
	(65, 49, 16, 551.81, 'COMP-20260065', '2025-04-30 22:09:00'),
	(66, 27, 89, 688.88, 'COMP-20260066', '2024-01-10 09:26:00'),
	(67, 85, 13, 665.86, 'COMP-20260067', '2024-10-03 19:38:00'),
	(68, 90, 18, 424.64, 'COMP-20260068', '2026-07-09 03:32:00'),
	(69, 93, 80, 126.56, 'COMP-20260069', '2024-04-26 03:31:00'),
	(70, 26, 78, 207.75, 'COMP-20260070', '2024-09-26 16:12:00'),
	(71, 46, 91, 415.66, 'COMP-20260071', '2024-06-13 01:35:00'),
	(72, 64, 27, 691.32, 'COMP-20260072', '2025-05-07 10:15:00'),
	(73, 1, 2, 674.92, 'COMP-20260073', '2026-07-17 03:53:00'),
	(74, 74, 86, 499.16, 'COMP-20260074', '2024-04-02 16:04:00'),
	(75, 93, 93, 110.28, 'COMP-20260075', '2024-09-19 20:14:00'),
	(76, 59, 38, 271.48, 'COMP-20260076', '2024-02-21 03:52:00'),
	(77, 23, 6, 853.73, 'COMP-20260077', '2025-01-03 21:20:00'),
	(78, 55, 95, 124.74, 'COMP-20260078', '2026-05-21 01:00:00'),
	(79, 18, 85, 650.73, 'COMP-20260079', '2024-12-02 11:57:00'),
	(80, 57, 80, 275.63, 'COMP-20260080', '2026-01-20 02:23:00'),
	(81, 44, 24, 122.69, 'COMP-20260081', '2025-02-13 14:17:00'),
	(82, 50, 89, 852.16, 'COMP-20260082', '2026-03-30 13:41:00'),
	(83, 22, 15, 141.19, 'COMP-20260083', '2026-01-13 01:54:00'),
	(84, 21, 14, 421.87, 'COMP-20260084', '2025-08-27 15:51:00'),
	(85, 73, 87, 443.78, 'COMP-20260085', '2025-09-17 12:49:00'),
	(86, 46, 79, 38.53, 'COMP-20260086', '2025-12-01 23:57:00'),
	(87, 17, 62, 921.19, 'COMP-20260087', '2024-04-25 13:28:00'),
	(88, 6, 9, 269, 'COMP-20260088', '2024-11-17 00:45:00'),
	(89, 87, 68, 769.85, 'COMP-20260089', '2025-08-13 23:36:00'),
	(90, 29, 86, 874.41, 'COMP-20260090', '2025-06-15 16:44:00'),
	(91, 90, 80, 104.29, 'COMP-20260091', '2025-11-08 23:15:00'),
	(92, 62, 45, 667.07, 'COMP-20260092', '2025-10-18 12:09:00'),
	(93, 72, 79, 64.02, 'COMP-20260093', '2025-10-20 05:32:00'),
	(94, 61, 64, 870.72, 'COMP-20260094', '2024-03-17 15:20:00'),
	(95, 31, 43, 970.44, 'COMP-20260095', '2024-02-21 16:14:00'),
	(96, 71, 83, 384.85, 'COMP-20260096', '2026-04-16 07:05:00'),
	(97, 59, 57, 803.25, 'COMP-20260097', '2025-04-03 02:54:00'),
	(98, 64, 58, 322.9, 'COMP-20260098', '2025-05-24 23:41:00'),
	(99, 3, 14, 409.41, 'COMP-20260099', '2024-02-06 17:35:00'),
	(100, 1, 12, 793.87, 'COMP-20260100', '2025-09-25 20:19:00');

-- Copiando estrutura para tabela producao.fornecedor
CREATE TABLE IF NOT EXISTS `fornecedor` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  `cpf_cnpj` varchar(18) NOT NULL,
  `rua` varchar(255) DEFAULT NULL,
  `numero` varchar(50) DEFAULT NULL,
  `bairro` varchar(100) DEFAULT NULL,
  `cep` varchar(10) DEFAULT NULL,
  `telefone` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela producao.fornecedor: ~100 rows (aproximadamente)
INSERT INTO `fornecedor` (`id`, `nome`, `cpf_cnpj`, `rua`, `numero`, `bairro`, `cep`, `telefone`) VALUES
	(1, 'Insumos Sul 001', '21.542.198/0001-57', 'Av. Brasil', '1704', 'Trindade', '88831-133', '(48) 91982-6400'),
	(2, 'Comercial Prime 002', '64.988.838/0001-16', 'Rua Marechal Deodoro', '1790', 'Ingleses', '88991-294', '(48) 96119-6761'),
	(3, 'Comercial Regional 003', '94.593.329/0001-23', 'Rua das Palmeiras', '436', 'Agronomica', '88358-865', '(48) 97022-2882'),
	(4, 'Suprimentos Regional 004', '81.885.938/0001-89', 'Av. Paulista', '1654', 'Kobrasol', '88628-691', '(48) 91430-5381'),
	(5, 'Distribuidora Norte 005', '49.447.459/0001-10', 'Rua Sete de Setembro', '1440', 'Lagoa da Conceicao', '88185-890', '(48) 93347-7566'),
	(6, 'Comercial Norte 006', '21.864.643/0001-37', 'Rua Barao do Rio Branco', '1297', 'Centro', '88385-429', '(48) 98432-6585'),
	(7, 'Industria Express 007', '82.710.186/0001-16', 'Rua Sete de Setembro', '1478', 'Estreito', '88159-161', '(48) 91815-2336'),
	(8, 'Suprimentos Global 008', '87.552.524/0001-44', 'Rua Duque de Caxias', '869', 'Barreiros', '88220-773', '(48) 99394-2864'),
	(9, 'Logistica Prime 009', '96.707.598/0001-77', 'Av. Brasil', '581', 'Ingleses', '88683-315', '(48) 91744-4612'),
	(10, 'Materiais Regional 010', '48.316.885/0001-27', 'Rua das Flores', '16', 'Itacorubi', '88782-261', '(48) 95742-6375'),
	(11, 'Comercial Brasil 011', '32.232.489/0001-78', 'Rua Santos Dumont', '1530', 'Kobrasol', '88720-235', '(48) 99196-6802'),
	(12, 'Comercial Prime 012', '65.119.570/0001-19', 'Rua das Acacias', '1520', 'Centro', '88882-320', '(48) 98033-7626'),
	(13, 'Materiais S.A. 013', '51.275.920/0001-89', 'Av. Brasil', '830', 'Centro', '88471-851', '(48) 96928-2443'),
	(14, 'Materiais Sul 014', '61.636.180/0001-60', 'Av. Paulista', '893', 'Jardim Atlantico', '88891-317', '(48) 96562-4630'),
	(15, 'Logistica Norte 015', '24.643.622/0001-34', 'Av. Brasil', '1046', 'Ingleses', '88927-794', '(48) 96724-6752'),
	(16, 'Industria Ltda 016', '35.277.716/0001-29', 'Av. Brasil', '300', 'Coqueiros', '88778-777', '(48) 92234-3902'),
	(17, 'Insumos Global 017', '84.559.797/0001-82', 'Av. Central', '1155', 'Lagoa da Conceicao', '88658-650', '(48) 96295-6179'),
	(18, 'Industria Global 018', '90.410.915/0001-45', 'Av. Brasil', '961', 'Barreiros', '88605-057', '(48) 96766-9312'),
	(19, 'Comercial S.A. 019', '17.477.951/0001-46', 'Rua Santos Dumont', '926', 'Centro', '88078-660', '(48) 92479-9307'),
	(20, 'Materiais Global 020', '15.560.929/0001-83', 'Av. Getulio Vargas', '1136', 'Lagoa da Conceicao', '88667-192', '(48) 96267-8792'),
	(21, 'Alimentos Norte 021', '53.831.186/0001-74', 'Rua das Flores', '923', 'Trindade', '88661-176', '(48) 91641-5059'),
	(22, 'Insumos Global 022', '30.472.481/0001-46', 'Rua das Palmeiras', '1071', 'Jardim Atlantico', '88396-418', '(48) 96543-1857'),
	(23, 'Logistica Sul 023', '96.495.390/0001-42', 'Rua Marechal Deodoro', '194', 'Capoeiras', '88741-872', '(48) 93463-6461'),
	(24, 'Comercial Regional 024', '54.417.771/0001-99', 'Rua Duque de Caxias', '290', 'Pantanal', '88678-401', '(48) 93112-2388'),
	(25, 'Suprimentos Nacional 025', '52.932.230/0001-95', 'Av. Beira Mar', '1318', 'Lagoa da Conceicao', '88719-848', '(48) 99624-2531'),
	(26, 'Materiais Nacional 026', '49.284.319/0001-53', 'Rua Marechal Deodoro', '38', 'Estreito', '88970-784', '(48) 98967-4145'),
	(27, 'Atacado Norte 027', '22.619.889/0001-79', 'Rua XV de Novembro', '159', 'Coqueiros', '88855-756', '(48) 99626-1618'),
	(28, 'Logistica Regional 028', '29.266.285/0001-98', 'Rua XV de Novembro', '1224', 'Kobrasol', '88789-639', '(48) 93712-8170'),
	(29, 'Distribuidora Prime 029', '40.554.725/0001-46', 'Rua Marechal Deodoro', '1386', 'Canasvieiras', '88770-766', '(48) 98355-4833'),
	(30, 'Alimentos Ltda 030', '70.955.298/0001-57', 'Rua Sete de Setembro', '1978', 'Lagoa da Conceicao', '88694-969', '(48) 98218-8564'),
	(31, 'Suprimentos Prime 031', '30.936.304/0001-87', 'Rua das Palmeiras', '1081', 'Kobrasol', '88141-893', '(48) 95096-1854'),
	(32, 'Insumos Express 032', '76.971.227/0001-46', 'Rua das Palmeiras', '1914', 'Trindade', '88085-781', '(48) 93626-5469'),
	(33, 'Insumos Nacional 033', '21.327.936/0001-67', 'Rua XV de Novembro', '1702', 'Kobrasol', '88905-357', '(48) 91436-7797'),
	(34, 'Distribuidora Prime 034', '59.183.483/0001-38', 'Rua das Palmeiras', '766', 'Itacorubi', '88028-326', '(48) 92623-6493'),
	(35, 'Industria Norte 035', '70.812.951/0001-27', 'Rua das Flores', '588', 'Pantanal', '88777-722', '(48) 98685-8349'),
	(36, 'Tecnologia Brasil 036', '42.320.955/0001-29', 'Rua Coronel Pedro', '163', 'Centro', '88561-962', '(48) 99647-7934'),
	(37, 'Comercial S.A. 037', '16.344.529/0001-91', 'Av. Paulista', '617', 'Trindade', '88812-637', '(48) 98489-2029'),
	(38, 'Comercial Global 038', '90.627.688/0001-40', 'Av. Getulio Vargas', '1098', 'Centro', '88735-147', '(48) 95772-8032'),
	(39, 'Distribuidora Regional 039', '63.291.780/0001-95', 'Rua Marechal Deodoro', '493', 'Jardim Atlantico', '88087-536', '(48) 96908-2108'),
	(40, 'Alimentos Nacional 040', '80.120.499/0001-70', 'Rua das Palmeiras', '1611', 'Capoeiras', '88044-650', '(48) 97338-7116'),
	(41, 'Suprimentos Brasil 041', '54.346.850/0001-94', 'Rua Marechal Deodoro', '1615', 'Trindade', '88643-106', '(48) 96447-3185'),
	(42, 'Distribuidora Express 042', '92.279.950/0001-97', 'Rua das Palmeiras', '694', 'Campeche', '88475-712', '(48) 98840-3986'),
	(43, 'Industria Sul 043', '14.400.306/0001-15', 'Rua Barao do Rio Branco', '1590', 'Barreiros', '88810-204', '(48) 91686-6170'),
	(44, 'Suprimentos Nacional 044', '70.359.137/0001-92', 'Av. Beira Mar', '1670', 'Capoeiras', '88195-292', '(48) 96848-1783'),
	(45, 'Logistica S.A. 045', '65.509.861/0001-66', 'Av. Brasil', '1638', 'Estreito', '88916-979', '(48) 97334-6554'),
	(46, 'Industria Global 046', '76.373.920/0001-20', 'Rua Barao do Rio Branco', '1019', 'Estreito', '88744-434', '(48) 92293-8055'),
	(47, 'Tecnologia Norte 047', '23.181.435/0001-94', 'Rua das Palmeiras', '602', 'Estreito', '88302-313', '(48) 98305-7981'),
	(48, 'Industria Global 048', '55.729.545/0001-45', 'Rua Marechal Deodoro', '916', 'Centro', '88654-810', '(48) 91939-2229'),
	(49, 'Materiais Express 049', '96.263.131/0001-28', 'Rua das Palmeiras', '1641', 'Canasvieiras', '88869-622', '(48) 98179-1570'),
	(50, 'Industria Sul 050', '56.470.492/0001-82', 'Av. Paulista', '1595', 'Ingleses', '88033-619', '(48) 93513-8371'),
	(51, 'Logistica Express 051', '83.240.642/0001-56', 'Rua Santos Dumont', '1563', 'Trindade', '88407-321', '(48) 95566-5089'),
	(52, 'Comercial Brasil 052', '76.496.675/0001-25', 'Rua Barao do Rio Branco', '382', 'Barreiros', '88268-793', '(48) 95264-8311'),
	(53, 'Atacado Regional 053', '72.304.225/0001-27', 'Rua Sete de Setembro', '1422', 'Pantanal', '88873-075', '(48) 98406-3828'),
	(54, 'Insumos Sul 054', '50.783.455/0001-18', 'Av. Central', '1397', 'Campeche', '88563-555', '(48) 95757-5914'),
	(55, 'Industria Norte 055', '38.224.305/0001-27', 'Av. Central', '741', 'Capoeiras', '88242-809', '(48) 99094-1430'),
	(56, 'Logistica Nacional 056', '80.232.726/0001-21', 'Av. Getulio Vargas', '756', 'Barreiros', '88067-316', '(48) 97523-8842'),
	(57, 'Alimentos Prime 057', '83.175.228/0001-50', 'Av. Central', '839', 'Campeche', '88657-075', '(48) 98372-8632'),
	(58, 'Alimentos Express 058', '80.755.701/0001-33', 'Rua XV de Novembro', '1799', 'Campeche', '88786-989', '(48) 93114-8088'),
	(59, 'Alimentos Brasil 059', '29.411.268/0001-30', 'Rua das Acacias', '255', 'Capoeiras', '88330-957', '(48) 94694-6669'),
	(60, 'Alimentos S.A. 060', '35.750.664/0001-45', 'Rua das Acacias', '162', 'Coqueiros', '88128-640', '(48) 95961-9740'),
	(61, 'Comercial Nacional 061', '84.257.275/0001-94', 'Rua Duque de Caxias', '346', 'Jardim Atlantico', '88639-737', '(48) 96531-1674'),
	(62, 'Distribuidora Sul 062', '83.371.766/0001-36', 'Rua das Flores', '1943', 'Ingleses', '88785-585', '(48) 97825-1496'),
	(63, 'Insumos Nacional 063', '71.350.924/0001-97', 'Rua Sete de Setembro', '1315', 'Coqueiros', '88415-304', '(48) 98430-2195'),
	(64, 'Distribuidora Norte 064', '69.308.448/0001-87', 'Rua Santos Dumont', '852', 'Barreiros', '88147-320', '(48) 96231-6658'),
	(65, 'Materiais Norte 065', '81.208.426/0001-40', 'Av. Central', '759', 'Capoeiras', '88477-125', '(48) 95382-8366'),
	(66, 'Atacado Norte 066', '59.984.730/0001-63', 'Av. Brasil', '104', 'Coqueiros', '88254-985', '(48) 93616-6364'),
	(67, 'Tecnologia Express 067', '73.627.578/0001-73', 'Av. Paulista', '1563', 'Agronomica', '88900-315', '(48) 99148-1379'),
	(68, 'Comercial Prime 068', '37.697.461/0001-16', 'Rua das Palmeiras', '937', 'Itacorubi', '88051-288', '(48) 99108-8710'),
	(69, 'Suprimentos Nacional 069', '65.237.370/0001-56', 'Rua das Flores', '1736', 'Trindade', '88782-412', '(48) 96995-1741'),
	(70, 'Materiais Brasil 070', '56.666.395/0001-19', 'Av. Getulio Vargas', '1151', 'Itacorubi', '88395-516', '(48) 98378-5582'),
	(71, 'Tecnologia Regional 071', '60.482.913/0001-53', 'Av. Brasil', '264', 'Trindade', '88571-961', '(48) 96990-3363'),
	(72, 'Atacado Regional 072', '15.146.139/0001-27', 'Rua das Palmeiras', '823', 'Capoeiras', '88730-341', '(48) 98761-9508'),
	(73, 'Insumos Norte 073', '27.435.727/0001-50', 'Av. Getulio Vargas', '1830', 'Capoeiras', '88166-402', '(48) 95902-6511'),
	(74, 'Alimentos Nacional 074', '82.406.586/0001-12', 'Rua das Palmeiras', '1004', 'Canasvieiras', '88377-339', '(48) 92795-7824'),
	(75, 'Tecnologia S.A. 075', '98.744.127/0001-86', 'Av. Central', '1841', 'Canasvieiras', '88485-271', '(48) 94728-1841'),
	(76, 'Tecnologia Global 076', '89.893.961/0001-58', 'Rua XV de Novembro', '1074', 'Ingleses', '88151-841', '(48) 94968-1517'),
	(77, 'Tecnologia Sul 077', '50.528.255/0001-62', 'Av. Paulista', '39', 'Barreiros', '88707-208', '(48) 97723-9221'),
	(78, 'Tecnologia Global 078', '17.822.241/0001-76', 'Rua das Acacias', '1738', 'Canasvieiras', '88212-574', '(48) 96325-8837'),
	(79, 'Alimentos Prime 079', '68.645.450/0001-79', 'Rua Marechal Deodoro', '1960', 'Agronomica', '88362-692', '(48) 95331-8932'),
	(80, 'Atacado Ltda 080', '38.404.889/0001-46', 'Rua Sete de Setembro', '1143', 'Coqueiros', '88721-212', '(48) 99011-6194'),
	(81, 'Insumos Express 081', '45.394.224/0001-83', 'Rua das Palmeiras', '1913', 'Pantanal', '88692-556', '(48) 97220-7464'),
	(82, 'Logistica Norte 082', '20.454.552/0001-93', 'Rua Sete de Setembro', '87', 'Coqueiros', '88262-765', '(48) 98849-4505'),
	(83, 'Atacado Nacional 083', '99.378.240/0001-23', 'Rua Sete de Setembro', '1911', 'Capoeiras', '88630-758', '(48) 94920-4972'),
	(84, 'Distribuidora Nacional 084', '16.202.523/0001-52', 'Av. Paulista', '1307', 'Itacorubi', '88734-483', '(48) 92647-3252'),
	(85, 'Distribuidora Nacional 085', '93.999.587/0001-71', 'Rua Coronel Pedro', '324', 'Kobrasol', '88666-204', '(48) 95706-6262'),
	(86, 'Suprimentos Brasil 086', '93.687.337/0001-78', 'Rua Coronel Pedro', '1575', 'Trindade', '88756-740', '(48) 91611-3868'),
	(87, 'Materiais Norte 087', '60.906.607/0001-33', 'Rua Coronel Pedro', '1884', 'Centro', '88959-766', '(48) 95742-1613'),
	(88, 'Distribuidora S.A. 088', '52.391.565/0001-92', 'Av. Getulio Vargas', '1235', 'Trindade', '88556-536', '(48) 99092-3198'),
	(89, 'Alimentos Global 089', '24.438.266/0001-68', 'Rua Sete de Setembro', '395', 'Lagoa da Conceicao', '88663-263', '(48) 94050-1230'),
	(90, 'Logistica S.A. 090', '34.279.725/0001-91', 'Av. Getulio Vargas', '1382', 'Lagoa da Conceicao', '88918-415', '(48) 98007-9442'),
	(91, 'Logistica Sul 091', '33.243.588/0001-51', 'Av. Beira Mar', '1371', 'Trindade', '88958-254', '(48) 91111-5272'),
	(92, 'Materiais Ltda 092', '52.409.696/0001-83', 'Rua Santos Dumont', '1544', 'Coqueiros', '88011-267', '(48) 96890-4871'),
	(93, 'Distribuidora Sul 093', '61.802.614/0001-49', 'Rua Santos Dumont', '629', 'Agronomica', '88706-120', '(48) 95833-7021'),
	(94, 'Tecnologia Ltda 094', '71.256.565/0001-87', 'Av. Paulista', '1961', 'Agronomica', '88382-425', '(48) 99998-8714'),
	(95, 'Alimentos Ltda 095', '86.994.906/0001-20', 'Av. Central', '507', 'Ingleses', '88538-457', '(48) 99653-6927'),
	(96, 'Comercial Regional 096', '80.617.307/0001-83', 'Av. Brasil', '127', 'Campeche', '88549-153', '(48) 93695-6375'),
	(97, 'Alimentos Global 097', '84.600.193/0001-75', 'Av. Brasil', '1394', 'Itacorubi', '88456-828', '(48) 91911-8429'),
	(98, 'Industria Nacional 098', '17.672.573/0001-96', 'Av. Beira Mar', '936', 'Jardim Atlantico', '88826-315', '(48) 91356-7487'),
	(99, 'Suprimentos Brasil 099', '19.146.533/0001-54', 'Rua Barao do Rio Branco', '447', 'Jardim Atlantico', '88717-065', '(48) 99866-1987'),
	(100, 'Comercial Global 100', '33.887.238/0001-92', 'Rua das Flores', '588', 'Kobrasol', '88746-661', '(48) 97887-7135');

-- Copiando estrutura para tabela producao.pedidos
CREATE TABLE IF NOT EXISTS `pedidos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_clientes` int NOT NULL,
  `id_produto` int NOT NULL,
  `num_ped` varchar(255) DEFAULT NULL,
  `quantidade` float NOT NULL,
  `data_ped` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_clientes` (`id_clientes`),
  KEY `id_produto` (`id_produto`),
  CONSTRAINT `pedidos_ibfk_1` FOREIGN KEY (`id_clientes`) REFERENCES `clientes` (`id`),
  CONSTRAINT `pedidos_ibfk_2` FOREIGN KEY (`id_produto`) REFERENCES `produtos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela producao.pedidos: ~100 rows (aproximadamente)
INSERT INTO `pedidos` (`id`, `id_clientes`, `id_produto`, `num_ped`, `quantidade`, `data_ped`) VALUES
	(1, 2, 32, 'PED-20260001', 3.25, '2025-01-07 12:58:00'),
	(2, 20, 23, 'PED-20260002', 46.63, '2026-05-28 01:35:00'),
	(3, 92, 95, 'PED-20260003', 33.13, '2024-08-17 10:15:00'),
	(4, 54, 93, 'PED-20260004', 16.68, '2026-04-25 02:36:00'),
	(5, 48, 16, 'PED-20260005', 25.6, '2026-07-12 01:11:00'),
	(6, 29, 67, 'PED-20260006', 49.09, '2025-02-14 02:56:00'),
	(7, 60, 37, 'PED-20260007', 38.9, '2024-11-14 10:05:00'),
	(8, 71, 59, 'PED-20260008', 1.39, '2024-07-24 09:36:00'),
	(9, 39, 95, 'PED-20260009', 31.51, '2025-04-20 11:37:00'),
	(10, 64, 99, 'PED-20260010', 39.02, '2026-01-20 17:48:00'),
	(11, 32, 20, 'PED-20260011', 1.31, '2025-02-23 00:14:00'),
	(12, 70, 45, 'PED-20260012', 32.16, '2025-12-11 00:21:00'),
	(13, 1, 98, 'PED-20260013', 33.21, '2026-05-19 23:46:00'),
	(14, 40, 14, 'PED-20260014', 11.05, '2024-08-31 13:31:00'),
	(15, 8, 19, 'PED-20260015', 35.87, '2024-04-05 01:58:00'),
	(16, 30, 67, 'PED-20260016', 21.24, '2026-07-06 11:29:00'),
	(17, 96, 11, 'PED-20260017', 29.46, '2025-06-01 04:40:00'),
	(18, 51, 10, 'PED-20260018', 30, '2024-03-04 13:42:00'),
	(19, 17, 31, 'PED-20260019', 15.29, '2026-05-21 10:59:00'),
	(20, 51, 90, 'PED-20260020', 41.76, '2024-11-30 10:28:00'),
	(21, 35, 30, 'PED-20260021', 4.66, '2024-07-26 04:49:00'),
	(22, 99, 75, 'PED-20260022', 6.34, '2024-04-18 05:28:00'),
	(23, 60, 41, 'PED-20260023', 20.92, '2025-07-02 11:49:00'),
	(24, 27, 58, 'PED-20260024', 16.11, '2024-09-28 03:05:00'),
	(25, 21, 88, 'PED-20260025', 15.91, '2025-12-22 22:38:00'),
	(26, 6, 28, 'PED-20260026', 41.96, '2024-12-01 04:05:00'),
	(27, 92, 32, 'PED-20260027', 48.45, '2025-02-09 16:03:00'),
	(28, 87, 39, 'PED-20260028', 13.75, '2024-06-27 00:25:00'),
	(29, 58, 72, 'PED-20260029', 37.66, '2024-09-12 03:29:00'),
	(30, 14, 18, 'PED-20260030', 6.95, '2024-03-04 07:08:00'),
	(31, 26, 52, 'PED-20260031', 19.24, '2025-10-07 20:05:00'),
	(32, 75, 76, 'PED-20260032', 13.68, '2026-04-12 02:01:00'),
	(33, 9, 26, 'PED-20260033', 45.22, '2025-03-30 04:05:00'),
	(34, 43, 16, 'PED-20260034', 3.09, '2025-04-17 01:10:00'),
	(35, 74, 56, 'PED-20260035', 41.26, '2025-02-08 15:01:00'),
	(36, 49, 88, 'PED-20260036', 21.91, '2024-12-28 06:58:00'),
	(37, 24, 36, 'PED-20260037', 14.71, '2026-06-23 04:02:00'),
	(38, 79, 80, 'PED-20260038', 31.23, '2025-10-24 09:31:00'),
	(39, 53, 71, 'PED-20260039', 24.47, '2024-03-30 08:24:00'),
	(40, 18, 54, 'PED-20260040', 10.77, '2026-06-24 16:15:00'),
	(41, 81, 70, 'PED-20260041', 39.95, '2025-01-26 22:22:00'),
	(42, 62, 70, 'PED-20260042', 39.29, '2024-12-18 18:32:00'),
	(43, 42, 50, 'PED-20260043', 14.25, '2024-01-27 10:38:00'),
	(44, 29, 4, 'PED-20260044', 44.89, '2026-03-08 08:03:00'),
	(45, 61, 68, 'PED-20260045', 18.51, '2025-08-21 07:10:00'),
	(46, 13, 32, 'PED-20260046', 33.19, '2024-09-29 17:52:00'),
	(47, 95, 8, 'PED-20260047', 38.44, '2024-08-12 18:54:00'),
	(48, 50, 46, 'PED-20260048', 46.83, '2026-05-15 05:11:00'),
	(49, 31, 76, 'PED-20260049', 16.58, '2026-01-25 22:22:00'),
	(50, 76, 4, 'PED-20260050', 35.47, '2024-12-26 18:36:00'),
	(51, 19, 73, 'PED-20260051', 47.47, '2026-05-06 15:34:00'),
	(52, 40, 23, 'PED-20260052', 25.03, '2024-04-02 01:14:00'),
	(53, 78, 29, 'PED-20260053', 1.98, '2025-05-04 00:21:00'),
	(54, 79, 26, 'PED-20260054', 40.52, '2024-12-14 22:11:00'),
	(55, 42, 8, 'PED-20260055', 2.07, '2025-08-23 22:58:00'),
	(56, 19, 100, 'PED-20260056', 6.44, '2025-06-22 11:04:00'),
	(57, 48, 91, 'PED-20260057', 47.15, '2025-02-09 18:06:00'),
	(58, 44, 39, 'PED-20260058', 16.81, '2024-06-10 23:27:00'),
	(59, 82, 63, 'PED-20260059', 32.81, '2024-06-27 22:35:00'),
	(60, 89, 79, 'PED-20260060', 39.56, '2024-08-16 21:37:00'),
	(61, 23, 49, 'PED-20260061', 16.03, '2025-12-06 09:08:00'),
	(62, 23, 94, 'PED-20260062', 1.09, '2025-12-19 18:25:00'),
	(63, 99, 73, 'PED-20260063', 2.59, '2025-09-08 10:58:00'),
	(64, 79, 29, 'PED-20260064', 32.34, '2024-04-16 15:09:00'),
	(65, 43, 96, 'PED-20260065', 4.81, '2024-12-21 10:10:00'),
	(66, 82, 12, 'PED-20260066', 41.26, '2025-11-17 20:46:00'),
	(67, 43, 58, 'PED-20260067', 1.56, '2024-08-02 07:44:00'),
	(68, 9, 45, 'PED-20260068', 13.58, '2024-04-20 23:00:00'),
	(69, 7, 50, 'PED-20260069', 22.47, '2025-03-05 05:56:00'),
	(70, 53, 64, 'PED-20260070', 44.21, '2024-12-25 17:24:00'),
	(71, 13, 62, 'PED-20260071', 39.65, '2025-08-14 20:48:00'),
	(72, 88, 29, 'PED-20260072', 8.97, '2024-03-16 01:18:00'),
	(73, 3, 41, 'PED-20260073', 13.8, '2024-04-17 02:21:00'),
	(74, 22, 49, 'PED-20260074', 8.88, '2024-03-17 17:57:00'),
	(75, 12, 44, 'PED-20260075', 30.11, '2025-09-20 15:45:00'),
	(76, 4, 56, 'PED-20260076', 47.18, '2024-06-17 19:56:00'),
	(77, 56, 21, 'PED-20260077', 3.62, '2024-12-05 06:12:00'),
	(78, 53, 90, 'PED-20260078', 28.15, '2026-08-05 23:34:00'),
	(79, 34, 85, 'PED-20260079', 14.79, '2024-08-31 03:03:00'),
	(80, 51, 74, 'PED-20260080', 27.93, '2025-05-17 04:03:00'),
	(81, 47, 1, 'PED-20260081', 21.95, '2024-10-28 21:40:00'),
	(82, 77, 62, 'PED-20260082', 10.78, '2024-01-27 06:10:00'),
	(83, 82, 38, 'PED-20260083', 48.88, '2025-04-29 03:19:00'),
	(84, 51, 61, 'PED-20260084', 24.97, '2025-11-07 08:05:00'),
	(85, 83, 70, 'PED-20260085', 19.99, '2025-01-14 12:23:00'),
	(86, 24, 58, 'PED-20260086', 3.19, '2025-03-26 14:16:00'),
	(87, 29, 35, 'PED-20260087', 28.65, '2024-06-03 22:42:00'),
	(88, 13, 11, 'PED-20260088', 33.74, '2026-04-07 17:26:00'),
	(89, 97, 76, 'PED-20260089', 12.15, '2024-03-03 12:52:00'),
	(90, 67, 54, 'PED-20260090', 48.32, '2025-12-04 15:36:00'),
	(91, 31, 61, 'PED-20260091', 15.64, '2025-02-08 22:02:00'),
	(92, 65, 74, 'PED-20260092', 45.12, '2026-03-30 18:43:00'),
	(93, 80, 19, 'PED-20260093', 6.89, '2026-02-14 14:11:00'),
	(94, 22, 28, 'PED-20260094', 40.61, '2024-05-09 01:27:00'),
	(95, 11, 88, 'PED-20260095', 22.33, '2026-04-22 20:09:00'),
	(96, 77, 34, 'PED-20260096', 16.67, '2026-01-14 02:05:00'),
	(97, 50, 72, 'PED-20260097', 20.47, '2024-11-29 08:33:00'),
	(98, 59, 2, 'PED-20260098', 39.54, '2025-09-30 18:33:00'),
	(99, 54, 15, 'PED-20260099', 21.31, '2024-05-31 18:37:00'),
	(100, 75, 98, 'PED-20260100', 48.28, '2024-04-12 03:36:00');

-- Copiando estrutura para tabela producao.produtos
CREATE TABLE IF NOT EXISTS `produtos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `estoque` float NOT NULL,
  `valor` float NOT NULL,
  `descricao` longtext,
  `data_fabricacao` datetime DEFAULT NULL,
  `data_validadde` datetime DEFAULT NULL,
  `cod_barras` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela producao.produtos: ~100 rows (aproximadamente)
INSERT INTO `produtos` (`id`, `nome`, `estoque`, `valor`, `descricao`, `data_fabricacao`, `data_validadde`, `cod_barras`) VALUES
	(1, 'Parafuso Sextavado - Lote 001', 496.43, 345.74, 'Produto Parafuso Sextavado de alta qualidade, ideal para uso comercial e domestico.', '2025-02-12 12:05:00', '2027-12-01 21:55:00', '7893316277000'),
	(2, 'Arroz Tipo 1 - Lote 002', 326.77, 314.59, 'Produto Arroz Tipo 1 de alta qualidade, ideal para uso comercial e domestico.', '2024-01-01 17:25:00', '2027-06-26 04:46:00', '7895203589186'),
	(3, 'Feijao Carioca - Lote 003', 417.41, 681.1, 'Produto Feijao Carioca de alta qualidade, ideal para uso comercial e domestico.', '2024-09-03 14:43:00', '2028-01-07 17:27:00', '7897579604766'),
	(4, 'Cimento CP II - Lote 004', 411.68, 224.62, 'Produto Cimento CP II de alta qualidade, ideal para uso comercial e domestico.', '2024-12-09 04:17:00', '2026-07-13 23:48:00', '7891484664056'),
	(5, 'Tinta Acrilica - Lote 005', 404.74, 378.73, 'Produto Tinta Acrilica de alta qualidade, ideal para uso comercial e domestico.', '2023-02-02 07:13:00', '2026-03-10 03:38:00', '7895439176290'),
	(6, 'Cabo Flexivel 2.5mm - Lote 006', 298.89, 633.63, 'Produto Cabo Flexivel 2.5mm de alta qualidade, ideal para uso comercial e domestico.', '2023-04-10 07:47:00', '2026-02-15 12:28:00', '7891242425303'),
	(7, 'Lampada LED 9W - Lote 007', 251.95, 262.09, 'Produto Lampada LED 9W de alta qualidade, ideal para uso comercial e domestico.', '2026-03-25 10:36:00', '2027-09-05 21:52:00', '7892377246195'),
	(8, 'Detergente Neutro - Lote 008', 150.88, 131.06, 'Produto Detergente Neutro de alta qualidade, ideal para uso comercial e domestico.', '2025-12-03 07:26:00', '2026-11-04 08:03:00', '7898210176888'),
	(9, 'Papel A4 - Lote 009', 277.93, 44.57, 'Produto Papel A4 de alta qualidade, ideal para uso comercial e domestico.', '2024-12-06 20:42:00', '2027-01-26 16:20:00', '7898285589122'),
	(10, 'Cadeira de Escritorio - Lote 010', 204.13, 271.62, 'Produto Cadeira de Escritorio de alta qualidade, ideal para uso comercial e domestico.', '2024-01-12 17:30:00', '2026-09-04 07:19:00', '7899837427517'),
	(11, 'Mesa de Madeira - Lote 011', 206.34, 376.27, 'Produto Mesa de Madeira de alta qualidade, ideal para uso comercial e domestico.', '2025-12-21 04:24:00', '2026-09-06 08:13:00', '7892593765711'),
	(12, 'Furadeira Eletrica - Lote 012', 267.82, 746.81, 'Produto Furadeira Eletrica de alta qualidade, ideal para uso comercial e domestico.', '2023-04-16 08:24:00', '2027-11-21 19:38:00', '7891312606333'),
	(13, 'Martelo de Unha - Lote 013', 402.33, 529.8, 'Produto Martelo de Unha de alta qualidade, ideal para uso comercial e domestico.', '2026-02-18 06:30:00', '2026-08-02 10:19:00', '7891065857791'),
	(14, 'Chave de Fenda - Lote 014', 468.58, 865.87, 'Produto Chave de Fenda de alta qualidade, ideal para uso comercial e domestico.', '2023-08-29 23:48:00', '2027-05-06 07:44:00', '7896173344564'),
	(15, 'Fita Isolante - Lote 015', 457.56, 497.94, 'Produto Fita Isolante de alta qualidade, ideal para uso comercial e domestico.', '2024-08-02 12:29:00', '2027-07-01 20:22:00', '7896619630925'),
	(16, 'Oleo de Soja - Lote 016', 179.82, 794.74, 'Produto Oleo de Soja de alta qualidade, ideal para uso comercial e domestico.', '2025-08-12 03:51:00', '2028-01-10 15:48:00', '7898901585274'),
	(17, 'Acucar Cristal - Lote 017', 457.17, 335.17, 'Produto Acucar Cristal de alta qualidade, ideal para uso comercial e domestico.', '2025-04-27 01:36:00', '2028-06-03 07:47:00', '7891626733282'),
	(18, 'Sabao em Po - Lote 018', 130.39, 841.35, 'Produto Sabao em Po de alta qualidade, ideal para uso comercial e domestico.', '2026-04-01 23:26:00', '2026-10-30 04:12:00', '7892416760621'),
	(19, 'Refrigerante 2L - Lote 019', 189.92, 750.36, 'Produto Refrigerante 2L de alta qualidade, ideal para uso comercial e domestico.', '2025-10-19 17:41:00', '2028-08-24 21:21:00', '7898823677798'),
	(20, 'Cafe Torrado - Lote 020', 483.25, 578.36, 'Produto Cafe Torrado de alta qualidade, ideal para uso comercial e domestico.', '2025-10-01 14:10:00', '2028-01-21 11:10:00', '7897642365889'),
	(21, 'Macarrao Espaguete - Lote 021', 92.02, 800.62, 'Produto Macarrao Espaguete de alta qualidade, ideal para uso comercial e domestico.', '2026-08-07 01:33:00', '2026-02-04 02:52:00', '7893869963931'),
	(22, 'Farinha de Trigo - Lote 022', 382.17, 372.58, 'Produto Farinha de Trigo de alta qualidade, ideal para uso comercial e domestico.', '2026-07-15 07:04:00', '2027-12-26 04:00:00', '7897253513875'),
	(23, 'Leite Integral - Lote 023', 30.23, 574.8, 'Produto Leite Integral de alta qualidade, ideal para uso comercial e domestico.', '2026-06-16 15:42:00', '2027-05-15 00:00:00', '7892766685440'),
	(24, 'Manteiga com Sal - Lote 024', 8.36, 650.6, 'Produto Manteiga com Sal de alta qualidade, ideal para uso comercial e domestico.', '2026-01-02 09:01:00', '2027-05-30 22:43:00', '7891769945233'),
	(25, 'Queijo Mussarela - Lote 025', 459.02, 473.08, 'Produto Queijo Mussarela de alta qualidade, ideal para uso comercial e domestico.', '2024-05-08 06:39:00', '2027-06-24 08:52:00', '7896817280229'),
	(26, 'Sabonete Liquido - Lote 026', 397.47, 73.41, 'Produto Sabonete Liquido de alta qualidade, ideal para uso comercial e domestico.', '2025-04-11 14:36:00', '2026-09-07 22:14:00', '7899936181631'),
	(27, 'Shampoo Anticaspa - Lote 027', 495.84, 585.72, 'Produto Shampoo Anticaspa de alta qualidade, ideal para uso comercial e domestico.', '2023-03-06 02:25:00', '2027-01-24 12:35:00', '7893044426338'),
	(28, 'Papel Higienico - Lote 028', 318.37, 633.23, 'Produto Papel Higienico de alta qualidade, ideal para uso comercial e domestico.', '2023-06-19 15:54:00', '2027-03-21 20:50:00', '7895182609867'),
	(29, 'Guardanapo - Lote 029', 447.4, 827.35, 'Produto Guardanapo de alta qualidade, ideal para uso comercial e domestico.', '2024-04-15 06:57:00', '2028-06-07 22:56:00', '7897729286656'),
	(30, 'Copo Descartavel - Lote 030', 135.55, 831.84, 'Produto Copo Descartavel de alta qualidade, ideal para uso comercial e domestico.', '2024-07-28 17:36:00', '2027-11-05 01:11:00', '7892350701477'),
	(31, 'Prego 18x30 - Lote 031', 480.73, 529.31, 'Produto Prego 18x30 de alta qualidade, ideal para uso comercial e domestico.', '2025-03-26 02:19:00', '2026-06-16 18:15:00', '7898943294720'),
	(32, 'Fio de Cobre - Lote 032', 338.52, 487.6, 'Produto Fio de Cobre de alta qualidade, ideal para uso comercial e domestico.', '2025-02-25 23:08:00', '2028-03-20 22:46:00', '7899926778957'),
	(33, 'Disjuntor 20A - Lote 033', 372.73, 312.87, 'Produto Disjuntor 20A de alta qualidade, ideal para uso comercial e domestico.', '2023-07-20 13:14:00', '2028-05-08 02:21:00', '7897853087029'),
	(34, 'Tomada 10A - Lote 034', 484.46, 295.39, 'Produto Tomada 10A de alta qualidade, ideal para uso comercial e domestico.', '2026-07-22 08:50:00', '2027-04-07 15:14:00', '7899337145038'),
	(35, 'Interruptor Simples - Lote 035', 215.92, 612.46, 'Produto Interruptor Simples de alta qualidade, ideal para uso comercial e domestico.', '2025-02-17 02:49:00', '2027-09-26 09:51:00', '7891315708805'),
	(36, 'Vassoura - Lote 036', 133.99, 343.51, 'Produto Vassoura de alta qualidade, ideal para uso comercial e domestico.', '2026-07-22 04:47:00', '2027-02-03 10:23:00', '7891457632732'),
	(37, 'Rodo - Lote 037', 2.6, 279.14, 'Produto Rodo de alta qualidade, ideal para uso comercial e domestico.', '2025-01-07 08:06:00', '2026-05-16 02:11:00', '7897146010221'),
	(38, 'Pano de Chao - Lote 038', 278.49, 462.36, 'Produto Pano de Chao de alta qualidade, ideal para uso comercial e domestico.', '2023-07-31 00:05:00', '2026-12-29 17:05:00', '7898664105957'),
	(39, 'Balde Plastico - Lote 039', 431.86, 13.57, 'Produto Balde Plastico de alta qualidade, ideal para uso comercial e domestico.', '2025-04-27 12:49:00', '2026-03-28 23:57:00', '7893238126936'),
	(40, 'Luva de Latex - Lote 040', 342.66, 154.61, 'Produto Luva de Latex de alta qualidade, ideal para uso comercial e domestico.', '2024-07-04 09:17:00', '2027-05-20 04:04:00', '7896013117609'),
	(41, 'Parafuso Sextavado - Lote 041', 137.98, 271.5, 'Produto Parafuso Sextavado de alta qualidade, ideal para uso comercial e domestico.', '2023-06-07 11:16:00', '2028-08-24 07:46:00', '7897979466538'),
	(42, 'Arroz Tipo 1 - Lote 042', 296.9, 177.98, 'Produto Arroz Tipo 1 de alta qualidade, ideal para uso comercial e domestico.', '2023-08-08 04:19:00', '2026-01-07 12:21:00', '7898998080862'),
	(43, 'Feijao Carioca - Lote 043', 220.11, 388.93, 'Produto Feijao Carioca de alta qualidade, ideal para uso comercial e domestico.', '2026-08-26 19:08:00', '2026-11-04 10:38:00', '7896157617867'),
	(44, 'Cimento CP II - Lote 044', 157.09, 868.11, 'Produto Cimento CP II de alta qualidade, ideal para uso comercial e domestico.', '2024-10-15 09:47:00', '2027-12-13 20:31:00', '7894358554365'),
	(45, 'Tinta Acrilica - Lote 045', 162.94, 254.04, 'Produto Tinta Acrilica de alta qualidade, ideal para uso comercial e domestico.', '2025-03-15 11:07:00', '2028-08-12 18:12:00', '7893343459102'),
	(46, 'Cabo Flexivel 2.5mm - Lote 046', 340.86, 496.16, 'Produto Cabo Flexivel 2.5mm de alta qualidade, ideal para uso comercial e domestico.', '2025-08-03 22:13:00', '2027-03-25 09:53:00', '7893975704877'),
	(47, 'Lampada LED 9W - Lote 047', 409.48, 716.52, 'Produto Lampada LED 9W de alta qualidade, ideal para uso comercial e domestico.', '2025-04-17 21:31:00', '2026-05-23 20:19:00', '7896334440295'),
	(48, 'Detergente Neutro - Lote 048', 329.33, 644.35, 'Produto Detergente Neutro de alta qualidade, ideal para uso comercial e domestico.', '2025-02-11 02:28:00', '2027-09-05 15:37:00', '7898265834251'),
	(49, 'Papel A4 - Lote 049', 271.82, 712.09, 'Produto Papel A4 de alta qualidade, ideal para uso comercial e domestico.', '2025-01-06 22:57:00', '2028-04-11 17:38:00', '7891364994639'),
	(50, 'Cadeira de Escritorio - Lote 050', 384.48, 592.63, 'Produto Cadeira de Escritorio de alta qualidade, ideal para uso comercial e domestico.', '2024-12-28 05:41:00', '2027-09-20 01:36:00', '7898527715219'),
	(51, 'Mesa de Madeira - Lote 051', 482.86, 388.79, 'Produto Mesa de Madeira de alta qualidade, ideal para uso comercial e domestico.', '2023-01-22 03:16:00', '2026-08-16 16:47:00', '7893470617247'),
	(52, 'Furadeira Eletrica - Lote 052', 222.89, 353.5, 'Produto Furadeira Eletrica de alta qualidade, ideal para uso comercial e domestico.', '2026-04-20 22:32:00', '2026-06-04 11:01:00', '7893073486033'),
	(53, 'Martelo de Unha - Lote 053', 147.72, 828.6, 'Produto Martelo de Unha de alta qualidade, ideal para uso comercial e domestico.', '2023-06-25 03:53:00', '2028-08-21 23:09:00', '7896791027463'),
	(54, 'Chave de Fenda - Lote 054', 171.53, 706.3, 'Produto Chave de Fenda de alta qualidade, ideal para uso comercial e domestico.', '2025-12-03 15:22:00', '2027-05-03 03:28:00', '7897238213207'),
	(55, 'Fita Isolante - Lote 055', 33.59, 42.6, 'Produto Fita Isolante de alta qualidade, ideal para uso comercial e domestico.', '2023-08-24 00:54:00', '2026-12-18 20:06:00', '7895982744929'),
	(56, 'Oleo de Soja - Lote 056', 279.92, 862.62, 'Produto Oleo de Soja de alta qualidade, ideal para uso comercial e domestico.', '2024-04-19 12:40:00', '2026-07-08 05:40:00', '7898118083267'),
	(57, 'Acucar Cristal - Lote 057', 197.79, 664.23, 'Produto Acucar Cristal de alta qualidade, ideal para uso comercial e domestico.', '2024-02-09 14:37:00', '2027-03-16 12:00:00', '7894026816435'),
	(58, 'Sabao em Po - Lote 058', 102.89, 677.64, 'Produto Sabao em Po de alta qualidade, ideal para uso comercial e domestico.', '2023-05-09 18:06:00', '2028-03-29 17:11:00', '7896866036409'),
	(59, 'Refrigerante 2L - Lote 059', 98.54, 104.76, 'Produto Refrigerante 2L de alta qualidade, ideal para uso comercial e domestico.', '2025-09-29 16:40:00', '2026-11-17 19:24:00', '7897920516981'),
	(60, 'Cafe Torrado - Lote 060', 293.5, 314.73, 'Produto Cafe Torrado de alta qualidade, ideal para uso comercial e domestico.', '2025-07-26 19:11:00', '2028-04-13 21:45:00', '7898733575600'),
	(61, 'Macarrao Espaguete - Lote 061', 459.34, 532.12, 'Produto Macarrao Espaguete de alta qualidade, ideal para uso comercial e domestico.', '2023-10-02 10:07:00', '2026-09-02 09:07:00', '7896081137534'),
	(62, 'Farinha de Trigo - Lote 062', 346.72, 460.91, 'Produto Farinha de Trigo de alta qualidade, ideal para uso comercial e domestico.', '2025-05-06 19:08:00', '2027-08-12 12:27:00', '7896092773357'),
	(63, 'Leite Integral - Lote 063', 317.75, 624.79, 'Produto Leite Integral de alta qualidade, ideal para uso comercial e domestico.', '2026-08-14 05:35:00', '2026-06-20 15:18:00', '7891602569046'),
	(64, 'Manteiga com Sal - Lote 064', 157.29, 407.23, 'Produto Manteiga com Sal de alta qualidade, ideal para uso comercial e domestico.', '2023-04-20 11:00:00', '2027-05-12 04:12:00', '7898796293088'),
	(65, 'Queijo Mussarela - Lote 065', 481.91, 456.08, 'Produto Queijo Mussarela de alta qualidade, ideal para uso comercial e domestico.', '2025-10-10 13:43:00', '2027-05-19 13:45:00', '7898902275119'),
	(66, 'Sabonete Liquido - Lote 066', 244.35, 76.69, 'Produto Sabonete Liquido de alta qualidade, ideal para uso comercial e domestico.', '2023-03-05 07:18:00', '2026-02-03 08:14:00', '7897603978731'),
	(67, 'Shampoo Anticaspa - Lote 067', 84.1, 412.9, 'Produto Shampoo Anticaspa de alta qualidade, ideal para uso comercial e domestico.', '2025-10-11 17:32:00', '2026-04-26 18:07:00', '7899550822977'),
	(68, 'Papel Higienico - Lote 068', 271.02, 681.64, 'Produto Papel Higienico de alta qualidade, ideal para uso comercial e domestico.', '2025-06-22 17:13:00', '2027-03-12 03:47:00', '7894227004325'),
	(69, 'Guardanapo - Lote 069', 148.85, 899.28, 'Produto Guardanapo de alta qualidade, ideal para uso comercial e domestico.', '2025-07-10 08:22:00', '2028-06-01 02:28:00', '7894487036345'),
	(70, 'Copo Descartavel - Lote 070', 104.94, 664.43, 'Produto Copo Descartavel de alta qualidade, ideal para uso comercial e domestico.', '2024-12-19 22:39:00', '2027-10-10 13:10:00', '7893646349248'),
	(71, 'Prego 18x30 - Lote 071', 392.42, 732.56, 'Produto Prego 18x30 de alta qualidade, ideal para uso comercial e domestico.', '2023-05-02 18:22:00', '2027-06-30 08:38:00', '7893313993297'),
	(72, 'Fio de Cobre - Lote 072', 161.83, 634.32, 'Produto Fio de Cobre de alta qualidade, ideal para uso comercial e domestico.', '2024-08-15 18:17:00', '2028-05-28 16:57:00', '7891408988968'),
	(73, 'Disjuntor 20A - Lote 073', 481.39, 707.58, 'Produto Disjuntor 20A de alta qualidade, ideal para uso comercial e domestico.', '2023-05-02 08:55:00', '2027-11-03 04:44:00', '7894719780110'),
	(74, 'Tomada 10A - Lote 074', 124.84, 640.91, 'Produto Tomada 10A de alta qualidade, ideal para uso comercial e domestico.', '2024-05-21 21:25:00', '2027-05-17 04:36:00', '7898011113122'),
	(75, 'Interruptor Simples - Lote 075', 313.91, 339.18, 'Produto Interruptor Simples de alta qualidade, ideal para uso comercial e domestico.', '2023-06-04 20:50:00', '2028-06-20 02:25:00', '7896880115912'),
	(76, 'Vassoura - Lote 076', 475.13, 296.21, 'Produto Vassoura de alta qualidade, ideal para uso comercial e domestico.', '2023-01-06 23:05:00', '2028-01-19 14:40:00', '7897590302909'),
	(77, 'Rodo - Lote 077', 108.91, 388.06, 'Produto Rodo de alta qualidade, ideal para uso comercial e domestico.', '2024-03-09 15:17:00', '2026-11-27 09:21:00', '7898956094389'),
	(78, 'Pano de Chao - Lote 078', 394.15, 804.91, 'Produto Pano de Chao de alta qualidade, ideal para uso comercial e domestico.', '2023-04-10 01:06:00', '2027-10-04 14:01:00', '7894683585586'),
	(79, 'Balde Plastico - Lote 079', 220.64, 3.11, 'Produto Balde Plastico de alta qualidade, ideal para uso comercial e domestico.', '2025-05-26 06:44:00', '2028-07-20 04:56:00', '7898086684009'),
	(80, 'Luva de Latex - Lote 080', 79.49, 839.53, 'Produto Luva de Latex de alta qualidade, ideal para uso comercial e domestico.', '2024-07-15 02:41:00', '2027-01-05 08:05:00', '7891710924824'),
	(81, 'Parafuso Sextavado - Lote 081', 198.17, 276.66, 'Produto Parafuso Sextavado de alta qualidade, ideal para uso comercial e domestico.', '2024-04-24 13:41:00', '2026-04-04 22:06:00', '7891004665657'),
	(82, 'Arroz Tipo 1 - Lote 082', 238.4, 121.58, 'Produto Arroz Tipo 1 de alta qualidade, ideal para uso comercial e domestico.', '2024-04-08 16:43:00', '2027-04-01 00:00:00', '7898282534126'),
	(83, 'Feijao Carioca - Lote 083', 408.55, 889.27, 'Produto Feijao Carioca de alta qualidade, ideal para uso comercial e domestico.', '2025-05-14 22:08:00', '2027-05-05 02:14:00', '7892645272822'),
	(84, 'Cimento CP II - Lote 084', 365.38, 94.42, 'Produto Cimento CP II de alta qualidade, ideal para uso comercial e domestico.', '2024-10-03 11:56:00', '2026-11-03 04:24:00', '7891613549255'),
	(85, 'Tinta Acrilica - Lote 085', 265.25, 10.11, 'Produto Tinta Acrilica de alta qualidade, ideal para uso comercial e domestico.', '2026-08-24 05:28:00', '2026-12-26 23:13:00', '7898243746556'),
	(86, 'Cabo Flexivel 2.5mm - Lote 086', 429.98, 80.29, 'Produto Cabo Flexivel 2.5mm de alta qualidade, ideal para uso comercial e domestico.', '2023-07-25 04:48:00', '2026-05-07 18:46:00', '7896944371787'),
	(87, 'Lampada LED 9W - Lote 087', 481.62, 284.74, 'Produto Lampada LED 9W de alta qualidade, ideal para uso comercial e domestico.', '2023-10-14 07:17:00', '2027-10-23 02:15:00', '7897904559790'),
	(88, 'Detergente Neutro - Lote 088', 389.48, 622.13, 'Produto Detergente Neutro de alta qualidade, ideal para uso comercial e domestico.', '2024-09-09 06:33:00', '2027-09-14 16:12:00', '7898506931282'),
	(89, 'Papel A4 - Lote 089', 147.77, 51.47, 'Produto Papel A4 de alta qualidade, ideal para uso comercial e domestico.', '2024-05-05 15:24:00', '2026-04-26 07:31:00', '7899894928830'),
	(90, 'Cadeira de Escritorio - Lote 090', 444.36, 13.33, 'Produto Cadeira de Escritorio de alta qualidade, ideal para uso comercial e domestico.', '2025-01-09 10:08:00', '2027-02-01 18:26:00', '7893933213766'),
	(91, 'Mesa de Madeira - Lote 091', 381.36, 859.03, 'Produto Mesa de Madeira de alta qualidade, ideal para uso comercial e domestico.', '2023-05-30 00:37:00', '2026-03-11 00:16:00', '7891926608888'),
	(92, 'Furadeira Eletrica - Lote 092', 461.29, 853.85, 'Produto Furadeira Eletrica de alta qualidade, ideal para uso comercial e domestico.', '2025-03-26 16:18:00', '2027-10-06 22:32:00', '7898589679668'),
	(93, 'Martelo de Unha - Lote 093', 211.79, 363.5, 'Produto Martelo de Unha de alta qualidade, ideal para uso comercial e domestico.', '2026-08-04 17:34:00', '2027-09-23 04:17:00', '7895654014006'),
	(94, 'Chave de Fenda - Lote 094', 39.51, 828.94, 'Produto Chave de Fenda de alta qualidade, ideal para uso comercial e domestico.', '2023-11-15 17:20:00', '2027-02-05 18:40:00', '7893762327862'),
	(95, 'Fita Isolante - Lote 095', 155.08, 395.1, 'Produto Fita Isolante de alta qualidade, ideal para uso comercial e domestico.', '2024-05-03 01:15:00', '2026-03-30 13:07:00', '7893614915281'),
	(96, 'Oleo de Soja - Lote 096', 154.65, 668.1, 'Produto Oleo de Soja de alta qualidade, ideal para uso comercial e domestico.', '2023-12-26 03:00:00', '2027-12-26 04:44:00', '7891048750473'),
	(97, 'Acucar Cristal - Lote 097', 248.21, 313.63, 'Produto Acucar Cristal de alta qualidade, ideal para uso comercial e domestico.', '2025-11-25 23:16:00', '2026-06-20 11:08:00', '7899046449694'),
	(98, 'Sabao em Po - Lote 098', 366.47, 108.44, 'Produto Sabao em Po de alta qualidade, ideal para uso comercial e domestico.', '2023-03-02 10:51:00', '2027-03-16 08:33:00', '7895569295400'),
	(99, 'Refrigerante 2L - Lote 099', 356.16, 519.99, 'Produto Refrigerante 2L de alta qualidade, ideal para uso comercial e domestico.', '2023-06-07 15:29:00', '2027-06-08 11:03:00', '7893434757387'),
	(100, 'Cafe Torrado - Lote 100', 183.84, 231.44, 'Produto Cafe Torrado de alta qualidade, ideal para uso comercial e domestico.', '2023-07-30 18:43:00', '2028-01-11 03:14:00', '7891011031667');

-- Copiando estrutura para procedure producao.p_inserir_clientes
DELIMITER //
CREATE PROCEDURE `p_inserir_clientes`(
    IN p_nome VARCHAR(100),
    IN p_cpf_cnpj VARCHAR(18),
    IN p_rua VARCHAR(255),
    IN p_telefone VARCHAR(100),
    IN p_telefone2 VARCHAR(100),
    IN p_numero VARCHAR(50),
    IN p_bairro VARCHAR(100),
    IN p_cep VARCHAR(10),
    IN p_referencia VARCHAR(255)
)
BEGIN

    INSERT INTO clientes (
        nome,
        cpf_cnpj,
        rua,
        telefone,
        telefone2,
        numero,
        bairro,
        cep,
        referencia
    )
    VALUES (
        p_nome,
        p_cpf_cnpj,
        p_rua,
        p_telefone,
        p_telefone2,
        p_numero,
        p_bairro,
        p_cep,
        p_referencia
    );

END//
DELIMITER ;

-- Copiando estrutura para procedure producao.p_inserir_compra
DELIMITER //
CREATE PROCEDURE `p_inserir_compra`(
    IN p_id_fornecedor INT,
    IN p_id_produto INT,
    IN p_quantidade FLOAT,
    IN p_codigo VARCHAR(100),
    IN p_data_compra DATETIME
)
BEGIN 
    INSERT INTO compras (id_fornecedor, id_produto, quantidade, codigo, data_compra)
    VALUES (p_id_fornecedor, p_id_produto, p_quantidade, p_codigo, p_data_compra);
END//
DELIMITER ;

-- Copiando estrutura para procedure producao.p_inserir_fornecedor
DELIMITER //
CREATE PROCEDURE `p_inserir_fornecedor`(
    IN p_nome VARCHAR(255),
    IN p_cpf_cnpj VARCHAR(18),
    IN p_rua VARCHAR(255),
    IN p_numero VARCHAR(50),
    IN p_bairro VARCHAR(100),
    IN p_cep VARCHAR(10),
    IN p_telefone VARCHAR(100)
)
BEGIN 
    INSERT INTO fornecedor (nome, cpf_cnpj, rua, numero, bairro, cep, telefone)
    VALUES (p_nome, p_cpf_cnpj, p_rua, p_numero, p_bairro, p_cep, p_telefone);
END//
DELIMITER ;

-- Copiando estrutura para procedure producao.p_inserir_pedidos
DELIMITER //
CREATE PROCEDURE `p_inserir_pedidos`(
    IN p_id_clientes INT,
    IN p_id_produto INT,
    IN p_num_ped VARCHAR(255),
    IN p_quantidade FLOAT,
    IN p_data_ped DATETIME
)
BEGIN 
    INSERT INTO pedidos (id_clientes, id_produto, num_ped, quantidade, data_ped)
    VALUES (p_id_clientes, p_id_produto, p_num_ped, p_quantidade, p_data_ped);
END//
DELIMITER ;

-- Copiando estrutura para procedure producao.p_inserir_produto
DELIMITER //
CREATE PROCEDURE `p_inserir_produto`(
    IN p_nome VARCHAR(255),
    IN p_estoque FLOAT,
    IN p_valor FLOAT,
    IN p_descricao LONGTEXT,
    IN p_data_fabricacao DATETIME,
    IN p_data_validadde DATETIME,
    IN p_cod_barras VARCHAR(100)
)
BEGIN 
    INSERT INTO produtos (nome, estoque, valor, descricao, data_fabricacao, data_validadde, cod_barras)
    VALUES (p_nome, p_estoque, p_valor, p_descricao, p_data_fabricacao, p_data_validadde, p_cod_barras);
END//
DELIMITER ;

-- Copiando estrutura para tabela producao.tmp_historico_produtos
CREATE TABLE IF NOT EXISTS `tmp_historico_produtos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_produto` int DEFAULT NULL,
  `cod_barra_antigo` varchar(255) DEFAULT NULL,
  `nome_antigo` varchar(255) DEFAULT NULL,
  `descricao_antiga` varchar(255) DEFAULT NULL,
  `estoque_antigo` float DEFAULT NULL,
  `valor_antigo` float DEFAULT NULL,
  `data_fabricacao_antiga` datetime DEFAULT NULL,
  `data_validade_antiga` datetime DEFAULT NULL,
  `data_alteracao` datetime DEFAULT CURRENT_TIMESTAMP,
  `usuario_alteracao` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela producao.tmp_historico_produtos: ~0 rows (aproximadamente)

-- Copiando estrutura para view producao.view_clientes_com_mais_compras
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `view_clientes_com_mais_compras` (
	`nome` VARCHAR(1) NOT NULL COLLATE 'utf8mb4_0900_ai_ci',
	`total_compras` BIGINT NOT NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view producao.view_pedidos_com_valor_maior_que_media
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `view_pedidos_com_valor_maior_que_media` (
	`pedido` VARCHAR(1) NULL COLLATE 'utf8mb4_0900_ai_ci',
	`valor_total` DOUBLE NOT NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view producao.view_produtos_mais_vendidos_no_ultimo_mes
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `view_produtos_mais_vendidos_no_ultimo_mes` (
	`produto` VARCHAR(1) NOT NULL COLLATE 'utf8mb4_0900_ai_ci',
	`total_vendas` BIGINT NOT NULL,
	`DATA_PED` VARCHAR(1) NULL COLLATE 'utf8mb4_general_ci'
) ENGINE=MyISAM;

-- Copiando estrutura para view producao.view_valor_total_vendas_por_clientes
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `view_valor_total_vendas_por_clientes` (
	`cliente` VARCHAR(1) NOT NULL COLLATE 'utf8mb4_0900_ai_ci',
	`valor_total` DOUBLE NULL
) ENGINE=MyISAM;

-- Copiando estrutura para trigger producao.tgr_produtos_alteracao
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `tgr_produtos_alteracao` BEFORE UPDATE ON `produtos` FOR EACH ROW BEGIN
    INSERT INTO temp_historico_produtos(
        id_produto,
        cod_barra_antigo,
        nome_antigo,
        descricao_antiga,
        estoque_antigo,
        valor_antigo,
        data_fabricacao_antiga,
        data_validade_antiga,
        usuario_alteracao
    )
    VALUES(
        OLD.id,
        OLD.cod_barras,
        OLD.nome,
        OLD.descricao,
        OLD.estoque,
        OLD.valor,
        OLD.data_fabricacao,
        OLD.data_validadde,
        USER()
    );
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Copiando estrutura para trigger producao.trg_atualizada_estoque_compras
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO';
DELIMITER //
CREATE TRIGGER `trg_atualizada_estoque_compras` AFTER INSERT ON `compra` FOR EACH ROW BEGIN 
	UPDATE produtos
	SET estoque = estoque - NEW.quantidade
	WHERE id = NEW.id_produto;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Copiando estrutura para trigger producao.trg_atualizada_estoque_pedidos
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO';
DELIMITER //
CREATE TRIGGER `trg_atualizada_estoque_pedidos` AFTER INSERT ON `pedidos` FOR EACH ROW BEGIN 
	UPDATE produtos
	SET estoque = estoque - NEW.quantidade
	WHERE id = NEW.id_produto;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `view_clientes_com_mais_compras`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `view_clientes_com_mais_compras` AS select `c`.`nome` AS `nome`,count(`p`.`id`) AS `total_compras` from (`pedidos` `p` join `clientes` `c` on((`c`.`id` = `p`.`id`))) group by `c`.`id` order by `total_compras` desc;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `view_pedidos_com_valor_maior_que_media`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `view_pedidos_com_valor_maior_que_media` AS select `p`.`num_ped` AS `pedido`,round((`p`.`quantidade` * `pro`.`valor`),2) AS `valor_total` from (`pedidos` `p` join `produtos` `pro` on((`p`.`id_produto` = `pro`.`id`))) where ((`p`.`quantidade` * `pro`.`valor`) > (select avg((`p2`.`quantidade` * `pro2`.`valor`)) AS `media` from (`pedidos` `p2` join `produtos` `pro2` on((`p2`.`id_produto` = `pro2`.`id`))))) order by round((`p`.`quantidade` * `pro`.`valor`),2) desc;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `view_produtos_mais_vendidos_no_ultimo_mes`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `view_produtos_mais_vendidos_no_ultimo_mes` AS select `pro`.`nome` AS `produto`,count(`p`.`id`) AS `total_vendas`,date_format(`p`.`data_ped`,'%m/%y') AS `DATA_PED` from (`pedidos` `p` join `produtos` `pro` on((`p`.`id_produto` = `pro`.`id`))) where ((year(`p`.`data_ped`) = year(now())) and (month(`p`.`data_ped`) = (month(now()) - 1))) group by `pro`.`id`,`pro`.`nome`,date_format(`p`.`data_ped`,'%m/%y') order by count(`p`.`id`) desc;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `view_valor_total_vendas_por_clientes`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `view_valor_total_vendas_por_clientes` AS select `cli`.`nome` AS `cliente`,round(sum((`p`.`quantidade` * `pro`.`valor`)),2) AS `valor_total` from ((`pedidos` `p` join `clientes` `cli` on((`p`.`id_clientes` = `cli`.`id`))) join `produtos` `pro` on((`p`.`id_produto` = `pro`.`id`))) group by `cli`.`id`,`cli`.`nome` order by `valor_total` desc;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
