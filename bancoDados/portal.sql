-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 02-Dez-2022 às 23:23
-- Versão do servidor: 10.5.13-MariaDB-cll-lve
-- versão do PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `u314742120_ARC`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `area`
--

CREATE TABLE `area` (
  `ID` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `area`
--

INSERT INTO `area` (`ID`) VALUES
('A'),
('B'),
('C'),
('Ciencias'),
('Letras');

-- --------------------------------------------------------

--
-- Estrutura da tabela `classe`
--

CREATE TABLE `classe` (
  `ID` tinyint(4) NOT NULL,
  `Nome` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `classe`
--

INSERT INTO `classe` (`ID`, `Nome`) VALUES
(1, 'MATERNAL'),
(2, ' INFANTIL I'),
(3, 'INFANTIL II '),
(4, '1º ANO'),
(5, '2º ANO '),
(6, '3º ANO '),
(7, '5º ANO '),
(8, 'Oitava'),
(9, 'Nona'),
(10, 'Decima'),
(11, 'Decima primeira'),
(12, 'Decima segunda');

-- --------------------------------------------------------

--
-- Estrutura da tabela `conf_inscricao`
--

CREATE TABLE `conf_inscricao` (
  `ID` int(11) NOT NULL,
  `BI` char(13) NOT NULL,
  `Recibo` bigint(20) NOT NULL,
  `Classe` int(2) NOT NULL,
  `Escola_Saida` varchar(50) NOT NULL,
  `Ano_Saida` year(4) NOT NULL,
  `Classe_frequentada` int(2) NOT NULL,
  `Turma_frequentada` varchar(4) NOT NULL,
  `Data_Confirmacao` date NOT NULL,
  `Id_Funcionario` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `detalhes_disciplina`
--

CREATE TABLE `detalhes_disciplina` (
  `id_Relacao` bigint(20) NOT NULL,
  `id_Disciplina` varchar(20) NOT NULL,
  `id_Professor` varchar(13) NOT NULL,
  `idTurma` int(11) NOT NULL,
  `ano` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

 

 

-- --------------------------------------------------------

--
-- Estrutura da tabela `disciplina`
--

CREATE TABLE `disciplina` (
  `Nome` varchar(30) NOT NULL,
  `Creditos` tinyint(4) NOT NULL,
  `ID_Area` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `disciplina`
--

INSERT INTO `disciplina` (`Nome`, `Creditos`, `ID_Area`) VALUES
('Alimentacao_Higiene', 0, 'Ciencias'),
('Artes', 0, 'Ciencias'),
('Campos Experiencia', 0, 'Ciencias'),
('Ciências', 0, 'Ciencias'),
('Educação Física', 0, 'Ciencias'),
('Ensino Religioso', 0, 'Letras'),
('Geografia', 0, 'Letras'),
('História', 0, 'Letras'),
('Inglês', 0, 'Letras'),
('Libras', 0, 'Ciencias'),
('Matemática', 0, 'Ciencias'),
('Português', 0, 'Letras'),
('Psicomotricidade', 0, 'Letras'),
('Recreação', 0, 'Letras');

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionario`
--

CREATE TABLE `funcionario` (
  `ID` int(11) NOT NULL,
  `Nome` varchar(25) NOT NULL,
  `Apelido` varchar(25) NOT NULL,
  `BI` varchar(13) NOT NULL,
  `Naturalidade` varchar(20) NOT NULL,
  `Pais` varchar(20) NOT NULL,
  `DOB` date NOT NULL,
  `Email` varchar(40) NOT NULL,
  `Contacto` bigint(11) NOT NULL,
  `Sexo` varchar(15) NOT NULL,
  `Estado` varchar(9) NOT NULL,
  `Bairro` varchar(20) NOT NULL,
  `dataCadastro` date NOT NULL,
  `dataMod` date NOT NULL,
  `idUsuario` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `funcionario`
--

INSERT INTO `funcionario` (`ID`, `Nome`, `Apelido`, `BI`, `Naturalidade`, `Pais`, `DOB`, `Email`, `Contacto`, `Sexo`, `Estado`, `Bairro`, `dataCadastro`, `dataMod`, `idUsuario`) VALUES
(1, 'TESTE', '', '', '', '', '0000-00-00', '', 0, '', '', '', '0000-00-00', '0000-00-00', '01577791304');

-- --------------------------------------------------------

--
-- Estrutura da tabela `inscricao`
--

CREATE TABLE `inscricao` (
  `nome` varchar(25) CHARACTER SET utf8 NOT NULL,
  `apelido` varchar(25) CHARACTER SET utf8 NOT NULL,
  `email` varchar(250) CHARACTER SET utf8 NOT NULL,
  `contacto` varchar(9) CHARACTER SET utf8 NOT NULL,
  `dataNascimento` date NOT NULL,
  `numeroBI` varchar(13) CHARACTER SET utf8 NOT NULL,
  `sexo` varchar(9) CHARACTER SET utf8 NOT NULL,
  `estadoCivil` varchar(8) CHARACTER SET utf8 NOT NULL,
  `pais` varchar(255) CHARACTER SET utf8 NOT NULL,
  `naturalidade` varchar(50) CHARACTER SET utf8 NOT NULL,
  `localResidencia` varchar(100) CHARACTER SET utf8 NOT NULL,
  `idNivelAcesso` int(1) NOT NULL,
  `classe` int(2) NOT NULL,
  `pai` varchar(50) CHARACTER SET utf8 NOT NULL,
  `mae` varchar(50) CHARACTER SET utf8 NOT NULL,
  `contactoEncarregado` int(9) NOT NULL,
  `Escola_Saida` varchar(50) NOT NULL,
  `Ano_Saida` year(4) NOT NULL,
  `Classe_frequentada` int(2) NOT NULL,
  `Turma_frequentada` varchar(4) NOT NULL,
  `dataCadastro` date NOT NULL,
  `dataModificacao` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `inscricao`
--

INSERT INTO `inscricao` (`nome`, `apelido`, `email`, `contacto`, `dataNascimento`, `numeroBI`, `sexo`, `estadoCivil`, `pais`, `naturalidade`, `localResidencia`, `idNivelAcesso`, `classe`, `pai`, `mae`, `contactoEncarregado`, `Escola_Saida`, `Ano_Saida`, `Classe_frequentada`, `Turma_frequentada`, `dataCadastro`, `dataModificacao`) VALUES
('Marcos Aurélio', 'António', 'M.Aurelio@gmail.com', '847568567', '2000-11-23', '070102194541K', 'Masculino', 'Solteiro', 'Moçambique', 'Beira', 'Beira', 4, 10, 'Aurélio António', 'Francisca Isaquiel', 846555554, 'Escola Secundária da Manga', 2017, 9, 'A', '2018-09-12', '0000-00-00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `mensagens`
--

CREATE TABLE `mensagens` (
  `id` int(11) NOT NULL,
  `assunto` varchar(40) COLLATE utf8_bin NOT NULL,
  `mensagem` varchar(1000) COLLATE utf8_bin NOT NULL,
  `data` datetime NOT NULL,
  `idUsuario` varchar(50) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estrutura da tabela `mensalidades`
--

CREATE TABLE `mensalidades` (
  `ID` int(11) NOT NULL,
  `idEstudante` varchar(40) NOT NULL,
  `Fev` char(1) DEFAULT NULL,
  `Mar` char(1) DEFAULT NULL,
  `Abr` char(1) DEFAULT NULL,
  `Mai` char(1) DEFAULT NULL,
  `Jun` char(1) DEFAULT NULL,
  `Jul` char(1) DEFAULT NULL,
  `Ago` char(1) DEFAULT NULL,
  `Sete` char(1) DEFAULT NULL,
  `Outu` char(1) DEFAULT NULL,
  `Nov` char(1) DEFAULT NULL,
  `Ano` year(4) NOT NULL,
  `idUsuario` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `mensalidades`
--

INSERT INTO `mensalidades` (`ID`, `idEstudante`, `Fev`, `Mar`, `Abr`, `Mai`, `Jun`, `Jul`, `Ago`, `Sete`, `Outu`, `Nov`, `Ano`, `idUsuario`) VALUES
(1, '01577791304', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2018, '01577791304'),
(2, 'f@gmail.com', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2018, '81326257'),
(3, '09952853354', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2018, '43768660320');

-- --------------------------------------------------------

--
-- Estrutura da tabela `professor`
--

CREATE TABLE `professor` (
  `ID` int(11) NOT NULL,
  `Nome` varchar(25) NOT NULL,
  `Apelido` varchar(25) NOT NULL,
  `BI` varchar(13) NOT NULL,
  `Naturalidade` varchar(20) NOT NULL,
  `Pais` varchar(20) NOT NULL,
  `DOB` date NOT NULL,
  `Email` varchar(40) NOT NULL,
  `Contacto` bigint(11) NOT NULL,
  `Sexo` varchar(15) NOT NULL,
  `Estado` varchar(9) NOT NULL,
  `Bairro` varchar(20) NOT NULL,
  `dataCadastro` date NOT NULL,
  `dataMod` date NOT NULL,
  `idUsuario` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `professor`
--

INSERT INTO `professor` (`ID`, `Nome`, `Apelido`, `BI`, `Naturalidade`, `Pais`, `DOB`, `Email`, `Contacto`, `Sexo`, `Estado`, `Bairro`, `dataCadastro`, `dataMod`, `idUsuario`) VALUES
(1, 'PERINA AMORIM ', 'LIMA', '', '', '', '0000-00-00', '', 0, '', '', '', '0000-00-00', '0000-00-00', '75379619304'),
(2, 'MARGARETH CAMPOS', ' PINHEIRO', '0', '0', '0', '0000-00-00', '0', 1, '0', '0', '0', '0000-00-00', '0000-00-00', '60036148385'),
(3, 'DEILSA GOMES ', 'LOPES', '01', '01', '01', '0000-00-00', '01', 111, '01', '01', '01', '0000-00-00', '0000-00-00', '97949744391'),
(4, 'LERIANE BÀRBARA PEREIRA', 'VELOSO', '0123', '0123', '0123', '0000-00-00', '0123', 11123, '0123', '0123', '0123', '0000-00-00', '0000-00-00', '01143763360'),
(5, 'MOISILENE COSTA ', 'MARTINS', '012', '012', '012', '0000-00-00', '012', 1112, '012', '012', '012', '0000-00-00', '0000-00-00', '08309696329'),
(6, 'PHILLIP LENÁRD ', 'CORRÊA', '012S', '012S', '012S', '0000-00-00', '012S', 11121, '012S', '012Q', '012Q', '0000-00-00', '0000-00-00', '61117827380'),
(7, 'RÔNNYA DURANS', 'PEREIRA', '012SA', '012SA', '012SA', '0000-00-00', '012SA', 111211, '012SA', '012QA', '012QA', '0000-00-00', '0000-00-00', '48295272349'),
(8, 'UÊNIA MARTINS', 'DINIZ', '012SA1', '012SA1', '012SA1', '0000-00-00', '012SA1', 1112111, '012SA1', '012QA11', '012QA', '0000-00-00', '0000-00-00', '01381787398'),
(9, 'DARLEIDE AMORIM ', 'LOPES', '012SA11', '012SA11', '012SA11', '0000-00-00', '012SA11', 11121111, '012SA11', '012QA111', '012QA1', '0000-00-00', '0000-00-00', '01032788348'),
(10, 'EDNA JARA ABREU ', 'SANTOS', '012SA111', '012SA111', '012SA111', '0000-00-00', '012SA111', 111211111, '012SA111', '012QA1111', '012QA11', '0000-00-00', '0000-00-00', '05118669332');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tabela_conceito`
--

CREATE TABLE `tabela_conceito` (
  `3` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tabela_estudante`
--

CREATE TABLE `tabela_estudante` (
  `idEstudante` int(11) NOT NULL,
  `idTurma` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `apelido` varchar(25) NOT NULL,
  `email` varchar(250) NOT NULL,
  `contacto` varchar(9) NOT NULL,
  `dataNascimento` date NOT NULL,
  `numeroBI` varchar(13) NOT NULL,
  `sexo` varchar(9) NOT NULL,
  `estadoCivil` varchar(8) NOT NULL,
  `pais` varchar(255) NOT NULL,
  `naturalidade` varchar(50) NOT NULL,
  `localResidencia` varchar(100) NOT NULL,
  `idNivelAcesso` int(11) NOT NULL,
  `pai` varchar(50) NOT NULL,
  `mae` varchar(50) NOT NULL,
  `contactoEncarregado` int(9) NOT NULL,
  `dataCadastro` date NOT NULL,
  `dataModificacao` date NOT NULL,
  `idUsuario` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tabela_estudante`
--

INSERT INTO `tabela_estudante` (`idEstudante`, `idTurma`, `nome`, `apelido`, `email`, `contacto`, `dataNascimento`, `numeroBI`, `sexo`, `estadoCivil`, `pais`, `naturalidade`, `localResidencia`, `idNivelAcesso`, `pai`, `mae`, `contactoEncarregado`, `dataCadastro`, `dataModificacao`, `idUsuario`) VALUES
(1, 1, 'ALINNE VITÓRIA PEREIRA CAMPOS', '', 'FSFSFDoogi-TtdgDFD8Fmail.com', 'IIIdDDDao', '2022-10-10', 'OIiDDidDao', 'IIIidDDaD', 'IIidDDaD', '', 'IIidDao', 'IIidDDaDo', 4, 'OIDDidDao', 'IIDiiDdDao', 11938920, '2022-10-05', '2022-09-10', '10865617325'),
(2, 1, 'EMILLY SOPHIA GARCIA SANTOS', 'SOPHIA', 'colegioaldarc@gmail.com', '989844643', '0000-00-00', '09952853354', 'Femenino', 'Casado/a', 'Moçambique', 'PERI-MIRIM-MA', 'RUA MARIA JOSÉ GOMES - JUÇARAL', 4, '', '', 0, '2022-10-10', '2022-11-01', '09952853354'),
(3, 1, 'GIOVANA FURTADO CASTRO', '', '1gmail.com', 'x', '2022-10-10', 'x', 'x', 'x', 'x', 'x', 'x', 4, 'x', 'x', 0, '2022-10-05', '2022-09-10', '10196642310'),
(4, 1, 'HENRY FURTADO GURGEL', '', '2gmail.com', 'a', '2022-10-10', 'a', 'a', 'a', 'a', 'a', 'a', 4, 'a', 'a', 0, '2022-10-05', '2022-09-10', '10004295390'),
(5, 1, 'JOÃO PEREIRA NUNES NETO', '', '3gmail.com', 'b', '2022-10-10', 'ab', 'ab', 'ab', 'ab', 'ab', 'ab', 4, 'ab', 'ab', 0, '2022-10-05', '2022-09-10', '10724080317'),
(6, 1, 'LOHANA NUNES DOS SANTOS', '', '4gmail.com', '1', '2022-10-10', 'abc', 'abc', 'abc', 'abc', 'abc', 'abc', 4, 'abc', 'abc', 0, '2022-10-05', '2022-09-10', '10645092312'),
(7, 1, 'LUGO MIGUEL PEREIRA QUADROS', '', '5gmail.com', '2', '2022-10-10', 'b', 'b', 'b', 'b', 'b', 'b', 4, 'b', 'b', 0, '2022-10-05', '2022-09-10', '09983865378'),
(8, 1, 'MARIA EDUARDA BARROS RIBEIRO', '', '6gmail.com', '3', '2022-10-10', 'bc', 'bc', 'bc', 'bc', 'bc', 'bc', 4, 'bc', 'bc', 1, '2022-10-05', '2022-09-10', '10814255396'),
(9, 1, 'MARIA EVA GOMES FRANÇA', '', '7gmail.com', '4', '2022-10-10', 'bcd', 'bcd', 'bcd', 'bcd', 'bcd', 'bcd', 4, 'bcd', 'bcd', 111, '2022-10-05', '2022-09-10', '10640348378'),
(10, 1, 'MARIA STELLA SOARES COSTA', '', '78mail.com', '5', '2022-10-10', 'c', 'c', 'c', 'c', 'c', 'c', 4, 'c', 'c', 5, '2022-10-05', '2022-09-10', '10798529300');
 

-- --------------------------------------------------------

--
-- Estrutura da tabela `tabela_exame`
--

CREATE TABLE `tabela_exame` (
  `idexame` int(11) NOT NULL,
  `id_estudante` int(11) NOT NULL,
  `id_desciplina` int(11) NOT NULL,
  `idnotas` int(11) NOT NULL,
  `normal` float NOT NULL,
  `recorrencia` float NOT NULL,
  `DataCadastro` date NOT NULL,
  `dataModificacao` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tabela_financas`
--

CREATE TABLE `tabela_financas` (
  `idfinanca` int(11) NOT NULL,
  `idEstudante` int(11) NOT NULL,
  `primeira` float NOT NULL,
  `segunda` float NOT NULL,
  `total` float NOT NULL,
  `dataCadastro` int(11) NOT NULL,
  `dataModificacao` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tabela_nivel_acesso`
--

CREATE TABLE `tabela_nivel_acesso` (
  `idNivelAcesso` int(11) NOT NULL,
  `nomeNivelAcesso` varchar(50) NOT NULL,
  `DataCadastro` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tabela_nivel_acesso`
--

INSERT INTO `tabela_nivel_acesso` (`idNivelAcesso`, `nomeNivelAcesso`, `DataCadastro`) VALUES
(1, 'Administrador  full  ', '2017-08-24'),
(2, 'Area Administrativa ', '2017-08-24'),
(3, 'Professor', '2017-08-24'),
(4, 'Estudante', '2017-08-24'),
(5, 'Chefe da Secretaria', '2018-03-06');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tabela_notas`
--

CREATE TABLE `tabela_notas` (
  `idNota` int(11) NOT NULL,
  `idEstudante` varchar(20) NOT NULL,
  `id_Relacao_Disciplina` int(11) NOT NULL,
  `Teste1` varchar(2) NOT NULL,
  `Teste2` varchar(2) NOT NULL,
  `Trabalho1` varchar(2) NOT NULL,
  `Trabalho2` varchar(2) NOT NULL,
  `TP` varchar(2) NOT NULL,
  `Bimestre` varchar(15) NOT NULL,
  `DataCadastro` date NOT NULL,
  `DataModificacao` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

 

-- --------------------------------------------------------

--
-- Estrutura da tabela `tabela_turma`
--

CREATE TABLE `tabela_turma` (
  `idTurma` int(11) NOT NULL,
  `nomeTurma` varchar(255) NOT NULL,
  `DataCadastro` date NOT NULL,
  `dataModificacao` date NOT NULL,
  `estado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tabela_turma`
--

INSERT INTO `tabela_turma` (`idTurma`, `nomeTurma`, `DataCadastro`, `dataModificacao`, `estado`) VALUES
(1, 'MATERNAL - MATUTINO', '2022-09-10', '2022-09-10', 0),
(2, 'INFANTIL 1 - MATUTINO', '2022-09-07', '2022-09-07', 0),
(3, 'INFANTIL 2 - VESPERTINO', '2022-09-07', '2022-09-07', 0),
(4, '1º ANO - MATUTINO', '2022-09-07', '2022-09-07', 0),
(5, '2º ANO - MATUTINO', '2022-09-07', '2022-09-07', 0),
(6, '3º ANO - VESPERTINO', '2022-09-07', '2022-09-07', 0),
(7, '5º ANO - VESPERTINO', '2022-09-07', '2022-09-07', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tabela_usuarios`
--

CREATE TABLE `tabela_usuarios` (
  `idUsuario` varchar(50) NOT NULL,
  `nome` varchar(200) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `estado` varchar(10) NOT NULL,
  `idNivelAcesso` int(11) NOT NULL,
  `dataCadastro` date NOT NULL,
  `dataModificacao` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tabela_usuarios`
--

INSERT INTO `tabela_usuarios` (`idUsuario`, `nome`, `senha`, `estado`, `idNivelAcesso`, `dataCadastro`, `dataModificacao`) VALUES
('01032788348', 'DARLEIDE AMORIM LOPES', '827ccb0eea8a706c4c34a16891f84e7b', 'Activo', 3, '2018-09-12', '2022-12-02'),
('01143763360', 'LERIANE BÁRBARA PEREIRA VELOSO', '827ccb0eea8a706c4c34a16891f84e7b', 'Activo', 3, '2018-09-12', '2022-12-02'),
('01381787398', 'UÊNIA MARTINS DINIZ', '827ccb0eea8a706c4c34a16891f84e7b', 'Activo', 3, '2018-09-12', '2022-12-02'),
('01577791304', 'ELINALDO PEREIRA VIEGAS', '827ccb0eea8a706c4c34a16891f84e7b', 'Activo', 1, '2018-09-12', '2022-12-02'),
('02658101325', 'TALIANE DE JESUS CORRÊA GONÇALVES', '827ccb0eea8a706c4c34a16891f84e7b', 'Activo', 1, '2018-09-12', '2022-12-02'),
('05118669332', 'EDNA JARA ABREU SANTOS', '827ccb0eea8a706c4c34a16891f84e7b', 'Activo', 3, '2018-09-12', '2022-12-02'),
('06285971340', 'GABRYEL BOTÃO CAMPELO LEITE', '827ccb0eea8a706c4c34a16891f84e7b', 'Activo', 4, '2018-09-12', '2022-12-02'),
('07412682300', 'CAROLINA ROCHA RODRIGUES', '827ccb0eea8a706c4c34a16891f84e7b', 'Activo', 4, '0000-00-00', '2022-12-02'),
('07609751324 ', 'LARA SOPHIA SILVA FIGUEIREDO SANTOS', '827ccb0eea8a706c4c34a16891f84e7b', 'Activo', 4, '2018-09-12', '2022-12-02'),
('08028658369', 'LÍVIA CORREA AMORIM PEREIRA', '827ccb0eea8a706c4c34a16891f84e7b', 'Activo', 4, '2018-09-12', '2022-12-02'),
 

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`ID`);

--
-- Índices para tabela `classe`
--
ALTER TABLE `classe`
  ADD PRIMARY KEY (`ID`);

--
-- Índices para tabela `conf_inscricao`
--
ALTER TABLE `conf_inscricao`
  ADD PRIMARY KEY (`ID`,`BI`),
  ADD UNIQUE KEY `BI` (`BI`),
  ADD UNIQUE KEY `Recibo` (`Recibo`);

--
-- Índices para tabela `detalhes_disciplina`
--
ALTER TABLE `detalhes_disciplina`
  ADD PRIMARY KEY (`id_Relacao`);

--
-- Índices para tabela `disciplina`
--
ALTER TABLE `disciplina`
  ADD PRIMARY KEY (`Nome`);

--
-- Índices para tabela `funcionario`
--
ALTER TABLE `funcionario`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Email` (`Email`),
  ADD UNIQUE KEY `Contacto` (`Contacto`),
  ADD UNIQUE KEY `idUsuario` (`idUsuario`);

--
-- Índices para tabela `inscricao`
--
ALTER TABLE `inscricao`
  ADD PRIMARY KEY (`numeroBI`),
  ADD UNIQUE KEY `contacto` (`contacto`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Índices para tabela `mensagens`
--
ALTER TABLE `mensagens`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `mensalidades`
--
ALTER TABLE `mensalidades`
  ADD PRIMARY KEY (`ID`);

--
-- Índices para tabela `professor`
--
ALTER TABLE `professor`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Email` (`Email`),
  ADD UNIQUE KEY `Contacto` (`Contacto`),
  ADD UNIQUE KEY `idUsuario` (`idUsuario`),
  ADD UNIQUE KEY `BI` (`BI`);

--
-- Índices para tabela `tabela_estudante`
--
ALTER TABLE `tabela_estudante`
  ADD PRIMARY KEY (`idEstudante`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `contacto` (`contacto`),
  ADD UNIQUE KEY `numeroBI` (`numeroBI`),
  ADD UNIQUE KEY `idUsuario` (`idUsuario`),
  ADD KEY `idTurmafk` (`idTurma`);

--
-- Índices para tabela `tabela_exame`
--
ALTER TABLE `tabela_exame`
  ADD PRIMARY KEY (`idexame`),
  ADD KEY `idCategoriafk` (`id_estudante`);

--
-- Índices para tabela `tabela_financas`
--
ALTER TABLE `tabela_financas`
  ADD PRIMARY KEY (`idfinanca`),
  ADD KEY `idEstudantefk` (`idEstudante`);

--
-- Índices para tabela `tabela_nivel_acesso`
--
ALTER TABLE `tabela_nivel_acesso`
  ADD PRIMARY KEY (`idNivelAcesso`);

--
-- Índices para tabela `tabela_notas`
--
ALTER TABLE `tabela_notas`
  ADD PRIMARY KEY (`idNota`);

--
-- Índices para tabela `tabela_turma`
--
ALTER TABLE `tabela_turma`
  ADD PRIMARY KEY (`idTurma`);

--
-- Índices para tabela `tabela_usuarios`
--
ALTER TABLE `tabela_usuarios`
  ADD PRIMARY KEY (`idUsuario`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `conf_inscricao`
--
ALTER TABLE `conf_inscricao`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `detalhes_disciplina`
--
ALTER TABLE `detalhes_disciplina`
  MODIFY `id_Relacao` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=199;

--
-- AUTO_INCREMENT de tabela `funcionario`
--
ALTER TABLE `funcionario`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `mensagens`
--
ALTER TABLE `mensagens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `mensalidades`
--
ALTER TABLE `mensalidades`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `professor`
--
ALTER TABLE `professor`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `tabela_estudante`
--
ALTER TABLE `tabela_estudante`
  MODIFY `idEstudante` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT de tabela `tabela_exame`
--
ALTER TABLE `tabela_exame`
  MODIFY `idexame` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tabela_financas`
--
ALTER TABLE `tabela_financas`
  MODIFY `idfinanca` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tabela_nivel_acesso`
--
ALTER TABLE `tabela_nivel_acesso`
  MODIFY `idNivelAcesso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `tabela_notas`
--
ALTER TABLE `tabela_notas`
  MODIFY `idNota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3486;

--
-- AUTO_INCREMENT de tabela `tabela_turma`
--
ALTER TABLE `tabela_turma`
  MODIFY `idTurma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `conf_inscricao`
--
ALTER TABLE `conf_inscricao`
  ADD CONSTRAINT `conf_inscricao_ibfk_1` FOREIGN KEY (`BI`) REFERENCES `tabela_estudante` (`numeroBI`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `funcionario`
--
ALTER TABLE `funcionario`
  ADD CONSTRAINT `funcionario_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `tabela_usuarios` (`idUsuario`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `professor`
--
ALTER TABLE `professor`
  ADD CONSTRAINT `professor_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `tabela_usuarios` (`idUsuario`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `tabela_estudante`
--
ALTER TABLE `tabela_estudante`
  ADD CONSTRAINT `idTurmafk` FOREIGN KEY (`idTurma`) REFERENCES `tabela_turma` (`idTurma`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `tabela_estudante_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `tabela_usuarios` (`idUsuario`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `tabela_financas`
--
ALTER TABLE `tabela_financas`
  ADD CONSTRAINT `idEstudantefk` FOREIGN KEY (`idEstudante`) REFERENCES `tabela_estudante` (`idEstudante`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
