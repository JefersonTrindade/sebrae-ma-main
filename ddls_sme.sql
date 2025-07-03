CREATE TABLE [dbo].[_perf] (
    [cint] INT NULL
);

CREATE TABLE [dbo].[_PerfBak] (
    [cint] INT NULL
);

CREATE TABLE [dbo].[_Update_Statistics] (
    [Id_Statistics] INT NOT NULL,
    [Ds_Comando] VARCHAR(MAX) NULL,
    [Nr_Linha] INT NULL
);

CREATE TABLE [dbo].[AtendimentosValidos_2017_BaseAtual] (
    [NomeSebrae] CHAR(9) NULL,
    [CodSebrae] UNIQUEIDENTIFIER NULL,
    [CodPPA] UNIQUEIDENTIFIER NULL,
    [CodFoto] INT NULL,
    [AnoInicioPPA] INT NULL,
    [CodRealizacaoSiac] BIGINT NOT NULL,
    [CodOrigem] VARCHAR(3) NULL,
    [DescOrigem] VARCHAR(50) NULL,
    [SkClientePessoaFisicaAtendida] BIGINT NULL,
    [SkClientePessoaJuridica] BIGINT NULL,
    [DescSegmentoPublicoAlvo] VARCHAR(50) NULL,
    [DescInstrumento] VARCHAR(100) NULL,
    [DescPromocaoInstrumento] VARCHAR(100) NULL,
    [DescAplicacaoInstrumento] VARCHAR(100) NULL,
    [DescAbordagem] VARCHAR(15) NULL,
    [DescSituacaoInstrumento] VARCHAR(100) NULL,
    [IND02_PN_DONOS_PEQUENOS_NEGOCIOS] VARCHAR(1) NOT NULL,
    [IND04_POTENCIAIS_EMPRESARIOS] VARCHAR(1) NOT NULL,
    [IND05_POTENCIAIS_EMPREENDEDORES] VARCHAR(1) NOT NULL,
    [IND11_2017_PN_PEQUENOS_NEGOCIOS] VARCHAR(1) NOT NULL,
    [IND12_2017_PN_PEQUENOS_NEGOCIOS_INOVACAO] VARCHAR(1) NOT NULL,
    [IND13_2017_PN_MEI] VARCHAR(1) NOT NULL,
    [IND14_2017_PN_ME] VARCHAR(1) NOT NULL,
    [IND15_2017_PN_EPP] VARCHAR(1) NOT NULL,
    [IND17_2017_PN_FIDELIZADOS] VARCHAR(1) NOT NULL,
    [NuAtendimentosExecutado] BIGINT NULL,
    [NuClientesSemCadastroExecutado] BIGINT NULL,
    [datahorainiciorealizacaosiac] DATETIME NOT NULL,
    [CodIniciativa] UNIQUEIDENTIFIER NULL,
    [NuIniciativa] VARCHAR(12) NULL,
    [NomeIniciativa] VARCHAR(100) NULL,
    [CodAcao] UNIQUEIDENTIFIER NULL,
    [NomeAcao] VARCHAR(250) NULL,
    [CodPrograma_Iniciativa] UNIQUEIDENTIFIER NULL,
    [DescTipoPrograma_Iniciativa] VARCHAR(50) NULL,
    [NomePrograma_Iniciativa] VARCHAR(100) NULL,
    [CodPrograma_Acao] UNIQUEIDENTIFIER NULL,
    [DescTipoPrograma_Acao] VARCHAR(50) NULL,
    [NomePrograma_Acao] VARCHAR(100) NULL
);

CREATE TABLE [dbo].[AtendimentosValidos_2017_BaseBkp] (
    [NomeSebrae] CHAR(9) NULL,
    [CodSebrae] UNIQUEIDENTIFIER NULL,
    [CodPPA] UNIQUEIDENTIFIER NULL,
    [CodFoto] INT NULL,
    [AnoInicioPPA] INT NULL,
    [CodRealizacaoSiac] BIGINT NOT NULL,
    [CodOrigem] VARCHAR(3) NULL,
    [DescOrigem] VARCHAR(50) NULL,
    [SkClientePessoaFisicaAtendida] BIGINT NULL,
    [SkClientePessoaJuridica] BIGINT NULL,
    [DescSegmentoPublicoAlvo] VARCHAR(50) NULL,
    [DescInstrumento] VARCHAR(100) NULL,
    [DescPromocaoInstrumento] VARCHAR(100) NULL,
    [DescAplicacaoInstrumento] VARCHAR(100) NULL,
    [DescAbordagem] VARCHAR(15) NULL,
    [DescSituacaoInstrumento] VARCHAR(100) NULL,
    [IND02_PN_DONOS_PEQUENOS_NEGOCIOS] VARCHAR(1) NOT NULL,
    [IND04_POTENCIAIS_EMPRESARIOS] VARCHAR(1) NOT NULL,
    [IND05_POTENCIAIS_EMPREENDEDORES] VARCHAR(1) NOT NULL,
    [IND11_2017_PN_PEQUENOS_NEGOCIOS] VARCHAR(1) NOT NULL,
    [IND12_2017_PN_PEQUENOS_NEGOCIOS_INOVACAO] VARCHAR(1) NOT NULL,
    [IND13_2017_PN_MEI] VARCHAR(1) NOT NULL,
    [IND14_2017_PN_ME] VARCHAR(1) NOT NULL,
    [IND15_2017_PN_EPP] VARCHAR(1) NOT NULL,
    [IND17_2017_PN_FIDELIZADOS] VARCHAR(1) NOT NULL,
    [NuAtendimentosExecutado] BIGINT NULL,
    [NuClientesSemCadastroExecutado] BIGINT NULL,
    [datahorainiciorealizacaosiac] DATETIME NOT NULL,
    [CodIniciativa] UNIQUEIDENTIFIER NULL,
    [NuIniciativa] VARCHAR(12) NULL,
    [NomeIniciativa] VARCHAR(100) NULL,
    [CodAcao] UNIQUEIDENTIFIER NULL,
    [NomeAcao] VARCHAR(250) NULL,
    [CodPrograma_Iniciativa] UNIQUEIDENTIFIER NULL,
    [DescTipoPrograma_Iniciativa] VARCHAR(50) NULL,
    [NomePrograma_Iniciativa] VARCHAR(100) NULL,
    [CodPrograma_Acao] UNIQUEIDENTIFIER NULL,
    [DescTipoPrograma_Acao] VARCHAR(50) NULL,
    [NomePrograma_Acao] VARCHAR(100) NULL
);

CREATE TABLE [dbo].[AtendimentosValidos_2017_SP] (
    [IdAtendimentosValidos_2017_SP] INT NOT NULL,
    [NomeSebrae] CHAR(9) NULL,
    [CodSebrae] UNIQUEIDENTIFIER NULL,
    [CodPPA] UNIQUEIDENTIFIER NULL,
    [CodFoto] INT NULL,
    [AnoInicioPPA] INT NULL,
    [CodRealizacaoSiac] VARCHAR(300) NULL,
    [CodOrigem] VARCHAR(3) NULL,
    [DescOrigem] VARCHAR(50) NULL,
    [SkClientePessoaFisicaAtendida] BIGINT NULL,
    [SkClientePessoaJuridica] BIGINT NULL,
    [DescSegmentoPublicoAlvo] VARCHAR(50) NULL,
    [DescInstrumento] VARCHAR(100) NULL,
    [DescPromocaoInstrumento] VARCHAR(100) NULL,
    [DescAplicacaoInstrumento] VARCHAR(100) NULL,
    [DescAbordagem] VARCHAR(15) NULL,
    [DescSituacaoInstrumento] VARCHAR(100) NULL,
    [IND02_PN_DONOS_PEQUENOS_NEGOCIOS] VARCHAR(1) NOT NULL,
    [IND04_POTENCIAIS_EMPRESARIOS] VARCHAR(1) NOT NULL,
    [IND05_POTENCIAIS_EMPREENDEDORES] VARCHAR(1) NOT NULL,
    [IND11_2017_PN_PEQUENOS_NEGOCIOS] VARCHAR(1) NOT NULL,
    [IND12_2017_PN_PEQUENOS_NEGOCIOS_INOVACAO] VARCHAR(1) NOT NULL,
    [IND13_2017_PN_MEI] VARCHAR(1) NOT NULL,
    [IND14_2017_PN_ME] VARCHAR(1) NOT NULL,
    [IND15_2017_PN_EPP] VARCHAR(1) NOT NULL,
    [IND17_2017_PN_FIDELIZADOS] VARCHAR(1) NOT NULL,
    [NuAtendimentosExecutado] BIGINT NULL,
    [NuClientesSemCadastroExecutado] BIGINT NULL,
    [datahorainiciorealizacaosiac] VARCHAR(35) NULL,
    [CodIniciativa] UNIQUEIDENTIFIER NULL,
    [NuIniciativa] VARCHAR(12) NULL,
    [NomeIniciativa] VARCHAR(100) NULL,
    [CodAcao] UNIQUEIDENTIFIER NULL,
    [NomeAcao] VARCHAR(250) NULL,
    [CodPrograma_Iniciativa] UNIQUEIDENTIFIER NULL,
    [DescTipoPrograma_Iniciativa] VARCHAR(50) NULL,
    [NomePrograma_Iniciativa] VARCHAR(100) NULL,
    [CodPrograma_Acao] UNIQUEIDENTIFIER NULL,
    [DescTipoPrograma_Acao] VARCHAR(50) NULL,
    [NomePrograma_Acao] VARCHAR(100) NULL
);

CREATE TABLE [dbo].[AtendimentosValidos_2018] (
    [NomeSebrae] CHAR(9) NULL,
    [CodSebrae] UNIQUEIDENTIFIER NULL,
    [CodPPA] UNIQUEIDENTIFIER NULL,
    [CodFoto] INT NULL,
    [AnoInicioPPA] INT NULL,
    [CodIniciativa] UNIQUEIDENTIFIER NULL,
    [NuIniciativa] VARCHAR(12) NULL,
    [NomeIniciativa] VARCHAR(100) NULL,
    [CodPrograma_Iniciativa] UNIQUEIDENTIFIER NULL,
    [DescTipoPrograma_Iniciativa] VARCHAR(50) NULL,
    [NomePrograma_Iniciativa] VARCHAR(100) NULL,
    [CodAcao] UNIQUEIDENTIFIER NULL,
    [NomeAcao] VARCHAR(250) NULL,
    [CodPrograma_Acao] UNIQUEIDENTIFIER NULL,
    [DescTipoPrograma_Acao] VARCHAR(50) NULL,
    [NomePrograma_Acao] VARCHAR(100) NULL,
    [DescInstrumento] VARCHAR(100) NULL,
    [DescPromocaoInstrumento] VARCHAR(100) NULL,
    [DescAbordagem] VARCHAR(15) NULL,
    [DescAplicacaoInstrumento] VARCHAR(100) NULL,
    [DescSituacaoInstrumento] VARCHAR(100) NULL,
    [CodOrigem] VARCHAR(3) NULL,
    [DescOrigem] VARCHAR(50) NULL,
    [DescSegmentoPublicoAlvo] VARCHAR(50) NULL,
    [CodRealizacaoSiac] BIGINT NOT NULL,
    [IND02_PN_DONOS_PEQUENOS_NEGOCIOS] VARCHAR(1) NOT NULL,
    [IND04_POTENCIAIS_EMPRESARIOS] VARCHAR(1) NOT NULL,
    [IND05_POTENCIAIS_EMPREENDEDORES] VARCHAR(1) NOT NULL,
    [IND11_2017_PN_PEQUENOS_NEGOCIOS] VARCHAR(1) NOT NULL,
    [IND12_2017_PN_PEQUENOS_NEGOCIOS_INOVACAO] VARCHAR(1) NOT NULL,
    [IND13_2017_PN_MEI] VARCHAR(1) NOT NULL,
    [IND14_2017_PN_ME] VARCHAR(1) NOT NULL,
    [IND15_2017_PN_EPP] VARCHAR(1) NOT NULL,
    [IND17_2017_PN_FIDELIZADOS] VARCHAR(1) NOT NULL,
    [NuAtendimentosExecutado] BIGINT NULL,
    [NuClientesSemCadastroExecutado] BIGINT NULL,
    [datahorainiciorealizacaosiac] DATETIME NOT NULL,
    [SkClientePessoaFisica] BIGINT NULL,
    [CodClientePessoaFisica] BIGINT NULL,
    [NuCPF] VARCHAR(14) NULL,
    [SkClientePessoaJuridica] BIGINT NULL,
    [CodClientePessoaJuridica] BIGINT NULL,
    [NuCNPJ] VARCHAR(40) NULL,
    [NomeClientePessoaJuridica] VARCHAR(120) NULL,
    [CodDAP] VARCHAR(40) NULL,
    [CodProdutorRural] VARCHAR(40) NULL,
    [CodPescador] VARCHAR(40) NULL,
    [NIRF] NUMERIC(8,0) NULL,
    [CodSICAB] VARCHAR(40) NULL,
    [linha] BIGINT NULL
);

CREATE TABLE [dbo].[AtendimentosValidosPessoaFisicaJuridica_2016] (
    [CodClientePessoaJuridica] BIGINT NULL,
    [C_pt_br__NuCNPJ] VARCHAR(40) NULL,
    [C_pt_br__NomeClientePessoaJuridica] VARCHAR(120) NULL,
    [C_pt_br__CodDAP] VARCHAR(40) NULL,
    [C_pt_br__CodProdutorRural] VARCHAR(40) NULL,
    [C_pt_br__CodPescador] VARCHAR(40) NULL,
    [C_pt_br__NIRF] NUMERIC(8,0) NULL,
    [CodClientePessoaFisica] BIGINT NULL,
    [C_pt_br__NuCPF] VARCHAR(14) NULL,
    [C_pt_br__NomeClientePessoaFisica] VARCHAR(120) NULL,
    [C_pt_br__Genero] VARCHAR(14) NULL,
    [C_pt_br__MetaInovacao] VARCHAR(1) NOT NULL,
    [UF] CHAR(9) NULL,
    [CodRealizacaoSiac] BIGINT NOT NULL,
    [CodOrigem] VARCHAR(3) NULL,
    [DescOrigem] VARCHAR(50) NULL,
    [DescInstrumento] VARCHAR(100) NULL,
    [DescPromocaoInstrumento] VARCHAR(100) NULL,
    [DescAplicacaoInstrumento] VARCHAR(100) NULL,
    [DescAbordagem] VARCHAR(15) NULL,
    [DescSituacaoInstrumento] VARCHAR(100) NULL,
    [Contribui_Meta_1] VARCHAR(1) NOT NULL,
    [Contribui_Meta_Inovacao] VARCHAR(1) NOT NULL,
    [Contribui_Meta_MEI] VARCHAR(1) NOT NULL,
    [Contribui_Meta_ME] VARCHAR(1) NOT NULL,
    [Contribui_Meta_EPP] VARCHAR(1) NOT NULL,
    [HoraInicioRealizacao] DATETIME NOT NULL,
    [NuAtendimentosExecutado] BIGINT NULL,
    [NuClientesSemCadastroExecutado] BIGINT NULL
);

CREATE TABLE [dbo].[DF] (
    [ATENDIMENTO_CODIGO] FLOAT NULL,
    [ATENDIMENTO_SEBRAE] NVARCHAR(255) NULL,
    [ATENDIMENTO_SME_REGISTRO] NVARCHAR(255) NULL,
    [ATENDIMENTO_SME_ACEITABILIDADE] NVARCHAR(255) NULL,
    [ATENDIMENTO_INICIO_DATA] NVARCHAR(255) NULL,
    [ATENDIMENTO_INICIO_ANO] FLOAT NULL,
    [ATENDIMENTO_INICIO_MES] FLOAT NULL,
    [ATENDIMENTO_INICIO_DIA] FLOAT NULL,
    [ATENDIMENTO_INICIO_HORA] NVARCHAR(255) NULL,
    [ATENDIMENTO_NOME] NVARCHAR(255) NULL,
    [ATENDIMENTO_TIPO] NVARCHAR(255) NULL,
    [ATENDENTE_NOME] NVARCHAR(255) NULL,
    [ATENDIMENTO_DESCRICAO] NVARCHAR(255) NULL,
    [ATENDIMENTO_INSTRUMENTO] NVARCHAR(255) NULL,
    [ATENDIMENTO_DESCRICAO_APLICACAO] NVARCHAR(255) NULL,
    [ATENDIMENTO_CLASSIFICACAO_PESSOA] NVARCHAR(255) NULL,
    [ATENDIMENTO_MEIO] NVARCHAR(255) NULL,
    [ATENDIMENTO_TIPO_PESSOA] NVARCHAR(255) NULL,
    [ATENDIMENTO_CARGA_HORARIA] FLOAT NULL,
    [ATENDIMENTO_PROJETO] NVARCHAR(255) NULL,
    [ATENDIMENTO_ACAO] NVARCHAR(255) NULL,
    [ATENDENTE_CODIGO] FLOAT NULL,
    [ATENDENTE_UNIDADE_ORGANIZACIONAL] NVARCHAR(255) NULL,
    [CLIENTE_PESSOA_FISICA_CODIGO] FLOAT NULL,
    [CLIENTE_PESSOA_FISICA_CPF] NVARCHAR(255) NULL,
    [CLIENTE_PESSOA_FISICA_SITUACAO] FLOAT NULL,
    [CLIENTE_PESSOA_FISICA_IDADE] FLOAT NULL,
    [CLIENTE_PESSOA_FISICA_ESCOLARIDADE] NVARCHAR(255) NULL,
    [CLIENTE_PESSOA_FISICA_GENERO] NVARCHAR(255) NULL,
    [CLIENTE_PESSOA_FISICA_CLASSIFICACAO] NVARCHAR(255) NULL,
    [CLIENTE_PESSOA_FISICA_DESCRICAO] NVARCHAR(255) NULL,
    [CLIENTE_PESSOA_FISICA_UF] NVARCHAR(255) NULL,
    [CLIENTE_PESSOA_FISICA_CIDADE] NVARCHAR(255) NULL,
    [CLIENTE_PESSOA_FISICA_BAIRRO] NVARCHAR(255) NULL,
    [CLIENTE_PESSOA_FISICA_RA] NVARCHAR(255) NULL,
    [CLIENTE_PESSOA_JURIDICA_CODIGO] NVARCHAR(255) NULL,
    [CLIENTE_PESSOA_JURIDICA_SITUACAO] NVARCHAR(255) NULL,
    [CLIENTE_PESSOA_JURIDICA_CODIGO_PRODUTOR_RURAL] NVARCHAR(255) NULL,
    [CLIENTE_PESSOA_JURIDICA_CODIGO_DAP] NVARCHAR(255) NULL,
    [CLIENTE_PESSOA_JURIDICA_PESCADOR] NVARCHAR(255) NULL,
    [CLIENTE_PESSOA_JURIDICA_CODIGO_SICAB] NVARCHAR(255) NULL,
    [CLIENTE_PESSOA_JURIDICA_RAZAO_SOCIAL] NVARCHAR(255) NULL,
    [CLIENTE_PESSOA_JURIDICA_NOME_FANTASIA] NVARCHAR(255) NULL,
    [CLIENTE_PESSOA_JURIDICA_CNPJ] NVARCHAR(255) NULL,
    [CLIENTE_PESSOA_JURIDICA_PORTE] NVARCHAR(255) NULL,
    [CLIENTE_PESSOA_JURIDICA_SETOR] NVARCHAR(255) NULL,
    [CLIENTE_PESSOA_JURIDICA_TIPO] NVARCHAR(255) NULL,
    [CLIENTE_PESSOA_JURIDICA_CNAE_CODIGO] NVARCHAR(255) NULL,
    [CLIENTE_PESSOA_JURIDICA_CNAE_DESCRICAO] NVARCHAR(255) NULL,
    [CLIENTE_PESSOA_JURIDICA_UF] NVARCHAR(255) NULL,
    [CLIENTE_PESSOA_JURIDICA_CIDADE] NVARCHAR(255) NULL,
    [CLIENTE_PESSOA_JURIDICA_BAIRRO] NVARCHAR(255) NULL,
    [CLIENTE_PESSOA_JURIDICA_RA] NVARCHAR(255) NULL,
    [ATENDIMENTO_FIM_DATA] NVARCHAR(255) NULL,
    [ATENDIMENTO_FIM_ANO] FLOAT NULL,
    [ATENDIMENTO_FIM_MES] FLOAT NULL,
    [ATENDIMENTO_FIM_DIA] FLOAT NULL,
    [ATENDIMENTO_FIM_HORA] NVARCHAR(255) NULL,
    [ATENDIMENTO_QUANTIDADE] FLOAT NULL
);

CREATE TABLE [dbo].[Indicadores2018] (
    [Ano] FLOAT NULL,
    [Descrição de Sebrae] NVARCHAR(255) NULL,
    [SkIndicador] FLOAT NULL,
    [Indicador de Desempenho] NVARCHAR(255) NULL,
    [Previsto] FLOAT NULL,
    [Realizado] FLOAT NULL
);

CREATE TABLE [dbo].[Indicadores2018_V2] (
    [Indicador] NVARCHAR(255) NULL,
    [SkIndicadorInstitucional] FLOAT NULL,
    [ANO] FLOAT NULL,
    [UF] NVARCHAR(255) NULL,
    [Meta] FLOAT NULL,
    [Realização] FLOAT NULL
);

CREATE TABLE [dbo].[SME_Atendimentos_CNPJ_Instrumentos_AGR_2018] (
    [ANO] VARCHAR(4) NULL,
    [CNPJ] VARCHAR(14) NULL,
    [CNPJ_INT] BIGINT NULL,
    [QtdAtendimentosAceitos_Consultoria] INT NULL,
    [QtdAtendimentosNaoAceitos_Consultoria] INT NULL,
    [QtdAtendimentosAceitos_Curso] INT NULL,
    [QtdAtendimentosNaoAceitos_Curso] INT NULL,
    [QtdAtendimentosAceitos_Feira] INT NULL,
    [QtdAtendimentosNaoAceitos_Feira] INT NULL,
    [QtdAtendimentosAceitos_Informacao] INT NULL,
    [QtdAtendimentosNaoAceitos_Informacao] INT NULL,
    [QtdAtendimentosAceitos_MissaoCaravana] INT NULL,
    [QtdAtendimentosNaoAceitos_MissaoCaravana] INT NULL,
    [QtdAtendimentosAceitos_Oficina] INT NULL,
    [QtdAtendimentosNaoAceitos_Oficina] INT NULL,
    [QtdAtendimentosAceitos_OperacaoDaAval] INT NULL,
    [QtdAtendimentosNaoAceitos_OperacaoDaAval] INT NULL,
    [QtdAtendimentosAceitos_Orientacao] INT NULL,
    [QtdAtendimentosNaoAceitos_Orientacao] INT NULL,
    [QtdAtendimentosAceitos_Palestra] INT NULL,
    [QtdAtendimentosNaoAceitos_Palestra] INT NULL,
    [QtdAtendimentosAceitos_PalestraOficinaSeminário] INT NULL,
    [QtdAtendimentosNaoAceitos_PalestraOficinaSeminário] INT NULL,
    [QtdAtendimentosAceitos_Rodada] INT NULL,
    [QtdAtendimentosNaoAceitos_Rodada] INT NULL,
    [QtdAtendimentosAceitos_Seminario] INT NULL,
    [QtdAtendimentosNaoAceitos_Seminario] INT NULL,
    [QtdAtendimentosAceitos_Clinica] INT NULL,
    [QtdAtendimentosNaoAceitos_Clinica] INT NULL,
    [QtdAtendimentosAceitos] INT NULL,
    [QtdAtendimentosNaoAceitos] INT NULL
);

CREATE TABLE [dbo].[sysdiagrams] (
    [name] NVARCHAR(128) NOT NULL,
    [principal_id] INT NOT NULL,
    [diagram_id] INT NOT NULL,
    [version] INT NULL,
    [definition] VARBINARY NULL
);

CREATE TABLE [dbo].[TASkNaoEncontrado] (
    [QtNaoEncontrado] INT NULL,
    [SkNaoEncontrado] VARCHAR(80) NULL,
    [TBNaoEncontrado] VARCHAR(80) NULL
);

CREATE TABLE [dbo].[TAValidaConsultoria] (
    [UF] VARCHAR(10) NULL,
    [codcliente] INT NULL,
    [codempreedimento] INT NULL,
    [codrealizacao] INT NULL,
    [tiporealizacao] VARCHAR(3) NULL,
    [codrealizacaocomp] INT NULL,
    [CH] DECIMAL(38,2) NULL,
    [Instrumento] VARCHAR(23) NULL,
    [datahorainiciorealizacao] DATETIME2 NULL,
    [CodSebrae] INT NOT NULL
);

CREATE TABLE [dbo].[TAValidaCurso] (
    [UF] VARCHAR(10) NULL,
    [codcliente] INT NULL,
    [codPEA] INT NULL,
    [codPEE] INT NULL,
    [codempreedimento] INT NULL,
    [CodTipoRealizacao] VARCHAR(3) NOT NULL,
    [codrealizacao] BIGINT NULL,
    [Instrumento] VARCHAR(18) NULL,
    [PE] INT NULL,
    [datahorainiciorealizacao] DATETIME2 NULL,
    [CodSebrae] INT NOT NULL
);

CREATE TABLE [dbo].[TAValidaMeta1] (
    [UF] VARCHAR(10) NOT NULL,
    [codsebrae] INT NOT NULL,
    [CodSebraeSGE] UNIQUEIDENTIFIER NOT NULL,
    [codempreedimento] INT NOT NULL,
    [CodCliente] INT NOT NULL,
    [DataHoraInicioRealizacao] DATETIME2 NOT NULL,
    [faturam] INT NOT NULL
);

CREATE TABLE [dbo].[TAValidaMeta2] (
    [UF] VARCHAR(10) NOT NULL,
    [codsebrae] INT NOT NULL,
    [CodSebraeSGE] UNIQUEIDENTIFIER NOT NULL,
    [codempreedimento] INT NOT NULL,
    [CodCliente] INT NOT NULL,
    [DataHoraInicioRealizacao] DATETIME2 NOT NULL,
    [faturam] INT NOT NULL
);

CREATE TABLE [dbo].[TAValidaOrientacao] (
    [UF] VARCHAR(10) NULL,
    [codcliente] INT NOT NULL,
    [codempreedimento] INT NULL,
    [Instrumento] VARCHAR(30) NULL,
    [tiporealizacao] VARCHAR(3) NULL,
    [codrealizacao] INT NULL,
    [codrealizacaocomp] INT NULL,
    [datahorainiciorealizacao] DATETIME2 NOT NULL,
    [CodSebrae] INT NOT NULL
);

CREATE TABLE [dbo].[TDAbordagem] (
    [SkAbordagem] INT NOT NULL,
    [CodAbordagem] CHAR(2) NOT NULL,
    [DescAbordagem] VARCHAR(15) NOT NULL,
    [DtInicioRegistro] DATETIME NOT NULL,
    [DtFimRegistro] DATETIME NULL,
    [DtAtualizacaoRegistro] DATETIME NOT NULL
);

CREATE TABLE [dbo].[TDAcao] (
    [SkAcao] INT NOT NULL,
    [SkSebrae] INT NOT NULL,
    [SkIniciativa] INT NOT NULL,
    [CodAcao] UNIQUEIDENTIFIER NOT NULL,
    [NomeAcao] VARCHAR(250) NOT NULL,
    [DtInicioAcao] DATETIME NOT NULL,
    [DtFimAcao] DATETIME NULL,
    [DtInicioRegistro] DATETIME NOT NULL,
    [DtFimRegistro] DATETIME NULL,
    [DtAtualizacaoRegistro] DATETIME NOT NULL,
    [CodCentroCusto] VARCHAR(30) NULL,
    [CodCoordenadorAcao] UNIQUEIDENTIFIER NOT NULL,
    [NomeCoordenadorAcao] VARCHAR(50) NOT NULL
);

CREATE TABLE [dbo].[TDAceitabilidadeAtendimento] (
    [SkAceitabilidadeAtendimento] INT NOT NULL,
    [CodAceitabilidadeAtendimento] CHAR(2) NOT NULL,
    [DescAceitabilidadeAtendimento] VARCHAR(100) NOT NULL,
    [CodAceitabilidadePublicoAlvo] CHAR(2) NOT NULL,
    [DescAceitabilidadePublicoAlvo] VARCHAR(100) NOT NULL,
    [CodAceitabilidadeNaturezaJuridica] CHAR(2) NOT NULL,
    [DescAceitabilidadeNaturezaJuridica] VARCHAR(100) NOT NULL,
    [CodAceitabilidadeCadastro] CHAR(2) NOT NULL,
    [DescAceitabilidadeCadastro] VARCHAR(100) NOT NULL,
    [CodAceitabilidadeEstruturaOrcamentaria] CHAR(2) NOT NULL,
    [DescAceitabilidadeEstruturaOrcamentaria] VARCHAR(100) NOT NULL,
    [DtInicioRegistro] DATETIME NOT NULL,
    [DtFimRegistro] DATETIME NULL,
    [DtAtualizacaoRegistro] DATETIME NOT NULL
);

CREATE TABLE [dbo].[TDAfericaoResultado] (
    [SkAfericaoResultado] INT NOT NULL,
    [CodAfericaoResultado] INT NOT NULL,
    [DescAfericaoResultado] VARCHAR(100) NOT NULL,
    [DtInicioRegistro] DATETIME NOT NULL,
    [DtFimRegistro] DATETIME NULL,
    [DtAtualizacaoRegistro] DATETIME NOT NULL
);

CREATE TABLE [dbo].[TDAplicacaoInstrumento] (
    [SkAplicacaoInstrumento] INT NOT NULL,
    [CodAplicacaoInstrumento] CHAR(2) NOT NULL,
    [DescAplicacaoInstrumento] VARCHAR(100) NOT NULL,
    [DtInicioRegistro] DATETIME NOT NULL,
    [DtFimRegistro] DATETIME NULL,
    [DtAtualizacaoRegistro] DATETIME NOT NULL
);

CREATE TABLE [dbo].[TDCadastroInstrumento] (
    [SkCadastroInstrumento] INT NOT NULL,
    [CodCadastroInstrumento] INT NOT NULL,
    [DescCadastroInstrumento] VARCHAR(100) NOT NULL,
    [DtInicioRegistro] DATETIME NOT NULL,
    [DtFimRegistro] DATETIME NULL,
    [DtAtualizacaoRegistro] DATETIME NOT NULL
);

CREATE TABLE [dbo].[TDCapacitacao_UC] (
    [SkCapacitacao_UC] INT NOT NULL,
    [CodCapacitacao_UC] INT NOT NULL,
    [DescCapacitacao_UC] VARCHAR(250) NOT NULL,
    [DtInicioRegistro] DATETIME NOT NULL,
    [DtFimRegistro] DATETIME NULL,
    [DtAtualizacaoRegistro] DATETIME NOT NULL
);

CREATE TABLE [dbo].[TDCategoriaConteudoPai_UC] (
    [SkCategoriaConteudoPai_UC] INT NOT NULL,
    [CodCategoriaConteudoPai_UC] INT NOT NULL,
    [DescCategoriaConteudoPai_UC] VARCHAR(250) NOT NULL,
    [DtInicioRegistro] DATETIME NOT NULL,
    [DtFimRegistro] DATETIME NULL,
    [DtAtualizacaoRegistro] DATETIME NOT NULL
);

CREATE TABLE [dbo].[TDClassificacaoFuncional] (
    [SkClassificacaoFuncional] INT NOT NULL,
    [CodEscopoClassificacaoFuncional] CHAR(3) NOT NULL,
    [DescEscopoClassificacaoFuncional] VARCHAR(15) NOT NULL,
    [CodClassificacaoFuncional] INT NOT NULL,
    [DescClassificacaoFuncional] VARCHAR(100) NOT NULL,
    [DtInicioRegistro] DATETIME NOT NULL,
    [DtFimRegistro] DATETIME NULL,
    [DtAtualizacaoRegistro] DATETIME NOT NULL
);

CREATE TABLE [dbo].[TDClientePessoaFisica] (
    [SkClientePessoaFisica] INT NOT NULL,
    [CodClientePessoaFisica] INT NOT NULL,
    [NuCPF] VARCHAR(14) NULL,
    [NomeClientePessoaFisica] VARCHAR(120) NULL,
    [EmailClientePessoaFisica] VARCHAR(100) NULL,
    [NuTelefoneClientePessoaFisica] VARCHAR(100) NULL,
    [DtNascimento] DATETIME NULL,
    [CodGenero] VARCHAR(2) NULL,
    [Genero] VARCHAR(14) NULL,
    [DtInicioRegistro] DATETIME NOT NULL,
    [DtFimRegistro] DATETIME NULL,
    [DtAtualizacaoRegistro] DATETIME NOT NULL
);

CREATE TABLE [dbo].[TDClientePessoaJuridica] (
    [SkClientePessoaJuridica] INT NOT NULL,
    [CodClientePessoaJuridica] INT NOT NULL,
    [NuCNPJ] VARCHAR(40) NULL,
    [CodDAP] VARCHAR(40) NULL,
    [CodPescador] VARCHAR(40) NULL,
    [CodProdutorRural] VARCHAR(40) NULL,
    [NomeClientePessoaJuridica] VARCHAR(120) NULL,
    [DtConstituicaoEmpresa] DATETIME NULL,
    [DtInicioRegistro] DATETIME NOT NULL,
    [DtFimRegistro] DATETIME NULL,
    [DtAtualizacaoRegistro] DATETIME NOT NULL,
    [NIRF] NUMERIC(8,0) NULL,
    [CodSICAB] VARCHAR(40) NULL,
    [CodCAF] VARCHAR(24) NOT NULL,
    [CodCAEPF] NUMERIC(14,0) NOT NULL
);

CREATE TABLE [dbo].[TDCnaeFiscal] (
    [SkCnaeFiscal] INT NOT NULL,
    [CodCnaeFiscal] VARCHAR(7) NOT NULL,
    [CodDivisaoCnae] CHAR(2) NULL,
    [DescDivisaoCnae] VARCHAR(250) NULL,
    [CodGrupoCnae] CHAR(4) NULL,
    [DescGrupoCnae] VARCHAR(250) NULL,
    [CodClasseCnae] CHAR(7) NULL,
    [DescClasseCnae] VARCHAR(250) NULL,
    [CodSubClasseCnae] CHAR(10) NULL,
    [DescSubClasseCnae] VARCHAR(250) NULL,
    [DtInicioRegistro] DATETIME NOT NULL,
    [DtFimRegistro] DATETIME NULL,
    [DtAtualizacaoRegistro] DATETIME NOT NULL,
    [DescSetor] VARCHAR(30) NULL
);

CREATE TABLE [dbo].[TDColaborador_UC] (
    [SkColaborador_UC] INT NOT NULL,
    [CPFColaborador] VARCHAR(30) NOT NULL,
    [NomeColaborador] VARCHAR(250) NOT NULL,
    [DtInicioRegistro] DATETIME NOT NULL,
    [DtFimRegistro] DATETIME NULL,
    [DtAtualizacaoRegistro] DATETIME NOT NULL
);

CREATE TABLE [dbo].[TDEntidadeParceira] (
    [SkEntidadeParceira] INT NOT NULL,
    [CNPJEntidadeParceira] VARCHAR(14) NOT NULL,
    [NomeEntidadeParceira] VARCHAR(120) NOT NULL,
    [DtInicioRegistro] DATETIME NOT NULL,
    [DtFimRegistro] DATETIME NULL,
    [DtAtualizacaoRegistro] DATETIME NOT NULL
);

CREATE TABLE [dbo].[TDEstrategia] (
    [SkEstrategia] INT NOT NULL,
    [SkSebrae] INT NOT NULL,
    [CodTipoEstrategia] CHAR(2) NOT NULL,
    [DescTipoEstrategia] VARCHAR(100) NOT NULL,
    [CodEstrategia] INT NOT NULL,
    [DescEstrategia] VARCHAR(250) NOT NULL,
    [DtInicioRegistro] DATETIME NOT NULL,
    [DtFimRegistro] DATETIME NULL,
    [DtAtualizacaoRegistro] DATETIME NOT NULL
);

CREATE TABLE [dbo].[TDEtapaIniciativa] (
    [SkEtapaIniciativa] INT NOT NULL,
    [CodModuloIniciativa] CHAR(4) NOT NULL,
    [DescModuloIniciativa] VARCHAR(100) NOT NULL,
    [CodFaseIniciativa] CHAR(4) NOT NULL,
    [DescFaseIniciativa] VARCHAR(100) NOT NULL,
    [CodEtapaIniciativa] INT NOT NULL,
    [DescEtapaIniciativa] VARCHAR(100) NOT NULL,
    [DtInicioRegistro] DATETIME NOT NULL,
    [DtFimRegistro] DATETIME NULL,
    [DtAtualizacaoRegistro] DATETIME NOT NULL
);

CREATE TABLE [dbo].[TDEtapaMetrica] (
    [SkEtapaMetrica] SMALLINT NOT NULL,
    [CodEtapaMetrica] VARCHAR(2) NOT NULL,
    [DescEtapaMetrica] VARCHAR(15) NOT NULL,
    [DtInicioRegistro] DATETIME NOT NULL,
    [DtFimRegistro] DATETIME NULL,
    [DtAtualizacaoRegistro] DATETIME NOT NULL
);

CREATE TABLE [dbo].[TDFaixaAnosUtilizaSebrae] (
    [SkFaixaAnosUtilizaSebrae] INT NOT NULL,
    [QtAnosUtilizaSebrae] INT NOT NULL,
    [CodFaixaAnosUtilizaSebrae] CHAR(4) NOT NULL,
    [DescFaixaAnosUtilizaSebrae] VARCHAR(20) NOT NULL,
    [DtInicioRegistro] DATETIME NOT NULL,
    [DtFimRegistro] DATETIME NULL,
    [DtAtualizacaoRegistro] DATETIME NOT NULL
);

CREATE TABLE [dbo].[TDFaixaDiasSemAtualizacao] (
    [SkFaixaDiasSemAtualizacao] INT NOT NULL,
    [QtDiasSemAtualizacao] INT NOT NULL,
    [CodFaixaDiasSemAtualizacao] INT NOT NULL,
    [DescFaixaDiasSemAtualizacao] VARCHAR(20) NOT NULL,
    [DtInicioRegistro] DATETIME NOT NULL,
    [DtFimRegistro] DATETIME NULL,
    [DtAtualizacaoRegistro] DATETIME NOT NULL
);

CREATE TABLE [dbo].[TDFaixaEtariaPessoaFisica] (
    [SkFaixaEtariaPessoaFisica] INT NOT NULL,
    [QtAnosPessoaFisica] INT NOT NULL,
    [CodFaixaEtariaPessoaFisica] INT NOT NULL,
    [DescFaixaEtariaPessoaFisica] VARCHAR(50) NOT NULL,
    [DtInicioRegistro] DATETIME NOT NULL,
    [DtFimRegistro] DATETIME NULL,
    [DtAtualizacaoRegistro] DATETIME NOT NULL
);

CREATE TABLE [dbo].[TDFaixaEtariaPessoaJuridica] (
    [SkFaixaEtariaPessoaJuridica] INT NOT NULL,
    [QtAnosPessoaJuridica] INT NOT NULL,
    [CodFaixaEtariaPessoaJuridica] INT NOT NULL,
    [DescFaixaEtariaPessoaJuridica] VARCHAR(50) NOT NULL,
    [DtInicioRegistro] DATETIME NOT NULL,
    [DtFimRegistro] DATETIME NULL,
    [DtAtualizacaoRegistro] DATETIME NOT NULL
);

CREATE TABLE [dbo].[TDGrauEscolaridade] (
    [SkGrauEscolaridade] SMALLINT NOT NULL,
    [CodGrauEscolaridade] SMALLINT NULL,
    [DescGrauEscolaridade] VARCHAR(50) NULL,
    [DtInicioRegistro] DATETIME NOT NULL,
    [DtFimRegistro] DATETIME NULL,
    [DtAtualizacaoRegistro] DATETIME NOT NULL
);

CREATE TABLE [dbo].[TDIndicadorInstitucional] (
    [SkIndicadorInstitucional] INT NOT NULL,
    [CodTipoIndicadorInstitucional] CHAR(2) NOT NULL,
    [DescTipoIndicadorInstitucional] VARCHAR(20) NOT NULL,
    [CodIndicadorInstitucional] INT NOT NULL,
    [DescIndicadorInstitucional] VARCHAR(100) NOT NULL,
    [DescIndicadorInstitucionalReduzido] VARCHAR(50) NULL,
    [MetricaIndicadorInstitucional] VARCHAR(20) NOT NULL,
    [DtInicioRegistro] DATETIME NOT NULL,
    [DtFimRegistro] DATETIME NULL,
    [DtAtualizacaoRegistro] DATETIME NOT NULL
);

CREATE TABLE [dbo].[TDIndSebraeParceiro] (
    [SkIndSebraeParceiro] INT NOT NULL,
    [CodIndSebraeParceiro] CHAR(2) NOT NULL,
    [DescIndSebraeParceiro] VARCHAR(100) NOT NULL,
    [DtInicioRegistro] DATETIME NOT NULL,
    [DtFimRegistro] DATETIME NULL,
    [DtAtualizacaoRegistro] DATETIME NOT NULL
);

CREATE TABLE [dbo].[TDIniciativa] (
    [SkIniciativa] INT NOT NULL,
    [SkSebrae] INT NOT NULL,
    [SkEtapaIniciativa] INT NOT NULL,
    [CodTipoIniciativa] CHAR(2) NOT NULL,
    [DescTipoIniciativa] VARCHAR(50) NOT NULL,
    [CodTipologiaIniciativa] CHAR(2) NOT NULL,
    [DescTipologiaIniciativa] VARCHAR(50) NOT NULL,
    [CodIniciativa] UNIQUEIDENTIFIER NOT NULL,
    [NuIniciativa] VARCHAR(12) NOT NULL,
    [NomeIniciativa] VARCHAR(100) NOT NULL,
    [IndIniciativaAtiva] CHAR(1) NOT NULL,
    [IndIniciativaPactuada] CHAR(1) NOT NULL,
    [CodIntensidadeGestaoIniciativa] VARCHAR(2) NOT NULL,
    [DescIntensidadeGestaoIniciativa] VARCHAR(30) NOT NULL,
    [CodGestorInterno] UNIQUEIDENTIFIER NOT NULL,
    [NomeGestorInterno] VARCHAR(50) NOT NULL,
    [EmailGestorInterno] VARCHAR(100) NULL,
    [NuTelefoneGestorInterno] VARCHAR(20) NULL,
    [CodCoordenadorNacional] UNIQUEIDENTIFIER NOT NULL,
    [NomeCoordenadorNacional] VARCHAR(50) NOT NULL,
    [EmailCoordenadorNacional] VARCHAR(100) NULL,
    [NuTelefoneCoordenadorNacional] VARCHAR(20) NULL,
    [CodCoordenadorEstadual] UNIQUEIDENTIFIER NOT NULL,
    [NomeCoordenadorEstadual] VARCHAR(50) NOT NULL,
    [EmailCoordenadorEstadual] VARCHAR(100) NULL,
    [NuTelefoneCoordenadorEstadual] VARCHAR(20) NULL,
    [CodCoordenadorRegional] UNIQUEIDENTIFIER NOT NULL,
    [NomeCoordenadorRegional] VARCHAR(50) NOT NULL,
    [EmailCoordenadorRegional] VARCHAR(100) NULL,
    [NuTelefoneCoordenadorRegional] VARCHAR(20) NULL,
    [DtInicioIniciativa] DATETIME NOT NULL,
    [DtFimIniciativa] DATETIME NULL,
    [DtInicioRegistro] DATETIME NOT NULL,
    [DtFimRegistro] DATETIME NULL,
    [DtAtualizacaoRegistro] DATETIME NOT NULL,
    [IndEstruturadoExterno] CHAR(1) NOT NULL,
    [CodFormaGestao] CHAR(1) NULL,
    [DescFormaGestao] VARCHAR(10) NULL,
    [CodGestorExterno] UNIQUEIDENTIFIER NULL,
    [NomeGestorExterno] VARCHAR(50) NULL,
    [EmailGestorExterno] VARCHAR(60) NULL,
    [NuTelefoneGestorExterno] VARCHAR(20) NULL,
    [CodEntidadeParceira] UNIQUEIDENTIFIER NULL,
    [CNPJEntidadeParceira] CHAR(14) NULL,
    [NomeEntidadeParceira] VARCHAR(100) NULL,
    [CodClassificacaoIniciativa] CHAR(4) NULL,
    [DescClassificacaoIniciativa] VARCHAR(50) NULL,
    [CodFinalidade] VARCHAR(4) NULL,
    [DescFinalidade] VARCHAR(50) NULL
);

CREATE TABLE [dbo].[TDInstrumento] (
    [SkInstrumento] INT NOT NULL,
    [CodInstrumento] INT NOT NULL,
    [DescInstrumento] VARCHAR(100) NOT NULL,
    [DtInicioRegistro] DATETIME NOT NULL,
    [DtFimRegistro] DATETIME NULL,
    [DtAtualizacaoRegistro] DATETIME NOT NULL
);

CREATE TABLE [dbo].[TDLimites] (
    [SkLimites] INT NOT NULL,
    [CodLimite] INT NOT NULL,
    [DescLimite] VARCHAR(100) NULL,
    [Unidade] VARCHAR(30) NOT NULL,
    [CodMaxMin] CHAR(1) NOT NULL,
    [DtInicioRegistro] DATETIME NOT NULL,
    [DtFimRegistro] DATETIME NULL,
    [DtAtualizacaoRegistro] DATETIME NOT NULL
);

CREATE TABLE [dbo].[TDLocalizacao] (
    [SkLocalizacao] INT NOT NULL,
    [CodPais] UNIQUEIDENTIFIER NOT NULL,
    [DescPais] VARCHAR(100) NOT NULL,
    [SiglaRegiao] CHAR(2) NOT NULL,
    [DescRegiao] VARCHAR(30) NOT NULL,
    [CodUF] UNIQUEIDENTIFIER NOT NULL,
    [DescUF] VARCHAR(100) NOT NULL,
    [SiglaUF] CHAR(3) NOT NULL,
    [CodMunicipio] CHAR(7) NOT NULL,
    [DescMunicipio] VARCHAR(100) NULL,
    [IndMunicipio] CHAR(2) NOT NULL,
    [DtInicioRegistro] DATETIME NOT NULL,
    [DtFimRegistro] DATETIME NULL,
    [DtAtualizacaoRegistro] DATETIME NOT NULL
);

CREATE TABLE [dbo].[TDMensuracaoResultado] (
    [SkMensuracaoResultado] INT NOT NULL,
    [CodMensuracaoResultado] SMALLINT NOT NULL,
    [DescMensuracaoResultado] VARCHAR(100) NOT NULL,
    [DtInicioRegistro] DATETIME NOT NULL,
    [DtFimRegistro] DATETIME NULL,
    [DtAtualizacaoRegistro] DATETIME NOT NULL
);

CREATE TABLE [dbo].[TDMetaMobilizadora] (
    [SkMetaMobilizadora] INT NOT NULL,
    [CodGrupoMetaMobilizadora] CHAR(4) NOT NULL,
    [SiglaGrupoMetaMobilizadora] VARCHAR(30) NOT NULL,
    [NuMetaMobilizadora] VARCHAR(100) NOT NULL,
    [CodMetaMobilizadora] UNIQUEIDENTIFIER NOT NULL,
    [DescMetaMobilizadora] VARCHAR(100) NOT NULL,
    [AnoMetaMobilizadoraPpa] INT NOT NULL,
    [UnidadeMetaMobilizadora] VARCHAR(20) NULL,
    [DtInicioRegistro] DATETIME NOT NULL,
    [DtFimRegistro] DATETIME NULL,
    [DtAtualizacaoRegistro] DATETIME NOT NULL
);

CREATE TABLE [dbo].[TDMetricaInstrumento] (
    [SkMetricaInstrumento] INT NOT NULL,
    [NomeMetricaInstrumento] VARCHAR(50) NULL,
    [DtInicioRegistro] DATETIME NULL,
    [DtAtualizacaoRegistro] DATETIME NULL,
    [DtFimRegistro] DATETIME NULL,
    [DescMetricaInstrumento] VARCHAR(100) NULL
);

CREATE TABLE [dbo].[TDNaturezaContabil] (
    [SkNaturezaContabil] INT NOT NULL,
    [CodEstruturadoGrupo1] VARCHAR(25) NOT NULL,
    [DescricaoGrupo1] VARCHAR(255) NOT NULL,
    [CodEstruturadoGrupo2] VARCHAR(25) NOT NULL,
    [DescricaoGrupo2] VARCHAR(255) NOT NULL,
    [CodEstruturadoGrupo3] VARCHAR(25) NOT NULL,
    [DescricaoGrupo3] VARCHAR(255) NOT NULL,
    [CodEstruturadoGrupo4] VARCHAR(25) NOT NULL,
    [DescricaoGrupo4] VARCHAR(255) NOT NULL,
    [CodEstruturadoGrupo5] VARCHAR(25) NOT NULL,
    [DescricaoGrupo5] VARCHAR(255) NOT NULL,
    [CodEstruturadoGrupo6] VARCHAR(25) NOT NULL,
    [DescricaoGrupo6] VARCHAR(255) NOT NULL,
    [DtInicioRegistro] DATETIME NOT NULL,
    [DtFimRegistro] DATETIME NULL,
    [DtAtualizacaoRegistro] DATETIME NOT NULL
);

CREATE TABLE [dbo].[TDNaturezaJuridica] (
    [SkNaturezaJuridica] INT NOT NULL,
    [CodNaturezaJuridica] SMALLINT NOT NULL,
    [DescNaturezaJuridica] VARCHAR(50) NOT NULL,
    [DtInicioRegistro] DATETIME NOT NULL,
    [DtFimRegistro] DATETIME NULL,
    [DtAtualizacaoRegistro] DATETIME NOT NULL
);

CREATE TABLE [dbo].[TDNaturezaOrcamentaria] (
    [SkNaturezaOrcamentaria] INT NOT NULL,
    [CodNaturezaGrupo1] INT NOT NULL,
    [CodEstruturadoGrupo1] VARCHAR(7) NOT NULL,
    [DescricaoGrupo1] VARCHAR(50) NOT NULL,
    [CodNaturezaGrupo2] INT NOT NULL,
    [CodEstruturadoGrupo2] VARCHAR(7) NOT NULL,
    [DescricaoGrupo2] VARCHAR(50) NOT NULL,
    [CodNaturezaGrupo3] INT NOT NULL,
    [CodEstruturadoGrupo3] VARCHAR(7) NOT NULL,
    [DescricaoGrupo3] VARCHAR(50) NOT NULL,
    [SiglaGrupo3] VARCHAR(10) NOT NULL,
    [CodNaturezaGrupo4] INT NOT NULL,
    [CodEstruturadoGrupo4] VARCHAR(7) NOT NULL,
    [DescricaoGrupo4] VARCHAR(50) NOT NULL,
    [DtInicioRegistro] DATETIME NOT NULL,
    [DtFimRegistro] DATETIME NULL,
    [DtAtualizacaoRegistro] DATETIME NOT NULL
);

CREATE TABLE [dbo].[TDNivelOcupacional_UC] (
    [SkNivelOcupacional_UC] INT NOT NULL,
    [CodNivelOcupacional_UC] INT NOT NULL,
    [DescNivelOcupacional_UC] VARCHAR(100) NOT NULL,
    [DtInicioRegistro] DATETIME NOT NULL,
    [DtFimRegistro] DATETIME NULL,
    [DtAtualizacaoRegistro] DATETIME NOT NULL
);

CREATE TABLE [dbo].[TDOrigem] (
    [SkOrigem] INT NOT NULL,
    [CodOrigem] VARCHAR(3) NOT NULL,
    [DescOrigem] VARCHAR(50) NOT NULL,
    [DtInicioRegistro] DATETIME NOT NULL,
    [DtFimRegistro] DATETIME NULL,
    [DtAtualizacaoRegistro] DATETIME NOT NULL
);

CREATE TABLE [dbo].[TDPadraoOrganizacao] (
    [SkPadraoOrganizacao] INT NOT NULL,
    [CodPadraoOrganizacao] VARCHAR(2) NOT NULL,
    [NomePadraoOrganizacao] VARCHAR(60) NOT NULL,
    [DtInicioRegistro] DATETIME NOT NULL,
    [DtFimRegistro] DATETIME NULL,
    [DtAtualizacaoRegistro] DATETIME NOT NULL
);

CREATE TABLE [dbo].[TDPPA] (
    [SkPPA] INT NOT NULL,
    [CodPPA] UNIQUEIDENTIFIER NOT NULL,
    [DescPPA] VARCHAR(27) NULL,
    [AnoInicioPPA] INT NOT NULL,
    [AnoFimPPA] INT NOT NULL,
    [CodFoto] INT NOT NULL,
    [DescFoto] VARCHAR(40) NOT NULL,
    [DtInicioRegistro] DATETIME NOT NULL,
    [DtFimRegistro] DATETIME NULL,
    [DtAtualizacaoRegistro] DATETIME NOT NULL,
    [CodFotoMes] INT NULL,
    [DescFotoMes] VARCHAR(20) NULL
);

CREATE TABLE [dbo].[TDProduto] (
    [SkProduto] INT NOT NULL,
    [SkSebrae] INT NOT NULL,
    [CodFamiliaProduto] INT NOT NULL,
    [DescFamiliaProduto] VARCHAR(50) NOT NULL,
    [CodProdutoPrincipal] BIGINT NOT NULL,
    [DescProdutoPrincipal] VARCHAR(300) NOT NULL,
    [CodProduto] BIGINT NOT NULL,
    [DescProduto] VARCHAR(300) NOT NULL,
    [IndProdutoNacional] CHAR(1) NOT NULL,
    [DtInicioRegistro] DATETIME NOT NULL,
    [DtFimRegistro] DATETIME NULL,
    [DtAtualizacaoRegistro] DATETIME NOT NULL
);

CREATE TABLE [dbo].[TDPrograma] (
    [SkPrograma] INT NOT NULL,
    [SkSebrae] INT NOT NULL,
    [CodTipoPrograma] CHAR(2) NOT NULL,
    [DescTipoPrograma] VARCHAR(50) NOT NULL,
    [CodPrograma] UNIQUEIDENTIFIER NOT NULL,
    [NomePrograma] VARCHAR(100) NOT NULL,
    [DtInicioRegistro] DATETIME NOT NULL,
    [DtFimRegistro] DATETIME NULL,
    [DtAtualizacaoRegistro] DATETIME NOT NULL,
    [CodProgramaPai] UNIQUEIDENTIFIER NULL,
    [NomeProgramaPai] VARCHAR(100) NULL,
    [CodFormaOperacionalizacao] INT NOT NULL,
    [DescFormaOperacionalizacao] VARCHAR(100) NOT NULL
);

CREATE TABLE [dbo].[TDPromocaoInstrumento] (
    [SkPromocaoInstrumento] INT NOT NULL,
    [CodPromocaoInstrumento] INT NOT NULL,
    [DescPromocaoInstrumento] VARCHAR(100) NOT NULL,
    [DtInicioRegistro] DATETIME NOT NULL,
    [DtFimRegistro] DATETIME NULL,
    [DtAtualizacaoRegistro] DATETIME NOT NULL,
    [CodPromocaoInstrumento2017] SMALLINT NOT NULL
);

CREATE TABLE [dbo].[TDPublicoAlvo] (
    [SkPublicoAlvo] INT NOT NULL,
    [CodNaturezaPublicoAlvo] VARCHAR(6) NOT NULL,
    [DescNaturezaPublicoAlvo] VARCHAR(50) NOT NULL,
    [CodSegmentoPublicoAlvo] VARCHAR(6) NOT NULL,
    [DescSegmentoPublicoAlvo] VARCHAR(50) NOT NULL,
    [CodPublicoAlvoSGE] UNIQUEIDENTIFIER NULL,
    [DtInicioRegistro] DATETIME NOT NULL,
    [DtFimRegistro] DATETIME NULL,
    [DtAtualizacaoRegistro] DATETIME NOT NULL,
    [Ordem] SMALLINT NULL
);

CREATE TABLE [dbo].[TDResultado] (
    [SkResultado] INT NOT NULL,
    [CodTema] SMALLINT NOT NULL,
    [DscTema] VARCHAR(50) NOT NULL,
    [CodIndicador] SMALLINT NOT NULL,
    [DscIndicador] NVARCHAR(100) NOT NULL,
    [CodUnidadeMedida] SMALLINT NOT NULL,
    [DscUnidadeMedida] VARCHAR(100) NOT NULL,
    [CodVerbo] SMALLINT NOT NULL,
    [DscVerbo] VARCHAR(50) NOT NULL,
    [CodPolaridade] SMALLINT NOT NULL,
    [DscPolaridade] VARCHAR(50) NOT NULL,
    [CodResultado] INT NOT NULL,
    [DscResultado] VARCHAR(256) NOT NULL,
    [DtInicioRegistro] DATETIME NOT NULL,
    [DtFimRegistro] DATETIME NULL,
    [DtAtualizacaoRegistro] DATETIME NOT NULL
);

CREATE TABLE [dbo].[TDResultadoNumero] (
    [SkResultadoNumero] SMALLINT NOT NULL,
    [CodResultadoNumero] SMALLINT NOT NULL,
    [DescResultadoNumero] VARCHAR(15) NOT NULL,
    [DtInicioRegistro] DATETIME NOT NULL,
    [DtFimRegistro] DATETIME NULL,
    [DtAtualizacaoRegistro] DATETIME NOT NULL
);

CREATE TABLE [dbo].[TDSebrae] (
    [SkSebrae] INT NOT NULL,
    [SiglaRegiaoSebrae] CHAR(2) NOT NULL,
    [DescRegiaoSebrae] VARCHAR(30) NOT NULL,
    [CodSebrae] UNIQUEIDENTIFIER NOT NULL,
    [NomeSebrae] CHAR(9) NOT NULL,
    [SiglaSebrae] CHAR(2) NOT NULL,
    [DtInicioRegistro] DATETIME NOT NULL,
    [DtFimRegistro] DATETIME NULL,
    [DtAtualizacaoRegistro] DATETIME NOT NULL,
    [TipoSebrae] VARCHAR(20) NULL,
    [NuCNPJ] VARCHAR(14) NULL
);

CREATE TABLE [dbo].[TDSetorEconomicoSebrae] (
    [SkSetorEconomicoSebrae] INT NOT NULL,
    [CodSetorEconomicoSebrae] VARCHAR(2) NULL,
    [NomeSetorEconomicoSebrae] VARCHAR(100) NOT NULL,
    [CodSegmentoEconomicoSebrae] INT NOT NULL,
    [NomeSegmentoEconomicoSebrae] VARCHAR(100) NOT NULL,
    [DtInicioRegistro] DATETIME NOT NULL,
    [DtFimRegistro] DATETIME NULL,
    [DtAtualizacaoRegistro] DATETIME NOT NULL
);

CREATE TABLE [dbo].[TDSituacaoInstrumento] (
    [SkSituacaoInstrumento] INT NOT NULL,
    [CodSituacaoInstrumento] CHAR(2) NOT NULL,
    [DescSituacaoInstrumento] VARCHAR(100) NOT NULL,
    [DtInicioRegistro] DATETIME NOT NULL,
    [DtFimRegistro] DATETIME NULL,
    [DtAtualizacaoRegistro] DATETIME NOT NULL
);

CREATE TABLE [dbo].[TDSituacaoMarcoCritico] (
    [SkSituacaoMarcoCritico] INT NOT NULL,
    [CodSituacaoMarcoCritico] CHAR(2) NOT NULL,
    [DescSituacaoMarcoCritico] VARCHAR(15) NOT NULL,
    [DtInicioRegistro] DATETIME NOT NULL,
    [DtFimRegistro] DATETIME NULL,
    [DtAtualizacaoRegistro] DATETIME NOT NULL
);

CREATE TABLE [dbo].[TDSituacaoResultado] (
    [SkSituacaoResultado] INT NOT NULL,
    [CodSituacaoResultado] INT NOT NULL,
    [DescSituacaoResultado] VARCHAR(100) NOT NULL,
    [DtInicioRegistro] DATETIME NOT NULL,
    [DtFimRegistro] DATETIME NULL,
    [DtAtualizacaoRegistro] DATETIME NOT NULL
);

CREATE TABLE [dbo].[TDStatusMatricula_UC] (
    [SkStatusMatricula_UC] INT NOT NULL,
    [CodStatusMatricula_UC] SMALLINT NOT NULL,
    [DescStatusMatricula_UC] VARCHAR(100) NOT NULL,
    [DtInicioRegistro] DATETIME NOT NULL,
    [DtFimRegistro] DATETIME NULL,
    [DtAtualizacaoRegistro] DATETIME NOT NULL
);

CREATE TABLE [dbo].[TDTemaAtendimento] (
    [SkTemaAtendimento] INT NOT NULL,
    [CodGrupoTemaAtendimento] INT NOT NULL,
    [DescGrupoTemaAtendimento] VARCHAR(50) NOT NULL,
    [CodTemaAtendimento] INT NOT NULL,
    [DescTemaAtendimento] VARCHAR(50) NOT NULL,
    [DtInicioRegistro] DATETIME NOT NULL,
    [DtFimRegistro] DATETIME NULL,
    [DtAtualizacaoRegistro] DATETIME NOT NULL
);

CREATE TABLE [dbo].[TDTempo] (
    [SkTempo] INT NOT NULL,
    [DtCalendario] DATETIME NOT NULL,
    [NuAnoMesDia] INT NOT NULL,
    [NuAnoMes] INT NOT NULL,
    [NuAno] INT NOT NULL,
    [NuMes] INT NOT NULL,
    [NuDia] INT NOT NULL,
    [NomeMes] VARCHAR(10) NOT NULL,
    [NomeMesReduzido] VARCHAR(3) NOT NULL,
    [NuBimestre] INT NOT NULL,
    [NomeBimestre] VARCHAR(20) NOT NULL,
    [NomeBimestreReduzido] VARCHAR(10) NOT NULL,
    [NuTrimestre] INT NOT NULL,
    [NomeTrimestre] VARCHAR(20) NOT NULL,
    [NomeTrimestreReduzido] VARCHAR(10) NOT NULL,
    [NuQuadrimestre] INT NOT NULL,
    [NomeQuadrimestre] VARCHAR(20) NOT NULL,
    [NomeQuadrimestreReduzido] VARCHAR(10) NOT NULL,
    [NuSemestre] INT NOT NULL,
    [NomeSemestre] VARCHAR(20) NOT NULL,
    [NomeSemestreReduzido] VARCHAR(10) NOT NULL,
    [NuDiaAno] INT NOT NULL,
    [NuDiaSemana] INT NOT NULL,
    [NomeDiaSemana] VARCHAR(20) NOT NULL,
    [NuSemanaMes] INT NOT NULL,
    [NuSemanaAno] INT NOT NULL,
    [IndFimdeSemana] CHAR(1) NOT NULL,
    [IndUltimoDiaSemana] CHAR(1) NOT NULL,
    [IndUltimoDiaMes] CHAR(1) NOT NULL,
    [DtUltimoDiaSemana] DATETIME NOT NULL,
    [DtUltimoDiaMes] DATETIME NOT NULL,
    [QtDiasMes] INT NOT NULL,
    [DtAtualizacaoRegistro] DATETIME NOT NULL,
    [DescAnoMes] CHAR(8) NULL
);

CREATE TABLE [dbo].[TDTerritorioSebrae] (
    [SkTerritorioSebrae] INT NOT NULL,
    [SkSebrae] INT NOT NULL,
    [CodTerritorioSebrae] UNIQUEIDENTIFIER NOT NULL,
    [NomeTerritorioSebrae] VARCHAR(100) NOT NULL,
    [DtInicioRegistro] DATETIME NOT NULL,
    [DtFimRegistro] DATETIME NULL,
    [DtAtualizacaoRegistro] DATETIME NOT NULL
);

CREATE TABLE [dbo].[TDTipoCapacitacao_UC] (
    [SkTipoCapacitacao_UC] INT NOT NULL,
    [CodTipoCapacitacao_UC] VARCHAR(2) NOT NULL,
    [DescTipoCapacitacao_UC] VARCHAR(19) NOT NULL,
    [DtInicioRegistro] DATETIME NOT NULL,
    [DtFimRegistro] DATETIME NULL,
    [DtAtualizacaoRegistro] DATETIME NOT NULL
);

CREATE TABLE [dbo].[TDTipoPublicoAlvo] (
    [SkTipoPublicoAlvo] INT NOT NULL,
    [CodTipoPublicoAlvo] VARCHAR(2) NOT NULL,
    [DescTipoPublicoAlvo] VARCHAR(16) NOT NULL,
    [DtInicioRegistro] DATETIME NOT NULL,
    [DtFimRegistro] DATETIME NULL,
    [DtAtualizacaoRegistro] DATETIME NOT NULL
);

CREATE TABLE [dbo].[TDTipoRepresentante] (
    [SkTipoRepresentante] INT NOT NULL,
    [CodigoTipoRepresentante] INT NOT NULL,
    [DescricaoTipoRepresentante] VARCHAR(30) NOT NULL,
    [DtInicioRegistro] DATETIME NOT NULL,
    [DtFimRegistro] DATETIME NULL,
    [DtAtualizacaoRegistro] DATETIME NOT NULL
);

CREATE TABLE [dbo].[TDUnidadeOrganizacional] (
    [SkUnidadeOrganizacional] INT NOT NULL,
    [SkSebrae] INT NOT NULL,
    [SiglaConselhoDiretoria] VARCHAR(14) NOT NULL,
    [NomeConselhoDiretoria] VARCHAR(100) NOT NULL,
    [CodUnidadeOrganizacional] UNIQUEIDENTIFIER NOT NULL,
    [SiglaUnidadeOrganizacional] VARCHAR(14) NOT NULL,
    [NomeUnidadeOrganizacional] VARCHAR(100) NOT NULL,
    [DtInicioRegistro] DATETIME NOT NULL,
    [DtFimRegistro] DATETIME NULL,
    [DtAtualizacaoRegistro] DATETIME NOT NULL
);

CREATE TABLE [dbo].[TDVinculoPrograma] (
    [SkVinculoPrograma] INT NOT NULL,
    [CodVinculoPrograma] INT NOT NULL,
    [DescVinculoPrograma] VARCHAR(15) NOT NULL,
    [DtInicioRegistro] DATETIME NOT NULL,
    [DtFimRegistro] DATETIME NULL,
    [DtAtualizacaoRegistro] DATETIME NOT NULL
);

CREATE TABLE [dbo].[Temp_Atendimentos_SC_10082016] (
    [CodSebraeSiac] INT NOT NULL,
    [CodClienteSiac] INT NOT NULL,
    [codrealizacaoSiac] INT NOT NULL,
    [DataHoraInicioRealizacaoSiac] DATETIME2 NOT NULL,
    [CodOrigem] VARCHAR(3) NOT NULL,
    [CodClientePessoaJuridica] INT NULL,
    [codprodutorrural] VARCHAR(20) NULL,
    [codpescador] VARCHAR(40) NULL,
    [coddap] VARCHAR(40) NULL,
    [codconst] SMALLINT NOT NULL,
    [faturam] SMALLINT NOT NULL,
    [tiporealizacao] VARCHAR(3) NOT NULL,
    [DescCategoria] VARCHAR(100) NOT NULL,
    [tipo] CHAR(2) NULL,
    [temaait] INT NULL,
    [CodFamiliaProduto] SMALLINT NULL,
    [CodFocoTematico] SMALLINT NULL,
    [temact] INT NULL,
    [codprograma] UNIQUEIDENTIFIER NULL
);

CREATE TABLE [dbo].[Temp_TFExecucaoInstrumento_240520161708] (
    [Linha] BIGINT NULL,
    [SkPPA] INT NOT NULL,
    [SkSebrae] INT NOT NULL,
    [SkOrigem] INT NOT NULL,
    [SkTempo] INT NOT NULL,
    [SkInstrumento] INT NOT NULL,
    [SkPromocaoInstrumento] INT NOT NULL,
    [SkAbordagem] INT NOT NULL,
    [SkAplicacaoInstrumento] INT NOT NULL,
    [SkProduto] INT NOT NULL,
    [SkSituacaoInstrumento] INT NOT NULL,
    [SkCadastroInstrumento] INT NOT NULL,
    [SkTemaAtendimento] INT NOT NULL,
    [SkIniciativa] INT NOT NULL,
    [SkEstrategia_ObjetivoNacional] INT NOT NULL,
    [SkEstrategia_ObjetivoLocal] INT NOT NULL,
    [SkEstrategia_PrioridadeLocal] INT NOT NULL,
    [SkEstrategia_MacroProcessoLocal] INT NOT NULL,
    [SkPadraoOrganizacao] INT NOT NULL,
    [SkUnidadeOrganizacional_Iniciativa] INT NOT NULL,
    [SkPrograma] INT NOT NULL,
    [SkSetorEconomicoSebrae] INT NOT NULL,
    [SkTerritorioSebrae] INT NOT NULL,
    [SkAcao] INT NOT NULL,
    [SkUnidadeOrganizacionalAcao] INT NOT NULL,
    [SkClassificacaoFuncional] INT NOT NULL,
    [SkProgramaAcao] INT NOT NULL,
    [SkAplicacaoInstrumento_Execucao] INT NOT NULL,
    [NuRealizacoesExecutado] INT NULL,
    [NuHorasAplicadasExecutado] INT NULL,
    [NuInscritosExecutado] INT NULL,
    [NuParticipantesExecutado] INT NULL,
    [NuPequenosNegociosParticipantesExecutado] INT NULL,
    [NuConcluintesExecutado] INT NULL,
    [NuPessoasInformadasExecutado] INT NULL,
    [NuHorasRecebidasExecutado] NUMERIC(18,2) NULL,
    [VrRecursosExecutado] NUMERIC(18,2) NULL,
    [NuAtendimentosExecutado] INT NULL
);

CREATE TABLE [dbo].[TFCapacitacao_UC] (
    [SkPPA] INT NOT NULL,
    [SkSebrae] INT NOT NULL,
    [SkSebraeResponsavel] INT NOT NULL,
    [SkTempo_Inicio] INT NOT NULL,
    [SkTempo_Termino] INT NOT NULL,
    [SkTipoCapacitacao_UC] INT NOT NULL,
    [SkCategoriaConteudoPai_UC] INT NOT NULL,
    [SkCapacitacao_UC] INT NOT NULL,
    [SkColaborador_UC] INT NOT NULL,
    [SkNivelOcupacional_UC] INT NOT NULL,
    [SkStatusMatricula_UC] INT NOT NULL,
    [CodMatricula] INT NOT NULL,
    [CargaHoraria] INT NULL,
    [DtInicioRegistro] DATETIME NOT NULL,
    [DtAtualizacaoRegistro] DATETIME NOT NULL,
    [DtFimRegistro] DATETIME NULL,
    [IDCapacitacao_UC] INT NOT NULL
);

CREATE TABLE [dbo].[TFComprometimentoDespesa_UF] (
    [SkSebrae] INT NOT NULL,
    [SkIniciativa] INT NOT NULL,
    [SkTempo] INT NOT NULL,
    [SkPPA] INT NOT NULL,
    [SkEstrategia_ObjetivoNacional] INT NOT NULL,
    [SkEstrategia_ObjetivoLocal] INT NOT NULL,
    [SkEstrategia_PrioridadeLocal] INT NOT NULL,
    [SkEstrategia_MacroProcessoLocal] INT NOT NULL,
    [SkPadraoOrganizacao] INT NOT NULL,
    [SkUnidadeOrganizacional_Iniciativa] INT NOT NULL,
    [SkPrograma] INT NOT NULL,
    [SkSetorEconomicoSebrae] INT NOT NULL,
    [SkTerritorioSebrae] INT NOT NULL,
    [SkNaturezaOrcamentaria] INT NOT NULL,
    [SkAcao] INT NOT NULL,
    [SkPrograma_Acao] INT NOT NULL,
    [SkUnidadeOrganizacional_Acao] INT NOT NULL,
    [SkClassificacaoFuncional] INT NOT NULL,
    [SkVinculoPrograma] INT NOT NULL,
    [CodLancamento] VARCHAR(36) NOT NULL,
    [VlrDespesaComprometido] NUMERIC(18,2) NULL,
    [DtInicioRegistro] DATETIME NOT NULL,
    [DtAtualizacaoRegistro] DATETIME NOT NULL,
    [IDComprometimentoDespesa] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[TFExecucaoAtendimento] (
    [SkPPA] INT NOT NULL,
    [SkSebrae] INT NOT NULL,
    [SkTempo] INT NOT NULL,
    [SkInstrumento] INT NOT NULL,
    [SkPromocaoInstrumento] INT NOT NULL,
    [SkAbordagem] INT NOT NULL,
    [SkAplicacaoInstrumento] INT NOT NULL,
    [SkOrigem] INT NOT NULL,
    [SkProduto] INT NOT NULL,
    [SkSituacaoInstrumento] INT NOT NULL,
    [SkCadastroInstrumento] INT NOT NULL,
    [SkTemaAtendimento] INT NOT NULL,
    [SkPublicoAlvo] INT NOT NULL,
    [SkClientePessoaFisicaAtendida] INT NULL,
    [SkClientePessoaFisicaPotencial] INT NULL,
    [SkFaixaAnosUtilizaSebraePessoaFisica] INT NOT NULL,
    [SkFaixaEtariaPessoaFisica] INT NOT NULL,
    [SkLocalizacaoPessoaFisica] INT NOT NULL,
    [SkClientePessoaJuridica] INT NULL,
    [SkFaixaAnosUtilizaSebraePessoaJuridica] INT NOT NULL,
    [SkFaixaEtariaPessoaJuridica] INT NOT NULL,
    [SkCnaeFiscal] INT NOT NULL,
    [SkNaturezaJuridica] INT NOT NULL,
    [SkLocalizacaoPessoaJuridica] INT NOT NULL,
    [SkIniciativa] INT NOT NULL,
    [SkIniciativaEvento] INT NOT NULL,
    [SkEstrategia_ObjetivoNacional] INT NOT NULL,
    [SkEstrategia_ObjetivoLocal] INT NOT NULL,
    [SkEstrategia_PrioridadeLocal] INT NOT NULL,
    [SkEstrategia_MacroProcessoLocal] INT NOT NULL,
    [SkPadraoOrganizacao] INT NOT NULL,
    [SkUnidadeOrganizacional_Iniciativa] INT NOT NULL,
    [SkPrograma] INT NOT NULL,
    [SkSetorEconomicoSebrae] INT NOT NULL,
    [SkTerritorioSebrae] INT NOT NULL,
    [SkAcao] INT NOT NULL,
    [SkAcaoEvento] INT NOT NULL,
    [SkUnidadeOrganizacionalAcao] INT NOT NULL,
    [SkClassificacaoFuncional] INT NOT NULL,
    [SkProgramaAcao] INT NOT NULL,
    [SkMetaMobilizadoraPN] INT NOT NULL,
    [SkMetaMobilizadoraInovacao] INT NOT NULL,
    [SkMetaMobilizadoraMEI] INT NOT NULL,
    [SkMetaMobilizadoraME] INT NOT NULL,
    [SkMetaMobilizadoraEPP] INT NOT NULL,
    [SkAceitabilidadeAtendimento] INT NOT NULL,
    [NuAtendimentosExecutado] INT NOT NULL,
    [NuHorasRecebidasExecutado] NUMERIC(18,2) NULL,
    [VrRecursosExecutado] NUMERIC(18,2) NULL,
    [NuClientesSemCadastroExecutado] INT NOT NULL,
    [CodSebraeSiac] INT NOT NULL,
    [CodClienteSiac] INT NOT NULL,
    [DataHoraInicioRealizacaoSiac] DATETIME NOT NULL,
    [CodRealizacaoSiac] BIGINT NOT NULL,
    [DtInicioRegistro] DATETIME NOT NULL,
    [DtAtualizacaoRegistro] DATETIME NOT NULL,
    [SkMetaMobilizadoraQualidade] INT NOT NULL,
    [SkGrauEscolaridade] SMALLINT NOT NULL,
    [SkAplicacaoInstrumento_Execucao] INT NOT NULL,
    [SkVinculoPrograma] INT NOT NULL,
    [SkTipoRepresentante] INT NOT NULL,
    [SkEntidadeParceira] INT NOT NULL,
    [IDExecucaoAtendimento] INT NOT NULL,
    [SkTipoPublicoAlvo] INT NOT NULL
);

CREATE TABLE [dbo].[TFExecucaoContabil] (
    [SkSebrae] INT NOT NULL,
    [SkPPA] INT NOT NULL,
    [SkTempo] INT NOT NULL,
    [SkNaturezaContabil] INT NOT NULL,
    [VlrSaldoContabil] NUMERIC(18,2) NULL,
    [DtInicioRegistro] DATETIME NOT NULL,
    [DtAtualizacaoRegistro] DATETIME NOT NULL,
    [DtFimRegistro] DATETIME NULL,
    [IDExecucaoContabil] INT NOT NULL
);

CREATE TABLE [dbo].[TFExecucaoCSNConsolidado] (
    [SkSebrae] INT NOT NULL,
    [SkIniciativa] INT NOT NULL,
    [SkTempo] INT NOT NULL,
    [SkPPA] INT NOT NULL,
    [SkEstrategia_ObjetivoNacional] INT NOT NULL,
    [SkEstrategia_ObjetivoLocal] INT NOT NULL,
    [SkEstrategia_PrioridadeLocal] INT NOT NULL,
    [SkEstrategia_MacroProcessoLocal] INT NOT NULL,
    [SkPadraoOrganizacao] INT NOT NULL,
    [SkUnidadeOrganizacional_Iniciativa] INT NOT NULL,
    [SkPrograma] INT NOT NULL,
    [SkSetorEconomicoSebrae] INT NOT NULL,
    [SkTerritorioSebrae] INT NOT NULL,
    [VlrReceitaIniciativaOrcadoAjustadoCSN] NUMERIC(18,2) NULL,
    [VlrReceitaIniciativaOrcadoAjustadoCSNAgentes] NUMERIC(18,2) NULL,
    [VlrReceitaIniciativaOrcadoAjustadoOutrasFontes] NUMERIC(18,2) NULL,
    [VlrDespesaExecutadoCSN] NUMERIC(18,2) NULL,
    [VlrDespesaExecutadoCSNAgentes] NUMERIC(18,2) NULL,
    [VlrDespesaExecutadoOutrasFontes] NUMERIC(18,2) NULL,
    [DtInicioRegistro] DATETIME NOT NULL,
    [DtAtualizacaoRegistro] DATETIME NOT NULL,
    [IDExecucaoCSNConsolidado] INT NOT NULL
);

CREATE TABLE [dbo].[TFExecucaoDespesa] (
    [SkSebrae] INT NOT NULL,
    [SkIniciativa] INT NOT NULL,
    [SkTempo] INT NOT NULL,
    [SkPPA] INT NOT NULL,
    [SkEstrategia_ObjetivoNacional] INT NOT NULL,
    [SkEstrategia_ObjetivoLocal] INT NOT NULL,
    [SkEstrategia_PrioridadeLocal] INT NOT NULL,
    [SkEstrategia_MacroProcessoLocal] INT NOT NULL,
    [SkPadraoOrganizacao] INT NOT NULL,
    [SkUnidadeOrganizacional_Iniciativa] INT NOT NULL,
    [SkPrograma] INT NOT NULL,
    [SkSetorEconomicoSebrae] INT NOT NULL,
    [SkTerritorioSebrae] INT NOT NULL,
    [SkNaturezaOrcamentaria] INT NOT NULL,
    [SkProgramaAcao] INT NOT NULL,
    [SkAcao] INT NOT NULL,
    [SkUnidadeOrganizacional_Acao] INT NOT NULL,
    [SkClassificacaoFuncional] INT NOT NULL,
    [CodLancamento] VARCHAR(36) NOT NULL,
    [VlrDespesaExecutado] NUMERIC(18,2) NULL,
    [DtInicioRegistro] DATETIME NOT NULL,
    [DtAtualizacaoRegistro] DATETIME NOT NULL,
    [SkSebrae_UF] INT NULL,
    [SkVinculoPrograma] INT NOT NULL,
    [IDExecucaoDespesa] INT NOT NULL
);

CREATE TABLE [dbo].[TFExecucaoDespesaParceiro] (
    [SkSebrae] INT NOT NULL,
    [SkIndSebraeParceiro] INT NOT NULL,
    [SkIniciativa] INT NOT NULL,
    [SkTempo] INT NOT NULL,
    [SkPPA] INT NOT NULL,
    [SkEstrategia_ObjetivoNacional] INT NOT NULL,
    [SkEstrategia_ObjetivoLocal] INT NOT NULL,
    [SkEstrategia_PrioridadeLocal] INT NOT NULL,
    [SkEstrategia_MacroProcessoLocal] INT NOT NULL,
    [SkPadraoOrganizacao] INT NOT NULL,
    [SkUnidadeOrganizacional_Iniciativa] INT NOT NULL,
    [SkPrograma] INT NOT NULL,
    [SkSetorEconomicoSebrae] INT NOT NULL,
    [SkTerritorioSebrae] INT NOT NULL,
    [VlrDespesaExecutado] NUMERIC(18,2) NOT NULL,
    [DtInicioRegistro] DATETIME NOT NULL,
    [DtAtualizacaoRegistro] DATETIME NOT NULL,
    [IDExecucaoDespesaParceiro] INT NOT NULL
);

CREATE TABLE [dbo].[TFExecucaoIndicadorDesempenhoManual] (
    [SkPPA] INT NOT NULL,
    [SkSebrae] INT NOT NULL,
    [SkTempo] INT NOT NULL,
    [SkIndicadorInstitucional] INT NOT NULL,
    [NuIndicadorDesempenho] DECIMAL(15,2) NOT NULL,
    [DataInicioRegistro] DATETIME NOT NULL,
    [DataAtualizacaoRegistro] DATETIME NOT NULL,
    [IDExecucaoIndicadorDesempenhoManual] INT NOT NULL
);

CREATE TABLE [dbo].[TFExecucaoInstrumento] (
    [SkPPA] INT NOT NULL,
    [SkSebrae] INT NOT NULL,
    [SkOrigem] INT NOT NULL,
    [SkTempo] INT NOT NULL,
    [SkInstrumento] INT NOT NULL,
    [SkPromocaoInstrumento] INT NOT NULL,
    [SkAbordagem] INT NOT NULL,
    [SkAplicacaoInstrumento] INT NOT NULL,
    [SkProduto] INT NOT NULL,
    [SkSituacaoInstrumento] INT NOT NULL,
    [SkCadastroInstrumento] INT NOT NULL,
    [SkTemaAtendimento] INT NOT NULL,
    [SkIniciativa] INT NOT NULL,
    [SkEstrategia_ObjetivoNacional] INT NOT NULL,
    [SkEstrategia_ObjetivoLocal] INT NOT NULL,
    [SkEstrategia_PrioridadeLocal] INT NOT NULL,
    [SkEstrategia_MacroProcessoLocal] INT NOT NULL,
    [SkPadraoOrganizacao] INT NOT NULL,
    [SkUnidadeOrganizacional_Iniciativa] INT NOT NULL,
    [SkPrograma] INT NOT NULL,
    [SkSetorEconomicoSebrae] INT NOT NULL,
    [SkTerritorioSebrae] INT NOT NULL,
    [SkAcao] INT NOT NULL,
    [SkUnidadeOrganizacionalAcao] INT NOT NULL,
    [SkClassificacaoFuncional] INT NOT NULL,
    [SkProgramaAcao] INT NOT NULL,
    [NuRealizacoesExecutado] INT NULL,
    [NuHorasAplicadasExecutado] DECIMAL(18,2) NULL,
    [NuInscritosExecutado] INT NULL,
    [NuParticipantesExecutado] INT NULL,
    [NuPequenosNegociosParticipantesExecutado] INT NULL,
    [NuConcluintesExecutado] INT NULL,
    [NuPessoasInformadasExecutado] INT NULL,
    [DtInicioRegistro] DATETIME NOT NULL,
    [DtAtualizacaoRegistro] DATETIME NOT NULL,
    [NuHorasRecebidasExecutado] NUMERIC(18,2) NULL,
    [VrRecursosExecutado] NUMERIC(18,2) NULL,
    [NuAtendimentosExecutado] INT NULL,
    [SkAplicacaoInstrumento_Execucao] INT NOT NULL,
    [SkVinculoPrograma] INT NOT NULL,
    [IDExecucaoInstrumento] INT NOT NULL,
    [SkTipoPublicoAlvo] INT NOT NULL
);

CREATE TABLE [dbo].[TFExecucaoOrcamentaria] (
    [SkPPA] INT NOT NULL,
    [SkTempo] INT NOT NULL,
    [SkSebrae] INT NOT NULL,
    [SkIniciativa] INT NOT NULL,
    [SkAcao] INT NOT NULL,
    [SkClassificacaoFuncional] INT NOT NULL,
    [SkNaturezaOrcamentaria] INT NOT NULL,
    [SkSetorEconomicoSebrae] INT NOT NULL,
    [SkUnidadeOrganizacional_Acao] INT NOT NULL,
    [SkTerritorioSebrae] INT NOT NULL,
    [VlrDespesaOrcadoPactuado] NUMERIC(18,2) NOT NULL,
    [VlrDespesaOrcadoOriginal] NUMERIC(18,2) NOT NULL,
    [VlrDespesaOrcadoAjustado] NUMERIC(18,2) NOT NULL,
    [VlrDespesaExecutado] NUMERIC(18,2) NOT NULL,
    [VlrReceitaOrcadoOriginal] NUMERIC(18,2) NOT NULL,
    [VlrReceitaOrcadoAjustado] NUMERIC(18,2) NOT NULL,
    [VlrReceitaExecutado] NUMERIC(18,2) NOT NULL,
    [IDExecucaoOrcamentaria] INT NOT NULL
);

CREATE TABLE [dbo].[TFExecucaoReceita] (
    [SkSebrae] INT NOT NULL,
    [SkTempo] INT NOT NULL,
    [SkPPA] INT NOT NULL,
    [SkNaturezaOrcamentaria] INT NOT NULL,
    [CodLancamento] VARCHAR(36) NOT NULL,
    [VlrReceitaExecutado] NUMERIC(18,2) NOT NULL,
    [DtInicioRegistro] DATETIME NOT NULL,
    [DtAtualizacaoRegistro] DATETIME NOT NULL,
    [IDExecucaoReceita] INT NOT NULL
);

CREATE TABLE [dbo].[TFExecucaoReceitaIniciativa] (
    [SkSebrae] INT NOT NULL,
    [SkIniciativa] INT NOT NULL,
    [SkTempo] INT NOT NULL,
    [SkPPA] INT NOT NULL,
    [SkEstrategia_ObjetivoNacional] INT NOT NULL,
    [SkEstrategia_ObjetivoLocal] INT NOT NULL,
    [SkEstrategia_PrioridadeLocal] INT NOT NULL,
    [SkEstrategia_MacroProcessoLocal] INT NOT NULL,
    [SkPadraoOrganizacao] INT NOT NULL,
    [SkUnidadeOrganizacional_Iniciativa] INT NOT NULL,
    [SkPrograma] INT NOT NULL,
    [SkSetorEconomicoSebrae] INT NOT NULL,
    [SkTerritorioSebrae] INT NOT NULL,
    [SkNaturezaOrcamentaria] INT NOT NULL,
    [CodLancamento] VARCHAR(36) NOT NULL,
    [VlrReceitaIniciativaExecutado] NUMERIC(18,2) NOT NULL,
    [DtInicioRegistro] DATETIME NOT NULL,
    [DtAtualizacaoRegistro] DATETIME NOT NULL,
    [IDExecucaoReceitaIniciativa] INT NOT NULL
);

CREATE TABLE [dbo].[TFGestaoIniciativa] (
    [SkSebrae] INT NOT NULL,
    [SkIniciativa] INT NOT NULL,
    [SkTempo] INT NOT NULL,
    [SkPPA] INT NOT NULL,
    [SkEstrategia_ObjetivoNacional] INT NOT NULL,
    [SkEstrategia_ObjetivoLocal] INT NOT NULL,
    [SkEstrategia_PrioridadeLocal] INT NOT NULL,
    [SkEstrategia_MacroProcessoLocal] INT NOT NULL,
    [SkPadraoOrganizacao] INT NOT NULL,
    [SkUnidadeOrganizacional_Iniciativa] INT NOT NULL,
    [SkPrograma] INT NOT NULL,
    [SkSetorEconomicoSebrae] INT NOT NULL,
    [SkTerritorioSebrae] INT NOT NULL,
    [QtDiasSemAtualizacao] INT NOT NULL,
    [DtInicioRegistro] DATETIME NOT NULL,
    [DtAtualizacaoRegistro] DATETIME NOT NULL,
    [SkFaixaDiasSemAtualizacao] INT NULL,
    [IDGestaoIniciativa] INT NOT NULL
);

CREATE TABLE [dbo].[TFGestaoMarcoCritico] (
    [SkSebrae] INT NOT NULL,
    [SkIniciativa] INT NOT NULL,
    [SkTempo] INT NOT NULL,
    [SkPPA] INT NOT NULL,
    [SkEstrategia_ObjetivoNacional] INT NOT NULL,
    [SkEstrategia_ObjetivoLocal] INT NOT NULL,
    [SkEstrategia_PrioridadeLocal] INT NOT NULL,
    [SkEstrategia_MacroProcessoLocal] INT NOT NULL,
    [SkPadraoOrganizacao] INT NOT NULL,
    [SkUnidadeOrganizacional_Iniciativa] INT NOT NULL,
    [SkPrograma] INT NOT NULL,
    [SkSetorEconomicoSebrae] INT NOT NULL,
    [SkTerritorioSebrae] INT NOT NULL,
    [SkSituacaoMarcoCritico] INT NOT NULL,
    [SkProgramaAcao] INT NOT NULL,
    [SkAcao] INT NOT NULL,
    [SkUnidadeOrganizacional_Acao] INT NOT NULL,
    [SkClassificacaoFuncional] INT NOT NULL,
    [QtMarcoCritico] INT NOT NULL,
    [DtInicioRegistro] DATETIME NOT NULL,
    [DtAtualizacaoRegistro] DATETIME NOT NULL,
    [SkVinculoPrograma] INT NOT NULL,
    [IDGestaoMarcoCritico] INT NOT NULL
);

CREATE TABLE [dbo].[TFGestaoResultado] (
    [SkSebrae] INT NOT NULL,
    [SkPPA] INT NOT NULL,
    [SkTempo] INT NOT NULL,
    [SkIniciativa] INT NOT NULL,
    [SkEstrategia_ObjetivoNacional] INT NOT NULL,
    [SkEstrategia_ObjetivoLocal] INT NOT NULL,
    [SkEstrategia_PrioridadeLocal] INT NOT NULL,
    [SkEstrategia_MacroProcessoLocal] INT NOT NULL,
    [SkPadraoOrganizacao] INT NOT NULL,
    [SkUnidadeOrganizacional_Iniciativa] INT NOT NULL,
    [SkPrograma] INT NOT NULL,
    [SkSetorEconomicoSebrae] INT NOT NULL,
    [SkTerritorioSebrae] INT NOT NULL,
    [SkResultado] INT NOT NULL,
    [SkAfericaoResultado] INT NOT NULL,
    [SkMensuracaoResultado] INT NOT NULL,
    [SkSituacaoResultado] INT NOT NULL,
    [SkResultadoNumero] SMALLINT NOT NULL,
    [ValorMeta] DECIMAL(15,2) NOT NULL,
    [ValorMensuracao] DECIMAL(15,2) NOT NULL,
    [DtInicioRegistro] DATETIME NOT NULL,
    [DtAtualizacaoRegistro] DATETIME NOT NULL,
    [QtMeta] INT NOT NULL,
    [IDGestaoResultado] INT NOT NULL
);

CREATE TABLE [dbo].[TFIndicadorDesempenho] (
    [SkPPA] INT NOT NULL,
    [SkSebrae] INT NOT NULL,
    [SkIndicadorInstitucional] INT NOT NULL,
    [SkTempo] INT NOT NULL,
    [NuMetaIndInstitPlanejadoOriginalMes] DECIMAL(15,2) NOT NULL,
    [NuMetaIndInstitPlanejadoPactuadoMes] DECIMAL(15,2) NOT NULL,
    [NuMetaIndInstitPlanejadoAjustadoMes] DECIMAL(15,2) NOT NULL,
    [NuMetaIndInstitExecutadoMes] DECIMAL(15,2) NOT NULL,
    [DtInicioRegistro] DATETIME NOT NULL,
    [DtAtualizacaoRegistro] DATETIME NOT NULL,
    [IDIndicadorDesempenho] INT NOT NULL
);

CREATE TABLE [dbo].[TFInstrumentoConsolidado] (
    [SkPPA] INT NOT NULL,
    [SkSebrae] INT NOT NULL,
    [SkOrigem] INT NOT NULL,
    [SkTempo] INT NOT NULL,
    [SkInstrumento] INT NOT NULL,
    [SkPromocaoInstrumento] INT NOT NULL,
    [SkAbordagem] INT NOT NULL,
    [SkAplicacaoInstrumento] INT NOT NULL,
    [SkProduto] INT NOT NULL,
    [SkSituacaoInstrumento] INT NOT NULL,
    [SkCadastroInstrumento] INT NOT NULL,
    [SkTemaAtendimento] INT NOT NULL,
    [SkIniciativa] INT NOT NULL,
    [SkEstrategia_ObjetivoNacional] INT NOT NULL,
    [SkEstrategia_ObjetivoLocal] INT NOT NULL,
    [SkEstrategia_PrioridadeLocal] INT NOT NULL,
    [SkEstrategia_MacroProcessoLocal] INT NOT NULL,
    [SkPadraoOrganizacao] INT NOT NULL,
    [SkUnidadeOrganizacional_Iniciativa] INT NOT NULL,
    [SkPrograma] INT NOT NULL,
    [SkSetorEconomicoSebrae] INT NOT NULL,
    [SkTerritorioSebrae] INT NOT NULL,
    [SkAcao] INT NOT NULL,
    [SkUnidadeOrganizacionalAcao] INT NOT NULL,
    [SkClassificacaoFuncional] INT NOT NULL,
    [SkProgramaAcao] INT NOT NULL,
    [SkMetricaInstrumento] INT NOT NULL,
    [VlrOrcadoOriginal] DECIMAL(18,2) NULL,
    [VlrOrcadoPactuado] DECIMAL(18,2) NULL,
    [VlrOrcadoAjustado] DECIMAL(18,2) NULL,
    [VlrExecutado] DECIMAL(18,2) NULL,
    [DtInicioRegistro] DATETIME NOT NULL,
    [DtAtualizacaoRegistro] DATETIME NOT NULL,
    [SkAplicacaoInstrumento_Execucao] INT NOT NULL,
    [SkVinculoPrograma] INT NOT NULL,
    [IDInstrumentoConsolidado] INT NOT NULL,
    [SkTipoPublicoAlvo] INT NOT NULL
);

CREATE TABLE [dbo].[TFMetaMobilizadora] (
    [SkPPA] INT NOT NULL,
    [SkSebrae] INT NOT NULL,
    [SkMetaMobilizadora] INT NOT NULL,
    [SkTempo] INT NOT NULL,
    [NuMetaOriginal] BIGINT NOT NULL,
    [NuMetaPactuado] BIGINT NOT NULL,
    [NuMetaAjustado] BIGINT NOT NULL,
    [NuMetaExecutado] BIGINT NOT NULL,
    [NuMetaUniversoOriginal] BIGINT NOT NULL,
    [NuMetaUniversoPactuado] BIGINT NOT NULL,
    [NuMetaUniversoAjustado] BIGINT NOT NULL,
    [NuMetaUniversoExecutado] BIGINT NOT NULL,
    [PcMetaUniversoOriginal] DECIMAL(10,1) NOT NULL,
    [PcMetaUniversoPactuado] DECIMAL(10,1) NOT NULL,
    [PcMetaUniversoAjustado] DECIMAL(10,1) NOT NULL,
    [PcMetaUniversoExecutado] DECIMAL(10,1) NOT NULL,
    [DtInicioRegistro] DATETIME NOT NULL,
    [DtAtualizacaoRegistro] DATETIME NOT NULL,
    [IDMetaMobilizadora] INT NOT NULL
);

CREATE TABLE [dbo].[TFOrcamentoAtendimento] (
    [SkSebrae] INT NOT NULL,
    [SkIniciativa] INT NOT NULL,
    [SkTempo] INT NOT NULL,
    [SkPPA] INT NOT NULL,
    [SkEstrategia_ObjetivoNacional] INT NOT NULL,
    [SkEstrategia_ObjetivoLocal] INT NOT NULL,
    [SkEstrategia_PrioridadeLocal] INT NOT NULL,
    [SkEstrategia_MacroProcessoLocal] INT NOT NULL,
    [SkPadraoOrganizacao] INT NOT NULL,
    [SkUnidadeOrganizacional_Iniciativa] INT NOT NULL,
    [SkPrograma] INT NOT NULL,
    [SkSetorEconomicoSebrae] INT NOT NULL,
    [SkTerritorioSebrae] INT NOT NULL,
    [SkProgramaAcao] INT NOT NULL,
    [SkInstrumento] INT NOT NULL,
    [SkAcao] INT NOT NULL,
    [SkUnidadeOrganizacionalAcao] INT NOT NULL,
    [SkClassificacaoFuncional] INT NOT NULL,
    [SkPromocaoInstrumento] INT NOT NULL,
    [SkAplicacaoInstrumento] INT NOT NULL,
    [NuRealizacoesOrcadoOriginal] INT NULL,
    [NuInscritosOrcadoOriginal] INT NULL,
    [NuParticipantesOrcadoOriginal] INT NULL,
    [NuPequenosNegociosParticipantesOrcadoOriginal] INT NULL,
    [NuPessoasInformadasOrcadoOriginal] INT NULL,
    [NuHorasAplicadasOrcadoOriginal] INT NULL,
    [NuRealizacoesOrcadoPactuado] INT NULL,
    [NuInscritosOrcadoPactuado] INT NULL,
    [NuParticipantesOrcadoPactuado] INT NULL,
    [NuPequenosNegociosParticipantesOrcadoPactuado] INT NULL,
    [NuPessoasInformadasOrcadoPactuado] INT NULL,
    [NuHorasAplicadasOrcadoPactuado] INT NULL,
    [NuRealizacoesOrcadoAjustado] INT NULL,
    [NuInscritosOrcadoAjustado] INT NULL,
    [NuParticipantesOrcadoAjustado] INT NULL,
    [NuPequenosNegociosParticipantesOrcadoAjustado] INT NULL,
    [NuPessoasInformadasOrcadoAjustado] INT NULL,
    [NuHorasAplicadasOrcadoAjustado] INT NULL,
    [DtInicioRegistro] DATETIME NOT NULL,
    [DtAtualizacaoRegistro] DATETIME NOT NULL,
    [SkVinculoPrograma] INT NOT NULL,
    [IDOrcamentoAtendimento] INT NOT NULL
);

CREATE TABLE [dbo].[TFOrcamentoDespesa] (
    [SkSebrae] INT NOT NULL,
    [SkIniciativa] INT NOT NULL,
    [SkTempo] INT NOT NULL,
    [SkPPA] INT NOT NULL,
    [SkEstrategia_ObjetivoNacional] INT NOT NULL,
    [SkEstrategia_ObjetivoLocal] INT NOT NULL,
    [SkEstrategia_PrioridadeLocal] INT NOT NULL,
    [SkEstrategia_MacroProcessoLocal] INT NOT NULL,
    [SkPadraoOrganizacao] INT NOT NULL,
    [SkUnidadeOrganizacional_Iniciativa] INT NOT NULL,
    [SkPrograma] INT NOT NULL,
    [SkSetorEconomicoSebrae] INT NOT NULL,
    [SkTerritorioSebrae] INT NOT NULL,
    [SkNaturezaOrcamentaria] INT NOT NULL,
    [SkProgramaAcao] INT NOT NULL,
    [SkAcao] INT NOT NULL,
    [SkUnidadeOrganizacional_Acao] INT NOT NULL,
    [SkClassificacaoFuncional] INT NOT NULL,
    [VlrDespesaOrcadoOriginal] NUMERIC(18,2) NULL,
    [VlrDespesaOrcadoPactuado] NUMERIC(18,2) NULL,
    [VlrDespesaOrcadoAjustado] NUMERIC(18,2) NULL,
    [DtInicioRegistro] DATETIME NOT NULL,
    [DtAtualizacaoRegistro] DATETIME NOT NULL,
    [SkSebrae_UF] INT NULL,
    [SkVinculoPrograma] INT NOT NULL,
    [IDOrcamentoDespesa] INT NOT NULL
);

CREATE TABLE [dbo].[TFOrcamentoIniciativa] (
    [SkSebrae] INT NOT NULL,
    [SkIniciativa] INT NOT NULL,
    [SkPPA] INT NOT NULL,
    [SkProgramaAcao] INT NOT NULL,
    [SkAcao] INT NOT NULL,
    [SkUnidadeOrganizacional_Acao] INT NOT NULL,
    [SkClassificacaoFuncional] INT NOT NULL,
    [SkSebrae_UF] INT NOT NULL,
    [SkVinculoPrograma] INT NOT NULL,
    [NuAcaoOriginal] INT NOT NULL,
    [NuAcaoPactuado] INT NOT NULL,
    [NuAcaoAjustado] INT NOT NULL,
    [DtInicioRegistro] DATETIME NOT NULL,
    [DtAtualizacaoRegistro] DATETIME NOT NULL,
    [SkEtapaMetrica] SMALLINT NULL,
    [IDOrcamentoIniciativa] INT NOT NULL
);

CREATE TABLE [dbo].[TFOrcamentoReceita] (
    [SkSebrae] INT NOT NULL,
    [SkTempo] INT NOT NULL,
    [SkPPA] INT NOT NULL,
    [SkNaturezaOrcamentaria] INT NOT NULL,
    [VlrReceitaOrcadoOriginal] NUMERIC(18,2) NOT NULL,
    [VlrReceitaOrcadoPactuado] NUMERIC(18,2) NOT NULL,
    [VlrReceitaOrcadoAjustado] NUMERIC(18,2) NOT NULL,
    [DtInicioRegistro] DATETIME NULL,
    [DtAtualizacaoRegistro] DATETIME NULL,
    [DtFimRegistro] DATETIME NULL,
    [IDOrcamentoReceita] INT NOT NULL
);

CREATE TABLE [dbo].[TFOrcamentoReceitaIniciativa] (
    [SkSebrae] INT NOT NULL,
    [SkIniciativa] INT NOT NULL,
    [SkTempo] INT NOT NULL,
    [SkPPA] INT NOT NULL,
    [SkEstrategia_ObjetivoNacional] INT NOT NULL,
    [SkEstrategia_ObjetivoLocal] INT NOT NULL,
    [SkEstrategia_PrioridadeLocal] INT NOT NULL,
    [SkEstrategia_MacroProcessoLocal] INT NOT NULL,
    [SkPadraoOrganizacao] INT NOT NULL,
    [SkUnidadeOrganizacional_Iniciativa] INT NOT NULL,
    [SkPrograma] INT NOT NULL,
    [SkSetorEconomicoSebrae] INT NOT NULL,
    [SkTerritorioSebrae] INT NOT NULL,
    [SkNaturezaOrcamentaria] INT NOT NULL,
    [VlrReceitaIniciativaOrcadoOriginal] NUMERIC(18,2) NULL,
    [VlrReceitaIniciativaOrcadoPactuado] NUMERIC(18,2) NULL,
    [VlrReceitaIniciativaOrcadoAjustado] NUMERIC(18,2) NULL,
    [DtInicioRegistro] DATETIME NOT NULL,
    [DtAtualizacaoRegistro] DATETIME NOT NULL,
    [IDOrcamentoReceitaIniciativa] INT NOT NULL
);

CREATE TABLE [dbo].[TFPlanejamentoAtendimento] (
    [SkSebrae] INT NOT NULL,
    [SkPublicoAlvo] INT NOT NULL,
    [SkIniciativa] INT NOT NULL,
    [SkTempo] INT NOT NULL,
    [SkPPA] INT NOT NULL,
    [SkEstrategia_ObjetivoNacional] INT NOT NULL,
    [SkEstrategia_ObjetivoLocal] INT NOT NULL,
    [SkEstrategia_PrioridadeLocal] INT NOT NULL,
    [SkEstrategia_MacroProcessoLocal] INT NOT NULL,
    [SkPadraoOrganizacao] INT NOT NULL,
    [SkUnidadeOrganizacional_Iniciativa] INT NOT NULL,
    [SkPrograma] INT NOT NULL,
    [SkSetorEconomicoSebrae] INT NOT NULL,
    [SkTerritorioSebrae] INT NOT NULL,
    [NuClientesPlanejadoOriginal] INT NOT NULL,
    [NuClientesPlanejadoPactuado] INT NOT NULL,
    [NuClientesPlanejadoAjustado] INT NOT NULL,
    [DtInicioRegistro] DATETIME NOT NULL,
    [DtAtualizacaoRegistro] DATETIME NOT NULL,
    [IDPlanejamentoAtendimento] INT NOT NULL
);

CREATE TABLE [dbo].[TFPlanejamentoCSN] (
    [SkSebrae] INT NOT NULL,
    [SkIniciativa] INT NOT NULL,
    [SkTempo] INT NOT NULL,
    [SkPPA] INT NOT NULL,
    [SkEstrategia_ObjetivoNacional] INT NOT NULL,
    [SkEstrategia_ObjetivoLocal] INT NOT NULL,
    [SkEstrategia_PrioridadeLocal] INT NOT NULL,
    [SkEstrategia_MacroProcessoLocal] INT NOT NULL,
    [SkPadraoOrganizacao] INT NOT NULL,
    [SkUnidadeOrganizacional_Iniciativa] INT NOT NULL,
    [SkPrograma] INT NOT NULL,
    [SkSetorEconomicoSebrae] INT NOT NULL,
    [SkTerritorioSebrae] INT NOT NULL,
    [VlrCSNAprovadoOriginal] NUMERIC(18,2) NOT NULL,
    [VlrCSNAprovadoPactuado] NUMERIC(18,2) NOT NULL,
    [VlrCSNAprovadoAjustado] NUMERIC(18,2) NOT NULL,
    [VlrCSNPropostoOriginal] NUMERIC(18,2) NOT NULL,
    [VlrCSNPropostoPactuado] NUMERIC(18,2) NOT NULL,
    [VlrCSNPropostoAjustado] NUMERIC(18,2) NOT NULL,
    [DtInicioRegistro] DATETIME NOT NULL,
    [DtAtualizacaoRegistro] DATETIME NOT NULL,
    [IDPlanejamentoCSN] INT NOT NULL
);

CREATE TABLE [dbo].[TFPlanejamentoDespesa] (
    [SkSebrae] INT NOT NULL,
    [SkIndSebraeParceiro] INT NOT NULL,
    [SkIniciativa] INT NOT NULL,
    [SkTempo] INT NOT NULL,
    [SkPPA] INT NOT NULL,
    [SkEstrategia_ObjetivoNacional] INT NOT NULL,
    [SkEstrategia_ObjetivoLocal] INT NOT NULL,
    [SkEstrategia_PrioridadeLocal] INT NOT NULL,
    [SkEstrategia_MacroProcessoLocal] INT NOT NULL,
    [SkPadraoOrganizacao] INT NOT NULL,
    [SkUnidadeOrganizacional_Iniciativa] INT NOT NULL,
    [SkPrograma] INT NOT NULL,
    [SkSetorEconomicoSebrae] INT NOT NULL,
    [SkTerritorioSebrae] INT NOT NULL,
    [VlrDespesaPlanejadoOriginal] NUMERIC(18,2) NOT NULL,
    [VlrDespesaPlanejadoPactuado] NUMERIC(18,2) NOT NULL,
    [VlrDespesaPlanejadoAjustado] NUMERIC(18,2) NOT NULL,
    [DtInicioRegistro] DATETIME NOT NULL,
    [DtAtualizacaoRegistro] DATETIME NOT NULL,
    [IDPlanejamentoDespesa] INT NOT NULL
);

CREATE TABLE [dbo].[TFPlanejamentoIndicadorInstitucional] (
    [SkPPA] INT NOT NULL,
    [SkSebrae] INT NOT NULL,
    [SkIndicadorInstitucional] INT NOT NULL,
    [SkTempo] INT NOT NULL,
    [NuMetaIndicadorInstitucionalPlanejadoOriginal] DECIMAL(15,2) NOT NULL,
    [NuMetaIndicadorInstitucionalPlanejadoPactuado] DECIMAL(15,2) NOT NULL,
    [NuMetaIndicadorInstitucionalPlanejadoAjustado] DECIMAL(15,2) NOT NULL,
    [DtInicioRegistro] DATETIME NOT NULL,
    [DtAtualizacaoRegistro] DATETIME NOT NULL,
    [IDPlanejamentoIndicadorInstitucional] INT NOT NULL
);

CREATE TABLE [dbo].[TFPlanejamentoIniciativa] (
    [SkSebrae] INT NOT NULL,
    [SkIniciativa] INT NOT NULL,
    [SkPPA] INT NOT NULL,
    [SkEtapaMetrica] SMALLINT NOT NULL,
    [SkEstrategia_ObjetivoNacional] INT NOT NULL,
    [SkEstrategia_ObjetivoLocal] INT NOT NULL,
    [SkEstrategia_PrioridadeLocal] INT NOT NULL,
    [SkEstrategia_MacroProcessoLocal] INT NOT NULL,
    [SkPadraoOrganizacao] INT NOT NULL,
    [SkUnidadeOrganizacional_Iniciativa] INT NOT NULL,
    [SkPrograma] INT NOT NULL,
    [SkSetorEconomicoSebrae] INT NOT NULL,
    [SkTerritorioSebrae] INT NOT NULL,
    [NuIniciativaOriginal] INT NOT NULL,
    [NuIniciativaPactuado] INT NOT NULL,
    [NuIniciativaAjustado] INT NOT NULL,
    [DtInicioRegistro] DATETIME NOT NULL,
    [DtAtualizacaoRegistro] DATETIME NOT NULL,
    [IDPlanejamentoIniciativa] INT NOT NULL
);

CREATE TABLE [dbo].[TFPlanejamentoLimite] (
    [SkSebrae] INT NOT NULL,
    [SkPPA] INT NOT NULL,
    [SkLimites] INT NOT NULL,
    [Valor] NUMERIC(15,2) NOT NULL,
    [DtInicioRegistro] DATETIME NOT NULL,
    [DtAtualizacaoRegistro] DATETIME NOT NULL,
    [IDPlanejamentoLimite] INT NOT NULL
);

CREATE TABLE [dbo].[TFPlanejamentoMunicipio] (
    [SkSebrae] INT NOT NULL,
    [SkIniciativa] INT NOT NULL,
    [SkTempo] INT NOT NULL,
    [SkPPA] INT NOT NULL,
    [SkEstrategia_ObjetivoNacional] INT NOT NULL,
    [SkEstrategia_ObjetivoLocal] INT NOT NULL,
    [SkEstrategia_PrioridadeLocal] INT NOT NULL,
    [SkEstrategia_MacroProcessoLocal] INT NOT NULL,
    [SkPadraoOrganizacao] INT NOT NULL,
    [SkUnidadeOrganizacional_Iniciativa] INT NOT NULL,
    [SkPrograma] INT NOT NULL,
    [SkSetorEconomicoSebrae] INT NOT NULL,
    [SkTerritorioSebrae] INT NOT NULL,
    [SkTerritorioSebraeMunicipio] INT NOT NULL,
    [SkLocalizacao] INT NOT NULL,
    [DtInicioRegistro] DATETIME NOT NULL,
    [DtAtualizacaoRegistro] DATETIME NOT NULL,
    [IDPlanejamentoMunicipio] INT NOT NULL
);

CREATE TABLE [dbo].[TFPlanejamentoPrograma] (
    [SkPPA] INT NOT NULL,
    [SkSebrae] INT NOT NULL,
    [SkProgramaAcao] INT NOT NULL,
    [SkTempo] INT NOT NULL,
    [NuClientesProgramaOriginal] INT NOT NULL,
    [NuClientesProgramaPactuado] INT NOT NULL,
    [NuClientesProgramaAjustado] INT NOT NULL,
    [DtInicioRegistro] DATETIME NOT NULL,
    [DtAtualizacaoRegistro] DATETIME NOT NULL,
    [IDPlanejamentoPrograma] INT NOT NULL
);

CREATE TABLE [dbo].[TFPlanejamentoProgramaDespesa] (
    [SkSebrae] INT NOT NULL,
    [SkTempo] INT NOT NULL,
    [SkPPA] INT NOT NULL,
    [SkNaturezaOrcamentaria] INT NOT NULL,
    [SkEstrategia_ObjetivoNacional] INT NOT NULL,
    [SkEstrategia_ObjetivoLocal] INT NOT NULL,
    [SkEstrategia_PrioridadeLocal] INT NOT NULL,
    [SkEstrategia_MacroProcessoLocal] INT NOT NULL,
    [SkPrograma] INT NOT NULL,
    [VlrDespesaPlanejadoOriginal] NUMERIC(18,2) NOT NULL,
    [VlrDespesaPlanejadoPactuado] NUMERIC(18,2) NOT NULL,
    [VlrDespesaPlanejadoAjustado] NUMERIC(18,2) NOT NULL,
    [DtInicioRegistro] DATETIME NOT NULL,
    [DtAtualizacaoRegistro] DATETIME NOT NULL,
    [IDPlanejamentoProgramaDespesa] INT NOT NULL
);

CREATE TABLE [dbo].[TFPlanejamentoProgramaReceita] (
    [SkSebrae] INT NOT NULL,
    [SkTempo] INT NOT NULL,
    [SkPPA] INT NOT NULL,
    [SkNaturezaOrcamentaria] INT NOT NULL,
    [SkEstrategia_ObjetivoNacional] INT NOT NULL,
    [SkEstrategia_ObjetivoLocal] INT NOT NULL,
    [SkEstrategia_PrioridadeLocal] INT NOT NULL,
    [SkEstrategia_MacroProcessoLocal] INT NOT NULL,
    [SkPrograma] INT NOT NULL,
    [VlrReceitaPlanejadoOriginal] NUMERIC(18,2) NOT NULL,
    [VlrReceitaPlanejadoPactuado] NUMERIC(18,2) NOT NULL,
    [VlrReceitaPlanejadoAjustado] NUMERIC(18,2) NOT NULL,
    [DtInicioRegistro] DATETIME NOT NULL,
    [DtAtualizacaoRegistro] DATETIME NOT NULL,
    [IDPlanejamentoProgramaReceita] INT NOT NULL
);

CREATE TABLE [dbo].[TFPlanejamentoReceita] (
    [SkSebrae] INT NOT NULL,
    [SkTempo] INT NOT NULL,
    [SkPPA] INT NOT NULL,
    [SkNaturezaOrcamentaria] INT NOT NULL,
    [VlrReceitaPlanejadoOriginal] NUMERIC(18,2) NOT NULL,
    [VlrReceitaPlanejadoPactuado] NUMERIC(18,2) NOT NULL,
    [VlrReceitaPlanejadoAjustado] NUMERIC(18,2) NOT NULL,
    [DtInicioRegistro] DATETIME NOT NULL,
    [DtAtualizacaoRegistro] DATETIME NOT NULL,
    [IDPlanejamentoReceita] INT NOT NULL
);

CREATE TABLE [dbo].[TFPublicoAlvoUniverso] (
    [SkPPA] INT NOT NULL,
    [SkSebrae] INT NOT NULL,
    [SkTempo] INT NOT NULL,
    [SkPublicoAlvo] INT NOT NULL,
    [NuPublicoUniverso] INT NOT NULL,
    [DataInicioRegistro] DATETIME NOT NULL,
    [DataAtualizacaoRegistro] DATETIME NOT NULL,
    [IDPublicoAlvoUniverso] INT NOT NULL
);

CREATE TABLE [dbo].[TFTransferenciaCSN] (
    [SkSebrae] INT NOT NULL,
    [SkIniciativa] INT NOT NULL,
    [SkTempo] INT NOT NULL,
    [SkPPA] INT NOT NULL,
    [SkEstrategia_ObjetivoNacional] INT NOT NULL,
    [SkEstrategia_ObjetivoLocal] INT NOT NULL,
    [SkEstrategia_PrioridadeLocal] INT NOT NULL,
    [SkEstrategia_MacroProcessoLocal] INT NOT NULL,
    [SkPadraoOrganizacao] INT NOT NULL,
    [SkUnidadeOrganizacional_Iniciativa] INT NOT NULL,
    [SkPrograma] INT NOT NULL,
    [SkSetorEconomicoSebrae] INT NOT NULL,
    [SkTerritorioSebrae] INT NOT NULL,
    [SkProgramaAcao] INT NOT NULL,
    [SkAcao] INT NOT NULL,
    [SkUnidadeOrganizacional_Acao] INT NOT NULL,
    [SkClassificacaoFuncional] INT NOT NULL,
    [SkSebrae_UF] INT NOT NULL,
    [SkIniciativa_UF] INT NOT NULL,
    [SkEstrategia_ObjetivoNacional_UF] INT NOT NULL,
    [SkEstrategia_ObjetivoLocal_UF] INT NOT NULL,
    [SkEstrategia_PrioridadeLocal_UF] INT NOT NULL,
    [SkEstrategia_MacroProcessoLocal_UF] INT NOT NULL,
    [SkPadraoOrganizacao_UF] INT NOT NULL,
    [SkUnidadeOrganizacional_Iniciativa_UF] INT NOT NULL,
    [SkPrograma_UF] INT NOT NULL,
    [SkSetorEconomicoSebrae_UF] INT NOT NULL,
    [SkTerritorioSebrae_UF] INT NOT NULL,
    [SkProgramaAcao_UF] INT NOT NULL,
    [SkAcao_UF] INT NOT NULL,
    [SkUnidadeOrganizacional_Acao_UF] INT NOT NULL,
    [SkClassificacaoFuncional_UF] INT NOT NULL,
    [VlrCSNOrcadoOriginal] NUMERIC(18,2) NULL,
    [VlrCSOOrcadoOriginal] NUMERIC(18,2) NULL,
    [VlrOutrosOrcadoOriginal] NUMERIC(18,2) NULL,
    [VlrCSNOrcadoPactuado] NUMERIC(18,2) NULL,
    [VlrCSOOrcadoPactuado] NUMERIC(18,2) NULL,
    [VlrOutrosOrcadoPactuado] NUMERIC(18,2) NULL,
    [VlrCSNOrcadoAjustado] NUMERIC(18,2) NULL,
    [VlrCSOOrcadoAjustado] NUMERIC(18,2) NULL,
    [VlrOutrosOrcadoAjustado] NUMERIC(18,2) NULL,
    [VlrCSNExecutado] NUMERIC(18,2) NULL,
    [VlrCSOExecutado] NUMERIC(18,2) NULL,
    [VlrOutrosExecutado] NUMERIC(18,2) NULL,
    [DtInicioRegistro] DATETIME NOT NULL,
    [DtAtualizacaoRegistro] DATETIME NOT NULL,
    [SkVinculoPrograma_UF] INT NOT NULL,
    [VlrCSNPropostaOriginal] NUMERIC(18,2) NULL,
    [VlrCSNPropostaPactuado] NUMERIC(18,2) NULL,
    [VlrCSNPropostaAjustado] NUMERIC(18,2) NULL,
    [IDTransferenciaCSN] INT NOT NULL
);

CREATE TABLE [dbo].[TTMetaMobilizadoraChamado2843] (
    [SkPPA] INT NOT NULL,
    [SkMetaMobilizadora] INT NOT NULL,
    [SkSebrae] INT NOT NULL,
    [SkTempo] INT NOT NULL,
    [PcEmpresas] DECIMAL(5,1) NOT NULL
);

CREATE TABLE [dbo].[VW_Atendimentos_Aceitos_2024_NaoEnviadosAcao] (
    [SkPPA] INT NULL,
    [SkSebrae] INT NULL,
    [CodSebraeSiac] INT NULL,
    [CodClienteSiac] INT NULL,
    [SkOrigem] INT NULL,
    [CodRealizacaoSiac] BIGINT NULL,
    [DataHoraInicioRealizacaoSiac] DATETIME NULL
);

CREATE TABLE [dbo].[VW_SME_Atendimento] (
    [SkPPA] INT NOT NULL,
    [SkSebrae] INT NOT NULL,
    [SkOrigem] INT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [SiglaSebrae] VARCHAR(10) NULL,
    [codsebraeSGE] UNIQUEIDENTIFIER NULL,
    [codcliente] INT NOT NULL,
    [codempreedimento] INT NULL,
    [DataHoraInicioRealizacao] DATETIME NOT NULL,
    [codrealizacao] INT NOT NULL,
    [TipoRealizacao] VARCHAR(3) NOT NULL,
    [CodRealizacaoComp] INT NULL,
    [MesAnoCompetencia] DATETIME NOT NULL,
    [TipoInstrumento] CHAR(2) NULL,
    [Instrumento] VARCHAR(100) NOT NULL,
    [nupratif] VARCHAR(12) NULL,
    [CodAcaoSiac] INT NOT NULL,
    [CodAcaoSge] UNIQUEIDENTIFIER NOT NULL,
    [CodPrograma] UNIQUEIDENTIFIER NULL,
    [CodSetorSEBRAE] SMALLINT NULL,
    [CargaHoraria] NUMERIC(18,2) NULL,
    [EntiParc_CNPJ] NUMERIC(15,0) NULL,
    [codcargcli] INT NULL
);

CREATE TABLE [dbo].[VW_SME_Atendimento_2018] (
    [SkPPA] INT NOT NULL,
    [SkSebrae] INT NOT NULL,
    [SkOrigem] INT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [SiglaSebrae] VARCHAR(10) NULL,
    [codsebraeSGE] UNIQUEIDENTIFIER NULL,
    [codcliente] INT NOT NULL,
    [codempreedimento] INT NULL,
    [DataHoraInicioRealizacao] DATETIME NOT NULL,
    [codrealizacao] INT NOT NULL,
    [TipoRealizacao] VARCHAR(3) NOT NULL,
    [CodRealizacaoComp] INT NULL,
    [MesAnoCompetencia] DATETIME NOT NULL,
    [TipoInstrumento] CHAR(2) NULL,
    [Instrumento] VARCHAR(100) NOT NULL,
    [nupratif] VARCHAR(12) NULL,
    [CodAcaoSiac] INT NOT NULL,
    [CodAcaoSge] UNIQUEIDENTIFIER NOT NULL,
    [CodPrograma] UNIQUEIDENTIFIER NULL,
    [CodSetorSEBRAE] SMALLINT NULL,
    [CargaHoraria] NUMERIC(18,2) NULL,
    [EntiParc_CNPJ] NUMERIC(15,0) NULL,
    [codcargcli] INT NULL
);

CREATE TABLE [dbo].[VW_SME_Atendimento_2018_Completa] (
    [SkPPA] INT NULL,
    [SkSebrae] INT NULL,
    [codsebrae] INT NULL,
    [codcliente] INT NULL,
    [SkOrigem] INT NULL,
    [codrealizacao] INT NULL,
    [DataHoraInicioRealizacao] DATETIME NULL,
    [CodSebraeSGE] UNIQUEIDENTIFIER NULL,
    [TipoRealizacao] VARCHAR(3) NULL,
    [Nomerealizacao] VARCHAR(255) NULL,
    [DescRealizacao] TEXT NULL
);

CREATE TABLE [dbo].[VW_SME_Atendimento_2019] (
    [SkPPA] INT NOT NULL,
    [SkSebrae] INT NOT NULL,
    [SkOrigem] INT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [SiglaSebrae] VARCHAR(10) NULL,
    [codsebraeSGE] UNIQUEIDENTIFIER NULL,
    [codcliente] INT NOT NULL,
    [codempreedimento] INT NULL,
    [DataHoraInicioRealizacao] DATETIME NOT NULL,
    [codrealizacao] INT NOT NULL,
    [TipoRealizacao] VARCHAR(3) NOT NULL,
    [CodRealizacaoComp] INT NULL,
    [MesAnoCompetencia] DATETIME NOT NULL,
    [TipoInstrumento] CHAR(2) NULL,
    [Instrumento] VARCHAR(100) NOT NULL,
    [nupratif] VARCHAR(12) NULL,
    [CodAcaoSiac] INT NOT NULL,
    [CodAcaoSge] UNIQUEIDENTIFIER NOT NULL,
    [CodPrograma] UNIQUEIDENTIFIER NULL,
    [CodSetorSEBRAE] SMALLINT NULL,
    [CargaHoraria] NUMERIC(18,2) NULL,
    [EntiParc_CNPJ] NUMERIC(15,0) NULL,
    [codcargcli] INT NULL
);

CREATE TABLE [dbo].[VW_SME_Atendimento_2020] (
    [SkPPA] INT NOT NULL,
    [SkSebrae] INT NOT NULL,
    [SkOrigem] INT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [SiglaSebrae] VARCHAR(10) NULL,
    [codsebraeSGE] UNIQUEIDENTIFIER NULL,
    [codcliente] INT NOT NULL,
    [codempreedimento] INT NULL,
    [DataHoraInicioRealizacao] DATETIME NOT NULL,
    [codrealizacao] INT NOT NULL,
    [TipoRealizacao] VARCHAR(3) NOT NULL,
    [CodRealizacaoComp] INT NULL,
    [MesAnoCompetencia] DATETIME NOT NULL,
    [TipoInstrumento] CHAR(2) NULL,
    [Instrumento] VARCHAR(100) NOT NULL,
    [nupratif] VARCHAR(12) NULL,
    [CodAcaoSiac] INT NOT NULL,
    [CodAcaoSge] UNIQUEIDENTIFIER NOT NULL,
    [CodPrograma] UNIQUEIDENTIFIER NULL,
    [CodSetorSEBRAE] SMALLINT NULL,
    [CargaHoraria] NUMERIC(18,2) NULL,
    [EntiParc_CNPJ] NUMERIC(15,0) NULL,
    [codcargcli] INT NULL
);

CREATE TABLE [dbo].[VW_SME_Atendimento_2021] (
    [SkPPA] INT NOT NULL,
    [SkSebrae] INT NOT NULL,
    [SkOrigem] INT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [SiglaSebrae] VARCHAR(10) NULL,
    [codsebraeSGE] UNIQUEIDENTIFIER NULL,
    [codcliente] INT NOT NULL,
    [codempreedimento] INT NULL,
    [DataHoraInicioRealizacao] DATETIME NOT NULL,
    [codrealizacao] BIGINT NULL,
    [TipoRealizacao] VARCHAR(3) NULL,
    [CodRealizacaoComp] INT NULL,
    [MesAnoCompetencia] DATETIME NOT NULL,
    [TipoInstrumento] CHAR(2) NULL,
    [Instrumento] VARCHAR(100) NOT NULL,
    [nupratif] VARCHAR(12) NULL,
    [CodAcaoSiac] INT NULL,
    [CodAcaoSge] UNIQUEIDENTIFIER NOT NULL,
    [CodPrograma] UNIQUEIDENTIFIER NULL,
    [CodSetorSEBRAE] SMALLINT NULL,
    [CargaHoraria] NUMERIC(18,2) NULL,
    [EntiParc_CNPJ] NUMERIC(15,0) NULL,
    [codcargcli] INT NULL
);

CREATE TABLE [dbo].[VW_SME_Atendimento_2022] (
    [SkPPA] INT NOT NULL,
    [SkSebrae] INT NOT NULL,
    [SkOrigem] INT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [SiglaSebrae] VARCHAR(10) NULL,
    [codsebraeSGE] UNIQUEIDENTIFIER NULL,
    [codcliente] INT NOT NULL,
    [codempreedimento] INT NULL,
    [DataHoraInicioRealizacao] DATETIME NOT NULL,
    [codrealizacao] BIGINT NULL,
    [TipoRealizacao] VARCHAR(3) NULL,
    [CodRealizacaoComp] INT NULL,
    [MesAnoCompetencia] DATETIME NOT NULL,
    [TipoInstrumento] CHAR(2) NULL,
    [Instrumento] VARCHAR(100) NOT NULL,
    [nupratif] VARCHAR(12) NULL,
    [CodAcaoSiac] INT NULL,
    [CodAcaoSge] UNIQUEIDENTIFIER NOT NULL,
    [CodPrograma] UNIQUEIDENTIFIER NULL,
    [CodSetorSEBRAE] SMALLINT NULL,
    [CargaHoraria] NUMERIC(18,2) NULL,
    [EntiParc_CNPJ] NUMERIC(15,0) NULL,
    [codcargcli] INT NULL
);

CREATE TABLE [dbo].[VW_SME_Atendimento_2023] (
    [SkPPA] INT NOT NULL,
    [SkSebrae] INT NOT NULL,
    [SkOrigem] INT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [SiglaSebrae] VARCHAR(10) NULL,
    [codsebraeSGE] UNIQUEIDENTIFIER NULL,
    [codcliente] INT NOT NULL,
    [codempreedimento] INT NULL,
    [DataHoraInicioRealizacao] DATETIME NOT NULL,
    [codrealizacao] BIGINT NULL,
    [TipoRealizacao] VARCHAR(3) NULL,
    [CodRealizacaoComp] BIGINT NULL,
    [MesAnoCompetencia] DATETIME NOT NULL,
    [TipoInstrumento] CHAR(2) NULL,
    [Instrumento] VARCHAR(100) NOT NULL,
    [nupratif] VARCHAR(12) NULL,
    [CodAcaoSiac] INT NULL,
    [CodAcaoSge] UNIQUEIDENTIFIER NOT NULL,
    [CodPrograma] UNIQUEIDENTIFIER NULL,
    [CodSetorSEBRAE] SMALLINT NULL,
    [CargaHoraria] DECIMAL(18,2) NULL,
    [EntiParc_CNPJ] NUMERIC(15,0) NULL,
    [codcargcli] INT NULL
);

CREATE TABLE [dbo].[VW_SME_Atendimento_2024] (
    [SkPPA] INT NOT NULL,
    [SkSebrae] INT NOT NULL,
    [SkOrigem] INT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [SiglaSebrae] VARCHAR(10) NULL,
    [codsebraeSGE] UNIQUEIDENTIFIER NULL,
    [codcliente] INT NOT NULL,
    [codempreedimento] INT NULL,
    [DataHoraInicioRealizacao] DATETIME NOT NULL,
    [codrealizacao] BIGINT NULL,
    [TipoRealizacao] VARCHAR(3) NULL,
    [CodRealizacaoComp] BIGINT NULL,
    [MesAnoCompetencia] DATETIME NOT NULL,
    [TipoInstrumento] CHAR(2) NULL,
    [Instrumento] VARCHAR(100) NOT NULL,
    [nupratif] VARCHAR(12) NULL,
    [CodAcaoSiac] INT NULL,
    [CodAcaoSge] UNIQUEIDENTIFIER NOT NULL,
    [CodPrograma] UNIQUEIDENTIFIER NULL,
    [CodSetorSEBRAE] SMALLINT NULL,
    [CargaHoraria] DECIMAL(18,2) NULL,
    [EntiParc_CNPJ] NUMERIC(15,0) NULL,
    [codcargcli] INT NULL
);

CREATE TABLE [dbo].[VW_SME_Atendimento_Consultoria_Evento_2017_Aberto] (
    [SkPPA] INT NOT NULL,
    [SkSebrae] INT NOT NULL,
    [SkOrigem] INT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [SiglaSebrae] VARCHAR(10) NULL,
    [codsebraeSGE] UNIQUEIDENTIFIER NULL,
    [codcliente] INT NULL,
    [codempreedimento] INT NULL,
    [DataHoraInicioRealizacao] SMALLDATETIME NULL,
    [codrealizacao] INT NOT NULL,
    [TipoRealizacao] VARCHAR(3) NOT NULL,
    [CodRealizacaoComp] INT NULL,
    [TipoInstrumento] VARCHAR(2) NOT NULL,
    [Instrumento] VARCHAR(22) NOT NULL,
    [nupratif] VARCHAR(12) NULL,
    [CodAcaoSiac] INT NULL,
    [CodAcaoSge] UNIQUEIDENTIFIER NOT NULL,
    [CodPrograma] UNIQUEIDENTIFIER NULL,
    [CodSetorSEBRAE] SMALLINT NULL,
    [CargaHoraria] NUMERIC(38,2) NULL,
    [Situacao] VARCHAR(11) NULL,
    [Inovacao] VARCHAR(1) NOT NULL,
    [CreditoOrientado] VARCHAR(1) NOT NULL
);

CREATE TABLE [dbo].[VW_SME_Atendimento_Consultoria_Evento_2018_Aberto] (
    [SkPPA] INT NOT NULL,
    [SkSebrae] INT NOT NULL,
    [SkOrigem] INT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [SiglaSebrae] VARCHAR(10) NULL,
    [codsebraeSGE] UNIQUEIDENTIFIER NULL,
    [codcliente] INT NULL,
    [codempreedimento] INT NULL,
    [DataHoraInicioRealizacao] SMALLDATETIME NULL,
    [codrealizacao] INT NOT NULL,
    [TipoRealizacao] VARCHAR(3) NOT NULL,
    [CodRealizacaoComp] INT NULL,
    [TipoInstrumento] VARCHAR(2) NOT NULL,
    [Instrumento] VARCHAR(22) NOT NULL,
    [nupratif] VARCHAR(12) NULL,
    [CodAcaoSiac] INT NULL,
    [CodAcaoSge] UNIQUEIDENTIFIER NOT NULL,
    [CodPrograma] UNIQUEIDENTIFIER NULL,
    [CodSetorSEBRAE] SMALLINT NULL,
    [CargaHoraria] NUMERIC(38,2) NULL,
    [Situacao] VARCHAR(11) NULL,
    [Inovacao] VARCHAR(1) NOT NULL
);

CREATE TABLE [dbo].[VW_SME_Atendimento_Consultoria_Evento_2019_Aberto] (
    [SkPPA] INT NOT NULL,
    [SkSebrae] INT NOT NULL,
    [SkOrigem] INT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [SiglaSebrae] VARCHAR(10) NULL,
    [codsebraeSGE] UNIQUEIDENTIFIER NULL,
    [codcliente] INT NULL,
    [codempreedimento] INT NULL,
    [DataHoraInicioRealizacao] SMALLDATETIME NULL,
    [codrealizacao] INT NOT NULL,
    [TipoRealizacao] VARCHAR(3) NOT NULL,
    [CodRealizacaoComp] INT NULL,
    [TipoInstrumento] VARCHAR(2) NOT NULL,
    [Instrumento] VARCHAR(22) NOT NULL,
    [nupratif] VARCHAR(12) NULL,
    [CodAcaoSiac] INT NULL,
    [CodAcaoSge] UNIQUEIDENTIFIER NOT NULL,
    [CodPrograma] UNIQUEIDENTIFIER NULL,
    [CodSetorSEBRAE] SMALLINT NULL,
    [CargaHoraria] NUMERIC(38,2) NULL,
    [Situacao] VARCHAR(11) NULL,
    [Inovacao] VARCHAR(1) NOT NULL
);

CREATE TABLE [dbo].[VW_SME_Atendimento_Consultoria_Evento_2020_Aberto] (
    [SkPPA] INT NOT NULL,
    [SkSebrae] INT NOT NULL,
    [SkOrigem] INT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [SiglaSebrae] VARCHAR(10) NULL,
    [codsebraeSGE] UNIQUEIDENTIFIER NULL,
    [codcliente] INT NULL,
    [codempreedimento] INT NULL,
    [DataHoraInicioRealizacao] SMALLDATETIME NULL,
    [codrealizacao] INT NOT NULL,
    [TipoRealizacao] VARCHAR(3) NOT NULL,
    [CodRealizacaoComp] INT NULL,
    [TipoInstrumento] VARCHAR(2) NOT NULL,
    [Instrumento] VARCHAR(22) NOT NULL,
    [nupratif] VARCHAR(12) NULL,
    [CodAcaoSiac] INT NULL,
    [CodAcaoSge] UNIQUEIDENTIFIER NOT NULL,
    [CodPrograma] UNIQUEIDENTIFIER NULL,
    [CodSetorSEBRAE] SMALLINT NULL,
    [CargaHoraria] NUMERIC(38,2) NULL,
    [Situacao] VARCHAR(11) NULL,
    [Inovacao] VARCHAR(1) NOT NULL
);

CREATE TABLE [dbo].[VW_SME_Atendimento_Consultoria_Evento_2021_Aberto] (
    [SkPPA] INT NOT NULL,
    [SkSebrae] INT NOT NULL,
    [SkOrigem] INT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [SiglaSebrae] VARCHAR(10) NULL,
    [codsebraeSGE] UNIQUEIDENTIFIER NULL,
    [codcliente] INT NULL,
    [codempreedimento] INT NULL,
    [DataHoraInicioRealizacao] DATETIME NULL,
    [codrealizacao] BIGINT NULL,
    [TipoRealizacao] VARCHAR(3) NULL,
    [CodRealizacaoComp] INT NULL,
    [TipoInstrumento] VARCHAR(2) NULL,
    [Instrumento] VARCHAR(100) NOT NULL,
    [nupratif] VARCHAR(12) NULL,
    [CodAcaoSiac] INT NULL,
    [CodAcaoSge] UNIQUEIDENTIFIER NOT NULL,
    [CodPrograma] UNIQUEIDENTIFIER NULL,
    [CodSetorSEBRAE] SMALLINT NULL,
    [CargaHoraria] NUMERIC(38,2) NULL,
    [Inovacao] VARCHAR(1) NOT NULL
);

CREATE TABLE [dbo].[VW_SME_Atendimento_Consultoria_Evento_2022_Aberto] (
    [SkPPA] INT NOT NULL,
    [SkSebrae] INT NOT NULL,
    [SkOrigem] INT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [SiglaSebrae] VARCHAR(10) NULL,
    [codsebraeSGE] UNIQUEIDENTIFIER NULL,
    [codcliente] INT NULL,
    [codempreedimento] INT NULL,
    [DataHoraInicioRealizacao] DATETIME NULL,
    [codrealizacao] BIGINT NULL,
    [TipoRealizacao] VARCHAR(3) NULL,
    [CodRealizacaoComp] INT NULL,
    [TipoInstrumento] VARCHAR(2) NULL,
    [Instrumento] VARCHAR(100) NOT NULL,
    [nupratif] VARCHAR(12) NULL,
    [CodAcaoSiac] INT NULL,
    [CodAcaoSge] UNIQUEIDENTIFIER NOT NULL,
    [CodPrograma] UNIQUEIDENTIFIER NULL,
    [CodSetorSEBRAE] SMALLINT NULL,
    [CargaHoraria] NUMERIC(38,2) NULL,
    [Inovacao] VARCHAR(1) NOT NULL
);

CREATE TABLE [dbo].[VW_SME_Atendimento_Consultoria_Evento_2023_Aberto] (
    [SkPPA] INT NOT NULL,
    [SkSebrae] INT NOT NULL,
    [SkOrigem] INT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [SiglaSebrae] VARCHAR(10) NULL,
    [codsebraeSGE] UNIQUEIDENTIFIER NULL,
    [codcliente] INT NULL,
    [codempreedimento] INT NULL,
    [DataHoraInicioRealizacao] DATETIME NULL,
    [codrealizacao] BIGINT NULL,
    [TipoRealizacao] VARCHAR(3) NULL,
    [CodRealizacaoComp] BIGINT NULL,
    [TipoInstrumento] VARCHAR(2) NULL,
    [Instrumento] VARCHAR(100) NOT NULL,
    [nupratif] VARCHAR(12) NULL,
    [CodAcaoSiac] INT NULL,
    [CodAcaoSge] UNIQUEIDENTIFIER NOT NULL,
    [CodPrograma] UNIQUEIDENTIFIER NULL,
    [CodSetorSEBRAE] SMALLINT NULL,
    [CargaHoraria] DECIMAL(38,2) NULL,
    [Inovacao] VARCHAR(1) NOT NULL
);

CREATE TABLE [dbo].[VW_SME_Atendimento_Consultoria_Evento_2024_Aberto] (
    [SkPPA] INT NOT NULL,
    [SkSebrae] INT NOT NULL,
    [SkOrigem] INT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [SiglaSebrae] VARCHAR(10) NULL,
    [codsebraeSGE] UNIQUEIDENTIFIER NULL,
    [codcliente] INT NULL,
    [codempreedimento] INT NULL,
    [DataHoraInicioRealizacao] DATETIME NULL,
    [codrealizacao] BIGINT NULL,
    [TipoRealizacao] VARCHAR(3) NULL,
    [CodRealizacaoComp] BIGINT NULL,
    [TipoInstrumento] VARCHAR(2) NULL,
    [Instrumento] VARCHAR(100) NOT NULL,
    [nupratif] VARCHAR(12) NULL,
    [CodAcaoSiac] INT NULL,
    [CodAcaoSge] UNIQUEIDENTIFIER NOT NULL,
    [CodPrograma] UNIQUEIDENTIFIER NULL,
    [CodSetorSEBRAE] SMALLINT NULL,
    [CargaHoraria] DECIMAL(38,2) NULL,
    [Inovacao] VARCHAR(1) NOT NULL
);

CREATE TABLE [dbo].[VW_SME_Atendimento_Falha_ProjetoAcao] (
    [SkPPA] INT NOT NULL,
    [SkSebrae] INT NOT NULL,
    [SkOrigem] INT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [SiglaSebrae] VARCHAR(10) NULL,
    [codsebraeSGE] UNIQUEIDENTIFIER NULL,
    [codcliente] INT NOT NULL,
    [codempreedimento] INT NULL,
    [DataHoraInicioRealizacao] DATETIME NOT NULL,
    [codrealizacao] INT NOT NULL,
    [TipoRealizacao] VARCHAR(3) NOT NULL,
    [CodRealizacaoComp] INT NULL,
    [MesAnoCompetencia] DATETIME NOT NULL,
    [TipoInstrumento] CHAR(2) NULL,
    [Instrumento] VARCHAR(100) NOT NULL,
    [nupratif] VARCHAR(12) NULL,
    [CodAcaoSiac] INT NOT NULL,
    [CodAcaoSge] UNIQUEIDENTIFIER NULL,
    [CodPrograma] UNIQUEIDENTIFIER NULL,
    [CodSetorSEBRAE] SMALLINT NULL,
    [CargaHoraria] NUMERIC(18,2) NULL,
    [EntiParc_CNPJ] NUMERIC(15,0) NULL,
    [codcargcli] INT NULL
);

CREATE TABLE [dbo].[VW_SME_Atendimento_Valido_2017] (
    [SkPPA] INT NOT NULL,
    [SkSebrae] INT NOT NULL,
    [SkOrigem] INT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [SiglaSebrae] VARCHAR(10) NULL,
    [codsebraeSGE] UNIQUEIDENTIFIER NULL,
    [codcliente] INT NULL,
    [codempreedimento] INT NULL,
    [DataHoraInicioRealizacao] DATETIME NULL,
    [codrealizacao] INT NOT NULL,
    [TipoRealizacao] VARCHAR(3) NOT NULL,
    [CodRealizacaoComp] INT NULL,
    [TipoInstrumento] VARCHAR(2) NULL,
    [Instrumento] VARCHAR(100) NOT NULL,
    [nupratif] VARCHAR(12) NULL,
    [CodAcaoSiac] INT NULL,
    [CodAcaoSge] UNIQUEIDENTIFIER NOT NULL,
    [CodPrograma] UNIQUEIDENTIFIER NULL,
    [CodSetorSEBRAE] SMALLINT NULL,
    [CargaHoraria] NUMERIC(38,2) NULL,
    [QtdInscritos] INT NULL,
    [Inovacao] VARCHAR(1) NOT NULL,
    [EntiParc_CNPJ] NUMERIC(15,0) NULL,
    [EducacaoEmpreendedora] VARCHAR(1) NOT NULL,
    [codcargcli] INT NULL,
    [ClassificacaoPessoa] SMALLINT NULL,
    [faturam] SMALLINT NULL,
    [codconst] SMALLINT NULL,
    [CreditoOrientado] VARCHAR(1) NOT NULL,
    [Executor] VARCHAR(9) NOT NULL
);

CREATE TABLE [dbo].[VW_SME_Atendimento_Valido_2018] (
    [SkPPA] INT NOT NULL,
    [SkSebrae] INT NOT NULL,
    [SkOrigem] INT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [SiglaSebrae] VARCHAR(10) NULL,
    [codsebraeSGE] UNIQUEIDENTIFIER NULL,
    [codcliente] INT NULL,
    [codempreedimento] INT NULL,
    [DataHoraInicioRealizacao] DATETIME NULL,
    [codrealizacao] INT NOT NULL,
    [TipoRealizacao] VARCHAR(3) NOT NULL,
    [CodRealizacaoComp] INT NULL,
    [TipoInstrumento] VARCHAR(2) NULL,
    [Instrumento] VARCHAR(100) NOT NULL,
    [nupratif] VARCHAR(12) NULL,
    [CodAcaoSiac] INT NULL,
    [CodAcaoSge] UNIQUEIDENTIFIER NOT NULL,
    [CodPrograma] UNIQUEIDENTIFIER NULL,
    [CodSetorSEBRAE] SMALLINT NULL,
    [CargaHoraria] NUMERIC(38,2) NULL,
    [QtdInscritos] INT NULL,
    [Inovacao] VARCHAR(1) NOT NULL,
    [EntiParc_CNPJ] NUMERIC(15,0) NULL,
    [EducacaoEmpreendedora] VARCHAR(1) NOT NULL,
    [codcargcli] INT NULL,
    [ClassificacaoPessoa] SMALLINT NULL,
    [faturam] SMALLINT NULL,
    [codconst] SMALLINT NULL,
    [Executor] VARCHAR(9) NOT NULL
);

CREATE TABLE [dbo].[VW_SME_Atendimento_Valido_2019] (
    [SkPPA] INT NOT NULL,
    [SkSebrae] INT NOT NULL,
    [SkOrigem] INT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [SiglaSebrae] VARCHAR(10) NULL,
    [codsebraeSGE] UNIQUEIDENTIFIER NULL,
    [codcliente] INT NULL,
    [codempreedimento] INT NULL,
    [DataHoraInicioRealizacao] DATETIME NULL,
    [codrealizacao] INT NOT NULL,
    [TipoRealizacao] VARCHAR(3) NOT NULL,
    [CodRealizacaoComp] INT NULL,
    [TipoInstrumento] VARCHAR(2) NULL,
    [Instrumento] VARCHAR(100) NOT NULL,
    [nupratif] VARCHAR(12) NULL,
    [CodAcaoSiac] INT NULL,
    [CodAcaoSge] UNIQUEIDENTIFIER NOT NULL,
    [CodPrograma] UNIQUEIDENTIFIER NULL,
    [CodSetorSEBRAE] SMALLINT NULL,
    [CargaHoraria] NUMERIC(38,2) NULL,
    [QtdInscritos] INT NULL,
    [Inovacao] VARCHAR(1) NOT NULL,
    [EntiParc_CNPJ] NUMERIC(15,0) NULL,
    [EducacaoEmpreendedora] VARCHAR(1) NOT NULL,
    [codcargcli] INT NULL,
    [ClassificacaoPessoa] SMALLINT NULL,
    [faturam] SMALLINT NULL,
    [codconst] SMALLINT NULL,
    [Executor] VARCHAR(9) NOT NULL
);

CREATE TABLE [dbo].[VW_SME_Atendimento_Valido_2020] (
    [SkPPA] INT NOT NULL,
    [SkSebrae] INT NOT NULL,
    [SkOrigem] INT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [SiglaSebrae] VARCHAR(10) NULL,
    [codsebraeSGE] UNIQUEIDENTIFIER NULL,
    [codcliente] INT NULL,
    [codempreedimento] INT NULL,
    [DataHoraInicioRealizacao] DATETIME NULL,
    [codrealizacao] INT NOT NULL,
    [TipoRealizacao] VARCHAR(3) NOT NULL,
    [CodRealizacaoComp] INT NULL,
    [TipoInstrumento] VARCHAR(2) NULL,
    [Instrumento] VARCHAR(100) NOT NULL,
    [nupratif] VARCHAR(12) NULL,
    [CodAcaoSiac] INT NULL,
    [CodAcaoSge] UNIQUEIDENTIFIER NOT NULL,
    [CodPrograma] UNIQUEIDENTIFIER NULL,
    [CodSetorSEBRAE] SMALLINT NULL,
    [CargaHoraria] NUMERIC(38,2) NULL,
    [QtdInscritos] INT NULL,
    [Inovacao] VARCHAR(1) NOT NULL,
    [EntiParc_CNPJ] NUMERIC(15,0) NULL,
    [EducacaoEmpreendedora] VARCHAR(1) NOT NULL,
    [codcargcli] INT NULL,
    [ClassificacaoPessoa] SMALLINT NULL,
    [faturam] SMALLINT NULL,
    [codconst] SMALLINT NULL,
    [Executor] VARCHAR(9) NOT NULL
);

CREATE TABLE [dbo].[VW_SME_Atendimento_Valido_2021] (
    [SkPPA] INT NOT NULL,
    [SkSebrae] INT NOT NULL,
    [SkOrigem] INT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [SiglaSebrae] VARCHAR(10) NULL,
    [codsebraeSGE] UNIQUEIDENTIFIER NULL,
    [codcliente] INT NULL,
    [codempreedimento] INT NULL,
    [DataHoraInicioRealizacao] DATETIME NULL,
    [codrealizacao] BIGINT NULL,
    [TipoRealizacao] VARCHAR(3) NULL,
    [CodRealizacaoComp] INT NULL,
    [TipoInstrumento] VARCHAR(2) NULL,
    [Instrumento] VARCHAR(100) NOT NULL,
    [nupratif] VARCHAR(12) NULL,
    [CodAcaoSiac] INT NULL,
    [CodAcaoSge] UNIQUEIDENTIFIER NOT NULL,
    [CodPrograma] UNIQUEIDENTIFIER NULL,
    [CodSetorSEBRAE] SMALLINT NULL,
    [CargaHoraria] NUMERIC(38,2) NULL,
    [QtdInscritos] INT NULL,
    [Inovacao] VARCHAR(1) NOT NULL,
    [EntiParc_CNPJ] NUMERIC(15,0) NULL,
    [EducacaoEmpreendedora] VARCHAR(1) NOT NULL,
    [codcargcli] INT NULL,
    [ClassificacaoPessoa] SMALLINT NULL,
    [faturam] SMALLINT NULL,
    [codconst] SMALLINT NULL,
    [Executor] VARCHAR(9) NOT NULL,
    [Parceiro] VARCHAR(1) NULL
);

CREATE TABLE [dbo].[VW_SME_Atendimento_Valido_2022] (
    [SkPPA] INT NOT NULL,
    [SkSebrae] INT NOT NULL,
    [SkOrigem] INT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [SiglaSebrae] VARCHAR(10) NULL,
    [codsebraeSGE] UNIQUEIDENTIFIER NULL,
    [codcliente] INT NULL,
    [codempreedimento] INT NULL,
    [DataHoraInicioRealizacao] DATETIME NULL,
    [codrealizacao] BIGINT NULL,
    [TipoRealizacao] VARCHAR(3) NULL,
    [CodRealizacaoComp] INT NULL,
    [TipoInstrumento] VARCHAR(2) NULL,
    [Instrumento] VARCHAR(100) NOT NULL,
    [nupratif] VARCHAR(12) NULL,
    [CodAcaoSiac] INT NULL,
    [CodAcaoSge] UNIQUEIDENTIFIER NOT NULL,
    [CodPrograma] UNIQUEIDENTIFIER NULL,
    [CodSetorSEBRAE] SMALLINT NULL,
    [CargaHoraria] NUMERIC(38,2) NULL,
    [QtdInscritos] INT NULL,
    [Inovacao] VARCHAR(1) NOT NULL,
    [EntiParc_CNPJ] NUMERIC(15,0) NULL,
    [EducacaoEmpreendedora] VARCHAR(1) NOT NULL,
    [codcargcli] INT NULL,
    [ClassificacaoPessoa] SMALLINT NULL,
    [faturam] SMALLINT NULL,
    [codconst] SMALLINT NULL,
    [Executor] VARCHAR(9) NOT NULL,
    [Parceiro] VARCHAR(1) NULL
);

CREATE TABLE [dbo].[VW_SME_Atendimento_Valido_2023] (
    [SkPPA] INT NOT NULL,
    [SkSebrae] INT NOT NULL,
    [SkOrigem] INT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [SiglaSebrae] VARCHAR(10) NULL,
    [codsebraeSGE] UNIQUEIDENTIFIER NULL,
    [codcliente] INT NULL,
    [codempreedimento] INT NULL,
    [DataHoraInicioRealizacao] DATETIME NULL,
    [codrealizacao] BIGINT NULL,
    [TipoRealizacao] VARCHAR(3) NULL,
    [CodRealizacaoComp] BIGINT NULL,
    [TipoInstrumento] VARCHAR(2) NULL,
    [Instrumento] VARCHAR(100) NOT NULL,
    [nupratif] VARCHAR(12) NULL,
    [CodAcaoSiac] INT NULL,
    [CodAcaoSge] UNIQUEIDENTIFIER NOT NULL,
    [CodPrograma] UNIQUEIDENTIFIER NULL,
    [CodSetorSEBRAE] SMALLINT NULL,
    [CargaHoraria] DECIMAL(38,2) NULL,
    [QtdInscritos] INT NULL,
    [Inovacao] VARCHAR(1) NOT NULL,
    [EntiParc_CNPJ] NUMERIC(15,0) NULL,
    [EducacaoEmpreendedora] VARCHAR(1) NOT NULL,
    [codcargcli] INT NULL,
    [ClassificacaoPessoa] SMALLINT NULL,
    [faturam] SMALLINT NULL,
    [codconst] SMALLINT NULL,
    [Executor] VARCHAR(9) NOT NULL,
    [Parceiro] VARCHAR(1) NULL
);

CREATE TABLE [dbo].[VW_SME_Atendimento_Valido_2024] (
    [SkPPA] INT NOT NULL,
    [SkSebrae] INT NOT NULL,
    [SkOrigem] INT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [SiglaSebrae] VARCHAR(10) NULL,
    [codsebraeSGE] UNIQUEIDENTIFIER NULL,
    [codcliente] INT NULL,
    [codempreedimento] INT NULL,
    [DataHoraInicioRealizacao] DATETIME NULL,
    [codrealizacao] BIGINT NULL,
    [TipoRealizacao] VARCHAR(3) NULL,
    [CodRealizacaoComp] BIGINT NULL,
    [TipoInstrumento] VARCHAR(2) NULL,
    [Instrumento] VARCHAR(100) NOT NULL,
    [nupratif] VARCHAR(12) NULL,
    [CodAcaoSiac] INT NULL,
    [CodAcaoSge] UNIQUEIDENTIFIER NOT NULL,
    [CodPrograma] UNIQUEIDENTIFIER NULL,
    [CodSetorSEBRAE] SMALLINT NULL,
    [CargaHoraria] DECIMAL(38,2) NULL,
    [QtdInscritos] INT NULL,
    [Inovacao] VARCHAR(1) NOT NULL,
    [EntiParc_CNPJ] NUMERIC(15,0) NULL,
    [EducacaoEmpreendedora] VARCHAR(1) NOT NULL,
    [codcargcli] INT NULL,
    [ClassificacaoPessoa] SMALLINT NULL,
    [faturam] SMALLINT NULL,
    [codconst] SMALLINT NULL,
    [Executor] VARCHAR(9) NOT NULL,
    [Parceiro] VARCHAR(1) NULL
);

CREATE TABLE [dbo].[VW_SME_Evento_Capacitacao_Nao_Identificado_2017] (
    [SkPPA] INT NOT NULL,
    [SkSebrae] INT NOT NULL,
    [SkOrigem] INT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [SiglaSebrae] VARCHAR(10) NULL,
    [codsebraeSGE] UNIQUEIDENTIFIER NULL,
    [codcliente] INT NOT NULL,
    [DataHoraInicioRealizacao] DATETIME NULL,
    [codrealizacao] BIGINT NOT NULL,
    [TipoRealizacao] VARCHAR(2) NOT NULL,
    [TipoInstrumento] CHAR(2) NULL,
    [Instrumento] VARCHAR(100) NOT NULL,
    [nupratif] VARCHAR(12) NULL,
    [CodAcaoSiac] INT NULL,
    [CodAcaoSge] UNIQUEIDENTIFIER NOT NULL,
    [CodPrograma] UNIQUEIDENTIFIER NULL,
    [CodSetorSEBRAE] SMALLINT NULL,
    [CargaHoraria] NUMERIC(18,2) NOT NULL
);

CREATE TABLE [dbo].[VW_SME_Evento_Capacitacao_Nao_Identificado_2018] (
    [SkPPA] INT NOT NULL,
    [SkSebrae] INT NOT NULL,
    [SkOrigem] INT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [SiglaSebrae] VARCHAR(10) NULL,
    [codsebraeSGE] UNIQUEIDENTIFIER NULL,
    [codcliente] INT NOT NULL,
    [DataHoraInicioRealizacao] DATETIME NULL,
    [codrealizacao] BIGINT NOT NULL,
    [TipoRealizacao] VARCHAR(2) NOT NULL,
    [TipoInstrumento] CHAR(2) NULL,
    [Instrumento] VARCHAR(100) NOT NULL,
    [nupratif] VARCHAR(12) NULL,
    [CodAcaoSiac] INT NULL,
    [CodAcaoSge] UNIQUEIDENTIFIER NOT NULL,
    [CodPrograma] UNIQUEIDENTIFIER NULL,
    [CodSetorSEBRAE] SMALLINT NULL,
    [CargaHoraria] NUMERIC(18,2) NOT NULL
);

CREATE TABLE [dbo].[VW_SME_Evento_Capacitacao_Nao_Identificado_2019] (
    [SkPPA] INT NOT NULL,
    [SkSebrae] INT NOT NULL,
    [SkOrigem] INT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [SiglaSebrae] VARCHAR(10) NULL,
    [codsebraeSGE] UNIQUEIDENTIFIER NULL,
    [codcliente] INT NOT NULL,
    [DataHoraInicioRealizacao] DATETIME NULL,
    [codrealizacao] BIGINT NOT NULL,
    [TipoRealizacao] VARCHAR(2) NOT NULL,
    [TipoInstrumento] CHAR(2) NULL,
    [Instrumento] VARCHAR(100) NOT NULL,
    [nupratif] VARCHAR(12) NULL,
    [CodAcaoSiac] INT NULL,
    [CodAcaoSge] UNIQUEIDENTIFIER NOT NULL,
    [CodPrograma] UNIQUEIDENTIFIER NULL,
    [CodSetorSEBRAE] SMALLINT NULL,
    [CargaHoraria] NUMERIC(18,2) NOT NULL
);

CREATE TABLE [dbo].[VW_SME_Evento_Capacitacao_Nao_Identificado_2020] (
    [SkPPA] INT NOT NULL,
    [SkSebrae] INT NOT NULL,
    [SkOrigem] INT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [SiglaSebrae] VARCHAR(10) NULL,
    [codsebraeSGE] UNIQUEIDENTIFIER NULL,
    [codcliente] INT NOT NULL,
    [DataHoraInicioRealizacao] DATETIME NULL,
    [codrealizacao] BIGINT NOT NULL,
    [TipoRealizacao] VARCHAR(2) NOT NULL,
    [TipoInstrumento] CHAR(2) NULL,
    [Instrumento] VARCHAR(100) NOT NULL,
    [nupratif] VARCHAR(12) NULL,
    [CodAcaoSiac] INT NULL,
    [CodAcaoSge] UNIQUEIDENTIFIER NOT NULL,
    [CodPrograma] UNIQUEIDENTIFIER NULL,
    [CodSetorSEBRAE] SMALLINT NULL,
    [CargaHoraria] NUMERIC(18,2) NOT NULL
);

CREATE TABLE [dbo].[VW_SME_Evento_Capacitacao_Nao_Identificado_2021] (
    [SkPPA] INT NOT NULL,
    [SkSebrae] INT NOT NULL,
    [SkOrigem] INT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [SiglaSebrae] VARCHAR(10) NULL,
    [codsebraeSGE] UNIQUEIDENTIFIER NULL,
    [codcliente] INT NOT NULL,
    [DataHoraInicioRealizacao] DATETIME NULL,
    [codrealizacao] BIGINT NULL,
    [TipoRealizacao] VARCHAR(2) NOT NULL,
    [TipoInstrumento] CHAR(2) NULL,
    [Instrumento] VARCHAR(100) NOT NULL,
    [nupratif] VARCHAR(12) NULL,
    [CodAcaoSiac] INT NULL,
    [CodAcaoSge] UNIQUEIDENTIFIER NOT NULL,
    [CodPrograma] UNIQUEIDENTIFIER NULL,
    [CodSetorSEBRAE] SMALLINT NULL,
    [CargaHoraria] NUMERIC(18,2) NOT NULL
);

CREATE TABLE [dbo].[VW_SME_Evento_Capacitacao_Nao_Identificado_2022] (
    [SkPPA] INT NOT NULL,
    [SkSebrae] INT NOT NULL,
    [SkOrigem] INT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [SiglaSebrae] VARCHAR(10) NULL,
    [codsebraeSGE] UNIQUEIDENTIFIER NULL,
    [codcliente] INT NOT NULL,
    [DataHoraInicioRealizacao] DATETIME NULL,
    [codrealizacao] BIGINT NULL,
    [TipoRealizacao] VARCHAR(2) NOT NULL,
    [TipoInstrumento] CHAR(2) NULL,
    [Instrumento] VARCHAR(100) NOT NULL,
    [nupratif] VARCHAR(12) NULL,
    [CodAcaoSiac] INT NULL,
    [CodAcaoSge] UNIQUEIDENTIFIER NOT NULL,
    [CodPrograma] UNIQUEIDENTIFIER NULL,
    [CodSetorSEBRAE] SMALLINT NULL,
    [CargaHoraria] NUMERIC(18,2) NOT NULL
);

CREATE TABLE [dbo].[VW_SME_Evento_Capacitacao_Nao_Identificado_2023] (
    [SkPPA] INT NOT NULL,
    [SkSebrae] INT NOT NULL,
    [SkOrigem] INT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [SiglaSebrae] VARCHAR(10) NULL,
    [codsebraeSGE] UNIQUEIDENTIFIER NULL,
    [codcliente] INT NOT NULL,
    [DataHoraInicioRealizacao] DATETIME NULL,
    [codrealizacao] BIGINT NULL,
    [TipoRealizacao] VARCHAR(2) NOT NULL,
    [TipoInstrumento] CHAR(2) NULL,
    [Instrumento] VARCHAR(100) NOT NULL,
    [nupratif] VARCHAR(12) NULL,
    [CodAcaoSiac] INT NULL,
    [CodAcaoSge] UNIQUEIDENTIFIER NOT NULL,
    [CodPrograma] UNIQUEIDENTIFIER NULL,
    [CodSetorSEBRAE] SMALLINT NULL,
    [CargaHoraria] DECIMAL(18,2) NOT NULL
);

CREATE TABLE [dbo].[VW_SME_Evento_Capacitacao_Nao_Identificado_2024] (
    [SkPPA] INT NOT NULL,
    [SkSebrae] INT NOT NULL,
    [SkOrigem] INT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [SiglaSebrae] VARCHAR(10) NULL,
    [codsebraeSGE] UNIQUEIDENTIFIER NULL,
    [codcliente] INT NOT NULL,
    [DataHoraInicioRealizacao] DATETIME NULL,
    [codrealizacao] BIGINT NULL,
    [TipoRealizacao] VARCHAR(2) NOT NULL,
    [TipoInstrumento] CHAR(2) NULL,
    [Instrumento] VARCHAR(100) NOT NULL,
    [nupratif] VARCHAR(12) NULL,
    [CodAcaoSiac] INT NULL,
    [CodAcaoSge] UNIQUEIDENTIFIER NOT NULL,
    [CodPrograma] UNIQUEIDENTIFIER NULL,
    [CodSetorSEBRAE] SMALLINT NULL,
    [CargaHoraria] DECIMAL(18,2) NOT NULL
);

CREATE TABLE [dbo].[VW_SME_Execucao_Indicadores_2017] (
    [SiglaSebrae] VARCHAR(2) NULL,
    [I02_DonosPeqNeg] INT NULL,
    [I04_PotEmpres] INT NULL,
    [I05_PotEmpree] INT NULL,
    [I11_PeqNeg] INT NULL,
    [I12_Inovacao] INT NULL,
    [I13_MEI] INT NULL,
    [I14_ME] INT NULL,
    [I15_EPP] INT NULL,
    [I17_Fidelizacao] INT NULL
);

CREATE TABLE [dbo].[VW_SME_Execucao_Indicadores_2018] (
    [SiglaSebrae] VARCHAR(2) NULL,
    [I02_DonosPeqNeg] INT NULL,
    [I04_PotEmpres] INT NULL,
    [I05_PotEmpree] INT NULL,
    [I11_PeqNeg] INT NULL,
    [I12_Inovacao] INT NULL,
    [I13_MEI] INT NULL,
    [I14_ME] INT NULL,
    [I15_EPP] INT NULL,
    [I17_Fidelizacao] INT NULL
);

CREATE TABLE [dbo].[VW_SME_Execucao_Indicadores_2019] (
    [SiglaSebrae] VARCHAR(2) NULL,
    [I02_DonosPeqNeg] INT NULL,
    [I04_PotEmpres] INT NULL,
    [I05_PotEmpree] INT NULL,
    [I11_PeqNeg] INT NULL,
    [I12_Inovacao] INT NULL,
    [I13_MEI] INT NULL,
    [I14_ME] INT NULL,
    [I15_EPP] INT NULL,
    [I17_Fidelizacao] INT NULL
);

CREATE TABLE [dbo].[VW_SME_Execucao_Indicadores_2020] (
    [SiglaSebrae] VARCHAR(2) NULL,
    [I11_PeqNeg] INT NULL,
    [I12_Inovacao] INT NULL,
    [I13_MEI] INT NULL,
    [I14_ME] INT NULL,
    [I15_EPP] INT NULL,
    [I69_ServDig] INT NULL
);

CREATE TABLE [dbo].[VW_SME_Execucao_Instrumento_2017] (
    [SiglaSebrae] VARCHAR(2) NULL,
    [Instrumento] VARCHAR(100) NULL,
    [Situacao] VARCHAR(100) NULL,
    [Executor] VARCHAR(100) NULL,
    [NumerodeRealizacoes] INT NULL,
    [NumerodeAtendimentos] INT NULL,
    [NumerodeParticipantes] INT NULL,
    [NumerodeParticipantesPN] INT NULL,
    [NumerodeConcluintes] INT NULL,
    [NumerodeInscritos] INT NULL,
    [NumerodeHorasAplicadas] NUMERIC(18,2) NULL,
    [NumerodeHorasRecebidas] NUMERIC(18,2) NULL,
    [VolumedeRecursos] NUMERIC(18,2) NULL,
    [NumerodePessoasInformadas] INT NULL
);

CREATE TABLE [dbo].[VW_SME_Execucao_Instrumento_2017_De_Para] (
    [InstrumentoSiac] VARCHAR(100) NULL,
    [InstrumentoSME] VARCHAR(100) NULL
);

CREATE TABLE [dbo].[VW_SME_Execucao_Instrumento_2018] (
    [SiglaSebrae] VARCHAR(2) NULL,
    [Instrumento] VARCHAR(100) NULL,
    [Situacao] VARCHAR(100) NULL,
    [Executor] VARCHAR(100) NULL,
    [NumerodeRealizacoes] INT NULL,
    [NumerodeAtendimentos] INT NULL,
    [NumerodeParticipantes] INT NULL,
    [NumerodeParticipantesPN] INT NULL,
    [NumerodeConcluintes] INT NULL,
    [NumerodeInscritos] INT NULL,
    [NumerodeHorasAplicadas] NUMERIC(18,2) NULL,
    [NumerodeHorasRecebidas] NUMERIC(18,2) NULL,
    [VolumedeRecursos] NUMERIC(18,2) NULL,
    [NumerodePessoasInformadas] INT NULL
);

CREATE TABLE [dbo].[VW_SME_Execucao_Instrumento_2018_De_Para] (
    [InstrumentoSiac] VARCHAR(100) NULL,
    [InstrumentoSME] VARCHAR(100) NULL
);

CREATE TABLE [dbo].[VW_SME_Execucao_Instrumento_2019] (
    [SiglaSebrae] VARCHAR(2) NULL,
    [Instrumento] VARCHAR(100) NULL,
    [Situacao] VARCHAR(100) NULL,
    [Executor] VARCHAR(100) NULL,
    [NumerodeRealizacoes] INT NULL,
    [NumerodeAtendimentos] INT NULL,
    [NumerodeParticipantes] INT NULL,
    [NumerodeParticipantesPN] INT NULL,
    [NumerodeConcluintes] INT NULL,
    [NumerodeInscritos] INT NULL,
    [NumerodeHorasAplicadas] NUMERIC(18,2) NULL,
    [NumerodeHorasRecebidas] NUMERIC(18,2) NULL,
    [VolumedeRecursos] NUMERIC(18,2) NULL,
    [NumerodePessoasInformadas] INT NULL
);

CREATE TABLE [dbo].[VW_SME_Execucao_Instrumento_2019_De_Para] (
    [InstrumentoSiac] VARCHAR(100) NULL,
    [InstrumentoSME] VARCHAR(100) NULL
);

CREATE TABLE [dbo].[VW_SME_Execucao_Instrumento_2020] (
    [SiglaSebrae] VARCHAR(2) NULL,
    [Instrumento] VARCHAR(100) NULL,
    [Situacao] VARCHAR(100) NULL,
    [Executor] VARCHAR(100) NULL,
    [NumerodeRealizacoes] INT NULL,
    [NumerodeAtendimentos] INT NULL,
    [NumerodeParticipantes] INT NULL,
    [NumerodeParticipantesPN] INT NULL,
    [NumerodeConcluintes] INT NULL,
    [NumerodeInscritos] INT NULL,
    [NumerodeHorasAplicadas] NUMERIC(18,2) NULL,
    [NumerodeHorasRecebidas] NUMERIC(18,2) NULL,
    [VolumedeRecursos] NUMERIC(18,2) NULL,
    [NumerodePessoasInformadas] INT NULL
);

CREATE TABLE [dbo].[VW_SME_Execucao_Instrumento_2020_De_Para] (
    [InstrumentoSiac] VARCHAR(100) NULL,
    [InstrumentoSME] VARCHAR(100) NULL
);

CREATE TABLE [dbo].[VW_SME_Execucao_Instrumento_2021] (
    [SiglaSebrae] VARCHAR(2) NULL,
    [Instrumento] VARCHAR(100) NULL,
    [Situacao] VARCHAR(100) NULL,
    [Executor] VARCHAR(100) NULL,
    [NumerodeRealizacoes] INT NULL,
    [NumerodeAtendimentos] INT NULL,
    [NumerodeParticipantes] INT NULL,
    [NumerodeParticipantesPN] INT NULL,
    [NumerodeConcluintes] INT NULL,
    [NumerodeInscritos] INT NULL,
    [NumerodeHorasAplicadas] NUMERIC(18,2) NULL,
    [NumerodeHorasRecebidas] NUMERIC(18,2) NULL,
    [VolumedeRecursos] NUMERIC(18,2) NULL,
    [NumerodePessoasInformadas] INT NULL
);

CREATE TABLE [dbo].[VW_SME_Execucao_Instrumento_2021_De_Para] (
    [InstrumentoSiac] VARCHAR(100) NULL,
    [InstrumentoSME] VARCHAR(100) NULL
);

CREATE TABLE [dbo].[VW_SME_Execucao_Instrumento_2022] (
    [SiglaSebrae] VARCHAR(2) NULL,
    [Instrumento] VARCHAR(100) NULL,
    [Situacao] VARCHAR(100) NULL,
    [Executor] VARCHAR(100) NULL,
    [NumerodeRealizacoes] INT NULL,
    [NumerodeAtendimentos] INT NULL,
    [NumerodeParticipantes] INT NULL,
    [NumerodeParticipantesPN] INT NULL,
    [NumerodeConcluintes] INT NULL,
    [NumerodeInscritos] INT NULL,
    [NumerodeHorasAplicadas] NUMERIC(18,2) NULL,
    [NumerodeHorasRecebidas] NUMERIC(18,2) NULL,
    [VolumedeRecursos] NUMERIC(18,2) NULL,
    [NumerodePessoasInformadas] INT NULL
);

CREATE TABLE [dbo].[VW_SME_Execucao_Instrumento_2022_De_Para] (
    [InstrumentoSiac] VARCHAR(100) NULL,
    [InstrumentoSME] VARCHAR(100) NULL
);

CREATE TABLE [dbo].[VW_SME_Execucao_Instrumento_2023] (
    [SiglaSebrae] VARCHAR(2) NULL,
    [Instrumento] VARCHAR(100) NULL,
    [Situacao] VARCHAR(100) NULL,
    [Executor] VARCHAR(100) NULL,
    [NumerodeRealizacoes] INT NULL,
    [NumerodeAtendimentos] INT NULL,
    [NumerodeParticipantes] INT NULL,
    [NumerodeParticipantesPN] INT NULL,
    [NumerodeConcluintes] INT NULL,
    [NumerodeInscritos] INT NULL,
    [NumerodeHorasAplicadas] NUMERIC(18,2) NULL,
    [NumerodeHorasRecebidas] NUMERIC(18,2) NULL,
    [VolumedeRecursos] NUMERIC(18,2) NULL,
    [NumerodePessoasInformadas] INT NULL
);

CREATE TABLE [dbo].[VW_SME_Execucao_Instrumento_2023_20240119] (
    [SiglaSebrae] VARCHAR(2) NULL,
    [Instrumento] VARCHAR(100) NULL,
    [Situacao] VARCHAR(100) NULL,
    [Executor] VARCHAR(100) NULL,
    [NumerodeRealizacoes] INT NULL,
    [NumerodeAtendimentos] INT NULL,
    [NumerodeParticipantes] INT NULL,
    [NumerodeParticipantesPN] INT NULL,
    [NumerodeConcluintes] INT NULL,
    [NumerodeInscritos] INT NULL,
    [NumerodeHorasAplicadas] NUMERIC(18,2) NULL,
    [NumerodeHorasRecebidas] NUMERIC(18,2) NULL,
    [VolumedeRecursos] NUMERIC(18,2) NULL,
    [NumerodePessoasInformadas] INT NULL
);

CREATE TABLE [dbo].[VW_SME_Execucao_Instrumento_2023_De_Para] (
    [InstrumentoSiac] VARCHAR(100) NULL,
    [InstrumentoSME] VARCHAR(100) NULL
);

CREATE TABLE [dbo].[VW_SME_Execucao_Instrumento_2024] (
    [SiglaSebrae] VARCHAR(2) NULL,
    [Instrumento] VARCHAR(100) NULL,
    [Situacao] VARCHAR(100) NULL,
    [Executor] VARCHAR(100) NULL,
    [NumerodeRealizacoes] INT NULL,
    [NumerodeAtendimentos] INT NULL,
    [NumerodeParticipantes] INT NULL,
    [NumerodeParticipantesPN] INT NULL,
    [NumerodeConcluintes] INT NULL,
    [NumerodeInscritos] INT NULL,
    [NumerodeHorasAplicadas] NUMERIC(18,2) NULL,
    [NumerodeHorasRecebidas] NUMERIC(18,2) NULL,
    [VolumedeRecursos] NUMERIC(18,2) NULL,
    [NumerodePessoasInformadas] INT NULL
);

CREATE TABLE [dbo].[VW_SME_Execucao_Instrumento_2024_De_Para] (
    [InstrumentoSiac] VARCHAR(100) NULL,
    [InstrumentoSME] VARCHAR(100) NULL
);

CREATE TABLE [dbo].[VW_SME_Execucao_Instrumento_2024_v2] (
    [SiglaSebrae] VARCHAR(2) NULL,
    [Instrumento] VARCHAR(100) NOT NULL,
    [Situacao] VARCHAR(100) NOT NULL,
    [Executor] VARCHAR(100) NOT NULL,
    [NumerodeRealizacoes] INT NULL,
    [NumerodeAtendimentos] INT NULL,
    [NumerodeParticipantes] INT NULL,
    [NumerodeParticipantesPN] INT NULL,
    [NumerodeConcluintes] INT NULL,
    [NumerodeInscritos] INT NULL,
    [NumerodeHorasAplicadas] NUMERIC(18,2) NULL,
    [NumerodeHorasRecebidas] NUMERIC(18,2) NULL,
    [VolumedeRecursos] NUMERIC(18,2) NULL,
    [NumerodePessoasInformadas] INT NULL
);

CREATE TABLE [dbo].[VW_SME_RecorrenciaAtendimentos] (
    [SiglaUF] VARCHAR(2) NULL,
    [SkPPA] INT NULL,
    [SkClientePessoaJuridica] INT NULL,
    [QtAtendimento] INT NULL
);

