-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 07-Fev-2020 às 03:19
-- Versão do servidor: 10.1.8-MariaDB
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bd_nuinte`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `anexo`
--

CREATE TABLE `anexo` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `caminho` varchar(255) NOT NULL,
  `id_sarque` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `anexo`
--

INSERT INTO `anexo` (`id`, `nome`, `caminho`, `id_sarque`) VALUES
(1, 'sarc.pdf', 'uploads/17749308445e376a33ae652.pdf', 27),
(2, 'IMG-20200202-WA0101.jpg', 'uploads/11828477515e37854a81d0e.jpg', 18),
(3, 'lei-seca-logo.jpg', 'uploads/9989844385e37d80860281.jpg', 26),
(4, 'Logo Governo do Rio.jpeg', 'uploads/1458874095e37d8c2ad8fe.jpeg', 17),
(5, 'lei-seca-logo.jpg', 'uploads/15433330845e37dabdb4643.jpg', 28),
(6, 'Logo Segurança Presente.jpeg', 'uploads/7133852575e37db79aa02a.jpeg', 29),
(7, 'Logo Segurança Presente.jpeg', 'uploads/10742207585e37de898b9ec.jpeg', 31),
(8, 'Logo Segurança Presente.jpeg', 'uploads/13578038785e37de89b0dce.jpeg', 31),
(9, '150_0239.pdf', 'uploads/2026241255e3805779f264.pdf', 32),
(10, '150_0239.pdf', 'uploads/20125717765e38065a9f094.pdf', 33),
(11, '150_0239.pdf', 'uploads/17583702505e381ad8db43d.pdf', 36),
(12, '150_0239.pdf', 'uploads/8942414285e38495dea7ef.pdf', 41),
(13, '150_0239.pdf', 'uploads/8437148395e384a7879e8f.pdf', 43),
(14, '150_0239.pdf', 'uploads/5738546045e386e4bac368.pdf', 57),
(15, 'AASS_0241.pdf', 'uploads/8163279825e386e4baf762.pdf', 57),
(16, '1767208826466.png', 'uploads/8008269185e38a579f36e9.png', 60),
(17, '019 JUSSARA ASSESSORIA _0078.pdf', 'uploads/8525248365e3954d04f0c9.pdf', 61),
(18, '150_0239.pdf', 'uploads/3443165025e3954d052692.pdf', 61),
(19, 'AASS_0241.pdf', 'uploads/3390552555e3954d055415.pdf', 61),
(20, 'bolpm.png', 'uploads/17885588905e39572d05592.png', 62),
(21, 'Screenshot_20200203-130124_Drive.jpg', 'uploads/2860998325e39640360973.jpg', 64),
(22, 'Chrysanthemum.jpg', 'uploads/3938114595e39da60ef559.jpg', 73);

-- --------------------------------------------------------

--
-- Estrutura da tabela `bairros`
--

CREATE TABLE `bairros` (
  `cod_bairro` int(11) NOT NULL,
  `nome` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `bairros`
--

INSERT INTO `bairros` (`cod_bairro`, `nome`) VALUES
(1, 'ATERRO');

-- --------------------------------------------------------

--
-- Estrutura da tabela `base`
--

CREATE TABLE `base` (
  `id` int(11) NOT NULL,
  `base` varchar(100) NOT NULL,
  `id_zona` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `base`
--

INSERT INTO `base` (`id`, `base`, `id_zona`) VALUES
(1, 'TIJUCA', 1),
(2, 'SALGUEIRO', 1),
(3, 'BARRA', 1),
(4, 'LEI SECA', 1),
(5, 'BARREIRA FISCAL ', 1),
(6, 'LARANJEIRAS', 2),
(7, 'NUINTE', 2),
(8, 'Palácio ', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `denuncia_dd`
--

CREATE TABLE `denuncia_dd` (
  `id_denuncia` int(11) NOT NULL,
  `cod_dd` int(12) NOT NULL,
  `denuncia` varchar(160) NOT NULL,
  `data` datetime NOT NULL,
  `resolucao` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `envolvidos`
--

CREATE TABLE `envolvidos` (
  `id_env` int(11) NOT NULL,
  `nome` varchar(25) NOT NULL,
  `id_ocorrencia` int(11) NOT NULL,
  `dtnasc_envol` date NOT NULL,
  `idade_envol` int(2) NOT NULL,
  `sexo_envol` char(10) NOT NULL,
  `tipode_envol` char(15) NOT NULL,
  `rg_envol` int(11) NOT NULL,
  `cfp_envol` int(11) NOT NULL,
  `raca_envol` char(10) NOT NULL,
  `mae_envol` char(30) NOT NULL,
  `pai_envol` char(30) NOT NULL,
  `estadocivil_envol` char(15) NOT NULL,
  `end_envol` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `material`
--

CREATE TABLE `material` (
  `id_mat` int(11) NOT NULL,
  `descricao` varchar(30) NOT NULL,
  `id_ocorencia` int(11) NOT NULL,
  `tipo` varchar(33) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ocorrencia`
--

CREATE TABLE `ocorrencia` (
  `id_ocorrencia` int(11) NOT NULL,
  `camera` int(11) NOT NULL,
  `origem` char(50) NOT NULL,
  `dt_fato` date NOT NULL,
  `hr_fato` time NOT NULL,
  `dtchegada_dp` date NOT NULL,
  `hrchegada_dp` time NOT NULL,
  `dtatend_dp` date NOT NULL,
  `hratend_dp` time NOT NULL,
  `dtsaida_dp` date NOT NULL,
  `hrsaida_dp` time NOT NULL,
  `local` varchar(500) NOT NULL,
  `ro_dp` char(20) NOT NULL,
  `tipo` char(50) NOT NULL,
  `historico` varchar(500) NOT NULL,
  `dtfechamento` date NOT NULL,
  `responsavel` char(20) NOT NULL,
  `id_envolido` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ruas`
--

CREATE TABLE `ruas` (
  `cod_rua` int(11) NOT NULL,
  `nome` varchar(40) NOT NULL,
  `cod_bairro` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `ruas`
--

INSERT INTO `ruas` (`cod_rua`, `nome`, `cod_bairro`) VALUES
(1, 'rua a', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `sarque`
--

CREATE TABLE `sarque` (
  `id` int(11) NOT NULL,
  `dtinicial` datetime NOT NULL,
  `nome` varchar(200) NOT NULL,
  `rg` varchar(20) NOT NULL,
  `rgpm` varchar(200) NOT NULL,
  `cpf` varchar(30) NOT NULL,
  `mae` varchar(200) NOT NULL,
  `pai` varchar(200) NOT NULL,
  `nascimento` date NOT NULL,
  `endereco` varchar(200) NOT NULL,
  `telefone` varchar(50) NOT NULL,
  `base` int(11) NOT NULL,
  `situacao` int(11) NOT NULL,
  `motivo` int(11) NOT NULL,
  `obs` varchar(255) NOT NULL,
  `resposta` varchar(255) NOT NULL,
  `resposta_usuario` text NOT NULL,
  `baseconsultas` varchar(15) NOT NULL,
  `telefonepm` varchar(50) NOT NULL,
  `dinamica` text NOT NULL,
  `delito` int(20) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_operador` int(11) NOT NULL,
  `placa` varchar(255) NOT NULL,
  `tipo` int(11) NOT NULL,
  `caminhofoto` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `dtfinal` datetime NOT NULL,
  `numero_ro` varchar(100) NOT NULL,
  `testemunha` varchar(100) NOT NULL,
  `rg_condutor` varchar(100) NOT NULL,
  `data_conduzir` date NOT NULL,
  `hora_conduzir` time NOT NULL,
  `dt_saidadp` date NOT NULL,
  `hr_saidadp` time NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tec_user_logins`
--

CREATE TABLE `tec_user_logins` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ip_address` varbinary(16) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `tipo_usuario` int(11) NOT NULL,
  `id_base` int(11) NOT NULL,
  `cpf` char(14) NOT NULL,
  `telefone` char(14) NOT NULL,
  `rg` char(14) NOT NULL,
  `funcional` char(14) NOT NULL,
  `ativo` varchar(1) NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`id`, `name`, `email`, `password`, `tipo_usuario`, `id_base`, `cpf`, `telefone`, `rg`, `funcional`, `ativo`) VALUES
(1, 'Anderson Dias', 'admin@admin.com', '81dc9bdb52d04dc20036dbd8313ed055', 1, 0, '', '', '', '', 'N'),
(3, 'Pedro', 'usuario@usuario.com', '202cb962ac59075b964b07152d234b70', 3, 0, '', '', '', '', 'N'),
(5, 'OPERADOR', 'operador@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 2, 0, '', '', '', '', 'N'),
(7, 'Eliakin Ceasr', 'etes@hotmail.com', 'e10adc3949ba59abbe56e057f20f883e', 2, 0, '', '', '', '', 'N'),
(10, 'Geislaine Vitoria Oliveira Rodrigues', 'teste@ddd.com', '81dc9bdb52d04dc20036dbd8313ed055', 1, 0, '', '', '', '', 'N'),
(11, 'asas', 'admin@admin.com', '81dc9bdb52d04dc20036dbd8313ed055', 1, 1, '', '', '', '', 'N'),
(12, 'SGT Mendes', 'mendesgica@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 2, 1, '', '', '', '', 'N'),
(13, 'Leo Possati', 'leopossati@yahoo.com.br', '81dc9bdb52d04dc20036dbd8313ed055', 2, 1, '', '', '', '', 'N'),
(14, 'SGT BM Alves', 'cjadeoliveira@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 2, 1, '', '', '', '', 'N'),
(15, 'Souza', 'cvsouza2403@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 2, 1, '', '', '', '', 'N'),
(16, 'Anderson Dias', 'andersondiasbrj@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 1, 1, '', '', '', '', 'N'),
(18, 'Barroso', 'aquinamidia@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 3, 1, '', '', '', '', 'N'),
(19, 'Diogo Costa', 'scosta97674@gmail.com', '202cb962ac59075b964b07152d234b70', 1, 1, '', '', '', '', 'N'),
(20, 'Segov Jonny', 'jonny_cftv@gmail.com', '202cb962ac59075b964b07152d234b70', 3, 1, '', '', '', '', 'N'),
(21, 'Palácio ', 'operador@gmail.com', '202cb962ac59075b964b07152d234b70', 2, 1, '', '', '', '', 'N'),
(22, 'Possati', 'leopossati@yahoo.com.br', '81dc9bdb52d04dc20036dbd8313ed055', 2, 1, '', '', '', '', 'N');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anexo`
--
ALTER TABLE `anexo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bairros`
--
ALTER TABLE `bairros`
  ADD PRIMARY KEY (`cod_bairro`);

--
-- Indexes for table `base`
--
ALTER TABLE `base`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `denuncia_dd`
--
ALTER TABLE `denuncia_dd`
  ADD PRIMARY KEY (`id_denuncia`);

--
-- Indexes for table `envolvidos`
--
ALTER TABLE `envolvidos`
  ADD PRIMARY KEY (`id_env`);

--
-- Indexes for table `material`
--
ALTER TABLE `material`
  ADD PRIMARY KEY (`id_mat`);

--
-- Indexes for table `ocorrencia`
--
ALTER TABLE `ocorrencia`
  ADD PRIMARY KEY (`id_ocorrencia`);

--
-- Indexes for table `ruas`
--
ALTER TABLE `ruas`
  ADD PRIMARY KEY (`cod_rua`);

--
-- Indexes for table `sarque`
--
ALTER TABLE `sarque`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tec_user_logins`
--
ALTER TABLE `tec_user_logins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `anexo`
--
ALTER TABLE `anexo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `bairros`
--
ALTER TABLE `bairros`
  MODIFY `cod_bairro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `base`
--
ALTER TABLE `base`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `denuncia_dd`
--
ALTER TABLE `denuncia_dd`
  MODIFY `id_denuncia` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `envolvidos`
--
ALTER TABLE `envolvidos`
  MODIFY `id_env` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `material`
--
ALTER TABLE `material`
  MODIFY `id_mat` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ocorrencia`
--
ALTER TABLE `ocorrencia`
  MODIFY `id_ocorrencia` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ruas`
--
ALTER TABLE `ruas`
  MODIFY `cod_rua` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `sarque`
--
ALTER TABLE `sarque`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tec_user_logins`
--
ALTER TABLE `tec_user_logins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
