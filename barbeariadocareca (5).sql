-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 06/12/2024 às 16:50
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `barbeariadocareca`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `abc`
--

CREATE TABLE `abc` (
  `id_usuario` int(11) NOT NULL,
  `nome` varchar(256) NOT NULL,
  `email` varchar(128) NOT NULL,
  `data_de_nascimento` date NOT NULL,
  `id_grupo` int(11) NOT NULL,
  `data_criacao` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `abc`
--

INSERT INTO `abc` (`id_usuario`, `nome`, `email`, `data_de_nascimento`, `id_grupo`, `data_criacao`) VALUES
(14, 'gaberil', 'gaberil@gmail.com', '0012-03-21', 1, '2024-12-06 10:23:42'),
(15, '12312', '312312@23', '0013-03-12', 2, '2024-12-06 10:23:43'),
(16, '12312', '312312@23', '0013-03-12', 2, '2024-12-06 10:23:45'),
(17, '12312', '312312@23', '0013-03-12', 2, '2024-12-06 10:23:45'),
(18, '12312', '312312@23', '0013-03-12', 2, '2024-12-06 10:23:46'),
(19, '12312', '312312@23', '0013-03-12', 2, '2024-12-06 10:23:46'),
(20, '12312', '312312@23', '0013-03-12', 2, '2024-12-06 10:23:47'),
(21, '12312', '312312@23', '0013-03-12', 3, '2024-12-06 10:23:47'),
(22, '12312', '312312@23', '0013-03-12', 2, '2024-12-06 10:23:49');

-- --------------------------------------------------------

--
-- Estrutura para tabela `agenda`
--

CREATE TABLE `agenda` (
  `id_agenda` int(11) NOT NULL,
  `dia_da_semana` int(11) NOT NULL,
  `horario_inicio` time NOT NULL,
  `id_usuario` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `agenda`
--

INSERT INTO `agenda` (`id_agenda`, `dia_da_semana`, `horario_inicio`, `id_usuario`) VALUES
(1, 0, '08:00:00', '2'),
(2, 0, '08:30:00', '2'),
(3, 0, '09:00:00', '2'),
(4, 0, '09:30:00', '2'),
(5, 0, '10:00:00', '2'),
(6, 0, '10:30:00', '2'),
(7, 0, '11:00:00', '2'),
(8, 0, '11:30:00', '2'),
(9, 0, '14:00:00', '2'),
(10, 0, '14:30:00', '2'),
(11, 0, '15:00:00', '2'),
(12, 0, '15:30:00', '2'),
(13, 0, '16:00:00', '2'),
(14, 0, '16:30:00', '2'),
(15, 0, '17:00:00', '2'),
(16, 0, '17:30:00', '2'),
(17, 0, '18:00:00', '2'),
(18, 0, '18:30:00', '2'),
(19, 0, '19:00:00', '2'),
(20, 0, '19:30:00', '2'),
(21, 0, '08:00:00', '2'),
(22, 0, '08:30:00', '2'),
(23, 0, '09:00:00', '2'),
(24, 0, '09:30:00', '2'),
(25, 0, '10:00:00', '2'),
(26, 0, '10:30:00', '2'),
(27, 0, '11:00:00', '2'),
(28, 0, '11:30:00', '2'),
(29, 0, '14:00:00', '2'),
(30, 0, '14:30:00', '2'),
(31, 0, '15:00:00', '2'),
(32, 0, '15:30:00', '2'),
(33, 0, '16:00:00', '2'),
(34, 0, '16:30:00', '2'),
(35, 0, '17:00:00', '2'),
(36, 0, '17:30:00', '2'),
(37, 0, '18:00:00', '2'),
(38, 0, '18:30:00', '2'),
(39, 0, '19:00:00', '2'),
(40, 0, '19:30:00', '2'),
(41, 1, '08:00:00', '5'),
(42, 1, '08:30:00', '5'),
(43, 1, '09:00:00', '5'),
(44, 1, '09:30:00', '5'),
(45, 1, '10:00:00', '5'),
(46, 1, '10:30:00', '5'),
(47, 1, '11:00:00', '5'),
(48, 1, '11:30:00', '5'),
(49, 1, '14:00:00', '5'),
(50, 1, '14:30:00', '5'),
(51, 1, '15:00:00', '5'),
(52, 1, '15:30:00', '5'),
(53, 1, '16:00:00', '5'),
(54, 1, '16:30:00', '5'),
(55, 1, '17:00:00', '5'),
(56, 1, '17:30:00', '5'),
(57, 1, '18:00:00', '5'),
(58, 1, '18:30:00', '5'),
(59, 1, '19:00:00', '5'),
(60, 1, '19:30:00', '5'),
(61, 0, '08:00:00', '2'),
(62, 0, '08:30:00', '2'),
(63, 0, '09:00:00', '2'),
(64, 0, '09:30:00', '2'),
(65, 0, '10:00:00', '2'),
(66, 0, '10:30:00', '2'),
(67, 0, '11:00:00', '2'),
(68, 0, '11:30:00', '2'),
(69, 0, '14:00:00', '2'),
(70, 0, '14:30:00', '2'),
(71, 0, '15:00:00', '2'),
(72, 0, '15:30:00', '2'),
(73, 0, '16:00:00', '2'),
(74, 0, '16:30:00', '2'),
(75, 0, '17:00:00', '2'),
(76, 0, '17:30:00', '2'),
(77, 0, '18:00:00', '2'),
(78, 0, '18:30:00', '2'),
(79, 0, '19:00:00', '2'),
(80, 0, '19:30:00', '2'),
(81, 0, '08:00:00', '16'),
(82, 0, '08:30:00', '16'),
(83, 0, '09:00:00', '16'),
(84, 0, '09:30:00', '16'),
(85, 0, '10:00:00', '16'),
(86, 0, '10:30:00', '16'),
(87, 0, '11:00:00', '16'),
(88, 0, '11:30:00', '16'),
(89, 0, '14:00:00', '16'),
(90, 0, '14:30:00', '16'),
(91, 0, '15:00:00', '16'),
(92, 0, '15:30:00', '16'),
(93, 0, '16:00:00', '16'),
(94, 0, '16:30:00', '16'),
(95, 0, '17:00:00', '16'),
(96, 0, '17:30:00', '16'),
(97, 0, '18:00:00', '16'),
(98, 0, '18:30:00', '16'),
(99, 0, '19:00:00', '16'),
(100, 0, '19:30:00', '16');

-- --------------------------------------------------------

--
-- Estrutura para tabela `agendamentos`
--

CREATE TABLE `agendamentos` (
  `id_agendamento` int(11) NOT NULL,
  `servico` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_agenda` int(11) NOT NULL,
  `data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `agendamentos`
--

INSERT INTO `agendamentos` (`id_agendamento`, `servico`, `id_usuario`, `id_agenda`, `data`) VALUES
(1, 3, 16, 81, '2024-12-08');

-- --------------------------------------------------------

--
-- Estrutura para tabela `dados_bancarios`
--

CREATE TABLE `dados_bancarios` (
  `id_dados` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `nome_banco` varchar(128) NOT NULL,
  `numero_conta` varchar(20) NOT NULL,
  `numero_agencia` varchar(20) NOT NULL,
  `chave_pix` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `grupos`
--

CREATE TABLE `grupos` (
  `id_grupo` int(11) NOT NULL,
  `nome_grupo` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `serviços`
--

CREATE TABLE `serviços` (
  `id_serviço` int(11) NOT NULL,
  `nome_serviço` varchar(128) NOT NULL,
  `valor_serviço` decimal(10,0) NOT NULL,
  `id_tipo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tipo_de_serviço`
--

CREATE TABLE `tipo_de_serviço` (
  `id_tipo` int(11) NOT NULL,
  `tipo_serviço` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `nome_usuario` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `id_grupo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `abc`
--
ALTER TABLE `abc`
  ADD PRIMARY KEY (`id_usuario`);

--
-- Índices de tabela `agenda`
--
ALTER TABLE `agenda`
  ADD PRIMARY KEY (`id_agenda`);

--
-- Índices de tabela `agendamentos`
--
ALTER TABLE `agendamentos`
  ADD PRIMARY KEY (`id_agendamento`);

--
-- Índices de tabela `dados_bancarios`
--
ALTER TABLE `dados_bancarios`
  ADD PRIMARY KEY (`id_dados`);

--
-- Índices de tabela `grupos`
--
ALTER TABLE `grupos`
  ADD PRIMARY KEY (`id_grupo`);

--
-- Índices de tabela `serviços`
--
ALTER TABLE `serviços`
  ADD PRIMARY KEY (`id_serviço`);

--
-- Índices de tabela `tipo_de_serviço`
--
ALTER TABLE `tipo_de_serviço`
  ADD PRIMARY KEY (`id_tipo`);

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `abc`
--
ALTER TABLE `abc`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de tabela `agenda`
--
ALTER TABLE `agenda`
  MODIFY `id_agenda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de tabela `agendamentos`
--
ALTER TABLE `agendamentos`
  MODIFY `id_agendamento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `dados_bancarios`
--
ALTER TABLE `dados_bancarios`
  MODIFY `id_dados` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `grupos`
--
ALTER TABLE `grupos`
  MODIFY `id_grupo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `serviços`
--
ALTER TABLE `serviços`
  MODIFY `id_serviço` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tipo_de_serviço`
--
ALTER TABLE `tipo_de_serviço`
  MODIFY `id_tipo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
