USE [master]
GO
/****** Object:  Database [preMoldadoParaiba_BD]    Script Date: 24/02/2017 10:28:58 ******/
CREATE DATABASE [preMoldadoParaiba_BD]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'preMoldadoParaiba_BD', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\preMoldadoParaiba_BD.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'preMoldadoParaiba_BD_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\preMoldadoParaiba_BD_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [preMoldadoParaiba_BD] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [preMoldadoParaiba_BD].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [preMoldadoParaiba_BD] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [preMoldadoParaiba_BD] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [preMoldadoParaiba_BD] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [preMoldadoParaiba_BD] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [preMoldadoParaiba_BD] SET ARITHABORT OFF 
GO
ALTER DATABASE [preMoldadoParaiba_BD] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [preMoldadoParaiba_BD] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [preMoldadoParaiba_BD] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [preMoldadoParaiba_BD] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [preMoldadoParaiba_BD] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [preMoldadoParaiba_BD] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [preMoldadoParaiba_BD] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [preMoldadoParaiba_BD] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [preMoldadoParaiba_BD] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [preMoldadoParaiba_BD] SET  DISABLE_BROKER 
GO
ALTER DATABASE [preMoldadoParaiba_BD] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [preMoldadoParaiba_BD] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [preMoldadoParaiba_BD] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [preMoldadoParaiba_BD] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [preMoldadoParaiba_BD] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [preMoldadoParaiba_BD] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [preMoldadoParaiba_BD] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [preMoldadoParaiba_BD] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [preMoldadoParaiba_BD] SET  MULTI_USER 
GO
ALTER DATABASE [preMoldadoParaiba_BD] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [preMoldadoParaiba_BD] SET DB_CHAINING OFF 
GO
ALTER DATABASE [preMoldadoParaiba_BD] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [preMoldadoParaiba_BD] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [preMoldadoParaiba_BD] SET DELAYED_DURABILITY = DISABLED 
GO
USE [preMoldadoParaiba_BD]
GO
/****** Object:  Table [dbo].[cliente]    Script Date: 24/02/2017 10:28:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[cliente](
	[CPF] [int] IDENTITY(1,1) NOT NULL,
	[nome] [varchar](150) NULL,
	[email] [varchar](150) NULL,
	[telefoneResidencial] [varchar](50) NULL,
	[telefoneCelular] [varchar](50) NULL,
	[codEndereco] [int] NULL,
 CONSTRAINT [PK_cliente] PRIMARY KEY CLUSTERED 
(
	[CPF] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[clienteEmpresa]    Script Date: 24/02/2017 10:28:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[clienteEmpresa](
	[codCliente] [int] NOT NULL,
	[codEmpresa] [int] NOT NULL,
 CONSTRAINT [PK_clienteEmpresa] PRIMARY KEY CLUSTERED 
(
	[codCliente] ASC,
	[codEmpresa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Endereco]    Script Date: 24/02/2017 10:28:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Endereco](
	[codEndereco] [int] IDENTITY(1,1) NOT NULL,
	[rua] [varchar](20) NULL,
	[bairro] [varchar](50) NULL,
	[numero] [varchar](30) NULL,
	[cep] [varchar](30) NULL,
	[cidade] [varchar](50) NULL,
	[estado] [varchar](50) NULL,
 CONSTRAINT [PK_Endereco] PRIMARY KEY CLUSTERED 
(
	[codEndereco] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[fornecedor]    Script Date: 24/02/2017 10:28:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[fornecedor](
	[CNPJ] [int] IDENTITY(1,1) NOT NULL,
	[nome] [varchar](150) NULL,
	[email] [varchar](150) NULL,
	[telefone1] [varchar](50) NULL,
	[telefone2] [varchar](50) NULL,
	[codEndereco] [int] NULL,
 CONSTRAINT [PK_fornecedor] PRIMARY KEY CLUSTERED 
(
	[CNPJ] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[fornecer]    Script Date: 24/02/2017 10:28:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fornecer](
	[codForcedor] [int] NOT NULL,
	[codMaterial] [int] NOT NULL,
 CONSTRAINT [PK_fornecer] PRIMARY KEY CLUSTERED 
(
	[codForcedor] ASC,
	[codMaterial] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[funcionario]    Script Date: 24/02/2017 10:28:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[funcionario](
	[CPF] [int] IDENTITY(1,1) NOT NULL,
	[nome] [varchar](150) NULL,
	[email] [varchar](150) NULL,
	[dataNascimento] [date] NULL,
	[dataAdmicao] [date] NULL,
	[telefoneResidencial] [varchar](50) NULL,
	[celular] [varchar](50) NULL,
	[codEndereco] [int] NULL,
	[codEmpresa] [int] NULL,
 CONSTRAINT [PK_funcionario] PRIMARY KEY CLUSTERED 
(
	[CPF] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[materiaPrima]    Script Date: 24/02/2017 10:28:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[materiaPrima](
	[codMaterial] [int] IDENTITY(1,1) NOT NULL,
	[tipoMaterial] [varchar](50) NULL,
 CONSTRAINT [PK_materiaPrima] PRIMARY KEY CLUSTERED 
(
	[codMaterial] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[materiaProduto]    Script Date: 24/02/2017 10:28:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[materiaProduto](
	[codMaterial] [int] NOT NULL,
	[codProduto] [int] NOT NULL,
 CONSTRAINT [PK_materiaProduto] PRIMARY KEY CLUSTERED 
(
	[codMaterial] ASC,
	[codProduto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[pedido]    Script Date: 24/02/2017 10:28:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pedido](
	[codPedido] [int] IDENTITY(1,1) NOT NULL,
	[codFuncionario] [int] NULL,
	[codCliente] [int] NULL,
 CONSTRAINT [PK_pedido] PRIMARY KEY CLUSTERED 
(
	[codPedido] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[pedidoProduto]    Script Date: 24/02/2017 10:28:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pedidoProduto](
	[codPedido] [int] NOT NULL,
	[codProduto] [int] NOT NULL,
	[quantidade] [int] NULL,
 CONSTRAINT [PK_pedidoProduto] PRIMARY KEY CLUSTERED 
(
	[codPedido] ASC,
	[codProduto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[premoldadosParaiba]    Script Date: 24/02/2017 10:28:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[premoldadosParaiba](
	[CNPJ] [int] IDENTITY(1,1) NOT NULL,
	[nome] [varchar](150) NULL,
	[telefone1] [varchar](50) NULL,
	[telefone2] [varchar](50) NULL,
	[email] [varchar](200) NULL,
	[codEndereco] [int] NULL,
 CONSTRAINT [PK_premoldadosParaiba] PRIMARY KEY CLUSTERED 
(
	[CNPJ] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[produto]    Script Date: 24/02/2017 10:28:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[produto](
	[codProduto] [int] IDENTITY(1,1) NOT NULL,
	[nome] [varchar](150) NULL,
	[tipo] [varchar](150) NULL,
	[valor] [money] NULL,
 CONSTRAINT [PK_produto] PRIMARY KEY CLUSTERED 
(
	[codProduto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[viewBancoPreMoldadosParaiba]    Script Date: 24/02/2017 10:28:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE View [dbo].[viewBancoPreMoldadosParaiba]



(codProduto, nomeProduto, valor)


AS



SELECT codProduto, nome, valor FROM
Produto
GO
ALTER TABLE [dbo].[clienteEmpresa]  WITH CHECK ADD  CONSTRAINT [FK_clienteEmpresa_cliente] FOREIGN KEY([codCliente])
REFERENCES [dbo].[cliente] ([CPF])
GO
ALTER TABLE [dbo].[clienteEmpresa] CHECK CONSTRAINT [FK_clienteEmpresa_cliente]
GO
ALTER TABLE [dbo].[clienteEmpresa]  WITH CHECK ADD  CONSTRAINT [FK_clienteEmpresa_premoldadosParaiba] FOREIGN KEY([codEmpresa])
REFERENCES [dbo].[premoldadosParaiba] ([CNPJ])
GO
ALTER TABLE [dbo].[clienteEmpresa] CHECK CONSTRAINT [FK_clienteEmpresa_premoldadosParaiba]
GO
ALTER TABLE [dbo].[fornecedor]  WITH CHECK ADD  CONSTRAINT [FK_fornecedor_Endereco] FOREIGN KEY([codEndereco])
REFERENCES [dbo].[Endereco] ([codEndereco])
GO
ALTER TABLE [dbo].[fornecedor] CHECK CONSTRAINT [FK_fornecedor_Endereco]
GO
ALTER TABLE [dbo].[fornecer]  WITH CHECK ADD  CONSTRAINT [FK_fornecer_fornecedor] FOREIGN KEY([codForcedor])
REFERENCES [dbo].[fornecedor] ([CNPJ])
GO
ALTER TABLE [dbo].[fornecer] CHECK CONSTRAINT [FK_fornecer_fornecedor]
GO
ALTER TABLE [dbo].[fornecer]  WITH CHECK ADD  CONSTRAINT [FK_fornecer_materiaPrima] FOREIGN KEY([codMaterial])
REFERENCES [dbo].[materiaPrima] ([codMaterial])
GO
ALTER TABLE [dbo].[fornecer] CHECK CONSTRAINT [FK_fornecer_materiaPrima]
GO
ALTER TABLE [dbo].[funcionario]  WITH CHECK ADD  CONSTRAINT [FK_funcionario_Endereco] FOREIGN KEY([codEndereco])
REFERENCES [dbo].[Endereco] ([codEndereco])
GO
ALTER TABLE [dbo].[funcionario] CHECK CONSTRAINT [FK_funcionario_Endereco]
GO
ALTER TABLE [dbo].[funcionario]  WITH CHECK ADD  CONSTRAINT [FK_funcionario_premoldadosParaiba] FOREIGN KEY([codEmpresa])
REFERENCES [dbo].[premoldadosParaiba] ([CNPJ])
GO
ALTER TABLE [dbo].[funcionario] CHECK CONSTRAINT [FK_funcionario_premoldadosParaiba]
GO
ALTER TABLE [dbo].[materiaProduto]  WITH CHECK ADD  CONSTRAINT [FK_materiaProduto_materiaPrima] FOREIGN KEY([codMaterial])
REFERENCES [dbo].[materiaPrima] ([codMaterial])
GO
ALTER TABLE [dbo].[materiaProduto] CHECK CONSTRAINT [FK_materiaProduto_materiaPrima]
GO
ALTER TABLE [dbo].[materiaProduto]  WITH CHECK ADD  CONSTRAINT [FK_materiaProduto_produto] FOREIGN KEY([codProduto])
REFERENCES [dbo].[produto] ([codProduto])
GO
ALTER TABLE [dbo].[materiaProduto] CHECK CONSTRAINT [FK_materiaProduto_produto]
GO
ALTER TABLE [dbo].[pedido]  WITH CHECK ADD  CONSTRAINT [FK_pedido_cliente] FOREIGN KEY([codCliente])
REFERENCES [dbo].[cliente] ([CPF])
GO
ALTER TABLE [dbo].[pedido] CHECK CONSTRAINT [FK_pedido_cliente]
GO
ALTER TABLE [dbo].[pedido]  WITH CHECK ADD  CONSTRAINT [FK_pedido_funcionario] FOREIGN KEY([codFuncionario])
REFERENCES [dbo].[funcionario] ([CPF])
GO
ALTER TABLE [dbo].[pedido] CHECK CONSTRAINT [FK_pedido_funcionario]
GO
ALTER TABLE [dbo].[pedidoProduto]  WITH CHECK ADD  CONSTRAINT [FK_pedidoProduto_pedido] FOREIGN KEY([codPedido])
REFERENCES [dbo].[pedido] ([codPedido])
GO
ALTER TABLE [dbo].[pedidoProduto] CHECK CONSTRAINT [FK_pedidoProduto_pedido]
GO
ALTER TABLE [dbo].[pedidoProduto]  WITH CHECK ADD  CONSTRAINT [FK_pedidoProduto_produto] FOREIGN KEY([codProduto])
REFERENCES [dbo].[produto] ([codProduto])
GO
ALTER TABLE [dbo].[pedidoProduto] CHECK CONSTRAINT [FK_pedidoProduto_produto]
GO
ALTER TABLE [dbo].[premoldadosParaiba]  WITH CHECK ADD  CONSTRAINT [FK_premoldadosParaiba_Endereco] FOREIGN KEY([codEndereco])
REFERENCES [dbo].[Endereco] ([codEndereco])
GO
ALTER TABLE [dbo].[premoldadosParaiba] CHECK CONSTRAINT [FK_premoldadosParaiba_Endereco]
GO
/****** Object:  StoredProcedure [dbo].[newCliente]    Script Date: 24/02/2017 10:28:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--CREATE PROCEDURE newProduto 
--	@nome varchar(150)=null,
--	@tipo varchar (150)=null,
--	@valor money = null
--	AS
--	BEGIN
--		INSERT INTO produto(nome,tipo,valor)
--		VALUES(@nome, @tipo, @valor)
--	END
--CREATE PROCEDURE newEndereco 
--	@rua varchar(20)=null,
--	@bairro varchar (50)=null,
--	@numero varchar(30) = null,
--	@cep varchar (30)=null,
--	@cidade varchar (50)=null,
--	@estado varchar (50)=null
--	AS
--	BEGIN
--		INSERT INTO Endereco(rua,bairro,numero, cep, cidade, estado)
--		VALUES(@rua,@bairro,@numero, @cep, @cidade, @estado)
--	END

CREATE PROCEDURE [dbo].[newCliente] 
	@nome varchar(150)=null,
	@email varchar (150)=null,
	@telefoneResidencial varchar(50) = null,
	@telefoneCelular varchar (50)=null,
	@codEndereco int =null
	AS
	BEGIN
		INSERT INTO cliente(nome,email,telefoneResidencial, telefoneCelular, codEndereco)
		VALUES(@nome,@email,@telefoneResidencial, @telefoneCelular, @codEndereco)
	END
GO
/****** Object:  StoredProcedure [dbo].[newEndereco]    Script Date: 24/02/2017 10:28:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--CREATE PROCEDURE newProduto 
--	@nome varchar(150)=null,
--	@tipo varchar (150)=null,
--	@valor money = null
--	AS
--	BEGIN
--		INSERT INTO produto(nome,tipo,valor)
--		VALUES(@nome, @tipo, @valor)
--	END
CREATE PROCEDURE [dbo].[newEndereco] 
	@rua varchar(20)=null,
	@bairro varchar (50)=null,
	@numero varchar(30) = null,
	@cep varchar (30)=null,
	@cidade varchar (50)=null,
	@estado varchar (50)=null
	AS
	BEGIN
		INSERT INTO Endereco(rua,bairro,numero, cep, cidade, estado)
		VALUES(@rua,@bairro,@numero, @cep, @cidade, @estado)
	END
GO
/****** Object:  StoredProcedure [dbo].[newFornecedor]    Script Date: 24/02/2017 10:28:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--CREATE PROCEDURE newProduto 
--	@nome varchar(150)=null,
--	@tipo varchar (150)=null,
--	@valor money = null
--	AS
--	BEGIN
--		INSERT INTO produto(nome,tipo,valor)
--		VALUES(@nome, @tipo, @valor)
--	END
--CREATE PROCEDURE newEndereco 
--	@rua varchar(20)=null,
--	@bairro varchar (50)=null,
--	@numero varchar(30) = null,
--	@cep varchar (30)=null,
--	@cidade varchar (50)=null,
--	@estado varchar (50)=null
--	AS
--	BEGIN
--		INSERT INTO Endereco(rua,bairro,numero, cep, cidade, estado)
--		VALUES(@rua,@bairro,@numero, @cep, @cidade, @estado)
--	END

--CREATE PROCEDURE newCliente 
--	@nome varchar(150)=null,
--	@email varchar (150)=null,
--	@telefoneResidencial varchar(50) = null,
--	@telefoneCelular varchar (50)=null,
--	@codEndereco int =null
--	AS
--	BEGIN
--		INSERT INTO cliente(nome,email,telefoneResidencial, telefoneCelular, codEndereco)
--		VALUES(@nome,@email,@telefoneResidencial, @telefoneCelular, @codEndereco)
--	END

CREATE PROCEDURE [dbo].[newFornecedor] 
	@nome varchar(150)=null,
	@email varchar (150)=null,
	@telefone1 varchar(50) = null,
	@telefone2 varchar (50)=null,
	@codEndereco int =null
	AS
	BEGIN
		INSERT INTO fornecedor(nome,email,telefone1, telefone2, codEndereco)
		VALUES(@nome,@email,@telefone1, @telefone2, @codEndereco)
	END
GO
/****** Object:  StoredProcedure [dbo].[newFuncionario]    Script Date: 24/02/2017 10:28:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--CREATE PROCEDURE newProduto 
--	@nome varchar(150)=null,
--	@tipo varchar (150)=null,
--	@valor money = null
--	AS
--	BEGIN
--		INSERT INTO produto(nome,tipo,valor)
--		VALUES(@nome, @tipo, @valor)
--	END
--CREATE PROCEDURE newEndereco 
--	@rua varchar(20)=null,
--	@bairro varchar (50)=null,
--	@numero varchar(30) = null,
--	@cep varchar (30)=null,
--	@cidade varchar (50)=null,
--	@estado varchar (50)=null
--	AS
--	BEGIN
--		INSERT INTO Endereco(rua,bairro,numero, cep, cidade, estado)
--		VALUES(@rua,@bairro,@numero, @cep, @cidade, @estado)
--	END

--CREATE PROCEDURE newCliente 
--	@nome varchar(150)=null,
--	@email varchar (150)=null,
--	@telefoneResidencial varchar(50) = null,
--	@telefoneCelular varchar (50)=null,
--	@codEndereco int =null
--	AS
--	BEGIN
--		INSERT INTO cliente(nome,email,telefoneResidencial, telefoneCelular, codEndereco)
--		VALUES(@nome,@email,@telefoneResidencial, @telefoneCelular, @codEndereco)
--	END

--CREATE PROCEDURE newFornecedor 
--	@nome varchar(150)=null,
--	@email varchar (150)=null,
--	@telefone1 varchar(50) = null,
--	@telefone2 varchar (50)=null,
--	@codEndereco int =null
--	AS
--	BEGIN
--		INSERT INTO fornecedor(nome,email,telefone1, telefone2, codEndereco)
--		VALUES(@nome,@email,@telefone1, @telefone2, @codEndereco)
--	END
CREATE PROCEDURE [dbo].[newFuncionario] 
	@nome varchar(150)=null,
	@email varchar (150)=null,
	@dataNascimento date=null,
	@dataAdmicao date=null,
	@telefoneResidencial varchar(50) = null,
	@celular varchar (50)=null,
	@codEndereco int =null,
	@codEmpresa int =null
	AS
	BEGIN
		INSERT INTO funcionario(nome,email,telefoneResidencial, celular,codEndereco, codEmpresa)
		VALUES(@nome,@email,@telefoneResidencial, @celular, @codEndereco, @codEmpresa)
	END
GO
/****** Object:  StoredProcedure [dbo].[newMateriaPrima]    Script Date: 24/02/2017 10:28:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--CREATE PROCEDURE newProduto 
--	@nome varchar(150)=null,
--	@tipo varchar (150)=null,
--	@valor money = null
--	AS
--	BEGIN
--		INSERT INTO produto(nome,tipo,valor)
--		VALUES(@nome, @tipo, @valor)
--	END
CREATE PROCEDURE [dbo].[newMateriaPrima] 
	@tipoMaterial varchar (50)=null
	AS
	BEGIN
		INSERT INTO materiaPrima(tipoMaterial)
		VALUES(@tipoMaterial)
	END
GO
/****** Object:  StoredProcedure [dbo].[newProduto]    Script Date: 24/02/2017 10:28:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[newProduto] 
	@nome varchar(150)=null,
	@tipo varchar (150)=null,
	@valor money = null
	AS
	BEGIN
		INSERT INTO produto(nome,tipo,valor)
		VALUES(@nome, @tipo, @valor)
	END
GO
USE [master]
GO
ALTER DATABASE [preMoldadoParaiba_BD] SET  READ_WRITE 
GO
