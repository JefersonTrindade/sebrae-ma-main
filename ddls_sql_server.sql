CREATE TABLE [dbo].[_linkedTest] (
    [c] BIGINT NULL
);

CREATE TABLE [dbo].[_PessoaJ_Faturam_AM] (
    [codparceiro] INT NOT NULL,
    [atual_uf] SMALLINT NOT NULL,
    [atual_dc] SMALLINT NOT NULL
);

CREATE TABLE [dbo].[_SIACWEB_CONTROLE_SCRIPT] (
    [ID_SCRIPT] INT NOT NULL,
    [ID_VERSAO] INT NOT NULL,
    [DS_TIPO_OBJETO] VARCHAR(10) NOT NULL,
    [DS_OBJETO] VARCHAR(250) NOT NULL,
    [DS_DESCRICAO] VARCHAR(250) NOT NULL,
    [DT_ATUALIZACAO] DATETIME NOT NULL,
    [DS_LOG_ATUALIZACAO] VARCHAR(250) NOT NULL
);

CREATE TABLE [dbo].[_SIACWEB_CONTROLE_VERSAO] (
    [ID_VERSAO] INT NOT NULL,
    [ID_COD_SEBRAE] INT NOT NULL,
    [DS_VERSAO] VARCHAR(20) NOT NULL,
    [DT_INSTALACAO] DATETIME NOT NULL,
    [DT_ATUALIZACAO] DATETIME NULL
);

CREATE TABLE [dbo].[20240503-vinculos-com-cpf] (
    [cpf] VARCHAR(50) NULL,
    [cnpj] VARCHAR(50) NULL,
    [Coluna2] VARCHAR(50) NULL,
    [Coluna3] VARCHAR(50) NULL
);

CREATE TABLE [dbo].[20240612-vinculos-com-cpf] (
    [CPF] VARCHAR(50) NULL,
    [CNPJ] VARCHAR(50) NULL,
    [Coluna 2] VARCHAR(50) NULL,
    [Coluna 3] VARCHAR(50) NULL
);

CREATE TABLE [dbo].[20240712-vinculos-com-cpf] (
    [CPF] VARCHAR(50) NULL,
    [CNPJ] VARCHAR(50) NULL,
    [Coluna1] VARCHAR(50) NULL,
    [Coluna2] VARCHAR(50) NULL
);

CREATE TABLE [dbo].[abc_comunicacao] (
    [numseqcom] SMALLINT NOT NULL,
    [codparceiro] INT NOT NULL,
    [codcomunic] SMALLINT NOT NULL,
    [numero] VARCHAR(60) NULL,
    [IndInternet] TINYINT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[abc_parceiro] (
    [CodParceiro] INT NOT NULL,
    [TipoParceiro] VARCHAR(1) NOT NULL,
    [NomeRazaoSocial] VARCHAR(120) NULL,
    [NomeAbrevFantasia] VARCHAR(80) NULL,
    [CgcCpf] NUMERIC(15,0) NULL,
    [IndAtu] VARCHAR(3) NULL,
    [DataInc] SMALLDATETIME NOT NULL,
    [DataAtu] SMALLDATETIME NOT NULL,
    [CodUnidOperInc] INT NULL,
    [CodUnidOperAtu] INT NULL,
    [ControleRede] SMALLINT NULL,
    [Tipo] INT NULL,
    [IndAtualizacao] SMALLINT NULL,
    [CodSebrae] INT NOT NULL,
    [CodResponsavel] INT NULL,
    [ReceberInfoSEBRAE] CHAR(1) NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL,
    [Situacao] INT NOT NULL,
    [CodCRM] UNIQUEIDENTIFIER NULL
);

CREATE TABLE [dbo].[AbrangenciaProdutoPortfolio] (
    [CodAbrangencia] SMALLINT NOT NULL,
    [NomeAbrangencia] VARCHAR(50) NOT NULL,
    [Situacao] CHAR(1) NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[AbrangenciaProdutoPortfolioEstados] (
    [CodAbrangencia] SMALLINT NOT NULL,
    [CodEstado] SMALLINT NOT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[Acao] (
    [CodAnalise] INT NOT NULL,
    [CodAcao] SMALLINT NOT NULL,
    [CodFuncionario] INT NULL,
    [Nome] VARCHAR(255) NULL,
    [Justificativa] TEXT NULL,
    [PrazoImplementacao] DATETIME NULL,
    [Duracao] INT NULL,
    [Recursos] VARCHAR(255) NULL
);

CREATE TABLE [dbo].[AcaoBasica] (
    [CodAcaoBasica] INT NOT NULL,
    [DescAcaoBasica] VARCHAR(80) NULL
);

CREATE TABLE [dbo].[AcaoLogWs] (
    [idAcao] INT NOT NULL,
    [Acao] VARCHAR(20) NOT NULL
);

CREATE TABLE [dbo].[AcessosMetodoWS] (
    [CodParceiro] INT NOT NULL,
    [IdWebServ] INT NOT NULL,
    [IdMetodo] INT NOT NULL,
    [DataValidade] DATETIME NULL,
    [Status] SMALLINT NULL
);

CREATE TABLE [dbo].[AcessosWS] (
    [CodParceiro] INT NOT NULL,
    [IdWebServ] INT NOT NULL,
    [DataValidade] DATETIME NULL,
    [Status] SMALLINT NULL
);

CREATE TABLE [dbo].[Acompanhamento] (
    [CodHelpDesk] INT NOT NULL,
    [CodAcomp] INT NOT NULL,
    [CodTecnicoResp] INT NOT NULL,
    [DataInicio] DATETIME NULL,
    [TempoAcomp] INT NULL,
    [DescAcomp] VARCHAR(255) NULL,
    [Status] INT NOT NULL
);

CREATE TABLE [dbo].[AcompAssistenciaMedica] (
    [CodAcompAssistMedica] INT NOT NULL,
    [CodFuncionario] INT NOT NULL,
    [CodAssistMedica] TINYINT NOT NULL,
    [DataRegistro] DATETIME NOT NULL,
    [Assunto] VARCHAR(150) NOT NULL,
    [Contato] VARCHAR(30) NULL,
    [CodObjetoReq] INT NULL
);

CREATE TABLE [dbo].[AcompVeiculo] (
    [Chassi] VARCHAR(20) NOT NULL,
    [AnoUtilizacao] INT NOT NULL,
    [MesUtilizacao] TINYINT NOT NULL,
    [CodUnidOp] INT NOT NULL,
    [CodResponsavel] INT NOT NULL,
    [KmInicialMes] INT NULL,
    [KmFinalMes] INT NULL,
    [KmAtual] INT NULL,
    [KmMedia] INT NULL
);

CREATE TABLE [dbo].[AcumIndicador] (
    [AplicacaoCodigo] INT NOT NULL,
    [CodIndicador] INT NOT NULL,
    [CodTabulacao] TINYINT NOT NULL,
    [CodElemTabulado] INT NOT NULL,
    [DataGeracao] DATETIME NOT NULL,
    [ValorTabulacao] FLOAT NOT NULL
);

CREATE TABLE [dbo].[AdmAssistenciaMedica] (
    [CodAssistMedica] TINYINT NOT NULL,
    [CodObjetoReq] INT NOT NULL,
    [CodFuncionario] INT NOT NULL,
    [DataReceb] DATETIME NULL,
    [DataEnvio] DATETIME NULL,
    [DataRetorno] DATETIME NULL,
    [DataEntrega] DATETIME NULL
);

CREATE TABLE [dbo].[Agencia] (
    [CodBanco] INT NOT NULL,
    [CodAgencia] VARCHAR(10) NOT NULL,
    [DescAgencia] VARCHAR(50) NOT NULL,
    [Logradouro] VARCHAR(50) NULL,
    [Numero] INT NULL,
    [Complemento] VARCHAR(20) NULL,
    [CodBairro] INT NULL,
    [CodCidade] INT NULL,
    [Cep] INT NULL,
    [CodEstado] INT NULL,
    [CodPais] INT NULL
);

CREATE TABLE [dbo].[AgenciaTurismo] (
    [CodAgenciaTurismo] INT NOT NULL
);

CREATE TABLE [dbo].[AgendaConsultor] (
    [Consultor] INT NOT NULL,
    [DataAgendamento] DATETIME NOT NULL,
    [HoraInicial] DATETIME NOT NULL,
    [CodSebrae] INT NOT NULL,
    [HoraIntervalo] DATETIME NULL,
    [HoraRetorno] DATETIME NULL,
    [HoraFinal] DATETIME NOT NULL,
    [UnidadeOperacional] INT NOT NULL,
    [Status] BIT NOT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[agendamento] (
    [CodConsultor] INT NOT NULL,
    [Data] SMALLDATETIME NOT NULL,
    [Hora] DATETIME NOT NULL,
    [SeqAgendamento] INT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [Status] CHAR(1) NOT NULL,
    [CodParceiro] INT NOT NULL,
    [CodPessoaFisica] INT NULL,
    [CodMeioAgendamento] INT NOT NULL,
    [ClasseAgendamento] CHAR(1) NOT NULL,
    [VisitaExterna] BIT NOT NULL,
    [IndPresenca] BIT NOT NULL,
    [CodRecepcao] INT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[AGENDAMENTOCANCELADO] (
    [CodConsultor] INT NOT NULL,
    [Data] SMALLDATETIME NOT NULL,
    [Hora] DATETIME NOT NULL,
    [HoraCancelamento] DATETIME NOT NULL,
    [CodParceiro] INT NOT NULL,
    [CodPessoaFisica] INT NULL,
    [CodMeioAgendamento] INT NOT NULL,
    [ClasseAgendamento] CHAR(1) NOT NULL
);

CREATE TABLE [dbo].[AGENDAMENTOTEMA] (
    [CodConsultor] INT NOT NULL,
    [Data] SMALLDATETIME NOT NULL,
    [Hora] DATETIME NOT NULL,
    [SeqAgendamento] INT NOT NULL,
    [CodTema] INT NOT NULL
);

CREATE TABLE [dbo].[AGENDAMENTOVISITAEXT] (
    [CodConsultor] INT NOT NULL,
    [Data] SMALLDATETIME NOT NULL,
    [Hora] DATETIME NOT NULL,
    [CodParceiro] INT NOT NULL,
    [Cep] INT NOT NULL,
    [CodPais] INT NOT NULL,
    [CodEstado] INT NOT NULL,
    [CodCidade] INT NOT NULL,
    [CodBairro] INT NOT NULL,
    [CodTpLog] INT NULL,
    [DescEndereco] VARCHAR(60) NULL,
    [Numero] VARCHAR(6) NULL,
    [Complemento] VARCHAR(30) NULL
);

CREATE TABLE [dbo].[AgregacaoConsultor] (
    [CodAtendimento] INT NOT NULL,
    [CodConsultor] INT NOT NULL,
    [CodTema] INT NOT NULL
);

CREATE TABLE [dbo].[ALI_Agenda] (
    [CodAgenda] INT NOT NULL,
    [DataAgenda] DATETIME NULL,
    [HoraInicio] DATETIME NULL,
    [HoraTermino] DATETIME NULL,
    [DescAtividadeAgenda] VARCHAR(255) NULL,
    [CodAgente] INT NULL,
    [CodTipoAtividade] INT NULL,
    [DataCadastro] DATETIME NULL,
    [CodUsuario] INT NULL,
    [Situacao] TINYINT NULL,
    [MotivoCancelamento] VARCHAR(200) NULL,
    [CodSebrae] INT NULL,
    [CodIntencaoInscricao] INT NULL,
    [Rowguid] UNIQUEIDENTIFIER NULL
);

CREATE TABLE [dbo].[ALI_Agente] (
    [CodAgente] INT NOT NULL,
    [CodSenior] INT NULL,
    [CodSetorPrioritario] INT NULL,
    [Situacao] CHAR(1) NULL,
    [CodSebrae] INT NULL,
    [rowguid] UNIQUEIDENTIFIER NULL
);

CREATE TABLE [dbo].[ALI_AgenteMunicipio] (
    [CodAgente] INT NOT NULL,
    [CodCid] INT NOT NULL,
    [rowguid] UNIQUEIDENTIFIER NULL
);

CREATE TABLE [dbo].[ALI_AtaReuniao] (
    [CodAtaReuniao] INT NOT NULL,
    [DataAtaReuniao] DATETIME NULL,
    [HoraInicio] DATETIME NULL,
    [HoraTermino] DATETIME NULL,
    [ParticipantesReuniao] TEXT NULL,
    [PautaReuniao] TEXT NULL,
    [AssuntoReuniao] TEXT NULL,
    [DecisaoReuniao] TEXT NULL,
    [CodTipoAtividade] INT NULL,
    [CodMotivacao] INT NULL,
    [CodMotivacaoColaborador] INT NULL,
    [DiagnosticoRealizado] CHAR(1) NULL,
    [CodAgente] INT NULL,
    [CodAgenda] INT NULL,
    [Situacao] TINYINT NULL,
    [CodSebrae] INT NULL,
    [CodIntencaoInscricao] INT NULL,
    [DataPublicacao] DATETIME NULL,
    [CodMotivacaoALICliente] INT NULL,
    [CodMotivacaoALIProjeto] INT NULL,
    [DataAtualizacao] DATETIME NULL,
    [Rowguid] UNIQUEIDENTIFIER NULL
);

CREATE TABLE [dbo].[ALI_Avaliacao] (
    [CodAvaliacao] INT NOT NULL,
    [CodIntencaoInscricao] INT NOT NULL,
    [CodPlanoAcao] INT NULL,
    [CodTipoAvaliacao] INT NULL,
    [Situacao] TINYINT NULL,
    [CodSebrae] INT NULL,
    [DataCadastro] DATETIME NULL,
    [CodMotivacaoALICliente] INT NULL,
    [CodMotivacaoALIProjeto] INT NULL,
    [DataAtualizacao] DATETIME NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[ALI_AvaliacaoResposta] (
    [CodAvaliacao] INT NOT NULL,
    [CodFichaAvaliacao] INT NOT NULL,
    [CodIndicadorAval] INT NOT NULL,
    [CodItemEscolhido] INT NOT NULL,
    [CodIntervalo] INT NULL,
    [Texto] TEXT NULL,
    [Valor] FLOAT NULL,
    [CodSebrae] INT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[ALI_BancoSolucao] (
    [CodBancoSolucao] INT NOT NULL,
    [DescAcao] TEXT NULL,
    [SolucaoApresentada] TEXT NULL,
    [ProblemaEncontrado] TEXT NULL,
    [TempoNecessario] INT NULL,
    [ValorMedio] FLOAT NULL,
    [CodAreaTematica] INT NULL,
    [CodTema] INT NULL,
    [DataCadastro] DATETIME NULL,
    [CodParceiro] INT NULL,
    [CodSebrae] INT NULL,
    [Rowguid] UNIQUEIDENTIFIER NULL
);

CREATE TABLE [dbo].[ALI_FollowUpCliente] (
    [CodIntencaoInscricao] INT NOT NULL,
    [CodTipoFollowUp] INT NOT NULL,
    [DataFollowUpCliente] DATETIME NOT NULL,
    [CodRealizacao] INT NULL,
    [DescFollowUpCliente] TEXT NULL,
    [CodUsuario] INT NULL,
    [Tipo] CHAR(1) NULL,
    [CodTela] INT NULL,
    [CodSebrae] INT NULL,
    [Rowguid] UNIQUEIDENTIFIER NULL
);

CREATE TABLE [dbo].[ALI_Gestor] (
    [CodGestor] INT NOT NULL,
    [Situacao] CHAR(1) NULL,
    [CodSebrae] INT NULL,
    [rowguid] UNIQUEIDENTIFIER NULL
);

CREATE TABLE [dbo].[ALI_HistoricoCancelamentoCliente] (
    [CodIntencaoInscricao] INT NOT NULL,
    [DataCadastro] DATETIME NOT NULL,
    [DataCancelamento] DATETIME NULL,
    [CodMotivoCancelamento] INT NULL,
    [ConsideracaoCliente] TEXT NULL,
    [ConsideracaoAgente] TEXT NULL,
    [ConsideracaoCoordEstadual] TEXT NULL,
    [Situacao] INT NULL,
    [CodUsuarioResponsavel] INT NULL,
    [CodSebrae] INT NULL,
    [rowguid] UNIQUEIDENTIFIER NULL
);

CREATE TABLE [dbo].[ALI_HistoricoDevolucaoAtaReuniao] (
    [CodAtaReuniao] INT NOT NULL,
    [DataCadastroDevolucao] DATETIME NOT NULL,
    [DescHistDevolucaoAtaReuniao] VARCHAR(2000) NULL,
    [DataFinalizacaoCorrecao] DATETIME NULL,
    [CodSebrae] INT NULL,
    [rowguid] UNIQUEIDENTIFIER NULL
);

CREATE TABLE [dbo].[ALI_HistoricoDevolucaoAvaliacao] (
    [CodAvaliacao] INT NOT NULL,
    [DataHistDevolucaoAvaliacao] DATETIME NOT NULL,
    [DescHistDevolucaoAvaliacao] VARCHAR(2000) NULL,
    [DataCorrecao] DATETIME NULL,
    [CodSebrae] INT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[ALI_HistoricoDevolucaoPlanoAcao] (
    [CodPlanoAcao] INT NOT NULL,
    [DataHistDevolucaoPlanoAcao] DATETIME NOT NULL,
    [DescHistDevolucaoPlanoAcao] VARCHAR(2000) NULL,
    [DataCorrecao] DATETIME NULL,
    [CodSebrae] INT NULL,
    [Rowguid] UNIQUEIDENTIFIER NULL
);

CREATE TABLE [dbo].[ALI_HistoricoDevolucaoPlanoTrabalho] (
    [CodIntencaoInscricao] INT NOT NULL,
    [DataHistDevolucaoPlanoTrab] DATETIME NOT NULL,
    [DescHistDevolucaoPlanoTrab] VARCHAR(2000) NULL,
    [DataCorrecao] DATETIME NULL,
    [CodSebrae] INT NULL,
    [rowguid] UNIQUEIDENTIFIER NULL
);

CREATE TABLE [dbo].[ALI_HistoricoResumoAcao] (
    [CodResumoAcao] INT NOT NULL,
    [DataHistResumoAcao] DATETIME NOT NULL,
    [DescHistResumoAcao] VARCHAR(2000) NULL,
    [DataCorrecao] DATETIME NULL,
    [CodSebrae] INT NULL,
    [rowguid] UNIQUEIDENTIFIER NULL
);

CREATE TABLE [dbo].[ALI_IntencaoInscricao] (
    [CodIntencaoInscricao] INT NOT NULL,
    [CodSetorPrioritario] INT NULL,
    [CodAgente] INT NULL,
    [CodCliente] INT NULL,
    [NomeContato] VARCHAR(120) NULL,
    [FoneContato] VARCHAR(25) NULL,
    [DataLimite] DATETIME NULL,
    [DataCadastro] DATETIME NULL,
    [CodUsuario] INT NULL,
    [DataInscricao] DATETIME NULL,
    [Situacao] TINYINT NULL,
    [CodSebrae] INT NULL,
    [rowguid] UNIQUEIDENTIFIER NULL,
    [CodRepresentante] INT NULL
);

CREATE TABLE [dbo].[ALI_MarcoPlanoAcao] (
    [CodMarcoPlanoAcao] INT NOT NULL,
    [DescMarcoPlanoAcao] TEXT NULL,
    [CodPlanoAcao] INT NULL,
    [NomeResponsavel] VARCHAR(120) NULL,
    [DataMarco] DATETIME NULL,
    [Situacao] TINYINT NULL,
    [CodSebrae] INT NULL,
    [rowguid] UNIQUEIDENTIFIER NULL
);

CREATE TABLE [dbo].[ALI_MotivacaoALICliente] (
    [CodMotivacaoALICliente] INT NOT NULL,
    [DescMotivacaoALICliente] VARCHAR(60) NULL,
    [Situacao] CHAR(1) NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[ALI_MotivacaoALIProjeto] (
    [CodMotivacaoALIProjeto] INT NOT NULL,
    [DescMotivacaoALIProjeto] VARCHAR(60) NULL,
    [Situacao] CHAR(1) NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[ALI_MotivacaoColaborador] (
    [CodMotivacaoColaborador] INT NOT NULL,
    [DescMotivacaoColaborador] VARCHAR(100) NULL,
    [Situacao] CHAR(1) NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[ALI_MotivacaoPatrocinador] (
    [CodMotivacaoPatrocinador] INT NOT NULL,
    [DescMotivacaoPatrocinador] VARCHAR(100) NULL,
    [Situacao] CHAR(1) NULL,
    [CodSebrae] INT NULL,
    [RowGuid] UNIQUEIDENTIFIER NULL
);

CREATE TABLE [dbo].[ALI_MotivoCancelamento] (
    [CodMotivoCancelamento] INT NOT NULL,
    [DescMotivoCancelamento] VARCHAR(100) NULL,
    [Situacao] CHAR(1) NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[ALI_Parametro] (
    [CodSEBRAE] INT NOT NULL,
    [GovernancaAgente] TINYINT NULL,
    [DiasElaboraDoc] TINYINT NULL,
    [DiasRevisao] TINYINT NULL,
    [DiasCorrecao] TINYINT NULL,
    [EmailAvisoRevisao] BIT NULL,
    [EmailAvisoCorrecao] BIT NULL,
    [EmailPrazoDocumento] BIT NULL,
    [EmailCopiaGestor] BIT NULL,
    [Ano] INT NULL,
    [CodProjeto] UNIQUEIDENTIFIER NULL,
    [CodAcao] INT NULL,
    [CodCoordenador] INT NULL,
    [TextoPadrao] VARCHAR(300) NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[ALI_PlanoAcao] (
    [CodPlanoAcao] INT NOT NULL,
    [CodIntencaoInscricao] INT NULL,
    [PrioridadePlanoAcao] INT NULL,
    [DescPlanoAcao] TEXT NULL,
    [CodParceiro] INT NULL,
    [DataInicio] DATETIME NULL,
    [DataTermino] DATETIME NULL,
    [DescAcao] TEXT NULL,
    [SolucaoProposta] TEXT NULL,
    [ValorSolucao] DECIMAL(10,2) NULL,
    [Situacao] INT NULL,
    [DataPublicacao] DATETIME NULL,
    [CodMotivacaoALICliente] INT NULL,
    [CodMotivacaoALIProjeto] INT NULL,
    [CodSebrae] INT NULL,
    [DataAtualizacao] DATETIME NULL,
    [rowguid] UNIQUEIDENTIFIER NULL
);

CREATE TABLE [dbo].[ALI_PlanoTrabalho] (
    [CodIntencaoInscricao] INT NOT NULL,
    [ObjetivoGeral] TEXT NULL,
    [MetasACumprir] TEXT NULL,
    [DataCadastro] DATETIME NULL,
    [DataPublicacao] DATETIME NULL,
    [Situacao] INT NULL,
    [SituacaoProjeto] CHAR(1) NULL,
    [CodSebrae] INT NULL,
    [CodMotivacaoALICliente] INT NULL,
    [CodMotivacaoALIProjeto] INT NULL,
    [DataAtualizacao] DATETIME NULL,
    [rowguid] UNIQUEIDENTIFIER NULL
);

CREATE TABLE [dbo].[ALI_ProvedorBancoSolucao] (
    [CodParceiro] INT NOT NULL,
    [CodBancoSolucao] INT NOT NULL
);

CREATE TABLE [dbo].[ALI_ResumoAcao] (
    [CodPlanoAcao] INT NOT NULL,
    [CodParceiro] INT NULL,
    [DataInicio] DATETIME NULL,
    [DataTermino] DATETIME NULL,
    [PrazoPlanejado] INT NULL,
    [PrazoRealizado] INT NULL,
    [PrecoPlanejado] DECIMAL(10,1) NULL,
    [PrecoRealizado] DECIMAL(10,1) NULL,
    [QualidadeServico] SMALLINT NULL,
    [SolucaoApresentada] TEXT NULL,
    [ProblemasEncontrados] TEXT NULL,
    [Situacao] INT NULL,
    [DataPublicacao] DATETIME NULL,
    [CodMotivacaoALICliente] INT NULL,
    [CodMotivacaoALIProjeto] INT NULL,
    [CodSebrae] INT NULL,
    [DataAtualizacao] DATETIME NULL,
    [rowguid] UNIQUEIDENTIFIER NULL
);

CREATE TABLE [dbo].[ALI_Senior] (
    [CodSenior] INT NOT NULL,
    [CodGestor] INT NULL,
    [CodSetorPrioritario] INT NULL,
    [Situacao] CHAR(1) NULL,
    [CodSebrae] INT NULL,
    [rowguid] UNIQUEIDENTIFIER NULL
);

CREATE TABLE [dbo].[ALI_SeniorMunicipio] (
    [CodSenior] INT NOT NULL,
    [CodCid] INT NOT NULL,
    [codsebrae] INT NULL,
    [rowguid] UNIQUEIDENTIFIER NULL
);

CREATE TABLE [dbo].[ALI_TipoAtividade] (
    [CodTipoAtividade] INT NOT NULL,
    [DescTipoAtividade] VARCHAR(50) NULL,
    [Situacao] CHAR(1) NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[ALI_TipoFollowUp] (
    [CodTipoFollowUp] INT NOT NULL,
    [DescTipoFollowUp] VARCHAR(120) NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[ALOCACAORECURSO] (
    [Numero] INT NOT NULL,
    [Ano] INT NOT NULL,
    [TipoDocumento] CHAR(1) NOT NULL,
    [Cedente] INT NOT NULL,
    [CodigoRecursoCC] INT NOT NULL,
    [QuantAlocada] INT NULL,
    [CodPessoaJ] INT NULL,
    [CodTermoAditivo] INT NULL
);

CREATE TABLE [dbo].[AlocacaoSala] (
    [CodAlocacaoSala] INT NOT NULL,
    [CodObjetoReq] INT NOT NULL,
    [CodBeneficiario] INT NOT NULL,
    [CodOcupacaoSala] TINYINT NOT NULL,
    [DataIniAlocacao] DATETIME NOT NULL,
    [DataFimAlocacao] DATETIME NULL,
    [Finalidade] VARCHAR(255) NULL
);

CREATE TABLE [dbo].[alteracoes] (
    [RowNumber] INT NOT NULL,
    [EventClass] INT NULL,
    [TextData] NTEXT NULL,
    [ApplicationName] NVARCHAR(128) NULL,
    [NTUserName] NVARCHAR(128) NULL,
    [LoginName] NVARCHAR(128) NULL,
    [Reads] BIGINT NULL,
    [Writes] BIGINT NULL,
    [Duration] BIGINT NULL,
    [ClientProcessID] INT NULL,
    [SPID] INT NULL,
    [StartTime] DATETIME NULL,
    [BinaryData] IMAGE NULL
);

CREATE TABLE [dbo].[Analise] (
    [CodAnalise] INT NOT NULL,
    [CodFuncionario] INT NULL,
    [Nome] VARCHAR(50) NULL,
    [Data] DATETIME NULL,
    [Assunto] VARCHAR(50) NULL,
    [Descricao] TEXT NULL,
    [Comentario] TEXT NULL
);

CREATE TABLE [dbo].[analise_resultado_scripts_antes] (
    [Servidor] NVARCHAR(128) NOT NULL,
    [Publicador] NVARCHAR(128) NOT NULL,
    [Descrição] VARCHAR(1000) NULL,
    [Tabela] NVARCHAR(128) NOT NULL,
    [Operacao] VARCHAR(50) NULL,
    [Quantidade] INT NULL,
    [Data] DATETIME NULL
);

CREATE TABLE [dbo].[AnaliseIndicador] (
    [CodAnalise] INT NOT NULL,
    [CodIndicador] INT NOT NULL,
    [CodColeta] SMALLINT NOT NULL,
    [CodPesquisa] INT NOT NULL,
    [Status] INT NULL
);

CREATE TABLE [dbo].[Anexos] (
    [CodAnexo] SMALLINT NOT NULL,
    [PathArquivo] VARCHAR(255) NOT NULL,
    [Descricao] VARCHAR(255) NOT NULL,
    [Caracteristica] VARCHAR(255) NULL,
    [CodFuncionario] CHAR(20) NULL,
    [FonteDocumento] VARCHAR(60) NULL,
    [Observacao] VARCHAR(255) NULL,
    [DataInclusao] DATETIME NOT NULL
);

CREATE TABLE [dbo].[AnexoTarefa] (
    [CodTarefa] INT NOT NULL,
    [CodAnexo] SMALLINT NOT NULL
);

CREATE TABLE [dbo].[answers] (
    [db-id] VARCHAR(255) NULL,
    [control_id] VARCHAR(255) NULL,
    [invite_id] VARCHAR(255) NULL,
    [nome] VARCHAR(500) NULL,
    [email] VARCHAR(255) NULL,
    [telefone] VARCHAR(255) NULL,
    [canal] VARCHAR(255) NULL,
    [metrica] VARCHAR(255) NULL,
    [acao] VARCHAR(255) NULL,
    [nota] VARCHAR(255) NULL,
    [feedback] VARCHAR(8000) NULL,
    [data_resposta] VARCHAR(255) NULL,
    [data_do_convite] VARCHAR(255) NULL,
    [status] VARCHAR(255) NULL,
    [data_inicio_tratativa] VARCHAR(255) NULL,
    [data_fechamento_tratativa] VARCHAR(255) NULL,
    [duracao_tratativa] VARCHAR(255) NULL,
    [categorias] VARCHAR(255) NULL,
    [responsavel] VARCHAR(255) NULL,
    [comentario_da_tratativa] VARCHAR(8000) NULL,
    [comentarios] VARCHAR(255) NULL,
    [ip_address] VARCHAR(255) NULL,
    [visitor_id] VARCHAR(255) NULL,
    [codigocliente] VARCHAR(255) NULL,
    [cpf] VARCHAR(255) NULL,
    [nometratamento] VARCHAR(255) NULL,
    [datanascimento] VARCHAR(255) NULL,
    [descgenero] VARCHAR(255) NULL,
    [cidade] VARCHAR(255) NULL,
    [estado] VARCHAR(255) NULL,
    [contatoporemail] VARCHAR(255) NULL,
    [contatoportelefone] VARCHAR(255) NULL,
    [codigoempreendimento] VARCHAR(255) NULL,
    [razaosocial] VARCHAR(255) NULL,
    [nomefantasia] VARCHAR(255) NULL,
    [cnpj] VARCHAR(255) NULL,
    [tipoempreendimentopj] VARCHAR(50) NULL,
    [portepj] VARCHAR(50) NULL,
    [setorpj] VARCHAR(50) NULL,
    [cidadeempreendimento] VARCHAR(255) NULL,
    [estadoempreendimento] VARCHAR(50) NULL,
    [vinculo] VARCHAR(50) NULL,
    [protocolo] VARCHAR(50) NULL,
    [codrealizacao] VARCHAR(50) NULL,
    [codatendente] VARCHAR(50) NULL,
    [nomeatendente] VARCHAR(255) NULL,
    [unidadeorganizacional] VARCHAR(500) NULL,
    [tipounidade] VARCHAR(50) NULL,
    [datahorainiciorealizacao] VARCHAR(50) NULL,
    [datahorafimrealizacao] VARCHAR(50) NULL,
    [canalatendimento] VARCHAR(50) NULL,
    [instrumento] VARCHAR(255) NULL,
    [tiporealizacao] VARCHAR(50) NULL,
    [tipointeracao] VARCHAR(50) NULL,
    [tiposervico] VARCHAR(50) NULL,
    [subtema] VARCHAR(255) NULL,
    [tema] VARCHAR(50) NULL,
    [projeto] VARCHAR(255) NULL,
    [_acao] VARCHAR(255) NULL,
    [programa] VARCHAR(255) NULL,
    [codevento] VARCHAR(255) NULL,
    [nomeevento] VARCHAR(255) NULL,
    [codproduto] VARCHAR(255) NULL,
    [nomeproduto] VARCHAR(255) NULL,
    [macroevento] VARCHAR(255) NULL,
    [macroevento_interacao] VARCHAR(255) NULL,
    [dataentrada] VARCHAR(50) NULL,
    [codaplicacao] VARCHAR(50) NULL,
    [codsebraeatend] VARCHAR(50) NULL,
    [sistema] VARCHAR(50) NULL,
    [voco] VARCHAR(255) NULL,
    [codsubtema] VARCHAR(50) NULL,
    [codtema] VARCHAR(50) NULL,
    [codprojeto] VARCHAR(50) NULL,
    [codacao] VARCHAR(50) NULL,
    [ufsebraeatend] VARCHAR(255) NULL,
    [fluxo  canal de contato ] VARCHAR(50) NULL,
    [fluxo  status] VARCHAR(50) NULL,
    [fluxo  qual] VARCHAR(50) NULL,
    [idade] VARCHAR(255) NULL,
    [browser_name] VARCHAR(255) NULL,
    [system_name] VARCHAR(50) NULL,
    [platform_type] VARCHAR(50) NULL,
    [data_criacao_resposta] VARCHAR(50) NULL,
    [parcial] VARCHAR(50) NULL,
    [data_update_status_tratativa] VARCHAR(50) NULL,
    [reacao] VARCHAR(50) NULL,
    [sentimento] VARCHAR(255) NULL,
    [keywords] VARCHAR(8000) NULL,
    [tag_de_tratativa] VARCHAR(255) NULL,
    [respondido_por] VARCHAR(255) NULL,
    [transcricao_audio] VARCHAR(8000) NULL
);

CREATE TABLE [dbo].[answers_V2] (
    [CodigoCliente] INT NOT NULL,
    [CPF] NUMERIC(15,0) NULL,
    [NomeCliente] VARCHAR(MAX) NULL,
    [NomeTratamento] VARCHAR(MAX) NULL,
    [DataNascimento] SMALLDATETIME NULL,
    [DescGenero] VARCHAR(255) NULL,
    [Cidade] VARCHAR(150) NULL,
    [Estado] VARCHAR(3) NULL,
    [Email] VARCHAR(MAX) NULL,
    [ContatoPorEmail] VARCHAR(3) NOT NULL,
    [Celular] VARCHAR(60) NULL,
    [ContatoPorTelefone] VARCHAR(3) NOT NULL,
    [CodigoEmpreendimento] INT NULL,
    [RazaoSocial] VARCHAR(MAX) NULL,
    [NomeFantasia] VARCHAR(MAX) NULL,
    [CNPJ] NUMERIC(15,0) NULL,
    [TipoEmpreendimentoPJ] VARCHAR(50) NULL,
    [PortePJ] VARCHAR(50) NULL,
    [SetorPJ] VARCHAR(30) NULL,
    [CidadeEmpreendimento] VARCHAR(150) NULL,
    [EstadoEmpreendimento] VARCHAR(3) NULL,
    [Vinculo] VARCHAR(30) NULL,
    [Protocolo] VARCHAR(255) NULL,
    [CodRealizacao] BIGINT NOT NULL,
    [CodAtendente] INT NOT NULL,
    [NomeAtendente] VARCHAR(120) NULL,
    [UnidadeOrganizacional] VARCHAR(255) NULL,
    [TipoUnidade] VARCHAR(255) NULL,
    [DataHoraInicioRealizacao] DATETIME NOT NULL,
    [DataHoraFimRealizacao] DATETIME NULL,
    [CanalAtendimento] VARCHAR(50) NULL,
    [Instrumento] VARCHAR(50) NOT NULL,
    [TipoRealizacao] VARCHAR(3) NOT NULL,
    [TipoInteracao] VARCHAR(255) NULL,
    [TipoServico] VARCHAR(50) NULL,
    [CodSubTema] INT NULL,
    [SubTema] VARCHAR(255) NULL,
    [CodTema] INT NULL,
    [Tema] VARCHAR(255) NULL,
    [CodProjeto] UNIQUEIDENTIFIER NOT NULL,
    [Projeto] VARCHAR(100) NOT NULL,
    [CodAcao] INT NOT NULL,
    [Acao] VARCHAR(100) NOT NULL,
    [Programa] VARCHAR(100) NULL,
    [CodEvento] BIGINT NULL,
    [NomeEvento] VARCHAR(255) NULL,
    [CodProduto] BIGINT NULL,
    [NomeProduto] VARCHAR(MAX) NULL,
    [MacroEvento] VARCHAR(255) NULL,
    [MacroEvento_Interacao] VARCHAR(255) NULL,
    [dataEntrada] DATETIME NULL,
    [codaplicacao] INT NOT NULL,
    [CodSebraeAtend] INT NOT NULL,
    [UFSebraeAtend] VARCHAR(10) NULL,
    [Sistema] INT NOT NULL
);

CREATE TABLE [dbo].[Aplicacao] (
    [aplicacaoCodigo] INT NOT NULL,
    [aplicacaoDescricao] VARCHAR(50) NULL,
    [tipo] TINYINT NULL,
    [ExibirAplicacao] CHAR(1) NULL,
    [rowguid] UNIQUEIDENTIFIER NULL,
    [TipoSIAC] CHAR(1) NULL,
    [Situacao] CHAR(1) NULL
);

CREATE TABLE [dbo].[AplicacaoAvaliacao] (
    [CodParceiro] INT NOT NULL,
    [CodColeta] SMALLINT NOT NULL,
    [CodPesquisa] INT NOT NULL,
    [DataRealizacao] DATETIME NULL,
    [DataReferencia] DATETIME NULL,
    [Sequencial] INT NOT NULL
);

CREATE TABLE [dbo].[AplicacaoIndicador] (
    [CodIndicador] INT NOT NULL,
    [CodColeta] SMALLINT NOT NULL,
    [CodParceiro] INT NOT NULL,
    [CodPesquisa] INT NOT NULL,
    [Valor] FLOAT NULL,
    [Sequencial] INT NOT NULL
);

CREATE TABLE [dbo].[ApoioMetodologico] (
    [CodApoioMetodologico] SMALLINT NOT NULL,
    [DescApoioMetodologico] VARCHAR(255) NOT NULL,
    [Conceito] TEXT NULL,
    [NomeArquivo] VARCHAR(255) NULL,
    [Situacao] TINYINT NOT NULL
);

CREATE TABLE [dbo].[Apresentacao] (
    [CodApresentacao] INT NOT NULL,
    [DescApresentacao] VARCHAR(40) NOT NULL,
    [UnidApresentacao] VARCHAR(10) NOT NULL
);

CREATE TABLE [dbo].[ApuracaoQtdReplicacao] (
    [UF] INT NULL,
    [descsebrae] VARCHAR(100) NULL,
    [tabela] VARCHAR(100) NULL,
    [qtd_NA] INT NULL,
    [qtd_UF] INT NULL,
    [Data] DATETIME NULL
);

CREATE TABLE [dbo].[ApuraIndicadoresDesempenho] (
    [CodSebrae] INT NULL,
    [CodSebrae_Apuracao] INT NULL,
    [Indicador2] INT NULL,
    [Indicador4] INT NULL,
    [Indicador5] INT NULL,
    [Indicador11] INT NULL,
    [Indicador12] INT NULL,
    [Indicador13] INT NULL,
    [Indicador14] INT NULL,
    [Indicador15] INT NULL,
    [Indicador17] INT NULL,
    [Data] DATETIME NULL
);

CREATE TABLE [dbo].[ApuraIndicadoresDesempenho_2017] (
    [ID] INT NOT NULL,
    [CodSebrae] INT NULL,
    [CodSebrae_Apuracao] INT NULL,
    [I02_DonosPeqNeg] INT NULL,
    [I04_PotEmpres] INT NULL,
    [I05_PotEmpree] INT NULL,
    [I11_PeqNeg] INT NULL,
    [I12_Inovacao] INT NULL,
    [I13_MEI] INT NULL,
    [I14_ME] INT NULL,
    [I15_EPP] INT NULL,
    [I17_Fidelizacao] INT NULL,
    [Data] DATETIME NULL
);

CREATE TABLE [dbo].[ApuraMetaMobilizadora_2015] (
    [CodSebrae] INT NULL,
    [CodSebrae_Apuracao] INT NOT NULL,
    [Meta1] INT NULL,
    [Meta2] INT NULL,
    [Meta3] INT NULL,
    [Meta4] INT NULL,
    [Meta5] INT NULL,
    [Data] DATETIME NOT NULL,
    [Meta7] DECIMAL(18,2) NULL,
    [Meta6] INT NULL
);

CREATE TABLE [dbo].[ApuraMetaMobilizadora_2017] (
    [ID] INT NOT NULL,
    [CodSebrae] INT NULL,
    [CodSebrae_Apuracao] INT NULL,
    [Data] DATETIME NULL,
    [M01_Inovacao] INT NULL,
    [M02_Credito] INT NULL,
    [M03_Portal] INT NULL,
    [M06_Instit_Educ] INT NULL
);

CREATE TABLE [dbo].[AreaAtuacao] (
    [CodAreaAtu] INT NOT NULL,
    [DescAreaAtu] VARCHAR(40) NOT NULL
);

CREATE TABLE [dbo].[AreaAtuacaoPortfolioProdutoSEB] (
    [CodAreaAtuacaoUnidApoio] INT NOT NULL,
    [codProduto] INT NOT NULL
);

CREATE TABLE [dbo].[AreaAtuacaoProduto] (
    [CodAreaAtuacaoProduto] INT NOT NULL,
    [DescAreaAtuacaoProduto] VARCHAR(50) NOT NULL
);

CREATE TABLE [dbo].[AreaAtuacaoUnidApoio] (
    [CodAreaAtuacaoUnidApoio] INT NOT NULL,
    [DescAreaAtuacaoUnidApoio] VARCHAR(50) NOT NULL,
    [codunidop] INT NOT NULL,
    [CodProd] INT NOT NULL
);

CREATE TABLE [dbo].[areaatuevento] (
    [codareaevento] INT NOT NULL,
    [descareaevento] VARCHAR(50) NOT NULL
);

CREATE TABLE [dbo].[areaespec] (
    [codareaesp] INT NOT NULL,
    [descareaesp] VARCHAR(80) NOT NULL
);

CREATE TABLE [dbo].[AREATEMATICA] (
    [CodAreaTematica] INT NOT NULL,
    [DescAreaTematica] VARCHAR(255) NULL,
    [TemaPrincipal] BIT NOT NULL,
    [PalavrasChave] VARCHAR(255) NULL,
    [TemaSuperior] INT NULL,
    [Conceito] TEXT NULL,
    [Status] BIT NULL,
    [rowguid] UNIQUEIDENTIFIER NULL,
    [Sistema] TINYINT NOT NULL
);

CREATE TABLE [dbo].[Assinatura] (
    [CodAssinatura] INT NOT NULL,
    [CodConta] INT NULL,
    [CodEdicao] INT NULL,
    [CodFormaAssinatura] INT NULL,
    [QtdEdicReceber] INT NULL,
    [CodParceiro] INT NULL,
    [Dt_Inclusao] DATETIME NULL,
    [ReceberJornal] TINYINT NOT NULL,
    [Dt_Renovacao] DATETIME NULL
);

CREATE TABLE [dbo].[AssinaturaEndereco] (
    [CodSebrae] INT NOT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[AssistenciaMedica] (
    [CodAssistMedica] TINYINT NOT NULL,
    [DescAssistMedica] VARCHAR(150) NOT NULL,
    [CodConvenioMed] TINYINT NOT NULL,
    [SubSEBRAEFUN] FLOAT NULL,
    [SubFuncionario] FLOAT NULL,
    [SubDependente] FLOAT NULL,
    [SubSEBRAEDEP] FLOAT NULL,
    [Valor] FLOAT NULL
);

CREATE TABLE [dbo].[AssuntoAtendimento] (
    [CodNaturezaAssunto] INT NOT NULL,
    [CodAssunto] INT NOT NULL,
    [DescAssunto] VARCHAR(60) NOT NULL
);

CREATE TABLE [dbo].[AssuntoAtributo] (
    [CodAssuntoAtributo] INT NOT NULL,
    [DescAssuntoAtributo] VARCHAR(50) NOT NULL,
    [RadicalAssuntoAtributo] VARCHAR(50) NOT NULL,
    [Situacao] TINYINT NULL
);

CREATE TABLE [dbo].[AssuntoInfAtendimento] (
    [CodAssunto] INT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [DescAssunto] TEXT NULL,
    [CodNatureza] INT NULL,
    [Resposta] TEXT NULL,
    [DataValidade] DATETIME NULL,
    [IndExpirar] TINYINT NULL,
    [CodParceiro] INT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[AssuntoJuridico] (
    [CodAssuntoJuridico] INT NOT NULL,
    [DescAssuntoJuridico] VARCHAR(255) NOT NULL
);

CREATE TABLE [dbo].[AssuntoLoc] (
    [codassloc] VARCHAR(5) NOT NULL,
    [descassloc] VARCHAR(30) NOT NULL,
    [codassnac] VARCHAR(3) NOT NULL,
    [obsassunto] VARCHAR(50) NULL,
    [indmigracao] VARCHAR(3) NULL,
    [IndCargaMigracao] BIT NOT NULL
);

CREATE TABLE [dbo].[assuntonac] (
    [codassnac] VARCHAR(3) NOT NULL,
    [descassnac] VARCHAR(30) NOT NULL,
    [codunidmed] FLOAT NULL
);

CREATE TABLE [dbo].[AssuntosAtendimentoRapido] (
    [CodAtendimento] INT NOT NULL,
    [CodNaturezaAssunto] INT NOT NULL,
    [CodAssunto] INT NOT NULL
);

CREATE TABLE [dbo].[AssuntoTemp] (
    [CodAtend] INT NOT NULL,
    [CodUnidOper] INT NOT NULL,
    [CodAssLoc] VARCHAR(5) NOT NULL,
    [CodTipoServico] INT NOT NULL,
    [NumSeqAss] INT NOT NULL,
    [CodConsultor] INT NOT NULL,
    [Situacao] VARCHAR(15) NULL,
    [CodProd] INT NOT NULL,
    [IndSituacao] TINYINT NULL
);

CREATE TABLE [dbo].[AssuntoTipoServico] (
    [CodTipoServico] INT NOT NULL,
    [CodAssNac] VARCHAR(3) NOT NULL,
    [CodAssLoc] VARCHAR(5) NOT NULL
);

CREATE TABLE [dbo].[AssuntoTitulo] (
    [CodAssuntoTitulo] INT NOT NULL,
    [DescAssuntoTitulo] VARCHAR(50) NOT NULL
);

CREATE TABLE [dbo].[AteCacheMetasFisicas] (
    [Nivel1] VARCHAR(50) NOT NULL,
    [Nivel2] VARCHAR(50) NOT NULL,
    [Nivel3] VARCHAR(50) NOT NULL,
    [Nivel4] VARCHAR(50) NOT NULL,
    [Qtd] INT NOT NULL,
    [UnidOp] VARCHAR(60) NULL,
    [Prod] VARCHAR(60) NULL,
    [Periodo] VARCHAR(25) NULL
);

CREATE TABLE [dbo].[Atendimento] (
    [CodAtendimento] INT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [TipoAtendimento] CHAR(1) NOT NULL,
    [CodParceiro] INT NULL,
    [Status] CHAR(1) NOT NULL,
    [CodMeioAtendimento] INT NULL,
    [OffLine] TINYINT NULL,
    [CodEntidade] INT NULL,
    [Ano] INT NULL,
    [CodProjeto] UNIQUEIDENTIFIER NULL,
    [CodAcao] INT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[AtendimentoAtributo] (
    [CodAtendimento] INT NOT NULL,
    [CodAtributo] INT NOT NULL,
    [Status] TINYINT NULL
);

CREATE TABLE [dbo].[AtendimentoAtributoProduto] (
    [CodAtendimento] INT NOT NULL,
    [CodAtributo] INT NOT NULL,
    [CodProduto] INT NOT NULL,
    [Status] TINYINT NOT NULL
);

CREATE TABLE [dbo].[AtendimentoCDI] (
    [CodAtendimento] INT NOT NULL,
    [HoraInicial] DATETIME NULL,
    [HoraFinal] DATETIME NULL,
    [CodTipoServico] INT NOT NULL,
    [Observacao] VARCHAR(255) NULL,
    [CodUnidOp] INT NULL
);

CREATE TABLE [dbo].[AtendimentoCDISIAD] (
    [CodAtendimento] INT NOT NULL,
    [CodAB] SMALLINT NULL,
    [CodAE] UNIQUEIDENTIFIER NULL,
    [CodSOL] UNIQUEIDENTIFIER NULL,
    [CodOBJ] INT NULL,
    [ANO] INT NULL
);

CREATE TABLE [dbo].[AtendimentoFaseI] (
    [codatend] INT NOT NULL,
    [codunidoper] INT NOT NULL,
    [datahorainic] DATETIME NULL,
    [datahorafim] DATETIME NULL,
    [codmeioatend] SMALLINT NOT NULL,
    [datahoracheg] DATETIME NULL,
    [codprod] INT NOT NULL,
    [CodTipoServico] INT NULL
);

CREATE TABLE [dbo].[AtendimentoIntegrado] (
    [CodAtendIntegrado] INT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [DataHoraAtendimento] DATETIME NOT NULL,
    [HoraFinal] DATETIME NOT NULL,
    [CodPessoa] INT NOT NULL,
    [CodEmpreendimento] INT NULL,
    [CodMeioAtendimento] INT NULL,
    [DescComentario] TEXT NULL,
    [UsuarioResponsavel] INT NOT NULL,
    [CodSol] UNIQUEIDENTIFIER NULL,
    [CodObj] INT NULL,
    [CodEntidade] INT NULL,
    [CodMomentoVida] TINYINT NULL,
    [CodUnidOp] INT NULL,
    [Diagnostico] TEXT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[AtendimentoIntegradoFavoritos] (
    [CodDireito] INT NOT NULL,
    [UsuarioLogin] CHAR(20) NOT NULL,
    [CodAplicacao] INT NOT NULL,
    [Menu] VARCHAR(5) NULL
);

CREATE TABLE [dbo].[AtendimentoIntegradoPessoasAtendidas] (
    [CodAtendIntegrado] INT NOT NULL,
    [CodPessoaAtendida] INT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[AtendimentoIntegradoRegistroPendencia] (
    [CodPendencia] INT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [DescPendencia] VARCHAR(2000) NOT NULL,
    [CodRealizacao] INT NOT NULL,
    [DataCadastro] DATETIME NOT NULL,
    [DescResposta] VARCHAR(2000) NULL,
    [DataResposta] DATETIME NULL,
    [Situacao] CHAR(1) NOT NULL,
    [CodAplicacao] INT NOT NULL,
    [CodCliente] INT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[AtendimentoIntegradoRegistroPendenciaFluxo] (
    [CodPendencia] INT NOT NULL,
    [CodFluxoPendencia] INT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [CodDestinatario] INT NOT NULL,
    [DataEnvio] DATETIME NOT NULL,
    [Comentarios] TEXT NULL,
    [SituacaoPendencia] CHAR(1) NOT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[AtendimentoIntegradoRegistroPendenciaFluxoAnexo] (
    [CodPendencia] INT NOT NULL,
    [CodFluxoPendencia] INT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [CodAnexoPendencia] INT NOT NULL,
    [NomeAnexo] VARCHAR(255) NOT NULL,
    [Descricao] TEXT NULL,
    [CodDestinatario] INT NOT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[AtendimentoIntegradoRelacionamento] (
    [CodRelacionamento] INT NOT NULL,
    [TelaChamada] VARCHAR(500) NULL,
    [DescAreaRel] VARCHAR(255) NULL,
    [Situacao] CHAR(1) NULL
);

CREATE TABLE [dbo].[AtendimentoIntegradoRelacionamentoPermissao] (
    [CodRelacionamento] INT NOT NULL,
    [CodAplicacao] INT NOT NULL,
    [CodDireito] INT NOT NULL
);

CREATE TABLE [dbo].[AtendimentoIntegradoRespostaPesquisa] (
    [CodAtendIntegrado] INT NOT NULL,
    [CodFichaAval] INT NOT NULL,
    [CodIndicadorAval] INT NOT NULL,
    [CodItemEscolhido] INT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [CodIntervalo] INT NULL,
    [Texto] VARCHAR(50) NULL,
    [Valor] FLOAT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[AtendimentoIntegradoResumo] (
    [CodAtendIntegrado] INT NOT NULL,
    [DataHoraRegistro] DATETIME NOT NULL,
    [CodSebrae] INT NOT NULL,
    [CodAplicacao] INT NOT NULL,
    [CodRealizacao] INT NOT NULL,
    [TipoRealizacao] VARCHAR(3) NOT NULL,
    [CodRealizacaoComp] VARCHAR(255) NULL,
    [DescCategoria] VARCHAR(60) NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[AtendimentoIntegradoSecoesIntranet] (
    [CodSecaoIntranet] INT NOT NULL,
    [DescTituloSecaoIntranet] VARCHAR(350) NOT NULL,
    [TipoCadastro] CHAR(1) NOT NULL,
    [CodCategoria] INT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [CodResponsavel] INT NOT NULL,
    [DataCadastro] DATETIME NOT NULL,
    [DataIniPublicacao] DATETIME NULL,
    [DataFimPublicacao] DATETIME NULL,
    [DescLink] VARCHAR(150) NULL,
    [DescConteudoDica] TEXT NULL,
    [TipoResposta] CHAR(1) NULL,
    [Situacao] CHAR(1) NOT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[AtendimentoIntegradoSecoesIntranetRespostas] (
    [CodSecaoIntranet] INT NOT NULL,
    [CodRespostaSecaoIntranet] INT NOT NULL,
    [DescRespostaSecaoIntranet] VARCHAR(255) NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[AtendimentoIntegradoSecoesIntranetRespostasClientes] (
    [CodAtendIntegrado] INT NOT NULL,
    [CodSecaoIntranet] INT NOT NULL,
    [CodRespostaSecaoIntranet] INT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[AtendimentoIntegradoTema] (
    [CodAtendIntegrado] INT NOT NULL,
    [CodTema] INT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [BIA] CHAR(1) NOT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL,
    [TipoRealizacao] VARCHAR(3) NOT NULL,
    [AnoCompetencia] SMALLINT NULL,
    [CodAplicacao] INT NOT NULL
);

CREATE TABLE [dbo].[AtendimentoMotivoFinalizacao] (
    [CodAtendimento] INT NOT NULL,
    [CodMotivo] SMALLINT NOT NULL,
    [Descricao] TEXT NULL
);

CREATE TABLE [dbo].[AtendimentoPersonalizado] (
    [CodAtendimento] INT NOT NULL,
    [RegistroConsultor] TEXT NULL,
    [DiagnosticoPersonalizado] TEXT NULL,
    [CodTecnico] INT NOT NULL,
    [DataAgendamento] SMALLDATETIME NULL,
    [HoraAgendamento] DATETIME NULL,
    [TipoAtendPersonalizado] CHAR(1) NULL,
    [Categoria] CHAR(1) NULL,
    [CodSetor] SMALLINT NULL,
    [CodClasse] SMALLINT NULL,
    [CodAtivEcon] VARCHAR(5) NULL,
    [CodUnidOperacional] INT NULL,
    [CodCnaeFiscal] VARCHAR(2) NULL
);

CREATE TABLE [dbo].[AtendimentoPersonalizadoHistorico] (
    [CodAtendimento] INT NOT NULL,
    [CodHistorico] INT NOT NULL,
    [DataCadastro] DATETIME NULL,
    [DescHistoricoEmpresarial] TEXT NULL,
    [DescHistoricoCliente] TEXT NULL
);

CREATE TABLE [dbo].[AtendimentoPersonalizadoProdutoSugerido] (
    [CodAtendimento] INT NOT NULL,
    [CodProduto] INT NOT NULL,
    [NivelAbordagem] TINYINT NULL
);

CREATE TABLE [dbo].[AtendimentoPersonalizadoQuestaoPreparatoria] (
    [CodAtendimento] INT NOT NULL,
    [CodQuestaoPreparatoria] INT NOT NULL,
    [CodQuestaoPreparatoriaOpcao] INT NOT NULL,
    [TipoQuestaoPreparatoriaOpcao] INT NOT NULL
);

CREATE TABLE [dbo].[ATENDIMENTOPERSONALIZADOSESSAO] (
    [CodAtendimento] INT NOT NULL,
    [Data] SMALLDATETIME NOT NULL,
    [HoraInicial] DATETIME NOT NULL,
    [HoraFinal] DATETIME NULL,
    [TempoManutencao] INT NULL,
    [CodConsultor] INT NULL
);

CREATE TABLE [dbo].[AtendimentoProblema] (
    [CodAtend] INT NOT NULL,
    [DataAtend] SMALLDATETIME NOT NULL,
    [HoraAtend] DATETIME NOT NULL,
    [CodProblema] INT NOT NULL,
    [CodCausa] INT NOT NULL,
    [CodSolucao] INT NOT NULL
);

CREATE TABLE [dbo].[AtendimentoProblemaClientePerspectiva] (
    [CodAtendimento] INT NOT NULL,
    [CodProblema] INT NOT NULL,
    [TipoProblema] TINYINT NOT NULL,
    [CodPerspectiva] SMALLINT NOT NULL,
    [Status] TINYINT NOT NULL
);

CREATE TABLE [dbo].[AtendimentoProcesso] (
    [CodAtendimento] INT NOT NULL,
    [CodAtributo] INT NOT NULL,
    [CodProcesso] INT NOT NULL,
    [Status] TINYINT NULL
);

CREATE TABLE [dbo].[AtendimentoProcessoProduto] (
    [CodAtendimento] INT NOT NULL,
    [CodAtributo] INT NOT NULL,
    [CodProcesso] INT NOT NULL,
    [CodProduto] INT NOT NULL,
    [Status] TINYINT NOT NULL
);

CREATE TABLE [dbo].[AtendimentoQuestao] (
    [CodAtendimento] INT NOT NULL,
    [CodAtributo] INT NOT NULL,
    [CodProcesso] INT NOT NULL,
    [CodQuestaoInvestigativa] INT NOT NULL,
    [TipoQuestaoInvestigativa] TINYINT NOT NULL,
    [Status] TINYINT NULL
);

CREATE TABLE [dbo].[AtendimentoQuestaoProduto] (
    [CodAtendimento] INT NOT NULL,
    [CodAtributo] INT NOT NULL,
    [CodProcesso] INT NOT NULL,
    [CodQuestaoInvestigativa] INT NOT NULL,
    [TipoQuestaoInvestigativa] TINYINT NOT NULL,
    [CodProduto] INT NOT NULL,
    [Status] TINYINT NOT NULL
);

CREATE TABLE [dbo].[AtendimentoQuestaoResposta] (
    [CodAtendimento] INT NOT NULL,
    [CodAtributo] INT NOT NULL,
    [CodProcesso] INT NOT NULL,
    [CodQuestaoInvestigativa] INT NOT NULL,
    [TipoQuestaoInvestigativa] TINYINT NOT NULL,
    [CodParametro] INT NOT NULL,
    [CodItem] INT NOT NULL,
    [Resposta] TEXT NULL,
    [Status] TINYINT NULL
);

CREATE TABLE [dbo].[AtendimentoRapido] (
    [CodAtendimento] INT NOT NULL,
    [Data] SMALLDATETIME NOT NULL,
    [HoraInicial] DATETIME NOT NULL,
    [HoraFinal] DATETIME NULL,
    [CodTecnico] INT NULL,
    [Categoria] CHAR(1) NOT NULL,
    [AnotacaoConsultor] TEXT NULL,
    [RepresentaPJ] BIT NOT NULL
);

CREATE TABLE [dbo].[AtendimentoRegistroInf] (
    [CodAtendimento] INT NOT NULL,
    [CodNatureza] INT NOT NULL,
    [CodAssunto] INT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [DescAssuntoNovo] TEXT NULL,
    [DescRespostaNova] TEXT NULL,
    [CodParceiro] INT NULL,
    [Data] DATETIME NULL,
    [Categoria] CHAR(1) NULL,
    [CodUnidOper] INT NULL,
    [CodPessoaPF] INT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[Atendimentos_RJ] (
    [CodEmpreedimento] FLOAT NULL,
    [Código do projeto] NVARCHAR(255) NULL,
    [NmProjeto] NVARCHAR(255) NULL,
    [Código da ação] NVARCHAR(255) NULL,
    [NomeAcao] NVARCHAR(255) NULL,
    [dia] NVARCHAR(255) NULL,
    [mes] NVARCHAR(255) NULL,
    [NomeRazaoSocial] NVARCHAR(255) NULL,
    [Porte] NVARCHAR(255) NULL,
    [Cidade] NVARCHAR(255) NULL,
    [Bairro] NVARCHAR(255) NULL,
    [F12] NVARCHAR(255) NULL,
    [Código do projeto1] NVARCHAR(255) NULL,
    [Projeto] NVARCHAR(255) NULL,
    [Código da ação1] NVARCHAR(255) NULL,
    [Ação] NVARCHAR(255) NULL,
    [CodEmpreedimento_Unificado] INT NULL,
    [CodSebrae] INT NULL,
    [CodCliente] INT NULL,
    [DataHoraInicioRealizacao] DATETIME NULL,
    [CodPRATIF] UNIQUEIDENTIFIER NULL,
    [CodAcao_Seq] INT NULL
);

CREATE TABLE [dbo].[atendimentos-alterar] (
    [CodCliente] VARCHAR(50) NULL,
    [CodEmpreendimento] VARCHAR(50) NULL,
    [DataHoraInicioRealizacao] VARCHAR(50) NULL,
    [DataHoraFimRealizacao] VARCHAR(50) NULL,
    [NomeRealizacao] VARCHAR(50) NULL,
    [CodRealizacao] VARCHAR(50) NULL,
    [CodRealizacaoComp] VARCHAR(50) NULL,
    [TipoRealizacaoErrado] VARCHAR(50) NULL,
    [TipoRealizacaoCorreto] VARCHAR(50) NULL,
    [Instrumento] VARCHAR(50) NULL,
    [Abordagem] VARCHAR(50) NULL,
    [CodProjeto] VARCHAR(50) NULL,
    [CodAcao] VARCHAR(50) NULL,
    [MesAnoCompetencia] VARCHAR(50) NULL,
    [CargaHoraria] VARCHAR(50) NULL,
    [CodSebrae] VARCHAR(50) NULL,
    [Tema] VARCHAR(50) NULL,
    [CodSistemaOrigem] VARCHAR(50) NULL,
    [CpfResponsavel] VARCHAR(50) NULL
);

CREATE TABLE [dbo].[AtendimentosFinanceiros] (
    [UF] VARCHAR(2) NOT NULL,
    [CodParceiro] INT NOT NULL,
    [CodRealizacao] INT NOT NULL,
    [TipoRealizacao] VARCHAR(3) NOT NULL,
    [Porte] VARCHAR(50) NOT NULL,
    [Instrumento] VARCHAR(50) NOT NULL,
    [Descricao] VARCHAR(500) NULL
);

CREATE TABLE [dbo].[AtendimentosFinanceiros2] (
    [CodSebrae] SMALLINT NOT NULL,
    [UF] VARCHAR(2) NOT NULL,
    [CodParceiro] INT NOT NULL,
    [CodRealizacao] INT NOT NULL,
    [TipoRealizacao] VARCHAR(3) NOT NULL,
    [Porte] VARCHAR(50) NOT NULL,
    [Instrumento] VARCHAR(50) NOT NULL,
    [Descricao] VARCHAR(500) NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[AtendimentoSIAD] (
    [CodAtendimento] INT NOT NULL,
    [CodSOL] UNIQUEIDENTIFIER NULL,
    [CodOBJ] SMALLINT NULL,
    [Ano] INT NULL,
    [CodAB] INT NULL,
    [CodAE] UNIQUEIDENTIFIER NULL
);

CREATE TABLE [dbo].[AtendimentoSolucao] (
    [CodSolucao] INT NOT NULL,
    [CodAtendimento] INT NOT NULL,
    [Data] SMALLDATETIME NOT NULL,
    [HoraInicial] SMALLDATETIME NOT NULL
);

CREATE TABLE [dbo].[AtendimentoTitulo] (
    [CodAtendimento] INT NOT NULL,
    [CodTitulo] INT NOT NULL
);

CREATE TABLE [dbo].[AtivEconFeira] (
    [CodAtivEcon] VARCHAR(5) NOT NULL,
    [CodEvtoFeira] INT NOT NULL,
    [CodClass] SMALLINT NOT NULL,
    [CodCnaeFiscal] VARCHAR(2) NOT NULL,
    [CodSebrae] INT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[ativeconomica] (
    [codclass] SMALLINT NOT NULL,
    [codativecon] VARCHAR(5) NOT NULL,
    [descativecon] VARCHAR(250) NULL,
    [descabrevativ] VARCHAR(150) NULL,
    [descativesp] VARCHAR(150) NULL,
    [indpf] VARCHAR(3) NULL,
    [indpj] VARCHAR(3) NULL,
    [codsetor] SMALLINT NOT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[AtivEconPF] (
    [CodAtividadePF] INT NOT NULL,
    [DescAtividade] VARCHAR(250) NOT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[AtivEconPJ] (
    [CodClass] SMALLINT NOT NULL,
    [CodAtivEcon] VARCHAR(5) NOT NULL,
    [CodParceiro] INT NOT NULL,
    [AtivPrinc] VARCHAR(3) NOT NULL,
    [IndAtivPrincipal] BIT NOT NULL,
    [CodCnaeFiscal] VARCHAR(2) NOT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[AtivEconPJ_Inclusao] (
    [CodClass] SMALLINT NOT NULL,
    [CodAtivEcon] VARCHAR(5) NOT NULL,
    [CodParceiro] INT NOT NULL,
    [AtivPrinc] VARCHAR(3) NOT NULL,
    [IndAtivPrincipal] BIT NOT NULL,
    [CodCnaeFiscal] VARCHAR(2) NOT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL,
    [DataInclusao] DATETIME NULL,
    [Tipo] CHAR(1) NULL
);

CREATE TABLE [dbo].[AtividadeContrato] (
    [CodConsultoria] INT NOT NULL,
    [SeqAtividade] INT NOT NULL,
    [DescAtividade] VARCHAR(40) NOT NULL,
    [DataExecucao] DATETIME NULL
);

CREATE TABLE [dbo].[Atributo] (
    [CodAtributo] INT NOT NULL,
    [DescAtributo] VARCHAR(500) NOT NULL,
    [AtributoNegativado] VARCHAR(500) NULL,
    [CodPerspectiva] SMALLINT NOT NULL,
    [Conceito] TEXT NULL,
    [Situacao] TINYINT NOT NULL,
    [IndGenerico] TINYINT NULL
);

CREATE TABLE [dbo].[AtributoProcesso] (
    [CodAtributo] INT NOT NULL,
    [CodProcesso] INT NOT NULL
);

CREATE TABLE [dbo].[AUDITORIA] (
    [RowNumber] INT NOT NULL,
    [EventClass] INT NULL,
    [TextData] NTEXT NULL,
    [ApplicationName] NVARCHAR(128) NULL,
    [NTUserName] NVARCHAR(128) NULL,
    [LoginName] NVARCHAR(128) NULL,
    [CPU] INT NULL,
    [Reads] BIGINT NULL,
    [Writes] BIGINT NULL,
    [Duration] BIGINT NULL,
    [ClientProcessID] INT NULL,
    [SPID] INT NULL,
    [StartTime] DATETIME NULL,
    [EndTime] DATETIME NULL,
    [BinaryData] IMAGE NULL
);

CREATE TABLE [dbo].[AuditoriaEventos] (
    [EventName] NVARCHAR(100) NULL,
    [DataHora] DATETIME NULL,
    [Login] NVARCHAR(256) NULL,
    [Hostname] NVARCHAR(256) NULL,
    [Script] NVARCHAR(MAX) NULL,
    [TempoExecucao_ms] INT NULL,
    [LinhasAfetadas] BIGINT NULL,
    [MemoriaUsada_KB] INT NULL,
    [CPU_ms] INT NULL,
    [Tamanho_MB] DECIMAL(10,2) NULL
);

CREATE TABLE [dbo].[AutFaturamento] (
    [NrAutFaturamento] INT NOT NULL,
    [CodTpCompra] TINYINT NOT NULL,
    [AnoExercicio] INT NOT NULL,
    [SeqProcCompra] INT NOT NULL,
    [NrCompDespesa] INT NULL,
    [CodCondPgto] INT NOT NULL,
    [DataAutFaturamento] DATETIME NULL,
    [VlAutFaturamento] FLOAT NULL,
    [Status] TINYINT NOT NULL
);

CREATE TABLE [dbo].[AutoAtendimento] (
    [CodAtendimento] INT NOT NULL,
    [DataAutoAtendimento] SMALLDATETIME NOT NULL,
    [HoraInicial] DATETIME NOT NULL,
    [HoraFinal] DATETIME NULL,
    [Status] TINYINT NULL,
    [TipoServico] TINYINT NULL
);

CREATE TABLE [dbo].[AutoAtendimentoProcesso] (
    [CodAtendimento] INT NOT NULL,
    [CodProblema] INT NOT NULL,
    [TipoProblema] TINYINT NOT NULL,
    [CodProcesso] INT NOT NULL,
    [Status] TINYINT NOT NULL
);

CREATE TABLE [dbo].[AutoAtendimentoQuestao] (
    [CodAtendimento] INT NOT NULL,
    [CodProblema] INT NOT NULL,
    [TipoProblema] TINYINT NOT NULL,
    [CodQuestaoInvestigativa] INT NOT NULL,
    [TipoQuestaoInvestigativa] TINYINT NOT NULL,
    [Status] TINYINT NOT NULL
);

CREATE TABLE [dbo].[AutomacaoTitulo] (
    [CodTitulo] INT NOT NULL,
    [CodAutomacao] VARCHAR(15) NOT NULL
);

CREATE TABLE [dbo].[AVALIACAO] (
    [CodEventoMC] INT NOT NULL,
    [CodParticpante] INT NOT NULL,
    [CodItemAvaliacao] INT NOT NULL,
    [NotaAvaliacao] INT NULL,
    [SugestaoAvaliacao] TEXT NULL,
    [Observacao] TEXT NULL,
    [CodSebrae] INT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[AvaliacaoCons] (
    [CodConsultoria] INT NOT NULL,
    [SeqAtividade] INT NOT NULL,
    [IndEfeito] TINYINT NULL,
    [Motivo] TEXT NULL
);

CREATE TABLE [dbo].[AvaliacaoEve] (
    [CodEvento] INT NOT NULL,
    [NumSeq] INT NOT NULL,
    [CodTecnico] INT NOT NULL,
    [CodGrupo] INT NOT NULL,
    [CodIndicadorAval] INT NOT NULL,
    [CodItemAval] INT NOT NULL,
    [Resposta] TEXT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[avaliacaoevento] (
    [codevento] INT NOT NULL,
    [codtipoevento] INT NOT NULL,
    [codgrupo] INT NOT NULL,
    [coditem] INT NOT NULL,
    [numseqaval] INT NOT NULL,
    [numnota] INT NULL,
    [observacao] VARCHAR(250) NULL
);

CREATE TABLE [dbo].[avaliacaoeventofeira] (
    [codevento] INT NOT NULL,
    [codtipoevento] INT NOT NULL,
    [codgrupo] INT NOT NULL,
    [coditem] INT NOT NULL,
    [numseqaval] INT NOT NULL,
    [numnota] INT NULL,
    [observacao] VARCHAR(250) NULL,
    [CodParceiro] INT NOT NULL
);

CREATE TABLE [dbo].[AVALIACAOEVENTOMC] (
    [CodEventoMC] INT NOT NULL,
    [CodParticipante] INT NOT NULL,
    [CodItemAvaliacao] INT NOT NULL,
    [NotaAvaliacao] INT NULL,
    [SugestaoAvaliacao] TEXT NULL,
    [ObservacaoAvaliacao] TEXT NULL
);

CREATE TABLE [dbo].[AvaliacaoEventoRoda] (
    [CodEvento] INT NOT NULL,
    [CodTipoEvento] INT NULL,
    [CodGrupo] INT NOT NULL,
    [CodItem] INT NOT NULL,
    [NumSeqAval] INT NULL,
    [NumNota] INT NULL,
    [Observacao] VARCHAR(250) NULL,
    [CodParceiro] INT NOT NULL,
    [ValOferta] FLOAT NULL,
    [ValDemanda] FLOAT NULL
);

CREATE TABLE [dbo].[AvaliacaoProduto] (
    [CodAvaliacao] INT NOT NULL,
    [CodProduto] INT NOT NULL,
    [CodAvaliador] INT NOT NULL,
    [Observacao] VARCHAR(500) NULL,
    [NotaAvaliacao] INT NOT NULL,
    [DataAvaliacao] DATETIME NULL,
    [Situacao] TINYINT NULL
);

CREATE TABLE [dbo].[AvaliacaoProdutoCriterios] (
    [CodAvaliacao] INT NOT NULL,
    [CodProduto] INT NOT NULL,
    [CodCriterio] SMALLINT NOT NULL,
    [NotaCriterio] INT NULL
);

CREATE TABLE [dbo].[AvaliacaoResposta] (
    [CodAplicacao] INT NOT NULL,
    [CodEvento] INT NOT NULL,
    [CodGrupo] INT NOT NULL,
    [CodIndicadorAval] INT NOT NULL,
    [CodItemAval] INT NOT NULL,
    [CodAvaliador] INT NOT NULL,
    [NumSeq] INT NOT NULL,
    [Resposta] TEXT NULL,
    [TipoAvaliador] CHAR(1) NULL,
    [CodSebrae] INT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[AvaliacaoTecnico] (
    [CodEvento] INT NOT NULL,
    [CodTipoEvento] INT NOT NULL,
    [CodGrupo] INT NOT NULL,
    [CodItem] INT NOT NULL,
    [NumSeqAval] INT NOT NULL,
    [NumNota] INT NULL,
    [Observacao] VARCHAR(250) NULL,
    [CodTecnico] INT NOT NULL
);

CREATE TABLE [dbo].[bairro] (
    [codbairro] INT NOT NULL,
    [descbairro] VARCHAR(150) NULL,
    [abrevbairro] VARCHAR(72) NULL,
    [codcid] INT NOT NULL,
    [indtipo] VARCHAR(1) NOT NULL,
    [indcadcorreio] INT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL,
    [SITUACAO] BIT NOT NULL
);

CREATE TABLE [dbo].[BAIRRO_2205] (
    [codbairro] INT NOT NULL,
    [descbairro] VARCHAR(150) NULL,
    [abrevbairro] VARCHAR(72) NULL,
    [codcid] INT NOT NULL,
    [indtipo] VARCHAR(1) NOT NULL,
    [indcadcorreio] INT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL,
    [SITUACAO] BIT NOT NULL
);

CREATE TABLE [dbo].[BalcaoCDI] (
    [CodBalcaoCDI] INT NOT NULL,
    [Status] TINYINT NOT NULL
);

CREATE TABLE [dbo].[Banco] (
    [CodBanco] INT NOT NULL,
    [DescBanco] VARCHAR(40) NULL,
    [DescAbreviado] VARCHAR(15) NULL
);

CREATE TABLE [dbo].[BKP_Bairro_2023] (
    [codbairro] INT NOT NULL,
    [descbairro] VARCHAR(150) NULL,
    [abrevbairro] VARCHAR(72) NULL,
    [codcid] INT NOT NULL,
    [indtipo] VARCHAR(1) NOT NULL,
    [indcadcorreio] INT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL,
    [SITUACAO] BIT NOT NULL
);

CREATE TABLE [dbo].[BKP_CEP_2023] (
    [cep] INT NOT NULL,
    [codbairro] INT NOT NULL,
    [nomelogr] VARCHAR(150) NOT NULL,
    [rowguid] UNIQUEIDENTIFIER NULL,
    [COMPLEMENTO] VARCHAR(255) NULL,
    [SITUACAO] BIT NOT NULL,
    [codtipo] INT NULL,
    [ceptipo] VARCHAR(255) NULL,
    [data_alteracao] DATE NULL
);

CREATE TABLE [dbo].[BKP_Cidade_2023] (
    [CodCid] INT NOT NULL,
    [DescCid] VARCHAR(150) NULL,
    [CodEst] SMALLINT NOT NULL,
    [CodMicro] SMALLINT NULL,
    [PopCid] INT NULL,
    [PopUrb] INT NULL,
    [PopRur] INT NULL,
    [AnoRefPop] SMALLINT NULL,
    [NumEmp] INT NULL,
    [NumIndust] INT NULL,
    [NumEmpCom] INT NULL,
    [NumEmpSer] INT NULL,
    [AnoRefTot] SMALLINT NULL,
    [NumFaculd] SMALLINT NULL,
    [NumEscolas] INT NULL,
    [Capital] VARCHAR(3) NOT NULL,
    [IndAtuCid] VARCHAR(3) NOT NULL,
    [Fonte] VARCHAR(50) NULL,
    [IndAtualizacao] BIT NOT NULL,
    [IndCapital] BIT NOT NULL,
    [Status] TINYINT NULL,
    [CodMeso] SMALLINT NULL,
    [rowguid] UNIQUEIDENTIFIER NULL,
    [CODMUN] INT NULL,
    [TIPOLOCALIDADE] CHAR(1) NULL,
    [SITUACAO] BIT NOT NULL
);

CREATE TABLE [dbo].[CadastroAlteradoDF2016] (
    [CNPJ editado] NVARCHAR(255) NULL,
    [Porte CSE 27/mar/2015 (cód)] NVARCHAR(255) NULL,
    [Porte CSE 27/mar/2015 (descr)] NVARCHAR(255) NULL,
    [SIAC_UF] NVARCHAR(255) NULL,
    [SIAC_CNPJ] NVARCHAR(255) NULL,
    [CnpjEditado] NVARCHAR(255) NULL,
    [SIAC_CDEMPREENDIMENTO] NVARCHAR(255) NULL,
    [SIAC_RAZAO_SOCIAL] NVARCHAR(255) NULL,
    [SIAC_NOME_FANTASIA] NVARCHAR(255) NULL,
    [SIAC_PORTE] NVARCHAR(255) NULL,
    [PUBLICO] NVARCHAR(255) NULL,
    [faturam] NVARCHAR(255) NULL,
    [F13] NVARCHAR(255) NULL,
    [F14] NVARCHAR(255) NULL,
    [F15] NVARCHAR(255) NULL,
    [F16] NVARCHAR(255) NULL,
    [F17] NVARCHAR(255) NULL,
    [F18] NVARCHAR(255) NULL,
    [F19] NVARCHAR(255) NULL,
    [F20] NVARCHAR(255) NULL,
    [F21] NVARCHAR(255) NULL,
    [F22] NVARCHAR(255) NULL,
    [F23] NVARCHAR(255) NULL,
    [F24] NVARCHAR(255) NULL,
    [F25] NVARCHAR(255) NULL
);

CREATE TABLE [dbo].[CadastroComercioBrasil] (
    [CODIGO_EMPRESA] FLOAT NULL,
    [RAZAO_SOCIAL] NVARCHAR(255) NULL,
    [CNPJ] FLOAT NULL,
    [UF] NVARCHAR(255) NULL,
    [CIDADE] NVARCHAR(255) NULL,
    [TIPO] NVARCHAR(255) NULL,
    [SEGMENTO] NVARCHAR(255) NULL,
    [SETOR] NVARCHAR(255) NULL,
    [FEZ_NEGOCIO] NVARCHAR(255) NULL,
    [Nome do Contato] NVARCHAR(255) NULL,
    [Telefone do contato] NVARCHAR(255) NULL,
    [E-mail] NVARCHAR(255) NULL,
    [CNAE] NVARCHAR(255) NULL
);

CREATE TABLE [dbo].[CadastroMEI] (
    [MEI_ID] BIGINT NOT NULL,
    [Situacao_PJ] VARCHAR(255) NULL,
    [cod_evento_simei] VARCHAR(50) NULL,
    [nome_evento_simei] VARCHAR(255) NULL,
    [dt_efeito_exclusao] DATETIME NULL,
    [NR_NIRE] BIGINT NULL,
    [NR_CNPJ] BIGINT NOT NULL,
    [NR_CPF] BIGINT NULL,
    [NOME_PESSOA_JURIDICA] VARCHAR(255) NULL,
    [NOME_PESSOA_FISICA] VARCHAR(255) NULL,
    [DT_NASCI] DATETIME NULL,
    [NO_MAE] VARCHAR(255) NULL,
    [SEXO] VARCHAR(1) NULL,
    [NACIONALIDADE] VARCHAR(255) NULL,
    [NR_IDENTIDADE] VARCHAR(255) NULL,
    [ORGAO_EMISSOR] VARCHAR(50) NULL,
    [UF_EMISSOR] VARCHAR(2) NULL,
    [DDD_TELEFONE] TINYINT NULL,
    [NR_TELEFONE] VARCHAR(50) NULL,
    [EMAIL] VARCHAR(255) NULL,
    [TIPO_LOGRAD_COMERCIAL] VARCHAR(50) NULL,
    [NO_LOGRAD_COMERCIAL] VARCHAR(255) NULL,
    [NUM_END_COMERCIAL] VARCHAR(50) NULL,
    [COMPLEM_COMERCIAL] VARCHAR(50) NULL,
    [NO_BAIRRO_COMERCIAL] VARCHAR(100) NULL,
    [CEP_COMERCIAL] BIGINT NULL,
    [NO_MUNICIPIO_COMERCIAL] VARCHAR(100) NULL,
    [UF_COMERCIAL] VARCHAR(2) NULL,
    [TIPO_LOGRAD_RESIDENCIAL] VARCHAR(50) NULL,
    [NO_LOGRAD_RESIDENCIAL] VARCHAR(255) NULL,
    [NUM_END_RESIDENCIAL] VARCHAR(50) NULL,
    [COMPLEM_RESIDENCIAL] VARCHAR(50) NULL,
    [NO_BAIRRO_RESIDENCIAL] VARCHAR(100) NULL,
    [CEP_RESIDENCIAL] BIGINT NULL,
    [NO_MUNICIPIO_RESIDENCIAL] VARCHAR(100) NULL,
    [UF_RESIDENCIAL] VARCHAR(2) NULL,
    [CAPITAL_SOCIAL] DECIMAL(18,2) NULL,
    [DT_INICIO_ATIVIDADES] DATETIME NULL,
    [CNAE_PRINCIPAL] BIGINT NULL,
    [DESCR_CNAE_PRINCIPAL] VARCHAR(255) NULL,
    [CNAES_SECUNDARIOS] VARCHAR(255) NULL
);

CREATE TABLE [dbo].[CadastroMEI_Baixados] (
    [MEIB_ID] BIGINT NOT NULL,
    [Situacao_PJ] VARCHAR(255) NULL,
    [cod_evento_simei] VARCHAR(50) NULL,
    [nome_evento_simei] VARCHAR(255) NULL,
    [dt_efeito_exclusao] DATETIME NULL,
    [NR_NIRE] BIGINT NULL,
    [NR_CNPJ] BIGINT NOT NULL,
    [NR_CPF] BIGINT NULL,
    [NOME_PESSOA_JURIDICA] VARCHAR(255) NULL,
    [NOME_PESSOA_FISICA] VARCHAR(255) NULL,
    [DT_NASCI] DATETIME NULL,
    [NO_MAE] VARCHAR(255) NULL,
    [SEXO] VARCHAR(1) NULL,
    [NACIONALIDADE] VARCHAR(255) NULL,
    [NR_IDENTIDADE] VARCHAR(255) NULL,
    [ORGAO_EMISSOR] VARCHAR(50) NULL,
    [UF_EMISSOR] VARCHAR(2) NULL,
    [DDD_TELEFONE] TINYINT NULL,
    [NR_TELEFONE] VARCHAR(50) NULL,
    [EMAIL] VARCHAR(255) NULL,
    [TIPO_LOGRAD_COMERCIAL] VARCHAR(50) NULL,
    [NO_LOGRAD_COMERCIAL] VARCHAR(255) NULL,
    [NUM_END_COMERCIAL] VARCHAR(50) NULL,
    [COMPLEM_COMERCIAL] VARCHAR(50) NULL,
    [NO_BAIRRO_COMERCIAL] VARCHAR(100) NULL,
    [CEP_COMERCIAL] BIGINT NULL,
    [NO_MUNICIPIO_COMERCIAL] VARCHAR(100) NULL,
    [UF_COMERCIAL] VARCHAR(2) NULL,
    [TIPO_LOGRAD_RESIDENCIAL] VARCHAR(50) NULL,
    [NO_LOGRAD_RESIDENCIAL] VARCHAR(255) NULL,
    [NUM_END_RESIDENCIAL] VARCHAR(50) NULL,
    [COMPLEM_RESIDENCIAL] VARCHAR(50) NULL,
    [NO_BAIRRO_RESIDENCIAL] VARCHAR(100) NULL,
    [CEP_RESIDENCIAL] BIGINT NULL,
    [NO_MUNICIPIO_RESIDENCIAL] VARCHAR(100) NULL,
    [UF_RESIDENCIAL] VARCHAR(2) NULL,
    [CAPITAL_SOCIAL] DECIMAL(18,2) NULL,
    [DT_INICIO_ATIVIDADES] DATETIME NULL,
    [CNAE_PRINCIPAL] BIGINT NULL,
    [DESCR_CNAE_PRINCIPAL] VARCHAR(255) NULL,
    [CNAES_SECUNDARIOS] VARCHAR(255) NULL
);

CREATE TABLE [dbo].[CadastroPJConstjurPorteCorrigido] (
    [SEBRAE] NVARCHAR(255) NULL,
    [CDEMPREENDEDOR] FLOAT NULL,
    [CNPJ14] NVARCHAR(255) NULL,
    [CLIENTE] NVARCHAR(255) NULL,
    [TIPOEMPREENDIMENTO] NVARCHAR(255) NULL,
    [PORTE] NVARCHAR(255) NULL,
    [CD_NATUREZA_JURIDICA] FLOAT NULL,
    [PODE_SEBRAE] FLOAT NULL,
    [CONST_JURIDICA_SIAC] FLOAT NULL,
    [PORTE_PARA_SIAC] FLOAT NULL,
    [OBSERVAÇÕES] NVARCHAR(255) NULL,
    [Resultado] NVARCHAR(255) NULL
);

CREATE TABLE [dbo].[CadastroPJConstjurPorteFinal] (
    [SEBRAE] NVARCHAR(255) NULL,
    [CDEMPREENDEDOR] FLOAT NULL,
    [CNPJ14] NVARCHAR(255) NULL,
    [CLIENTE] NVARCHAR(255) NULL,
    [TIPOEMPREENDIMENTO] NVARCHAR(255) NULL,
    [PORTE] NVARCHAR(255) NULL,
    [CONST_JURIDICA_SIAC] FLOAT NULL,
    [PORTE_PARA_SIAC] FLOAT NULL,
    [OBSERVAÇÕES] NVARCHAR(255) NULL,
    [OBSERVAÇÃO 23/01/2015] NVARCHAR(255) NULL,
    [Resultado verificação] NVARCHAR(255) NULL,
    [Ação no Siac] NVARCHAR(255) NULL,
    [Contabiliza] FLOAT NULL
);

CREATE TABLE [dbo].[CadastroPJConstjurPorteFinal2] (
    [SEBRAE] NVARCHAR(255) NULL,
    [CDEMPREENDEDOR] FLOAT NULL,
    [CNPJ14] NVARCHAR(255) NULL,
    [CLIENTE] NVARCHAR(255) NULL,
    [TIPOEMPREENDIMENTO] NVARCHAR(255) NULL,
    [PORTE] NVARCHAR(255) NULL,
    [CONST_JURIDICA_SIAC] FLOAT NULL,
    [PORTE_PARA_SIAC] FLOAT NULL,
    [OBSERVACOES] NVARCHAR(255) NULL,
    [SITUAÇÃO CADASTRAL] NVARCHAR(255) NULL,
    [DATA_SIT_CAD] DATETIME NULL,
    [NATUREZA JURÍDICA] NVARCHAR(255) NULL,
    [PÚBLICO NATUREZA JURÍDICA] NVARCHAR(255) NULL,
    [RFB_CNAE] NVARCHAR(255) NULL,
    [CNAE] NVARCHAR(255) NULL,
    [PORTE CSE] NVARCHAR(255) NULL,
    [PUBLICO PORTE CSE] NVARCHAR(255) NULL
);

CREATE TABLE [dbo].[CadastroPJConstjurPorteFinal3] (
    [SEBRAE] NVARCHAR(255) NULL,
    [CDEMPREENDEDOR] FLOAT NULL,
    [CNPJ14] NVARCHAR(255) NULL,
    [CLIENTE] NVARCHAR(255) NULL,
    [TIPOEMPREENDIMENTO] NVARCHAR(255) NULL,
    [PORTE] NVARCHAR(255) NULL,
    [CONST_JURIDICA_SIAC] NVARCHAR(255) NULL,
    [PORTE_PARA_SIAC] NVARCHAR(255) NULL,
    [OBSERVAÇÕES] NVARCHAR(255) NULL,
    [SITUAÇÃO CADASTRAL] NVARCHAR(255) NULL,
    [ANO_SIT_CAD] FLOAT NULL,
    [DATA_SIT_CAD] DATETIME NULL,
    [PÚBLICO SIT CADASTRAL] NVARCHAR(255) NULL,
    [NATUREZA JURÍDICA] NVARCHAR(255) NULL,
    [PÚBLICO NATUREZA JURÍDICA] NVARCHAR(255) NULL,
    [CNAE] NVARCHAR(255) NULL,
    [PÚBLICO CNAE] NVARCHAR(255) NULL,
    [PORTE CSE] NVARCHAR(255) NULL,
    [PUBLICO PORTE CSE] NVARCHAR(255) NULL
);

CREATE TABLE [dbo].[CadastroPJsemCNPJ] (
    [﻿SEBRAE] NVARCHAR(255) NULL,
    [CDEMPREENDEDOR] NVARCHAR(255) NULL,
    [CLIENTE] NVARCHAR(255) NULL,
    [CNPJ14] NVARCHAR(255) NULL,
    [CNPJ] NVARCHAR(255) NULL,
    [TIPOEMPREENDIMENTO] NVARCHAR(255) NULL,
    [ANOME] NVARCHAR(255) NULL,
    [PORTE] NVARCHAR(255) NULL
);

CREATE TABLE [dbo].[CadEvento] (
    [codcadevento] INT NOT NULL,
    [desccadevento] VARCHAR(60) NOT NULL,
    [chprevista] FLOAT NULL,
    [qtdinscmaxprev] INT NOT NULL,
    [qtdminpagantes] INT NULL,
    [qtdlimdiareserv] INT NULL,
    [percfreqmin] INT NULL,
    [codtipoevento] INT NOT NULL,
    [indevefechado] VARCHAR(3) NOT NULL,
    [valorevento] NUMERIC(11,2) NULL,
    [custoevento] NUMERIC(11,2) NULL,
    [observacao] VARCHAR(200) NULL,
    [endcontprog] VARCHAR(50) NULL,
    [codautorel] INT NOT NULL,
    [codareaevento] INT NULL,
    [indfechado] BIT NOT NULL,
    [Programa] TEXT NULL,
    [CodFichaAval] INT NULL,
    [CodAE] UNIQUEIDENTIFIER NULL,
    [CodAB] SMALLINT NULL,
    [IndExportar] TINYINT NULL,
    [CodSebrae] INT NOT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[CadEventoXOrcamento] (
    [CodCadEvento] INT NOT NULL,
    [Ano] INT NOT NULL,
    [CodAB] INT NULL,
    [CodAE] UNIQUEIDENTIFIER NULL,
    [CodSebrae] INT NOT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[CadTabelasCorporativas] (
    [CodAplicacao] INT NOT NULL,
    [NomeTabela] VARCHAR(80) NOT NULL,
    [NomeExibicao] VARCHAR(80) NULL
);

CREATE TABLE [dbo].[CadTipoLog] (
    [TipoLog] INT NOT NULL,
    [Descricao] VARCHAR(20) NULL
);

CREATE TABLE [dbo].[CanalDistribuicao] (
    [CodCanalDist] INT NOT NULL,
    [DescCanalDist] VARCHAR(80) NOT NULL,
    [Status] TINYINT NULL
);

CREATE TABLE [dbo].[CanalInformacao] (
    [CodCanalInformacao] INT NOT NULL,
    [DescCanalInformacao] VARCHAR(50) NOT NULL
);

CREATE TABLE [dbo].[CanalMidiaProdutoPortfolio] (
    [CodCanalMidia] SMALLINT NOT NULL,
    [NomeCanalMidia] VARCHAR(50) NOT NULL,
    [Situacao] CHAR(1) NULL,
    [Kit] CHAR(1) NOT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[Caracteristica] (
    [CodCaracteristica] INT NOT NULL,
    [DescCaracteristica] VARCHAR(40) NULL
);

CREATE TABLE [dbo].[CaracteristicaMaterial] (
    [CodMaterial] INT NOT NULL,
    [TipoUnidade] TINYINT NOT NULL,
    [CodUnidade] VARCHAR(5) NOT NULL,
    [VlCaracteristica] FLOAT NOT NULL
);

CREATE TABLE [dbo].[CaracteristicaStand] (
    [CodCaracteristica] INT NOT NULL,
    [CodEvtoFeira] INT NOT NULL,
    [CodStandEvtoFeira] INT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[cargcli] (
    [codcargcli] INT NOT NULL,
    [desccargcli] VARCHAR(30) NOT NULL,
    [Situacao] CHAR(1) NULL,
    [rowguid] UNIQUEIDENTIFIER NULL
);

CREATE TABLE [dbo].[CargoPessoal] (
    [CodCargoPes] INT NOT NULL,
    [DescCargoPes] VARCHAR(30) NOT NULL
);

CREATE TABLE [dbo].[CartaoCredito] (
    [CodCartao] SMALLINT NOT NULL,
    [DescCartao] VARCHAR(30) NOT NULL,
    [CodSebrae] INT NOT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[Casos_sp] (
    [CodRealizacao] VARCHAR(50) NULL,
    [codcliente] VARCHAR(50) NULL,
    [CodEmpreendimento] VARCHAR(50) NULL
);

CREATE TABLE [dbo].[CategoriaAtendimento] (
    [CodCategoria] INT NOT NULL,
    [DescCategoria] VARCHAR(100) NOT NULL,
    [Situacao] CHAR(1) NOT NULL,
    [Tipo] CHAR(2) NULL,
    [Individual] CHAR(1) NOT NULL,
    [Grupal] CHAR(1) NOT NULL,
    [Universal] CHAR(1) NOT NULL,
    [Ativo] CHAR(1) NOT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL,
    [AssistidoAutosservico] VARCHAR(255) NULL,
    [AgrupadorID] BIGINT NULL,
    [VinculoProduto] BIT NULL,
    [DisponibilizadoSAS] BIT NULL,
    [TipoDisponibilizacaoID] BIGINT NULL,
    [PossuiCargaHoraria] BIT NULL,
    [ControleFrequencia] BIT NULL,
    [Descricao] VARCHAR(350) NULL,
    [ExigeParticipantes] BIT NULL
);

CREATE TABLE [dbo].[CategoriaCliente] (
    [CodParceiro] INT NOT NULL,
    [Tipo] CHAR(1) NOT NULL
);

CREATE TABLE [dbo].[cep] (
    [cep] INT NOT NULL,
    [codbairro] INT NOT NULL,
    [nomelogr] VARCHAR(150) NOT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL,
    [CODTIPO] INT NOT NULL,
    [COMPLEMENTO] VARCHAR(255) NULL,
    [SITUACAO] BIT NOT NULL,
    [CEPTIPO] VARCHAR(3) NOT NULL,
    [data_alteracao] DATETIME NULL
);

CREATE TABLE [dbo].[CEP_2205] (
    [cep] INT NOT NULL,
    [codbairro] INT NOT NULL,
    [nomelogr] VARCHAR(150) NOT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL,
    [CODTIPO] INT NOT NULL,
    [COMPLEMENTO] VARCHAR(255) NULL,
    [SITUACAO] BIT NOT NULL,
    [CEPTIPO] VARCHAR(3) NOT NULL,
    [data_alteracao] DATETIME NULL
);

CREATE TABLE [dbo].[CEP_DELTA_LOG_BAIRRO] (
    [BAI_NU] FLOAT NOT NULL,
    [UFE_SG] NVARCHAR(255) NOT NULL,
    [LOC_NU] FLOAT NOT NULL,
    [BAI_NO] NVARCHAR(255) NOT NULL,
    [BAI_NO_ABREV] NVARCHAR(255) NULL,
    [BAI_OPERACAO] NVARCHAR(255) NULL
);

CREATE TABLE [dbo].[CEP_DELTA_LOG_CPC] (
    [CPC_NU] FLOAT NOT NULL,
    [UFE_SG] NVARCHAR(255) NOT NULL,
    [LOC_NU] FLOAT NOT NULL,
    [CPC_NO] NVARCHAR(255) NOT NULL,
    [CPC_ENDERECO] NVARCHAR(255) NOT NULL,
    [CEP] FLOAT NULL,
    [CPC_OPERACAO] NVARCHAR(255) NULL,
    [CEP_ANT] NVARCHAR(255) NULL
);

CREATE TABLE [dbo].[CEP_DELTA_LOG_GRANDE_USUARIO] (
    [GRU_NU] FLOAT NOT NULL,
    [UFE_SG] NVARCHAR(255) NOT NULL,
    [LOC_NU] FLOAT NOT NULL,
    [BAI_NU] FLOAT NOT NULL,
    [LOG_NU] FLOAT NULL,
    [GRU_NO] NVARCHAR(255) NOT NULL,
    [GRU_ENDERECO] NVARCHAR(255) NOT NULL,
    [CEP] FLOAT NULL,
    [GRU_NO_ABREV] NVARCHAR(255) NULL,
    [GRU_OPERACAO] NVARCHAR(255) NULL,
    [CEP_ANT] FLOAT NULL
);

CREATE TABLE [dbo].[CEP_DELTA_LOG_LOCALIDADE] (
    [LOC_NU] FLOAT NOT NULL,
    [UFE_SG] NVARCHAR(255) NOT NULL,
    [LOC_NO] NVARCHAR(255) NOT NULL,
    [CEP] FLOAT NULL,
    [LOC_IN_SIT] FLOAT NOT NULL,
    [LOC_IN_TIPO_LOC] NVARCHAR(255) NOT NULL,
    [LOC_NU_SUB] FLOAT NULL,
    [LOC_NO_ABREV] NVARCHAR(255) NOT NULL,
    [MUN_NU] NVARCHAR(255) NULL,
    [LOC_OPERACAO] NVARCHAR(255) NULL,
    [CEP_ANT] FLOAT NULL
);

CREATE TABLE [dbo].[CEP_DELTA_LOG_LOGRADOURO] (
    [LOG_NU] FLOAT NOT NULL,
    [UFE_SG] NVARCHAR(255) NOT NULL,
    [LOC_NU] FLOAT NOT NULL,
    [BAI_NU_INI] FLOAT NOT NULL,
    [BAI_NU_FIM] FLOAT NULL,
    [LOG_NO] NVARCHAR(255) NOT NULL,
    [LOG_COMPLEMENTO] NVARCHAR(255) NULL,
    [CEP] FLOAT NULL,
    [TLO_TX] NVARCHAR(255) NOT NULL,
    [LOG_STA_TLO] NVARCHAR(255) NULL,
    [LOG_NO_ABREV] NVARCHAR(255) NULL,
    [LOG_OPERACAO] NVARCHAR(255) NULL,
    [CEP_ANT] FLOAT NULL
);

CREATE TABLE [dbo].[CEP_DELTA_LOG_UNID_OPER] (
    [UOP_NU] FLOAT NOT NULL,
    [UFE_SG] NVARCHAR(255) NOT NULL,
    [LOC_NU] FLOAT NOT NULL,
    [BAI_NU] FLOAT NOT NULL,
    [LOG_NU] FLOAT NULL,
    [UOP_NO] NVARCHAR(255) NOT NULL,
    [UOP_ENDERECO] NVARCHAR(255) NOT NULL,
    [CEP] FLOAT NULL,
    [UOP_IN_CP] NVARCHAR(255) NOT NULL,
    [UOP_NO_ABREV] NVARCHAR(255) NULL,
    [UOP_OPERACAO] NVARCHAR(255) NULL,
    [CEP_ANT] FLOAT NULL
);

CREATE TABLE [dbo].[certificado] (
    [codevento] INT NOT NULL,
    [codpessoapf] INT NOT NULL,
    [numseqcert] INT NOT NULL,
    [numregistro] NUMERIC(6,0) NULL,
    [numfolha] INT NULL,
    [numlivro] INT NULL,
    [dataemissao] SMALLDATETIME NOT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[CertificadoKit] (
    [CodProdutoPortfolio] INT NOT NULL,
    [CodTipoKit] INT NOT NULL,
    [CodPessoaPF] INT NOT NULL,
    [NumSeqCert] INT NOT NULL,
    [NumRegistro] INT NULL,
    [NumFolha] INT NULL,
    [Numlivro] INT NULL,
    [DataEmissao] SMALLDATETIME NOT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[chamaclitemp] (
    [datahoraatend] DATETIME NOT NULL,
    [codunidoper] INT NOT NULL,
    [codatend] INT NOT NULL,
    [codconsultor] INT NULL,
    [nomeconsultor] VARCHAR(30) NULL,
    [nomecliente] VARCHAR(40) NOT NULL,
    [descloccons] VARCHAR(30) NULL,
    [situacao] VARCHAR(15) NULL,
    [obsconsulta] VARCHAR(200) NULL,
    [IndSituacao] TINYINT NULL
);

CREATE TABLE [dbo].[chamado_202283] (
    [CodCliente] INT NOT NULL,
    [CodEmpreendimento] INT NOT NULL,
    [DataHoraInicioRealizacao] NVARCHAR(50) NOT NULL,
    [DataHoraFimRealizacao] NVARCHAR(50) NOT NULL,
    [NomeRealizacao] NVARCHAR(50) NOT NULL,
    [CodRealizacao] INT NOT NULL,
    [CodRealizacaoComp] NVARCHAR(50) NOT NULL,
    [TipoRealizacaoErrado] NVARCHAR(50) NOT NULL,
    [TipoRealizacaoCorreto] NVARCHAR(50) NOT NULL,
    [Instrumento] NVARCHAR(50) NOT NULL,
    [Abordagem] NVARCHAR(50) NOT NULL,
    [DescRealizacao] TEXT NOT NULL,
    [CodProjeto] NVARCHAR(50) NOT NULL,
    [CodAcao] INT NOT NULL,
    [MesAnoCompetencia] INT NOT NULL,
    [CargaHoraria] FLOAT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [Tema] INT NOT NULL,
    [CodSistemaOrigem] NVARCHAR(50) NOT NULL,
    [CpfResponsavel] FLOAT NOT NULL
);

CREATE TABLE [dbo].[cidade] (
    [CodCid] INT NOT NULL,
    [DescCid] VARCHAR(150) NULL,
    [CodEst] SMALLINT NOT NULL,
    [CodMicro] SMALLINT NULL,
    [PopCid] INT NULL,
    [PopUrb] INT NULL,
    [PopRur] INT NULL,
    [AnoRefPop] SMALLINT NULL,
    [NumEmp] INT NULL,
    [NumIndust] INT NULL,
    [NumEmpCom] INT NULL,
    [NumEmpSer] INT NULL,
    [AnoRefTot] SMALLINT NULL,
    [NumFaculd] SMALLINT NULL,
    [NumEscolas] INT NULL,
    [Capital] VARCHAR(3) NOT NULL,
    [IndAtuCid] VARCHAR(3) NOT NULL,
    [Fonte] VARCHAR(50) NULL,
    [IndAtualizacao] BIT NOT NULL,
    [IndCapital] BIT NOT NULL,
    [Status] TINYINT NULL,
    [CodMeso] SMALLINT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL,
    [CODMUN] INT NULL,
    [TIPOLOCALIDADE] CHAR(1) NULL,
    [SITUACAO] BIT NOT NULL
);

CREATE TABLE [dbo].[CIDADE_2205] (
    [CodCid] INT NOT NULL,
    [DescCid] VARCHAR(150) NULL,
    [CodEst] SMALLINT NOT NULL,
    [CodMicro] SMALLINT NULL,
    [PopCid] INT NULL,
    [PopUrb] INT NULL,
    [PopRur] INT NULL,
    [AnoRefPop] SMALLINT NULL,
    [NumEmp] INT NULL,
    [NumIndust] INT NULL,
    [NumEmpCom] INT NULL,
    [NumEmpSer] INT NULL,
    [AnoRefTot] SMALLINT NULL,
    [NumFaculd] SMALLINT NULL,
    [NumEscolas] INT NULL,
    [Capital] VARCHAR(3) NOT NULL,
    [IndAtuCid] VARCHAR(3) NOT NULL,
    [Fonte] VARCHAR(50) NULL,
    [IndAtualizacao] BIT NOT NULL,
    [IndCapital] BIT NOT NULL,
    [Status] TINYINT NULL,
    [CodMeso] SMALLINT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL,
    [CODMUN] INT NULL,
    [TIPOLOCALIDADE] CHAR(1) NULL,
    [SITUACAO] BIT NOT NULL
);

CREATE TABLE [dbo].[Cidades_DF] (
    [RA] NVARCHAR(255) NULL,
    [NOME] NVARCHAR(255) NULL
);

CREATE TABLE [dbo].[Classe] (
    [CodClasse] INT NOT NULL,
    [DescClasse] VARCHAR(50) NULL,
    [DescClasseEsp] VARCHAR(50) NULL,
    [DescClasseIng] VARCHAR(50) NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[ClasseBolsa] (
    [codclasse] SMALLINT NOT NULL,
    [descclasse] VARCHAR(50) NOT NULL,
    [tipoclasse] CHAR(8) NOT NULL
);

CREATE TABLE [dbo].[Classificacao] (
    [Codclass] SMALLINT NOT NULL,
    [Descclass] VARCHAR(30) NOT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[ClassificacaoCEC] (
    [Codclass] SMALLINT NOT NULL,
    [Descclass] VARCHAR(30) NOT NULL
);

CREATE TABLE [dbo].[ClassificacaoPessoa] (
    [ClassificacaoPessoa] SMALLINT NOT NULL,
    [DescClassificacaoPessoa] VARCHAR(40) NOT NULL
);

CREATE TABLE [dbo].[ClassificacaoTipoUsuario] (
    [CodClassificacaoTipoUsuario] INT NOT NULL,
    [DescClassificacao] VARCHAR(50) NOT NULL
);

CREATE TABLE [dbo].[CLAUSULACONTRATO] (
    [Numero] INT NOT NULL,
    [Ano] INT NOT NULL,
    [TipoDocumento] CHAR(1) NOT NULL,
    [Cedente] INT NOT NULL,
    [OrdemClausula] INT NOT NULL,
    [TituloClausula] VARCHAR(255) NULL,
    [ConteudoClausula] TEXT NULL
);

CREATE TABLE [dbo].[CLAUSULAPADRAO] (
    [CodClausulaPadrao] INT NOT NULL,
    [TituloClausulaPadrao] VARCHAR(255) NULL,
    [COnteudoClausulaPadrao] TEXT NULL
);

CREATE TABLE [dbo].[ClausulaTermoAditivo] (
    [Numero_DC] INT NOT NULL,
    [Ano_DC] INT NOT NULL,
    [TipoDocumento_DC] CHAR(1) NOT NULL,
    [Cedente_DC] INT NOT NULL,
    [Numero_TA] INT NOT NULL,
    [Ano_TA] INT NOT NULL,
    [OrdemClausula_TA] INT NOT NULL,
    [TituloClausula_TA] VARCHAR(255) NULL,
    [ConteudoClausula] TEXT NULL
);

CREATE TABLE [dbo].[cnae_Temp] (
    [Secao] NVARCHAR(255) NULL,
    [Divisao] FLOAT NULL,
    [Grupo] NVARCHAR(255) NULL,
    [Classe] NVARCHAR(255) NULL,
    [Subclasse] NVARCHAR(255) NULL,
    [Nome] NVARCHAR(255) NULL
);

CREATE TABLE [dbo].[CNAE_Turismo] (
    [CNAE_UASCS] NVARCHAR(10) NULL,
    [Núcleo] NVARCHAR(255) NULL,
    [Carteira] NVARCHAR(255) NULL,
    [Descrição CNAE] NVARCHAR(255) NULL,
    [CNAE_Completa] NVARCHAR(255) NULL
);

CREATE TABLE [dbo].[CNAEAPOIOCARGA] (
    [CODATIVECON] VARCHAR(30) NULL,
    [DESCATIVECON] VARCHAR(255) NULL,
    [CODSETOR] INT NULL
);

CREATE TABLE [dbo].[CNAEAPOIOCARGA22] (
    [2#2 Estrutura detalhada da CNAE-Subclasses 2#2: seções, divisões] NVARCHAR(255) NULL,
    [F2] NVARCHAR(255) NULL,
    [F3] NVARCHAR(255) NULL,
    [F4] NVARCHAR(255) NULL,
    [F5] NVARCHAR(255) NULL,
    [F6] NVARCHAR(255) NULL,
    [F7] NVARCHAR(255) NULL,
    [F8] NVARCHAR(255) NULL,
    [F9] NVARCHAR(255) NULL,
    [F10] NVARCHAR(255) NULL,
    [F11] NVARCHAR(255) NULL
);

CREATE TABLE [dbo].[CNAECOMPLETAAPOIO] (
    [Secao] NVARCHAR(255) NULL,
    [Divisao] NVARCHAR(255) NULL,
    [Grupo] NVARCHAR(255) NULL,
    [Classe] NVARCHAR(255) NULL,
    [Subclasse] NVARCHAR(255) NULL,
    [Nome] NVARCHAR(255) NULL,
    [F7] NVARCHAR(255) NULL,
    [F8] NVARCHAR(255) NULL,
    [F9] NVARCHAR(255) NULL,
    [F10] NVARCHAR(255) NULL,
    [F11] NVARCHAR(255) NULL
);

CREATE TABLE [dbo].[CNAEFiscal] (
    [CodAtivEcon] VARCHAR(5) NOT NULL,
    [CodCnaeFiscal] VARCHAR(2) NOT NULL,
    [DescCnaeFiscal] VARCHAR(250) NOT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL,
    [Situacao] CHAR(1) NOT NULL
);

CREATE TABLE [dbo].[CNAEFISCALAPOIOCARGA] (
    [CODATIVECON] VARCHAR(10) NULL,
    [CODCNAEFISCAL] VARCHAR(2) NULL,
    [DESCCNAEFISCAL] VARCHAR(255) NULL
);

CREATE TABLE [dbo].[CnaeGrupo] (
    [CodSecaoCnae] VARCHAR(2) NOT NULL,
    [CodGrupo] VARCHAR(1) NOT NULL,
    [DescGrupo] VARCHAR(150) NULL
);

CREATE TABLE [dbo].[CNAEOperacional] (
    [CodAtivEcon] VARCHAR(10) NOT NULL,
    [CodCnaeFiscal] VARCHAR(4) NOT NULL,
    [SeqOperacional] VARCHAR(6) NOT NULL,
    [DescOperacional] VARCHAR(250) NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[CnaeRamo] (
    [CodSecaoCnae] VARCHAR(2) NOT NULL,
    [CodGrupo] VARCHAR(1) NOT NULL,
    [CodRamo] VARCHAR(1) NOT NULL,
    [DigRamo] VARCHAR(1) NOT NULL,
    [DescRamo] VARCHAR(150) NULL
);

CREATE TABLE [dbo].[CnaeSecao] (
    [CodSecaoCnae] VARCHAR(2) NOT NULL,
    [CodSetor] VARCHAR(2) NOT NULL,
    [DescSecaoCnae] VARCHAR(150) NULL
);

CREATE TABLE [dbo].[CNPJ_Qualidade] (
    [CNPJ] NUMERIC(15,0) NULL,
    [Porte_Oficial] NVARCHAR(255) NULL,
    [Motivo Exclusão] NVARCHAR(255) NULL
);

CREATE TABLE [dbo].[Code] (
    [LineId] INT NULL,
    [Text] NVARCHAR(255) NULL
);

CREATE TABLE [dbo].[code_alter_sp] (
    [text] VARCHAR(8000) NULL
);

CREATE TABLE [dbo].[Coleta] (
    [CodColeta] SMALLINT NOT NULL,
    [CodPesquisa] INT NOT NULL,
    [Descricao] VARCHAR(50) NULL
);

CREATE TABLE [dbo].[ColetaAplicacao] (
    [CodIndicador] INT NOT NULL,
    [CodColeta] SMALLINT NOT NULL,
    [CodPesquisa] INT NOT NULL,
    [DataRealizacao] DATETIME NOT NULL,
    [Valor] FLOAT NOT NULL,
    [Sequencial] INT NOT NULL
);

CREATE TABLE [dbo].[ColetaIndicador] (
    [CodIndicador] INT NOT NULL,
    [CodColeta] SMALLINT NOT NULL,
    [CodPesquisa] INT NOT NULL
);

CREATE TABLE [dbo].[COMPATConstJur] (
    [CodConsJurSIAC] INT NULL,
    [CodConsJurNAC] INT NULL,
    [DescConsJurNAC] VARCHAR(70) NULL
);

CREATE TABLE [dbo].[COMPATCorporativas] (
    [Tabela] VARCHAR(50) NULL,
    [PKSiac1] INT NULL,
    [PKSiac2] INT NULL,
    [PKCorporativa] UNIQUEIDENTIFIER NULL,
    [IndExcluir] TINYINT NULL,
    [IndAtualizacao] TINYINT NULL,
    [Ano] INT NULL
);

CREATE TABLE [dbo].[COMPATEscolaridade] (
    [CodSIAC] INT NULL,
    [CodNAC] INT NULL,
    [DescNAC] VARCHAR(30) NULL
);

CREATE TABLE [dbo].[COMPATEstadoCivil] (
    [CodEstCivilSIAC] INT NULL,
    [CodEstCivilNAC] INT NULL,
    [DesEstCivilNAC] CHAR(10) NULL
);

CREATE TABLE [dbo].[COMPATPorte] (
    [CodPorteSIAC] VARCHAR(10) NULL,
    [CodPorteNAC] CHAR(2) NULL,
    [DescPortNAC] VARCHAR(15) NULL
);

CREATE TABLE [dbo].[CompatSinc_offline] (
    [Tabela] CHAR(50) NULL,
    [PKCliente] INT NULL,
    [PKServidor] INT NULL,
    [TipoMov] CHAR(1) NULL
);

CREATE TABLE [dbo].[CompatSinc_Parceiro] (
    [Tabela] CHAR(50) NULL,
    [PKCliente] INT NULL,
    [PKServidor] INT NULL,
    [TipoMov] CHAR(1) NULL,
    [IDParceiro] CHAR(100) NULL
);

CREATE TABLE [dbo].[CompDespesa] (
    [CodRequisicao] INT NOT NULL,
    [TipoRequisicao] TINYINT NOT NULL,
    [NrCompDespesa] INT NOT NULL,
    [CodUnidOp] INT NOT NULL,
    [CodProduto] INT NOT NULL,
    [VlCompDespesa] FLOAT NULL,
    [Status] INT NULL
);

CREATE TABLE [dbo].[CompetenciaEspecifica] (
    [CodCompetencia] INT NOT NULL,
    [DescCompetencia] VARCHAR(150) NULL,
    [Situacao] TINYINT NULL
);

CREATE TABLE [dbo].[comunicacao] (
    [numseqcom] SMALLINT NOT NULL,
    [codparceiro] INT NOT NULL,
    [codcomunic] SMALLINT NOT NULL,
    [numero] VARCHAR(60) NULL,
    [IndInternet] TINYINT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL,
    [RecebeContato] BIT NULL,
    [RecebeSMS] BIT NULL,
    [Principal] BIT NULL
);

CREATE TABLE [dbo].[CondicaoProcessoAtividade] (
    [CodCondicao] INT NOT NULL,
    [NomeCondicao] VARCHAR(80) NOT NULL,
    [CodPerfilResp] INT NOT NULL,
    [TipoDecisao] CHAR(1) NOT NULL,
    [DuracaoCondicao] INT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[CondPagto] (
    [CodCondPgto] INT NOT NULL,
    [DescCondPgto] VARCHAR(50) NULL,
    [QtdParcelas] INT NULL,
    [IntervaloDias] INT NULL,
    [PercEntrada] FLOAT NULL,
    [PercJuros] FLOAT NULL,
    [Status] TINYINT NULL,
    [PrimParcela] INT NULL
);

CREATE TABLE [dbo].[CONFIG_EXPORTACAO] (
    [Tabela] VARCHAR(50) NOT NULL,
    [PK] VARCHAR(50) NOT NULL,
    [Acao] VARCHAR(10) NOT NULL,
    [DescAcao] VARCHAR(500) NOT NULL,
    [DataOperacao] DATETIME NOT NULL,
    [Status] INT NOT NULL
);

CREATE TABLE [dbo].[ConfigEstacaoPesquisa] (
    [LimiteSessao] INT NOT NULL,
    [LimiteMes] INT NOT NULL,
    [SessaoContinua] INT NOT NULL
);

CREATE TABLE [dbo].[ConfigTabelasCorpor] (
    [NomeAplicacao] VARCHAR(100) NULL
);

CREATE TABLE [dbo].[CONS_ATIVIDADE] (
    [CodAtividade] INT NOT NULL,
    [CodConsultoria] INT NULL,
    [CodSebrae] INT NOT NULL,
    [DescAtividade] VARCHAR(1000) NULL,
    [CargaHoraria] DECIMAL(18,2) NULL,
    [DtInicio] DATETIME NULL,
    [DtFim] DATETIME NULL,
    [CodTecnico] INT NULL,
    [VlrHora] DECIMAL(18,2) NULL,
    [DtInicioReal] SMALLDATETIME NULL,
    [DtFimReal] SMALLDATETIME NULL,
    [CargaHorariaReal] DECIMAL(18,2) NULL,
    [DescComentario] NVARCHAR(100) NULL,
    [MesAnoCompetencia] DATETIME NULL,
    [CodTema] INT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[CONS_CONSULTORIA] (
    [CodConsultoria] INT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [NomeConsultoria] VARCHAR(255) NULL,
    [DtInicioPrevisto] DATETIME NULL,
    [ObjetivoConsultoria] VARCHAR(1000) NULL,
    [ResultadosEsperados] VARCHAR(1000) NULL,
    [CodProjeto] UNIQUEIDENTIFIER NULL,
    [CodAcao] INT NULL,
    [CodProdutoPortfolio] INT NULL,
    [DtInicioReal] DATETIME NULL,
    [DtFimReal] DATETIME NULL,
    [CodUnidOp] INT NULL,
    [CodArea] INT NULL,
    [ResultadosObtidos] VARCHAR(1000) NULL,
    [CodCid] INT NULL,
    [Situacao] VARCHAR(11) NULL,
    [CodTipoConsultoria] INT NULL,
    [CodMotivoRecisao] INT NULL,
    [DtCancelamento] DATETIME NULL,
    [ObsCancelamento] VARCHAR(100) NULL,
    [CodResponsavel] INT NULL,
    [CodTema] INT NULL,
    [CodAreaTematica] INT NULL,
    [DescTema] VARCHAR(200) NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[CONS_CONSULTORIAAVALIACAO] (
    [CODCONSULTORIAAVALIACAO] INT NOT NULL,
    [CODCONSULTORIA] INT NOT NULL,
    [CODGRUPOAVALICAO] INT NULL,
    [CODINDICADORAVALIACAO] INT NULL,
    [CODITEMAVALICAO] INT NULL,
    [CODTECNICO] INT NULL,
    [CODTIPOAVALIACAO] INT NOT NULL,
    [NM_RESPOSTA] VARCHAR(2000) NULL,
    [NUMSEQ] INT NULL
);

CREATE TABLE [dbo].[CONS_CONSULTORIALogOperacao] (
    [IdLogConsultoria] INT NOT NULL,
    [CodConsultoria] INT NOT NULL,
    [CodAtividade] INT NULL,
    [DataHora] DATETIME NOT NULL,
    [TipoLog] CHAR(2) NOT NULL,
    [SebraeResp] INT NULL,
    [CodParceiroResp] INT NULL,
    [ParceiroResp] VARCHAR(180) NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[CONS_CONSULTORIAPARTICIPANTE] (
    [CodParticipanteCosultoria] INT NOT NULL,
    [CodConsultoria] INT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [CodPessoaF] INT NULL,
    [CodPessoaJ] INT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[CONS_ConsultoriaRescisao] (
    [CodConsultoriaRescisao] INT NOT NULL,
    [CodConsultoria] INT NOT NULL,
    [CodMotivo] INT NULL,
    [DataRescisao] DATETIME NULL,
    [Observacao] TEXT NULL
);

CREATE TABLE [dbo].[CONS_CONSULTORIARESPONSAVEL] (
    [CodConsultoriaResponsavel] INT NOT NULL,
    [CodConsultoria] INT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [CodResponsavel] INT NOT NULL
);

CREATE TABLE [dbo].[CONS_CONSULTORIASITUACAO] (
    [CODCONSULTORIASITUACAO] INT NOT NULL,
    [CODCONSULTORIA] INT NOT NULL,
    [CODSITUACAO] INT NOT NULL,
    [DT_DATA] DATETIME NULL,
    [STATUS] BIT NULL,
    [CODUSUARIO] INT NULL
);

CREATE TABLE [dbo].[CONS_CONSULTORIATECNICO] (
    [CodConsultoriaTecnico] INT NOT NULL,
    [CodConsultoria] INT NOT NULL,
    [CodSebrae] INT NULL,
    [CodTecnico] INT NOT NULL,
    [VlrHora] FLOAT NULL,
    [CodClasse] CHAR(10) NULL
);

CREATE TABLE [dbo].[CONS_CONSULTORIATipoLog] (
    [TipoLog] CHAR(2) NOT NULL,
    [DescLog] VARCHAR(50) NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[CONS_CRONOGRAMA] (
    [CODCRONOGRAMA] INT NOT NULL,
    [TOTALHORAS] DECIMAL(18,0) NULL,
    [TOTALCUSTO] DECIMAL(18,0) NULL,
    [CODCONSULTORIA] INT NULL
);

CREATE TABLE [dbo].[CONS_CRONOGRAMAAREATEMATICA] (
    [CODCRONOGRAMAAREATEMATICA] INT NOT NULL,
    [CODCRONOGRAMA] INT NOT NULL,
    [CODAREATEMATICA] INT NOT NULL,
    [CODTEMA] INT NULL,
    [TIPOTEMA] INT NULL,
    [CODSUBAREATEMATICA] INT NULL
);

CREATE TABLE [dbo].[CONS_DEMANDA] (
    [CodDemanda] INT NOT NULL,
    [CodConsultoria] INT NOT NULL,
    [CodSebrae] INT NULL,
    [DescDemanda] VARCHAR(2000) NULL,
    [DtDemanda] SMALLDATETIME NULL
);

CREATE TABLE [dbo].[CONS_SITUACAO] (
    [CODSITUACAO] INT NOT NULL,
    [DESSITUACAO] VARCHAR(255) NULL
);

CREATE TABLE [dbo].[CONS_TEMASUGERIDO] (
    [CODTEMASUGERIDO] INT NOT NULL,
    [CODTEMA] INT NOT NULL,
    [CODAREATEMATICA] INT NULL,
    [NM_TEMA] VARCHAR(255) NULL,
    [TIPOTEMA] INT NULL,
    [CODCONSULTORIA] INT NULL
);

CREATE TABLE [dbo].[CONS_TIPOAVALIACAO] (
    [CODTIPOAVALIACAO] INT NOT NULL,
    [NM_TIPOAVALIACAO] NVARCHAR(200) NULL
);

CREATE TABLE [dbo].[CONS_TIPOCONSULTORIA] (
    [CODTIPOCONSULTORIA] INT NOT NULL,
    [NM_TIPOCONSULTORIA] VARCHAR(255) NULL
);

CREATE TABLE [dbo].[consassunto] (
    [codatend] INT NOT NULL,
    [seqconsulta] SMALLINT NOT NULL,
    [codassloc] VARCHAR(5) NOT NULL,
    [numseqcass] INT NOT NULL,
    [indpend] VARCHAR(3) NOT NULL,
    [dataprevresp] SMALLDATETIME NULL,
    [dataresposta] SMALLDATETIME NULL,
    [descpendencia] VARCHAR(250) NULL,
    [descresposta] VARCHAR(250) NULL,
    [IndPendente] BIT NOT NULL
);

CREATE TABLE [dbo].[consconsultor] (
    [codatend] INT NOT NULL,
    [seqconsulta] SMALLINT NOT NULL,
    [codconsultor] INT NOT NULL
);

CREATE TABLE [dbo].[ConsolidadoSMEdossie2] (
    [CNPJ] FLOAT NULL,
    [Tipo de Alteração 1] NVARCHAR(255) NULL,
    [Tipo de Alteração 2] NVARCHAR(255) NULL,
    [Novo Porte] NVARCHAR(255) NULL,
    [Nova Situação] NVARCHAR(255) NULL
);

CREATE TABLE [dbo].[ConsolidadoSMEdossie2Porte] (
    [codparceiro] FLOAT NULL,
    [NomeRazaoSocial] NVARCHAR(255) NULL,
    [codconst] FLOAT NULL,
    [faturam] FLOAT NULL,
    [Porte] FLOAT NULL,
    [CodSebrae] FLOAT NULL
);

CREATE TABLE [dbo].[CONSORCIO] (
    [CodigoConsorcio] INT NOT NULL,
    [Descricao] VARCHAR(255) NULL
);

CREATE TABLE [dbo].[CONSORCIOCONTRATADOS] (
    [Numero] INT NOT NULL,
    [Ano] INT NOT NULL,
    [TipoDocumento] CHAR(1) NOT NULL,
    [Cedente] INT NOT NULL,
    [CodigoPessoaJ] INT NOT NULL,
    [CodigoConsorcio] INT NOT NULL,
    [LiderConsorcio] CHAR(1) NULL
);

CREATE TABLE [dbo].[ConsTipoServico] (
    [CodAtend] INT NOT NULL,
    [SeqConsulta] SMALLINT NOT NULL,
    [CodTipoServico] INT NOT NULL
);

CREATE TABLE [dbo].[ConstJur] (
    [CodConst] SMALLINT NOT NULL,
    [DescConst] VARCHAR(50) NOT NULL,
    [DescAbrevConst] VARCHAR(50) NOT NULL,
    [Situacao] CHAR(1) NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL,
    [Atende] CHAR(1) NOT NULL,
    [Cadastro] CHAR(1) NOT NULL,
    [Parceiro] CHAR(1) NOT NULL,
    [exigeCNPJ] CHAR(1) NULL
);

CREATE TABLE [dbo].[consulta] (
    [codatend] INT NOT NULL,
    [seqconsulta] SMALLINT NOT NULL,
    [datahorainic] DATETIME NULL,
    [datahorafim] DATETIME NULL,
    [obscons] VARCHAR(200) NULL,
    [codprod] INT NULL,
    [diagnostico] TEXT NULL
);

CREATE TABLE [dbo].[ConsultaBolsa] (
    [CodConsulta] INT NOT NULL,
    [CodParceiro] INT NOT NULL,
    [TipoParceiro] CHAR(1) NOT NULL,
    [CodFormaAtendimento] INT NOT NULL,
    [DataConsulta] DATETIME NULL
);

CREATE TABLE [dbo].[consultarapida] (
    [seqconsrapida] INT NOT NULL,
    [codassloc] VARCHAR(5) NOT NULL,
    [questaopadrao] VARCHAR(250) NOT NULL,
    [respostapadrao] VARCHAR(250) NOT NULL,
    [datavalidade] SMALLDATETIME NOT NULL
);

CREATE TABLE [dbo].[consultoria] (
    [CodConsultoria] INT NOT NULL,
    [DescConsultoria] VARCHAR(250) NULL,
    [CodUnidOper] INT NOT NULL,
    [DataInicio] DATETIME NULL,
    [DataFim] DATETIME NULL,
    [CodParceiro] INT NULL,
    [CodMotivo] TINYINT NULL,
    [CodSolicitacao] INT NULL,
    [IndFase] INT NULL,
    [CodAreaEsp] INT NULL,
    [CodProd] INT NULL,
    [CodConta] INT NULL,
    [AvaliacaoCons] TEXT NULL
);

CREATE TABLE [dbo].[ConsultoriaAtividade] (
    [CodAtividade] INT NOT NULL,
    [DescAtividade] VARCHAR(255) NOT NULL,
    [CargaHoraria] INT NOT NULL,
    [DataInicioPrevisto] DATETIME NULL,
    [DataFinalPrevisto] DATETIME NULL,
    [DataInicioReal] DATETIME NULL,
    [DataFinalReal] DATETIME NULL,
    [Observacao] TEXT NULL,
    [CargaHorariaReal] INT NULL
);

CREATE TABLE [dbo].[ConsultoriaCliente] (
    [CodConsultoria] INT NOT NULL,
    [CodParceiroPF] INT NOT NULL,
    [CodParceiroPJ] INT NULL
);

CREATE TABLE [dbo].[ConsultoriaCronograma] (
    [CodConsultoria] INT NOT NULL,
    [CodAtividade] INT NOT NULL,
    [ValorHora] FLOAT NOT NULL
);

CREATE TABLE [dbo].[ConsultoriaDemanda] (
    [CodConsultoria] INT NOT NULL,
    [CodDemanda] INT NOT NULL,
    [DescEntendDemanda] VARCHAR(255) NULL,
    [DataDemanda] DATETIME NULL
);

CREATE TABLE [dbo].[ConsultoriaRescisao] (
    [CodConsultoria] INT NOT NULL,
    [CodMotivo] INT NULL,
    [DataRescisao] DATETIME NULL,
    [Observacao] TEXT NULL
);

CREATE TABLE [dbo].[ConsultoriaResponsavel] (
    [CodConsultoria] INT NOT NULL,
    [CodParceiro] INT NOT NULL
);

CREATE TABLE [dbo].[ConsultoriaSIAD] (
    [CodConsultoria] INT NOT NULL,
    [CodSOL] UNIQUEIDENTIFIER NULL,
    [CodOBJ] SMALLINT NULL,
    [Ano] INT NULL,
    [CodAB] INT NULL,
    [CodAE] UNIQUEIDENTIFIER NULL
);

CREATE TABLE [dbo].[ConsultoriaSolic] (
    [CodConsultoria] INT NOT NULL,
    [CodUnidOper] INT NOT NULL,
    [CodProduto] INT NOT NULL,
    [CodTipoConsultoria] INT NOT NULL,
    [CodOrigemDemanda] INT NULL,
    [DataSolitacao] DATETIME NULL,
    [HoraInicial] SMALLDATETIME NULL,
    [HoraFinal] SMALLDATETIME NULL,
    [Situacao] TINYINT NULL,
    [ObjetivoConsultoria] TEXT NULL,
    [ResultadoEsperado] TEXT NULL,
    [NomeConsultoria] VARCHAR(255) NOT NULL,
    [CodAB] SMALLINT NULL,
    [CodAE] UNIQUEIDENTIFIER NULL,
    [CodSol] UNIQUEIDENTIFIER NULL,
    [CodObj] INT NULL,
    [AnoSIAD] INT NULL,
    [CodEntidade] INT NULL,
    [DataFinal] DATETIME NULL
);

CREATE TABLE [dbo].[ConsultoriaTecnico] (
    [CodConsultoria] INT NOT NULL,
    [CodConsultor] INT NOT NULL
);

CREATE TABLE [dbo].[ConsultoriaTema] (
    [CodConsultoria] INT NOT NULL,
    [CodAreaTematica] INT NOT NULL,
    [CodTema] INT NOT NULL,
    [TipoTema] TINYINT NOT NULL
);

CREATE TABLE [dbo].[ConsultoriaTemaSugerido] (
    [CodTema] INT NOT NULL,
    [CodAreaTematica] INT NOT NULL,
    [DescTema] VARCHAR(255) NULL,
    [IndTipoTema] TINYINT NULL
);

CREATE TABLE [dbo].[ContaReceber] (
    [CodConta] INT NOT NULL,
    [DataInc] SMALLDATETIME NOT NULL,
    [ValorHist] FLOAT NOT NULL,
    [FormaPagto] TINYINT NOT NULL,
    [Descricao] VARCHAR(255) NOT NULL,
    [NumParcelas] TINYINT NOT NULL,
    [Juros] FLOAT NULL,
    [ValorDevido] FLOAT NULL,
    [ValorPago] FLOAT NULL,
    [ValorDescontado] FLOAT NULL,
    [CodUnidOper] INT NULL,
    [CodProd] INT NULL,
    [ValorCredito] FLOAT NULL,
    [CodSebrae] INT NOT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[contato] (
    [codcontatopj] INT NOT NULL,
    [codcontatopf] INT NOT NULL,
    [codcargcli] INT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL,
    [IndPrincipal] TINYINT NULL,
    [Situacao] TINYINT NOT NULL,
    [dtSituacao] SMALLDATETIME NOT NULL,
    [DataInclusao] DATETIME NULL,
    [IndPrioritarioGestaoEmp] BIT NULL,
    [IndParceiraGestaoEmp] BIT NULL
);

CREATE TABLE [dbo].[Contato_Exclusao] (
    [codcontatopj] INT NULL,
    [codcontatopf] INT NULL,
    [codcargcli] INT NULL,
    [rowguid] UNIQUEIDENTIFIER NULL,
    [IndPrincipal] TINYINT NULL,
    [Situacao] TINYINT NULL,
    [dtSituacao] SMALLDATETIME NULL,
    [DataExclusao] DATETIME NULL,
    [replicacao] CHAR(1) NULL
);

CREATE TABLE [dbo].[ConteudoBIA] (
    [CodConteudo] INT NOT NULL,
    [TituloConteudo] VARCHAR(60) NOT NULL,
    [SubTituloConteudo] VARCHAR(155) NULL,
    [ResumoConteudo] VARCHAR(500) NULL,
    [CorpoTexto] TEXT NULL,
    [Fonte] VARCHAR(80) NULL,
    [TipoAutor] CHAR(1) NULL,
    [Autor] VARCHAR(80) NULL,
    [TipoConteudo] CHAR(1) NULL,
    [StatusPublicacao] TINYINT NULL,
    [Situacao] CHAR(1) NULL,
    [DataCadastro] DATETIME NULL,
    [DataAtualizacao] DATETIME NULL,
    [DataExpiracao] DATETIME NULL,
    [DataExclusao] DATETIME NULL,
    [SEBRAEResp] INT NULL,
    [CodResponsavel] INT NULL,
    [CodUsuarioResponsavel] INT NULL,
    [DireitosAutorais] VARCHAR(255) NULL,
    [Contribuidor] VARCHAR(255) NULL,
    [DataPublicacao] DATETIME NULL,
    [SituacaoVersao] CHAR(1) NOT NULL,
    [CodConteudoOriginal] INT NULL,
    [SugestaoIlustracao] VARCHAR(500) NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[ConteudoBIAAgentes] (
    [CodConteudo] INT NOT NULL,
    [CodSEBRAE] INT NOT NULL,
    [SituacaoVersao] CHAR(1) NOT NULL,
    [Sequencial] INT NOT NULL,
    [CorpoTexto] TEXT NOT NULL,
    [StatusPublicacao] TINYINT NULL,
    [Situacao] CHAR(1) NULL,
    [DataCadastro] DATETIME NULL,
    [DataAtualizacao] DATETIME NULL,
    [CodResponsavel] INT NULL,
    [SugestaoIlustracao] VARCHAR(500) NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[ConteudoBIAAgentesAnexos] (
    [CodConteudo] INT NOT NULL,
    [CodSEBRAE] INT NOT NULL,
    [NomeArquivo] VARCHAR(120) NOT NULL,
    [CodIdioma] CHAR(1) NOT NULL,
    [SituacaoVersao] CHAR(1) NOT NULL,
    [Sequencial] INT NOT NULL,
    [Descricao] VARCHAR(50) NULL,
    [LegendaImagem] VARCHAR(80) NULL,
    [CreditoImagem] VARCHAR(30) NULL,
    [TipoArquivo] TINYINT NOT NULL,
    [TipoExtensaoArquivo] TINYINT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[ConteudoBIAAgentesIdiomas] (
    [CodConteudo] INT NOT NULL,
    [CodSEBRAE] INT NOT NULL,
    [CodIdioma] CHAR(1) NOT NULL,
    [SituacaoVersao] CHAR(1) NOT NULL,
    [Sequencial] INT NOT NULL,
    [CorpoTexto] TEXT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[ConteudoBIAAgentesMenuSubMenu] (
    [CodConteudo] INT NOT NULL,
    [CodSEBRAE] INT NOT NULL,
    [CodMenu] UNIQUEIDENTIFIER NOT NULL,
    [CodSubMenu] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[ConteudoBIAAnexos] (
    [CodConteudo] INT NOT NULL,
    [NomeArquivo] VARCHAR(120) NOT NULL,
    [CodIdioma] CHAR(1) NOT NULL,
    [Descricao] VARCHAR(50) NULL,
    [LegendaImagem] VARCHAR(80) NULL,
    [CreditoImagem] VARCHAR(40) NULL,
    [TipoArquivo] TINYINT NOT NULL,
    [TipoExtensaoArquivo] TINYINT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[ConteudoBIAAreaTematica] (
    [CodConteudo] INT NOT NULL,
    [CodAreaTematica] INT NOT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[ConteudoBIACompSetorial] (
    [CodConteudo] INT NOT NULL,
    [CodSetorPrioritario] INT NOT NULL,
    [SituacaoVersao] CHAR(1) NOT NULL,
    [Sequencial] INT NOT NULL,
    [CorpoTexto] TEXT NOT NULL,
    [StatusPublicacao] TINYINT NULL,
    [Situacao] CHAR(1) NULL,
    [DataCadastro] DATETIME NULL,
    [DataAtualizacao] DATETIME NULL,
    [CodResponsavel] INT NULL,
    [SugestaoIlustracao] VARCHAR(500) NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[ConteudoBIACompSetorialAnexos] (
    [CodConteudo] INT NOT NULL,
    [CodSetorPrioritario] INT NOT NULL,
    [NomeArquivo] VARCHAR(120) NOT NULL,
    [CodIdioma] CHAR(1) NOT NULL,
    [SituacaoVersao] CHAR(1) NOT NULL,
    [Sequencial] INT NOT NULL,
    [Descricao] VARCHAR(50) NULL,
    [LegendaImagem] VARCHAR(80) NULL,
    [CreditoImagem] VARCHAR(30) NULL,
    [TipoArquivo] TINYINT NOT NULL,
    [TipoExtensaoArquivo] TINYINT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[ConteudoBIACompSetorialIdiomas] (
    [CodConteudo] INT NOT NULL,
    [CodSetorPrioritario] INT NOT NULL,
    [CodIdioma] CHAR(1) NOT NULL,
    [SituacaoVersao] CHAR(1) NOT NULL,
    [Sequencial] INT NOT NULL,
    [CorpoTexto] TEXT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[ConteudoBIAEstado] (
    [CodConteudo] INT NOT NULL,
    [CodEstado] SMALLINT NOT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[ConteudoBIAIdiomas] (
    [CodConteudo] INT NOT NULL,
    [CodIdioma] CHAR(1) NOT NULL,
    [TituloConteudo] VARCHAR(60) NULL,
    [SubTituloConteudo] VARCHAR(155) NULL,
    [CorpoTexto] TEXT NULL,
    [ResumoConteudo] VARCHAR(500) NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[ConteudoBIAMenuSubMenu] (
    [CodConteudo] INT NOT NULL,
    [CodMenu] UNIQUEIDENTIFIER NOT NULL,
    [CodSubMenu] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[ConteudoBIAMomentoVida] (
    [CodConteudo] INT NOT NULL,
    [CodMomentoVida] TINYINT NOT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[ConteudoBIARelacionado] (
    [CodConteudo] INT NOT NULL,
    [CodConteudoRelacionado] INT NOT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[ConteudoBIASetorPrioritario] (
    [CodConteudo] INT NOT NULL,
    [CodSetorPrioritario] INT NOT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[ConteudoBIASubMenu] (
    [CodSubMenu] INT NOT NULL,
    [CodConteudo] INT NOT NULL,
    [Principal] CHAR(1) NULL,
    [Ordem] INT NULL,
    [Situacao] CHAR(1) NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[ConteudoTermoVCS] (
    [CodConteudo] INT NOT NULL,
    [CodTermo] INT NOT NULL,
    [DescTermo] VARCHAR(500) NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[ConteudoTermoVCS_180914] (
    [CodConteudo] INT NOT NULL,
    [CodTermo] INT NOT NULL,
    [DescTermo] VARCHAR(500) NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[CONTRATADOCONVENENTE] (
    [Numero] INT NOT NULL,
    [Ano] INT NOT NULL,
    [TipoDocumento] CHAR(1) NOT NULL,
    [Cedente] INT NOT NULL,
    [CodigoPessoaJ] INT NOT NULL,
    [LiderConsorcio] CHAR(1) NULL
);

CREATE TABLE [dbo].[Controle_offline] (
    [Tabela] VARCHAR(50) NOT NULL,
    [PK] INT NOT NULL,
    [DTInc] DATETIME NULL,
    [DTAlt] DATETIME NULL,
    [DTExc] DATETIME NULL,
    [DTGeracao] DATETIME NULL,
    [DTGeracaoANT] DATETIME NULL,
    [IndImport] TINYINT NULL,
    [PKServidor] CHAR(150) NULL
);

CREATE TABLE [dbo].[ControleSenha] (
    [IdControle] INT NOT NULL,
    [usuarioLogin] VARCHAR(50) NULL,
    [CodSebrae] INT NULL,
    [DataHora] DATETIME NULL,
    [Senha] VARCHAR(32) NULL
);

CREATE TABLE [dbo].[ConvenioMedico] (
    [CodConvenio] TINYINT NOT NULL,
    [DescConvenio] VARCHAR(150) NOT NULL,
    [CodTpConvenio] TINYINT NOT NULL
);

CREATE TABLE [dbo].[CORPORATIVOErro] (
    [DataLog] DATETIME NULL,
    [DescErro] VARCHAR(1000) NULL,
    [Situacao] TINYINT NULL,
    [Sistema] VARCHAR(100) NULL,
    [CodSIAC] INT NULL,
    [Parametro] VARCHAR(1000) NULL
);

CREATE TABLE [dbo].[cpf_sas] (
    [ds_cpf] VARCHAR(50) NULL
);

CREATE TABLE [dbo].[CredenciadosCV] (
    [CodParceiro] INT NOT NULL,
    [CurriculoResumido] VARCHAR(800) NULL,
    [Referencias] VARCHAR(100) NULL
);

CREATE TABLE [dbo].[CriteriosAvaliacaoProduto] (
    [CodCriterio] SMALLINT NOT NULL,
    [DescCriterio] VARCHAR(255) NOT NULL,
    [PesoAvaliacao] TINYINT NOT NULL,
    [Status] TINYINT NULL
);

CREATE TABLE [dbo].[CursoPessoal] (
    [CodCursoPessoal] INT NOT NULL,
    [DescCursoPessoal] VARCHAR(150) NOT NULL,
    [CodGrauEscol] SMALLINT NOT NULL
);

CREATE TABLE [dbo].[dbo.MSdynamicsnapshotjobs] (
    [id] INT NOT NULL,
    [name] NVARCHAR(128) NOT NULL,
    [pubid] UNIQUEIDENTIFIER NOT NULL,
    [job_id] UNIQUEIDENTIFIER NOT NULL,
    [agent_id] INT NOT NULL,
    [dynamic_filter_login] NVARCHAR(128) NULL,
    [dynamic_filter_hostname] NVARCHAR(128) NULL,
    [dynamic_snapshot_location] NVARCHAR(255) NOT NULL,
    [partition_id] INT NOT NULL,
    [computed_dynsnap_location] BIT NOT NULL
);

CREATE TABLE [dbo].[dbo__MPE_CANDIDATAS_2009] (
    [CNPJ] NVARCHAR(20) NULL,
    [Nome] NVARCHAR(100) NULL,
    [Fantasia] NVARCHAR(100) NULL,
    [Setor] NVARCHAR(100) NULL,
    [AtivEconomica] NVARCHAR(200) NULL,
    [CNAE_SECAO] NVARCHAR(5) NULL,
    [CNAE_CLASSE] NVARCHAR(50) NULL,
    [Numero de funcionários] INT NULL,
    [Data de Abertura] DATETIME NULL,
    [Constituição Jurídica] NTEXT NULL,
    [Cep] NVARCHAR(9) NULL,
    [Estado] NVARCHAR(200) NULL,
    [Cidade] NVARCHAR(100) NULL,
    [Bairro] NVARCHAR(100) NULL,
    [Endereco] NVARCHAR(150) NULL,
    [Complemento] NVARCHAR(150) NULL,
    [Telefone] NVARCHAR(1) NULL,
    [Email] NVARCHAR(1) NULL,
    [codSIAC] INT NULL,
    [CNPJValido] VARCHAR(50) NULL,
    [FlagImporta] CHAR(1) NULL
);

CREATE TABLE [dbo].[dbo__MPE_CONTATO_CANDIDATAS_2009] (
    [CNPJ] NVARCHAR(20) NULL,
    [Cargo] NVARCHAR(100) NULL,
    [CPF] NTEXT NULL,
    [Nome Completo] NVARCHAR(100) NULL,
    [Cep] NVARCHAR(1) NULL,
    [País] NVARCHAR(1) NULL,
    [Estado] NVARCHAR(1) NULL,
    [Cidade] NVARCHAR(1) NULL,
    [Bairro] NVARCHAR(1) NULL,
    [Endereco] NTEXT NULL,
    [Complemento] NVARCHAR(1) NULL,
    [Telefone] NVARCHAR(20) NULL,
    [Email] NVARCHAR(100) NULL,
    [codSIAC] INT NULL,
    [CPFValido] VARCHAR(50) NULL,
    [FlagImporta] CHAR(1) NULL,
    [gerarHistorico] CHAR(1) NULL
);

CREATE TABLE [dbo].[dbo__MPE_CONTATO_INSCRITAS_2009] (
    [CNPJ] NVARCHAR(20) NULL,
    [Cargo] NVARCHAR(100) NULL,
    [CPF] NTEXT NULL,
    [Nome Completo] NVARCHAR(100) NULL,
    [Cep] NVARCHAR(1) NULL,
    [País] NVARCHAR(1) NULL,
    [Estado] NVARCHAR(1) NULL,
    [Cidade] NVARCHAR(1) NULL,
    [Bairro] NVARCHAR(1) NULL,
    [Endereco] NTEXT NULL,
    [Complemento] NVARCHAR(1) NULL,
    [Telefone] NVARCHAR(20) NULL,
    [Email] NVARCHAR(100) NULL,
    [codSIAC] INT NULL,
    [CPFValido] VARCHAR(50) NULL,
    [FlagImporta] CHAR(1) NULL,
    [gerarHistorico] CHAR(1) NULL
);

CREATE TABLE [dbo].[dbo__MPE_INSCRITAS_2009] (
    [CNPJ] NVARCHAR(20) NULL,
    [Nome] NVARCHAR(100) NULL,
    [Fantasia] NVARCHAR(100) NULL,
    [Setor] NVARCHAR(100) NULL,
    [AtivEconomica] NVARCHAR(200) NULL,
    [CNAE_SECAO] NVARCHAR(5) NULL,
    [CNAE_CLASSE] NVARCHAR(50) NULL,
    [Numero de funcionários] INT NULL,
    [Data de Abertura] DATETIME NULL,
    [Constituição Jurídica] NTEXT NULL,
    [Cep] NVARCHAR(9) NULL,
    [Estado] NVARCHAR(200) NULL,
    [Cidade] NVARCHAR(100) NULL,
    [Bairro] NVARCHAR(100) NULL,
    [Endereco] NVARCHAR(150) NULL,
    [Complemento] NVARCHAR(150) NULL,
    [Telefone] NVARCHAR(1) NULL,
    [Email] NVARCHAR(1) NULL,
    [codSIAC] INT NULL,
    [CNPJValido] VARCHAR(50) NULL,
    [FlagImporta] CHAR(1) NULL
);

CREATE TABLE [dbo].[dbo__PSMN_CONTATO_2009] (
    [CNPJ] VARCHAR(40) NULL,
    [Cargo] NVARCHAR(250) NULL,
    [CPF] VARCHAR(40) NULL,
    [Nome Completo] NVARCHAR(250) NULL,
    [Cep] NVARCHAR(8) NULL,
    [País] NVARCHAR(1) NULL,
    [Estado] NVARCHAR(2) NULL,
    [Cidade] NVARCHAR(250) NULL,
    [Bairro] NVARCHAR(250) NULL,
    [Endereco] NVARCHAR(250) NULL,
    [Complemento] VARCHAR(80) NULL,
    [Telefone] NVARCHAR(101) NULL,
    [Email] NVARCHAR(250) NULL,
    [codSIAC] INT NULL,
    [CPFValido] VARCHAR(50) NULL,
    [FlagImporta] CHAR(1) NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[dbo__PSMN_INSCRITAS_2009] (
    [CNPJ] VARCHAR(40) NULL,
    [Nome] NVARCHAR(250) NULL,
    [Fantasia] NVARCHAR(250) NULL,
    [Setor] NVARCHAR(100) NULL,
    [AtivEconomica] NVARCHAR(200) NULL,
    [Numero de funcionários] INT NULL,
    [Data de Abertura] DATETIME NULL,
    [Constituição Jurídica] NVARCHAR(1) NULL,
    [Cep] NVARCHAR(8) NULL,
    [Estado] NVARCHAR(200) NULL,
    [Cidade] NVARCHAR(250) NULL,
    [Bairro] NVARCHAR(250) NULL,
    [Endereco] NVARCHAR(250) NULL,
    [Complemento] VARCHAR(80) NULL,
    [Telefone] NVARCHAR(101) NULL,
    [Email] NVARCHAR(250) NULL,
    [codSIAC] INT NULL,
    [CNPJValido] VARCHAR(50) NULL,
    [FlagImporta] CHAR(1) NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[DELTA_LOG_BAIRRO] (
    [BAI_NU] FLOAT NOT NULL,
    [UFE_SG] NVARCHAR(255) NOT NULL,
    [LOC_NU] FLOAT NOT NULL,
    [BAI_NO] NVARCHAR(255) NOT NULL,
    [BAI_NO_ABREV] NVARCHAR(255) NULL,
    [BAI_OPERACAO] NVARCHAR(255) NULL
);

CREATE TABLE [dbo].[DELTA_LOG_CPC] (
    [CPC_NU] FLOAT NOT NULL,
    [UFE_SG] NVARCHAR(255) NOT NULL,
    [LOC_NU] FLOAT NOT NULL,
    [CPC_NO] NVARCHAR(255) NOT NULL,
    [CPC_ENDERECO] NVARCHAR(255) NOT NULL,
    [CEP] FLOAT NULL,
    [CPC_OPERACAO] NVARCHAR(255) NOT NULL,
    [CEP_ANT] NVARCHAR(255) NULL
);

CREATE TABLE [dbo].[DELTA_LOG_GRANDE_USUARIO] (
    [GRU_NU] FLOAT NOT NULL,
    [UFE_SG] NVARCHAR(255) NOT NULL,
    [LOC_NU] FLOAT NOT NULL,
    [BAI_NU] FLOAT NOT NULL,
    [LOG_NU] FLOAT NULL,
    [GRU_NO] NVARCHAR(255) NOT NULL,
    [GRU_ENDERECO] NVARCHAR(255) NOT NULL,
    [CEP] FLOAT NULL,
    [GRU_NO_ABREV] NVARCHAR(255) NULL,
    [GRU_OPERACAO] NVARCHAR(255) NOT NULL,
    [CEP_ANT] FLOAT NULL
);

CREATE TABLE [dbo].[DELTA_LOG_LOCALIDADE] (
    [LOC_NU] FLOAT NOT NULL,
    [UFE_SG] NVARCHAR(255) NOT NULL,
    [LOC_NO] NVARCHAR(255) NOT NULL,
    [CEP] FLOAT NULL,
    [LOC_IN_SIT] FLOAT NOT NULL,
    [LOC_IN_TIPO_LOC] NVARCHAR(255) NOT NULL,
    [LOC_NU_SUB] FLOAT NULL,
    [LOC_NO_ABREV] NVARCHAR(255) NOT NULL,
    [MUN_NU] NVARCHAR(255) NULL,
    [LOC_OPERACAO] NVARCHAR(255) NOT NULL,
    [CEP_ANT] FLOAT NULL
);

CREATE TABLE [dbo].[DELTA_LOG_LOGRADOURO] (
    [LOG_NU] FLOAT NOT NULL,
    [UFE_SG] NVARCHAR(255) NOT NULL,
    [LOC_NU] FLOAT NOT NULL,
    [BAI_NU_INI] FLOAT NOT NULL,
    [BAI_NU_FIM] FLOAT NULL,
    [LOG_NO] NVARCHAR(255) NOT NULL,
    [LOG_COMPLEMENTO] NVARCHAR(255) NULL,
    [CEP] FLOAT NULL,
    [TLO_TX] NVARCHAR(255) NOT NULL,
    [LOG_STA_TLO] NVARCHAR(255) NULL,
    [LOG_NO_ABREV] NVARCHAR(255) NULL,
    [LOG_OPERACAO] NVARCHAR(255) NOT NULL,
    [CEP_ANT] FLOAT NULL
);

CREATE TABLE [dbo].[DELTA_LOG_UNID_OPER] (
    [UOP_NU] FLOAT NOT NULL,
    [UFE_SG] NVARCHAR(255) NOT NULL,
    [LOC_NU] FLOAT NOT NULL,
    [BAI_NU] FLOAT NOT NULL,
    [LOG_NU] FLOAT NULL,
    [UOP_NO] NVARCHAR(255) NOT NULL,
    [UOP_ENDERECO] NVARCHAR(255) NOT NULL,
    [CEP] FLOAT NULL,
    [UOP_IN_CP] NVARCHAR(255) NOT NULL,
    [UOP_NO_ABREV] NVARCHAR(255) NULL,
    [UOP_OPERACAO] NVARCHAR(255) NOT NULL,
    [CEP_ANT] FLOAT NULL
);

CREATE TABLE [dbo].[Dependentes] (
    [CodFuncionario] INT NOT NULL,
    [CodDependente] INT NOT NULL
);

CREATE TABLE [dbo].[DespesaCadEve] (
    [codcadevento] INT NOT NULL,
    [codgrupodesp] INT NOT NULL,
    [coditemdesp] INT NOT NULL,
    [indqtddesp] VARCHAR(12) NULL,
    [qtddesp] INT NULL,
    [precodesp] NUMERIC(11,2) NULL,
    [IndQtdDespesa] INT NULL,
    [CodSebrae] INT NOT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[DespesaEvento] (
    [codevento] INT NOT NULL,
    [codgrupodesp] INT NOT NULL,
    [coditemdesp] INT NOT NULL,
    [indqtddesp] VARCHAR(12) NULL,
    [qtddesp] INT NULL,
    [precodesp] NUMERIC(11,2) NULL,
    [IndQtdDespesa] INT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL,
    [Situacao] CHAR(1) NOT NULL
);

CREATE TABLE [dbo].[Dimensao] (
    [CodDimensao] INT NOT NULL,
    [DescDimensao] VARCHAR(100) NOT NULL
);

CREATE TABLE [dbo].[DimensaoMatriz] (
    [CodDimensao] SMALLINT NOT NULL,
    [DescDimensao] VARCHAR(80) NOT NULL,
    [Conceito] TEXT NULL,
    [IndReflexa] TINYINT NULL,
    [Situacao] TINYINT NOT NULL,
    [TipoProcesso] TINYINT NULL
);

CREATE TABLE [dbo].[Direito] (
    [aplicacaoCodigo] INT NOT NULL,
    [direitoCodigo] INT NOT NULL,
    [direitoDescricao] VARCHAR(255) NULL,
    [DescricaoMenu] VARCHAR(255) NULL,
    [TpDireitoCodigo] INT NULL,
    [TelaChamada] VARCHAR(500) NULL,
    [TipoDireito] CHAR(1) NOT NULL
);

CREATE TABLE [dbo].[DOCUMENTOCONTRATUAL] (
    [Numero] INT NOT NULL,
    [Ano] INT NOT NULL,
    [TipoDocumento] CHAR(1) NOT NULL,
    [Descricao] VARCHAR(255) NULL,
    [Inicio] DATETIME NULL,
    [Final] DATETIME NULL,
    [ValorOriginal] FLOAT NULL,
    [ValorAtual] FLOAT NULL,
    [DataAssinatura] DATETIME NULL,
    [CodUnidadeoperacional] INT NULL,
    [CodPlanoTrabalho] INT NULL,
    [Cedente] INT NOT NULL,
    [CodProduto] INT NULL,
    [CodTecnico] INT NULL
);

CREATE TABLE [dbo].[DSB_Acessos] (
    [ID] BIGINT NOT NULL,
    [IdSessao] VARCHAR(MAX) NULL,
    [Ip] VARCHAR(20) NULL,
    [DataInicioSessao] DATETIME NULL,
    [UserAgent] VARCHAR(MAX) NULL
);

CREATE TABLE [dbo].[DSB_Comunicacao_UF] (
    [Id] INT NOT NULL,
    [CodSebrae] INT NULL,
    [Data] DATETIME NULL,
    [Comunicacao] INT NULL,
    [MsgErro] VARCHAR(8000) NULL
);

CREATE TABLE [dbo].[DSB_ContatoUF] (
    [ID] INT NOT NULL,
    [CodSebrae] INT NULL,
    [NomeContato] VARCHAR(120) NOT NULL,
    [EmailContato] VARCHAR(255) NOT NULL,
    [Ativo] BIT NOT NULL
);

CREATE TABLE [dbo].[DSB_CONTROLE_VERSAO] (
    [ID_CONTROLE_VERSAO] BIGINT NOT NULL,
    [ID_SISTEMA] INT NOT NULL,
    [ID_VERSAO] INT NOT NULL,
    [ID_COD_SEBRAE] INT NOT NULL,
    [DS_VERSAO] VARCHAR(20) NOT NULL,
    [DT_INSTALACAO] DATETIME NOT NULL,
    [DT_ATUALIZACAO] DATETIME NULL,
    [DT_CONSULTA] DATETIME NULL
);

CREATE TABLE [dbo].[DSB_Erros_Elmah] (
    [CodSebrae] INT NULL,
    [Host] NVARCHAR(100) NULL,
    [Type] NVARCHAR(200) NULL,
    [Source] NVARCHAR(120) NULL,
    [Message] NVARCHAR(1000) NULL,
    [TimeUtc] DATETIME NULL,
    [Data] DATE NULL,
    [VersaoSAS] VARCHAR(20) NULL,
    [SiglaUF] VARCHAR(2) NULL
);

CREATE TABLE [dbo].[dsb_qtde_log_replicacao] (
    [ID] INT NOT NULL,
    [DataProcessamento] DATETIME NULL,
    [qtd_registros] INT NULL
);

CREATE TABLE [dbo].[dummyLogTrans] (
    [ID] CHAR(8000) NULL
);

CREATE TABLE [dbo].[EAD_SP_Eventos] (
    [Titulo Evento] NVARCHAR(255) NULL,
    [Codigo Siac] NVARCHAR(255) NULL
);

CREATE TABLE [dbo].[Edicao] (
    [CodEdicao] INT NOT NULL,
    [DescEdicao] VARCHAR(30) NULL,
    [Dt_Fechamento] DATETIME NULL,
    [Dt_Publicacao] DATETIME NULL
);

CREATE TABLE [dbo].[edicaobolsa] (
    [codedicao] INT NOT NULL,
    [descedicao] VARCHAR(30) NOT NULL,
    [dt_inicial] SMALLDATETIME NOT NULL,
    [dt_final] SMALLDATETIME NOT NULL
);

CREATE TABLE [dbo].[ELMAH_Error] (
    [ErrorId] UNIQUEIDENTIFIER NOT NULL,
    [Application] NVARCHAR(60) NOT NULL,
    [Host] NVARCHAR(50) NOT NULL,
    [Type] NVARCHAR(100) NOT NULL,
    [Source] NVARCHAR(60) NOT NULL,
    [Message] NVARCHAR(500) NOT NULL,
    [User] NVARCHAR(50) NOT NULL,
    [StatusCode] INT NOT NULL,
    [TimeUtc] DATETIME NOT NULL,
    [Sequence] INT NOT NULL,
    [AllXml] NTEXT NOT NULL
);

CREATE TABLE [dbo].[EmpFranquia] (
    [CodParceiro] INT NOT NULL,
    [DataInicio] SMALLDATETIME NULL,
    [QtdUnidOper] SMALLINT NULL,
    [QtdUnidFranq] SMALLINT NULL,
    [AreaMinimaExig] INT NULL,
    [IndExperiencia] VARCHAR(3) NULL,
    [QtdMinimaEmpreg] SMALLINT NULL,
    [ValFranquia] NUMERIC(11,2) NULL,
    [ValPropaganda] NUMERIC(11,2) NULL,
    [PerRoyalties] NUMERIC(4,2) NULL,
    [ValCapitalInic] NUMERIC(11,2) NULL,
    [ValCapitalGiro] NUMERIC(11,2) NULL,
    [ValPrevFaturam] NUMERIC(11,2) NULL,
    [PrazoPrevRetorno] SMALLINT NULL,
    [DataAtualiz] SMALLDATETIME NULL,
    [IndExp] BIT NOT NULL
);

CREATE TABLE [dbo].[Empresas_Exportadoras_2015] (
    [MINISTÉRIO DO DESENVOLVIMENTO, INDÚSTRIA E COMÉRCIO EXTERIOR] NVARCHAR(255) NULL,
    [F2] NVARCHAR(255) NULL,
    [F3] NVARCHAR(255) NULL,
    [F4] NVARCHAR(255) NULL,
    [F5] NVARCHAR(255) NULL,
    [F6] NVARCHAR(255) NULL,
    [F7] NVARCHAR(255) NULL,
    [F8] NVARCHAR(255) NULL,
    [F9] NVARCHAR(255) NULL
);

CREATE TABLE [dbo].[Endereco] (
    [CodParceiro] INT NOT NULL,
    [NumSeqEnd] INT NOT NULL,
    [EndCorresp] CHAR(3) NOT NULL,
    [CodLogr] SMALLINT NULL,
    [DescEndereco] VARCHAR(150) NULL,
    [Numero] VARCHAR(6) NULL,
    [Complemento] VARCHAR(70) NULL,
    [CodBairro] INT NULL,
    [CodCid] INT NULL,
    [CodEst] SMALLINT NULL,
    [CodPais] SMALLINT NULL,
    [Cep] INT NULL,
    [EndInternacional] VARCHAR(250) NULL,
    [IndCorrespond] BIT NOT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL,
    [principal] BIT NULL
);

CREATE TABLE [dbo].[EntidadeParc] (
    [CodEntidadeParc] INT NOT NULL,
    [TpEntidadeParc] TINYINT NOT NULL
);

CREATE TABLE [dbo].[EntidadeParceiraSebrae] (
    [ID] BIGINT NOT NULL,
    [CodParceiro] INT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[EntidadeParceiraSebrae_bkp] (
    [ID] BIGINT NOT NULL,
    [CodParceiro] INT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[EntradaMaterial] (
    [CodEntradaMaterial] INT NOT NULL,
    [CodTpMovEstoque] TINYINT NOT NULL,
    [CodUnidOp] INT NOT NULL,
    [CodProduto] INT NOT NULL,
    [CodFornecedor] INT NULL,
    [CodPedidoCompra] INT NULL,
    [NumNotaFiscal] INT NULL,
    [DataFaturamento] DATETIME NULL,
    [DataEntrada] DATETIME NOT NULL,
    [VlTotalProduto] FLOAT NULL,
    [VlTotalservico] FLOAT NULL,
    [VlTotalIss] FLOAT NULL,
    [VlTotalIpi] FLOAT NULL,
    [VlTotalIcms] FLOAT NULL,
    [VlTotalFrete] FLOAT NULL,
    [VlOutrasDespesas] FLOAT NULL,
    [VlDesconto] FLOAT NULL,
    [Status] TINYINT NULL
);

CREATE TABLE [dbo].[EntradaTitulo] (
    [CodEntradaTitulo] INT NOT NULL,
    [CodTipoMovTitulo] TINYINT NOT NULL,
    [CodFornecedor] INT NOT NULL,
    [CodBalcaoCDI] INT NOT NULL,
    [NumNFFornecedor] INT NULL,
    [DataEntrada] DATETIME NOT NULL,
    [DataConclusao] DATETIME NULL,
    [VlProduto] FLOAT NOT NULL,
    [VlFrete] FLOAT NULL,
    [VlICMS] FLOAT NULL,
    [VlDesconto] FLOAT NULL,
    [SituacaoEntrada] TINYINT NOT NULL,
    [Status] TINYINT NOT NULL
);

CREATE TABLE [dbo].[Equipamento] (
    [CodEquipamento] INT NOT NULL,
    [CodNatureza] INT NOT NULL,
    [CodProdutoHD] INT NOT NULL,
    [NumPatrimonio] VARCHAR(20) NULL,
    [NumSerie] VARCHAR(20) NULL,
    [DataCompra] DATETIME NULL,
    [PerGarantia] INT NULL,
    [CodUniOp] INT NULL,
    [Matricula] INT NULL,
    [Ramal] INT NULL,
    [DescEquipamento] VARCHAR(150) NULL,
    [Fone] VARCHAR(14) NULL
);

CREATE TABLE [dbo].[Escolaridade] (
    [CodGrauEscol] SMALLINT NOT NULL,
    [DescGrauEscol] VARCHAR(50) NOT NULL,
    [Situacao] CHAR(1) NULL,
    [rowguid] UNIQUEIDENTIFIER NULL
);

CREATE TABLE [dbo].[EstacaoPesquisa] (
    [CodParceiro] INT NOT NULL,
    [Data] SMALLDATETIME NOT NULL,
    [HoraInicial] DATETIME NOT NULL,
    [HoraFinal] DATETIME NULL,
    [Tempo] INT NULL
);

CREATE TABLE [dbo].[Estado] (
    [CodEst] SMALLINT NOT NULL,
    [DescEst] VARCHAR(30) NOT NULL,
    [AbrevEst] VARCHAR(3) NOT NULL,
    [CodPais] SMALLINT NOT NULL,
    [AreaOcup] INT NULL,
    [Populacao] INT NULL,
    [IndAtuEst] VARCHAR(3) NOT NULL,
    [DataAtualiz] SMALLDATETIME NULL,
    [Fonte] VARCHAR(50) NULL,
    [IndAtualizacao] BIT NOT NULL,
    [CodRegiao] INT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL,
    [SITUACAO] BIT NOT NULL
);

CREATE TABLE [dbo].[ESTADO_2205] (
    [CodEst] SMALLINT NOT NULL,
    [DescEst] VARCHAR(30) NOT NULL,
    [AbrevEst] VARCHAR(3) NOT NULL,
    [CodPais] SMALLINT NOT NULL,
    [AreaOcup] INT NULL,
    [Populacao] INT NULL,
    [IndAtuEst] VARCHAR(3) NOT NULL,
    [DataAtualiz] SMALLDATETIME NULL,
    [Fonte] VARCHAR(50) NULL,
    [IndAtualizacao] BIT NOT NULL,
    [CodRegiao] INT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL,
    [SITUACAO] BIT NOT NULL
);

CREATE TABLE [dbo].[EstoqueTitulo] (
    [CodBalcaoCDI] INT NOT NULL,
    [CodTitulo] INT NOT NULL,
    [QtdFisica] FLOAT NOT NULL,
    [QtdIdeal] FLOAT NULL,
    [QtdMinima] FLOAT NULL,
    [IndDefault] TINYINT NULL,
    [Status] TINYINT NULL
);

CREATE TABLE [dbo].[Evento] (
    [codevento] INT NOT NULL,
    [codcadevento] INT NULL,
    [CodprodutoPortfolio] INT NULL,
    [codprod] INT NOT NULL,
    [codunidop] INT NOT NULL,
    [carghor] FLOAT NULL,
    [percfreqmin] INT NULL,
    [qtdlimdiareserv] INT NULL,
    [qtdmaxpart] INT NOT NULL,
    [qtdminpagantes] INT NULL,
    [qtdinscritos] INT NOT NULL,
    [qtdreservas] INT NULL,
    [qtdaprov] INT NULL,
    [numseqavaliacao] INT NULL,
    [dataabertura] SMALLDATETIME NULL,
    [datainicevento] SMALLDATETIME NULL,
    [datafimevento] SMALLDATETIME NULL,
    [horarioinic] SMALLDATETIME NULL,
    [horariofin] SMALLDATETIME NULL,
    [duracaoaula] VARCHAR(5) NULL,
    [valorevento] NUMERIC(11,2) NOT NULL,
    [custoevento] NUMERIC(11,2) NULL,
    [indevefechado] VARCHAR(3) NOT NULL,
    [indsitevento] VARCHAR(15) NOT NULL,
    [observacao] VARCHAR(1000) NULL,
    [codautorel] INT NOT NULL,
    [codreserva] INT NULL,
    [usuariocan] VARCHAR(8) NULL,
    [datacan] SMALLDATETIME NULL,
    [motivocan] VARCHAR(250) NULL,
    [duraula] FLOAT NOT NULL,
    [indfechado] BIT NOT NULL,
    [situacao] TINYINT NOT NULL,
    [Programa] TEXT NULL,
    [UsuarioResp] INT NULL,
    [IndAvaliarTec] TINYINT NULL,
    [CodSol] UNIQUEIDENTIFIER NULL,
    [CodObj] INT NULL,
    [CodAB] SMALLINT NULL,
    [CodAE] UNIQUEIDENTIFIER NULL,
    [ANO] INT NULL,
    [IndExportar] TINYINT NULL,
    [CodMunicipio] INT NULL,
    [UsuarioConsol] INT NULL,
    [TituloEvento] VARCHAR(255) NULL,
    [CodSebrae] INT NOT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL,
    [CodEntidade] INT NULL,
    [CodTipoEvento] INT NULL,
    [SituacaoSolicitacao] CHAR(1) NULL
);

CREATE TABLE [dbo].[Evento_exclusao] (
    [codevento] INT NOT NULL,
    [codCadEvento] INT NULL,
    [codProdutoPortfolio] INT NULL,
    [codprod] INT NOT NULL,
    [codunidop] INT NOT NULL,
    [carghor] FLOAT NULL,
    [percfreqmin] INT NULL,
    [qtdlimdiareserv] INT NULL,
    [qtdmaxpart] INT NOT NULL,
    [qtdminpagantes] INT NULL,
    [qtdinscritos] INT NOT NULL,
    [qtdreservas] INT NULL,
    [qtdaprov] INT NULL,
    [numseqavaliacao] INT NULL,
    [dataabertura] SMALLDATETIME NULL,
    [datainicevento] SMALLDATETIME NULL,
    [datafimevento] SMALLDATETIME NULL,
    [horarioinic] SMALLDATETIME NULL,
    [horariofin] SMALLDATETIME NULL,
    [duracaoaula] VARCHAR(5) NULL,
    [valorevento] NUMERIC(11,2) NOT NULL,
    [custoevento] NUMERIC(11,2) NULL,
    [indevefechado] VARCHAR(3) NOT NULL,
    [indsitevento] VARCHAR(15) NOT NULL,
    [observacao] VARCHAR(1000) NULL,
    [codautorel] INT NOT NULL,
    [codreserva] INT NULL,
    [usuariocan] VARCHAR(8) NULL,
    [datacan] SMALLDATETIME NULL,
    [motivocan] VARCHAR(250) NULL,
    [duraula] FLOAT NOT NULL,
    [indfechado] BIT NOT NULL,
    [situacao] TINYINT NOT NULL,
    [Programa] TEXT NULL,
    [UsuarioResp] INT NULL,
    [IndAvaliarTec] TINYINT NULL,
    [CodSol] UNIQUEIDENTIFIER NULL,
    [CodObj] INT NULL,
    [CodAB] SMALLINT NULL,
    [CodAE] UNIQUEIDENTIFIER NULL,
    [Ano] INT NULL,
    [IndExportar] TINYINT NULL,
    [CodMunicipio] INT NULL,
    [UsuarioConsol] INT NULL,
    [TituloEvento] VARCHAR(255) NULL,
    [CodSebrae] INT NOT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL,
    [CodEntidade] INT NULL,
    [CodTipoEvento] INT NULL,
    [SituacaoSolicitacao] CHAR(1) NULL
);

CREATE TABLE [dbo].[EventoAnexos] (
    [CodEvento] INT NOT NULL,
    [SeqArquivo] INT NOT NULL,
    [NomeArquivo] VARCHAR(255) NOT NULL,
    [Descricao] TEXT NULL,
    [DataHora] DATETIME NOT NULL,
    [Tipo] CHAR(1) NOT NULL,
    [NumContrato] INT NULL
);

CREATE TABLE [dbo].[EventoLogOperacao] (
    [CodEvento] INT NOT NULL,
    [DataHora] DATETIME NOT NULL,
    [Operacao] CHAR(2) NOT NULL,
    [SebraeResp] INT NOT NULL,
    [CodParceiroResp] INT NOT NULL,
    [ParceiroResp] VARCHAR(180) NOT NULL,
    [DescOperacao] TEXT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[EVENTOMC] (
    [CodEventoMC] INT NOT NULL,
    [DescEventoMC] VARCHAR(60) NULL,
    [Local] VARCHAR(60) NULL,
    [DataInicio] DATETIME NULL,
    [DataFinal] DATETIME NULL,
    [EventoFixo] BIT NOT NULL,
    [Objetivo] TEXT NULL,
    [TipoEventoMC] CHAR(1) NULL,
    [PerfilParticipante] TEXT NULL,
    [CodPessoaJ] INT NULL,
    [NumeroParticipantes] INT NULL,
    [CodSetor] INT NULL,
    [CodUnidOp] INT NULL,
    [CodEntidade] INT NULL,
    [Situacao] TINYINT NOT NULL,
    [Ano] INT NULL,
    [CodProjeto] UNIQUEIDENTIFIER NULL,
    [CodAcao] INT NULL,
    [IndTipoApoio] TINYINT NULL,
    [CodSebrae] INT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[EventoMC_SIAD] (
    [CodEventoMC] INT NULL,
    [CodAB] SMALLINT NULL,
    [CodAE] UNIQUEIDENTIFIER NULL,
    [CodSOL] UNIQUEIDENTIFIER NULL,
    [CodOBJ] INT NULL,
    [Ano] INT NULL
);

CREATE TABLE [dbo].[EVENTOMC_TEMA] (
    [CodEventoMC] INT NOT NULL,
    [CodTema] INT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[EventoModulos] (
    [CodEvento] INT NOT NULL,
    [CodModulo] INT NOT NULL,
    [Descricao] VARCHAR(100) NOT NULL,
    [CargaHoraria] FLOAT NULL,
    [Observacao] VARCHAR(500) NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[EventoProcJuridico] (
    [CodEventoProcesso] TINYINT NOT NULL,
    [DescEventoProcesso] VARCHAR(50) NOT NULL,
    [CaractEventoProcesso] VARCHAR(255) NULL,
    [IdentEventoProcesso] VARCHAR(3) NULL,
    [PrzEventoProcesso] TINYINT NULL
);

CREATE TABLE [dbo].[EventosCompra] (
    [CodEventoCompra] INT NOT NULL,
    [DescEventoCompra] VARCHAR(255) NULL,
    [Status] TINYINT NULL
);

CREATE TABLE [dbo].[eventovirtual] (
    [codevevirtual] INT NOT NULL,
    [descevevirtual] VARCHAR(60) NOT NULL,
    [dataregistro] SMALLDATETIME NOT NULL,
    [CodSebrae] INT NOT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[EvtoFeira] (
    [CodEvtoFeira] INT NOT NULL,
    [DescEvtoFeira] VARCHAR(40) NOT NULL,
    [CodPleitoFeira] INT NULL,
    [DataInicio] DATETIME NULL,
    [DataFim] DATETIME NULL,
    [ValorM2] FLOAT NULL,
    [CodUnidOp] INT NOT NULL,
    [CodTipoEvento] INT NULL,
    [IndTipoApoio] TINYINT NULL,
    [CodEvtoPadraoFeira] INT NULL,
    [PublicoVisitante] INT NULL,
    [CodFichaAval] INT NULL,
    [CodEntidade] INT NULL,
    [Situacao] TINYINT NOT NULL,
    [Ano] INT NULL,
    [CodProjeto] UNIQUEIDENTIFIER NULL,
    [CodAcao] INT NULL,
    [DescLocal] VARCHAR(150) NULL,
    [CodSebrae] INT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[EvtoFeira_SIAD] (
    [CodEvtoFeira] INT NULL,
    [CodAB] SMALLINT NULL,
    [CodAE] UNIQUEIDENTIFIER NULL,
    [CodSOL] UNIQUEIDENTIFIER NULL,
    [CodOBJ] SMALLINT NULL,
    [Ano] INT NULL
);

CREATE TABLE [dbo].[EvtoFeira_Tema] (
    [CodEvtoFeira] INT NOT NULL,
    [CodTema] INT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[EvtoPadraoFeira] (
    [CodEvtoPadraoFeira] INT NOT NULL,
    [DescEvtoPadraoFeira] VARCHAR(40) NULL,
    [MesPadrao] TINYINT NULL,
    [CodParceiro] INT NOT NULL,
    [CodUnidOp] INT NULL
);

CREATE TABLE [dbo].[EvtoRoda] (
    [CodEvtoRoda] INT NOT NULL,
    [CodUnidOp] INT NOT NULL,
    [CodProd] INT NOT NULL,
    [DescEvtoRoda] INT NOT NULL,
    [DataIni] SMALLDATETIME NULL,
    [DataFim] SMALLDATETIME NULL,
    [DescEvtoRodaX] VARCHAR(40) NULL
);

CREATE TABLE [dbo].[Exclusoes_HRC_SP] (
    [rowguid] UNIQUEIDENTIFIER NULL
);

CREATE TABLE [dbo].[ExpedicaoMat] (
    [CodRequisicao] INT NOT NULL,
    [DataExpedicao] DATETIME NULL,
    [PrazoEntrega] SMALLINT NULL,
    [CodRequisitante] INT NOT NULL,
    [CodResponsavel] INT NOT NULL,
    [LocalEntrega] VARCHAR(255) NOT NULL,
    [CodFormaEntrega] SMALLINT NOT NULL
);

CREATE TABLE [dbo].[ExpositorFeira] (
    [CodEvtoFeira] INT NOT NULL,
    [CodParceiro] INT NOT NULL,
    [CodComprPartFeira] INT NOT NULL,
    [DataInicio] DATETIME NULL,
    [DataFim] DATETIME NULL,
    [IndAvaliacao] TINYINT NULL,
    [CodigoCNAE] INT NULL,
    [CodConta] INT NULL,
    [CodRepresentante] INT NULL,
    [CodSebrae] INT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[ExpositorStands] (
    [CodEvtoFeira] INT NOT NULL,
    [CodStandEvtoFeira] INT NOT NULL,
    [CodParceiro] INT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[ExtendedEventsLog] (
    [EventID] INT NOT NULL,
    [EventTime] DATETIME NULL,
    [SessionName] NVARCHAR(100) NULL,
    [DatabaseName] NVARCHAR(128) NULL,
    [ClientHost] NVARCHAR(128) NULL,
    [NTUsername] NVARCHAR(128) NULL,
    [SQLText] NVARCHAR(MAX) NULL,
    [CPUTime] INT NULL,
    [LogicalReads] INT NULL,
    [NumberOfRows] INT NULL
);

CREATE TABLE [dbo].[FaixaEtaria] (
    [CodFaixaEtaria] INT NOT NULL,
    [DescFaixaEtaria] VARCHAR(15) NOT NULL,
    [FaixaMIN] TINYINT NULL,
    [FaixaMAX] TINYINT NULL
);

CREATE TABLE [dbo].[FaixaIndicador] (
    [CodIndicador] INT NOT NULL,
    [CodTabulacao] TINYINT NOT NULL,
    [CodFaixa] TINYINT NOT NULL,
    [DescFaixa] VARCHAR(30) NOT NULL,
    [CodElemInicial] INT NOT NULL,
    [CodElemFinal] INT NULL
);

CREATE TABLE [dbo].[FaixaValores] (
    [CodFaixa] SMALLINT NOT NULL,
    [CodIndicador] INT NOT NULL,
    [Nome] VARCHAR(25) NOT NULL,
    [ValorIni] FLOAT NULL,
    [ValorFim] FLOAT NULL
);

CREATE TABLE [dbo].[FamiliaProdutoPortfolio] (
    [CodFamiliaProduto] SMALLINT NOT NULL,
    [CodFamiliaProdutoEstruturado] VARCHAR(2) NOT NULL,
    [NomeFamiliaProduto] VARCHAR(50) NOT NULL,
    [DescFamiliaProduto] VARCHAR(500) NULL,
    [IndComplementoCadastro] CHAR(1) NULL,
    [CodAplicacao] INT NULL,
    [Situacao] CHAR(1) NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[FAQInternet] (
    [CodFAQ] INT NOT NULL,
    [PerguntaPadrao] TEXT NOT NULL,
    [RespostaPadrao] TEXT NOT NULL,
    [CodFocoTematico] INT NULL,
    [DataCadastro] DATETIME NOT NULL,
    [DataAtualizacao] DATETIME NOT NULL,
    [CodResponsavel] INT NOT NULL,
    [SituacaoPublicacao] CHAR(1) NULL,
    [Situacao] CHAR(1) NULL,
    [CodRespostaInternet] INT NULL
);

CREATE TABLE [dbo].[FaseMigracaoDekassegui] (
    [CodFase] INT NOT NULL,
    [DescFase] VARCHAR(60) NOT NULL,
    [Situacao] CHAR(1) NULL
);

CREATE TABLE [dbo].[FasesBEmp] (
    [CodFaseBEmp] INT NOT NULL,
    [DescFaseBEmp] VARCHAR(40) NOT NULL,
    [SeqFaseBEmp] SMALLINT NULL,
    [Capacitacao] BIT NOT NULL
);

CREATE TABLE [dbo].[Faturamento] (
    [CodFaturamento] CHAR(1) NOT NULL,
    [DescFaturamento] VARCHAR(20) NOT NULL
);

CREATE TABLE [dbo].[FechamentoEstoqueTitulo] (
    [DataFechamento] DATETIME NOT NULL,
    [CodBalcaoCDI] INT NOT NULL,
    [CodTitulo] INT NOT NULL,
    [QtdFisica] FLOAT NOT NULL,
    [PrecCusto] FLOAT NULL,
    [PrecVenda] FLOAT NULL
);

CREATE TABLE [dbo].[FechamentoMaterial] (
    [DataFechamento] DATETIME NOT NULL,
    [CodMaterial] INT NOT NULL,
    [QtdFisica] FLOAT NOT NULL,
    [QtdReservada] FLOAT NOT NULL,
    [VlMedio] NUMERIC(15,6) NOT NULL
);

CREATE TABLE [dbo].[FichaAvaliacao] (
    [CodFichaAval] INT NOT NULL,
    [DescFichaAval] VARCHAR(80) NULL,
    [CodSebrae] INT NOT NULL,
    [CodAplicacao] INT NOT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL,
    [Situacao] CHAR(1) NOT NULL
);

CREATE TABLE [dbo].[FichaAvaliacaoMomentoVida] (
    [CodFichaAval] INT NOT NULL,
    [CodMomentoVida] TINYINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[FichaAvaliacaoSetorPrioritario] (
    [CodFichaAval] INT NOT NULL,
    [CodSetorPrioritario] INT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[FilaEspera] (
    [Data] SMALLDATETIME NOT NULL,
    [Hora] DATETIME NOT NULL,
    [Pessoa] INT NOT NULL,
    [Prioridade] SMALLINT NOT NULL,
    [Status] CHAR(1) NOT NULL,
    [TempoEspera] INT NULL,
    [HoraSaidaFila] DATETIME NULL,
    [Ordem] SMALLINT NULL,
    [CodUnidOperacional] INT NULL
);

CREATE TABLE [dbo].[filaesperaFaseI] (
    [codunidoper] INT NOT NULL,
    [datahoracheg] DATETIME NOT NULL,
    [datahoraatend] DATETIME NULL,
    [nomecliente] VARCHAR(40) NOT NULL,
    [codigo] INT NULL,
    [cpf] NUMERIC(15,0) NULL,
    [identidade] VARCHAR(15) NULL,
    [orgemis] VARCHAR(10) NULL,
    [codatend] INT NULL,
    [controlerede] BIT NOT NULL
);

CREATE TABLE [dbo].[FiltroLocal] (
    [CodPais] INT NOT NULL,
    [CodEst] INT NULL,
    [CodCid] INT NULL,
    [CodParceiro] INT NOT NULL
);

CREATE TABLE [dbo].[FiltroPorte] (
    [CodPorte] VARCHAR(10) NULL,
    [CodParceiro] INT NOT NULL
);

CREATE TABLE [dbo].[FiltroSetor] (
    [CodClass] SMALLINT NOT NULL,
    [CodAtivEcon] CHAR(5) NOT NULL,
    [CodParceiro] INT NOT NULL,
    [CodCnaeFiscal] VARCHAR(2) NULL
);

CREATE TABLE [dbo].[FocoTematicoProdutoPortfolio] (
    [CodFocoTematico] SMALLINT NOT NULL,
    [NomeFocoTematico] VARCHAR(50) NULL,
    [DescFocoTematico] VARCHAR(500) NULL,
    [Situacao] CHAR(1) NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[Fonte] (
    [CodFonte] SMALLINT NOT NULL,
    [DescFonte] VARCHAR(255) NOT NULL,
    [Ind_SEBRAE] BIT NOT NULL
);

CREATE TABLE [dbo].[FonteInformacao] (
    [CodFonteInformacao] INT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [DescFonteInformacao] VARCHAR(60) NOT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[FonteInformacaoMomentoVida] (
    [CodFonteInformacao] INT NOT NULL,
    [CodMomentoVida] TINYINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[FonteInformacaoSetorPrioritario] (
    [CodFonteInformacao] INT NOT NULL,
    [CodSetorPrioritario] INT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[FormaAquisicaoProduto] (
    [CodFormaAquisicao] INT NOT NULL,
    [DescFormaAquisicao] VARCHAR(80) NOT NULL,
    [TipoFormaAquisicao] CHAR(1) NOT NULL,
    [Status] TINYINT NULL
);

CREATE TABLE [dbo].[FormaAssinatura] (
    [CodFormaAssinatura] INT NOT NULL,
    [DescFormaAssinatura] VARCHAR(50) NULL,
    [Valor] FLOAT NULL,
    [QtdDiasDivulgacao] SMALLINT NULL,
    [QtdEdicDivulgacao] TINYINT NULL,
    [QtdEdicRecebimento] TINYINT NULL,
    [IndMalaDireta] CHAR(1) NULL
);

CREATE TABLE [dbo].[FormaAtendimento] (
    [Codigo] INT NOT NULL,
    [Descricao] CHAR(255) NULL
);

CREATE TABLE [dbo].[FormaContato] (
    [CodFormaContato] INT NOT NULL,
    [DescFormaContato] VARCHAR(255) NULL,
    [Situacao] CHAR(1) NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[FormaPagto] (
    [CodFormaPagto] TINYINT NOT NULL,
    [DescFormaPagto] VARCHAR(50) NOT NULL,
    [Status] TINYINT NOT NULL
);

CREATE TABLE [dbo].[FormularioEletronicoBIA] (
    [CodFormEletronico] INT NOT NULL,
    [NomeFormEletronico] VARCHAR(80) NOT NULL,
    [UrlFormEletronico] VARCHAR(255) NOT NULL,
    [Identificacao] VARCHAR(80) NOT NULL,
    [Automatico] CHAR(1) NOT NULL
);

CREATE TABLE [dbo].[Fornecedor] (
    [CodFornecedor] INT NOT NULL,
    [TipoPessoa] TINYINT NOT NULL,
    [CodContTecnico] INT NULL,
    [CodContComercial] INT NULL,
    [CodRetencaoIR] INT NULL,
    [CodPortador] INT NULL,
    [CodBanco] INT NULL,
    [CodAgencia] INT NULL,
    [CodConta] INT NULL,
    [Titular] VARCHAR(50) NULL,
    [PracaPagto] INT NULL,
    [CidadePagto] INT NOT NULL,
    [SitDirfFornecedor] VARCHAR(28) NULL,
    [UfPagto] INT NULL
);

CREATE TABLE [dbo].[Funcionario] (
    [CodFuncionario] INT NOT NULL,
    [Matricula] INT NOT NULL,
    [CodUnidOp] INT NOT NULL,
    [CodUnidNeg] INT NULL,
    [TipoFuncionario] TINYINT NOT NULL,
    [CodCargo] INT NULL,
    [DataIniContrato] DATETIME NOT NULL,
    [DataFimContrato] DATETIME NULL,
    [DataDesligamento] DATETIME NULL,
    [FlCoordenador] TINYINT NULL,
    [FlAssistMedica] TINYINT NULL,
    [CodEntidadeParc] INT NULL,
    [CodCursoPessoal] INT NULL,
    [Status] TINYINT NULL
);

CREATE TABLE [dbo].[FuncoesAudit] (
    [Cod_aplic] VARCHAR(15) NOT NULL,
    [Auditar] TINYINT NOT NULL,
    [Usuarios] VARCHAR(255) NULL,
    [Unidades] VARCHAR(255) NULL
);

CREATE TABLE [dbo].[GerarUniverso] (
    [Codigo1] VARCHAR(20) NULL,
    [Codigo2] INT NULL,
    [codigo3] INT NULL,
    [Tipo] INT NULL
);

CREATE TABLE [dbo].[GerarUniversoParceiro] (
    [CodParceiro] INT NULL
);

CREATE TABLE [dbo].[GestorProjeto] (
    [CodParceiro] INT NOT NULL,
    [CodProjeto] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[GetErrorInfo] (
    [ERROR_LINE] INT NULL,
    [ERROR_MESSAGE] NVARCHAR(4000) NULL,
    [ERROR_NUMBER] INT NULL,
    [ERROR_STATE] INT NULL,
    [ERROR_PROCEDURE] NVARCHAR(128) NULL,
    [ERROR_SEVERITY] INT NULL,
    [DataHora] DATETIME NULL,
    [Visto] BIT NULL,
    [XMLEntrada] XML NULL
);

CREATE TABLE [dbo].[GrandeGrupo] (
    [CodGdGrupo] INT NOT NULL,
    [DescGdGrupo] VARCHAR(40) NOT NULL
);

CREATE TABLE [dbo].[Grupo] (
    [grupoCodigo] INT NOT NULL,
    [grupoDescricao] VARCHAR(50) NULL,
    [tipo] TINYINT NULL,
    [CodSebrae] TINYINT NOT NULL,
    [TipoDireito] CHAR(1) NOT NULL,
    [PerfilBIA] CHAR(1) NOT NULL
);

CREATE TABLE [dbo].[Grupo_Audit] (
    [CodAplic] VARCHAR(15) NOT NULL,
    [CodGrupo] INT NOT NULL
);

CREATE TABLE [dbo].[grupoavaliacao] (
    [codgrupo] INT NOT NULL,
    [descgrupo] VARCHAR(60) NOT NULL,
    [TipoAvaliacao] TINYINT NULL,
    [CodSebrae] INT NOT NULL,
    [CodAplicacao] INT NOT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[GrupoDespesa] (
    [codgrupodesp] INT NOT NULL,
    [descgrupodesp] VARCHAR(60) NOT NULL,
    [indmatalmox] VARCHAR(3) NOT NULL,
    [indmaterialalmox] BIT NOT NULL,
    [situacao] CHAR(1) NOT NULL
);

CREATE TABLE [dbo].[GrupoDireito] (
    [grupoCodigo] INT NOT NULL,
    [aplicacaoCodigo] INT NOT NULL,
    [direitoCodigo] INT NOT NULL
);

CREATE TABLE [dbo].[GrupoEmp] (
    [CodGrupEmp] SMALLINT NOT NULL,
    [DescGrupEmp] VARCHAR(30) NOT NULL,
    [TipoGrupEmp] TINYINT NULL
);

CREATE TABLE [dbo].[GrupoMaterial] (
    [CodGrupoMaterial] VARCHAR(5) NOT NULL,
    [DescGrupoMaterial] VARCHAR(30) NOT NULL,
    [CodGrpMaterial] INT NOT NULL
);

CREATE TABLE [dbo].[GrupoParceiro] (
    [CodGrupoParceiro] INT NOT NULL,
    [DescGrupoParceiro] VARCHAR(80) NOT NULL,
    [Situacao] CHAR(1) NULL
);

CREATE TABLE [dbo].[GrupoQuestoes] (
    [CodGrupo] INT NOT NULL,
    [DescGrupo] VARCHAR(255) NULL
);

CREATE TABLE [dbo].[GrupoReqPessoal] (
    [CodGrupoReq] TINYINT NOT NULL,
    [DescGrupoReq] VARCHAR(80) NOT NULL,
    [ExLiberacao] TINYINT NOT NULL,
    [ExAutorizacao] TINYINT NOT NULL,
    [ExCompDespesa] TINYINT NOT NULL,
    [ExImpressao] TINYINT NOT NULL,
    [DispCoordenador] TINYINT NOT NULL,
    [CodUnidOp] INT NULL,
    [CodCoordenador] INT NULL
);

CREATE TABLE [dbo].[GrupoSite] (
    [CodGrupo] INT NOT NULL,
    [Descricao] VARCHAR(30) NOT NULL
);

CREATE TABLE [dbo].[GrupoUsuario] (
    [grupoCodigo] INT NOT NULL,
    [usuarioLogin] VARCHAR(50) NOT NULL
);

CREATE TABLE [dbo].[Guiche] (
    [Codigo] INT NOT NULL,
    [Descricao] CHAR(250) NOT NULL,
    [CodUnidOp] INT NOT NULL
);

CREATE TABLE [dbo].[HelpDesk] (
    [CodHelpDesk] INT NOT NULL,
    [CodUsuario] INT NULL,
    [CodTecnicoResp] INT NULL,
    [CodEquipamento] INT NULL,
    [CodNatureza] INT NULL,
    [CodProdutoHD] INT NULL,
    [CodProblema] INT NULL,
    [CodSolucaoPadrao] INT NULL,
    [Data] DATETIME NULL,
    [DataInicio] DATETIME NULL,
    [Previsao] VARCHAR(20) NULL,
    [DescHelpDesk] VARCHAR(255) NULL,
    [DescConclusao] VARCHAR(255) NULL,
    [CodTecnicoConclusao] INT NULL,
    [TempoConclusao] INT NULL,
    [CodSituacao] INT NULL,
    [DataConclusao] DATETIME NULL,
    [Prioridade] TINYINT NULL
);

CREATE TABLE [dbo].[Hist_1828_Ce] (
    [CodSebrae] INT NULL,
    [CodCliente] INT NULL,
    [DataHoraInicioRealizacao] DATETIME NULL
);

CREATE TABLE [dbo].[Hist_1828_MA] (
    [CodSebrae] INT NULL,
    [CodCliente] INT NULL,
    [DataHoraInicioRealizacao] DATETIME NULL
);

CREATE TABLE [dbo].[Hist_1828_PR] (
    [CodSebrae] INT NULL,
    [CodCliente] INT NULL,
    [DataHoraInicioRealizacao] DATETIME NULL
);

CREATE TABLE [dbo].[Hist_1829_MA] (
    [CodSebrae] INT NULL,
    [CodCliente] INT NULL,
    [DataHoraInicioRealizacao] DATETIME NULL
);

CREATE TABLE [dbo].[Hist_1829_PR] (
    [CodSebrae] INT NULL,
    [CodCliente] INT NULL,
    [DataHoraInicioRealizacao] DATETIME NULL
);

CREATE TABLE [dbo].[Hist_1830_MA] (
    [CodSebrae] INT NULL,
    [CodCliente] INT NULL,
    [DataHoraInicioRealizacao] DATETIME NULL
);

CREATE TABLE [dbo].[Hist_1830_PR] (
    [CodSebrae] INT NULL,
    [CodCliente] INT NULL,
    [DataHoraInicioRealizacao] DATETIME NULL
);

CREATE TABLE [dbo].[historico] (
    [CodUnidOper] INT NOT NULL,
    [CodProd] INT NOT NULL,
    [CodTipoServico] INT NOT NULL,
    [Data] DATETIME NOT NULL,
    [SeqHistorico] INT NOT NULL,
    [Descricao] VARCHAR(200) NOT NULL,
    [CodPessoaPF] INT NOT NULL,
    [CodPessoaPJ] INT NULL,
    [CodAplicacao] INT NOT NULL
);

CREATE TABLE [dbo].[historicocliente] (
    [CodAplicacao] INT NOT NULL,
    [CodAtividade] INT NOT NULL,
    [CodPessoaPF] INT NOT NULL,
    [CodPessoaPJ] INT NULL,
    [Data] DATETIME NOT NULL,
    [Descricao] VARCHAR(255) NOT NULL,
    [CodUnidOper] INT NULL,
    [CodProd] INT NULL,
    [CodAtiv] INT NULL
);

CREATE TABLE [dbo].[HistoricoPadraoReferencia] (
    [CodIndicador] INT NOT NULL,
    [DataRegistro] DATETIME NOT NULL,
    [PadraoNA] FLOAT NULL,
    [PadraoUF] FLOAT NULL
);

CREATE TABLE [dbo].[HistoricoRealizacoesCliente] (
    [CodSebrae] INT NOT NULL,
    [CodCliente] INT NOT NULL,
    [DataHoraInicioRealizacao] DATETIME NOT NULL,
    [CodEmpreedimento] INT NULL,
    [DataHoraFimRealizacao] DATETIME NULL,
    [NomeRealizacao] VARCHAR(255) NOT NULL,
    [DescRealizacao] TEXT NOT NULL,
    [CodResponsavel] INT NOT NULL,
    [CodAplicacao] INT NOT NULL,
    [CodRealizacao] BIGINT NOT NULL,
    [TipoRealizacao] VARCHAR(3) NOT NULL,
    [Instrumento] VARCHAR(50) NOT NULL,
    [Abordagem] CHAR(1) NULL,
    [CodRealizacaoComp] BIGINT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL,
    [Ano] INT NULL,
    [CodProjeto] UNIQUEIDENTIFIER NOT NULL,
    [CodAcao] INT NOT NULL,
    [TipoPessoa] CHAR(1) NULL,
    [CodMomentoVida] TINYINT NULL,
    [MesAnoCompetencia] DATETIME NOT NULL,
    [CargaHoraria] DECIMAL(18,2) NULL,
    [Faturam] SMALLINT NULL,
    [CodEntidadeParceira] INT NULL,
    [CodConst] SMALLINT NULL,
    [CategoriaPessoa] SMALLINT NULL,
    [DataEntrada] DATETIME NULL,
    [DataETL] DATETIME NULL,
    [codcategoria] INT NULL,
    [CodSistemaOrigem] INT NULL
);

CREATE TABLE [dbo].[HistoricoRealizacoesCliente_AnosAnteriores] (
    [CodSebrae] INT NOT NULL,
    [CodCliente] INT NOT NULL,
    [DataHoraInicioRealizacao] DATETIME NOT NULL,
    [CodEmpreedimento] INT NULL,
    [DataHoraFimRealizacao] DATETIME NULL,
    [NomeRealizacao] VARCHAR(255) NOT NULL,
    [DescRealizacao] TEXT NOT NULL,
    [CodResponsavel] INT NOT NULL,
    [CodAplicacao] INT NOT NULL,
    [CodRealizacao] BIGINT NULL,
    [TipoRealizacao] VARCHAR(3) NULL,
    [Instrumento] VARCHAR(50) NULL,
    [Abordagem] CHAR(1) NULL,
    [CodRealizacaoComp] BIGINT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL,
    [Ano] INT NULL,
    [CodProjeto] UNIQUEIDENTIFIER NULL,
    [CodAcao] INT NULL,
    [TipoPessoa] CHAR(1) NULL,
    [CodMomentoVida] TINYINT NULL,
    [MesAnoCompetencia] DATETIME NULL,
    [CargaHoraria] DECIMAL(18,2) NULL,
    [Faturam] SMALLINT NULL,
    [CodEntidadeParceira] INT NULL,
    [CodConst] SMALLINT NULL,
    [CategoriaPessoa] SMALLINT NULL,
    [DataEntrada] DATETIME NULL,
    [DataETL] DATETIME NULL,
    [codcategoria] INT NULL,
    [CodSistemaOrigem] INT NULL
);

CREATE TABLE [dbo].[HistoricoRealizacoesCliente_Exclusao] (
    [CodSebrae] INT NOT NULL,
    [CodCliente] INT NOT NULL,
    [DataHoraInicioRealizacao] DATETIME NOT NULL,
    [CodEmpreedimento] INT NULL,
    [DataHoraFimRealizacao] DATETIME NULL,
    [NomeRealizacao] VARCHAR(255) NOT NULL,
    [DescRealizacao] TEXT NOT NULL,
    [CodResponsavel] INT NOT NULL,
    [CodAplicacao] INT NOT NULL,
    [CodRealizacao] BIGINT NULL,
    [TipoRealizacao] VARCHAR(3) NULL,
    [Instrumento] VARCHAR(50) NULL,
    [Abordagem] CHAR(1) NULL,
    [CodRealizacaoComp] BIGINT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL,
    [Ano] INT NULL,
    [CodProjeto] UNIQUEIDENTIFIER NULL,
    [CodAcao] INT NULL,
    [TipoPessoa] CHAR(1) NULL,
    [CodMomentoVida] TINYINT NULL,
    [MesAnoCompetencia] DATETIME NULL,
    [CargaHoraria] DECIMAL(18,2) NULL,
    [Faturam] SMALLINT NULL,
    [CodEntidadeParceira] INT NULL,
    [CodConst] SMALLINT NULL,
    [CategoriaPessoa] SMALLINT NULL,
    [DataEntrada] DATETIME NULL,
    [DataETL] DATETIME NULL,
    [codcategoria] INT NULL,
    [DataExclusao] DATETIME NULL,
    [Replicacao] CHAR(1) NULL,
    [CodSistemaOrigem] INT NULL,
    [CodRealizacao_big] BIGINT NULL,
    [CodRealizacaoComp_big] BIGINT NULL
);

CREATE TABLE [dbo].[HistoricoRealizacoesCliente_OLD] (
    [CodSebrae] INT NOT NULL,
    [CodCliente] INT NOT NULL,
    [DataHoraInicioRealizacao] DATETIME NOT NULL,
    [CodEmpreedimento] INT NULL,
    [DataHoraFimRealizacao] DATETIME NULL,
    [NomeRealizacao] VARCHAR(255) NOT NULL,
    [DescRealizacao] TEXT NOT NULL,
    [CodResponsavel] INT NOT NULL,
    [CodAplicacao] INT NOT NULL,
    [CodRealizacao] INT NOT NULL,
    [TipoRealizacao] VARCHAR(3) NOT NULL,
    [Instrumento] VARCHAR(50) NOT NULL,
    [Abordagem] CHAR(1) NULL,
    [CodRealizacaoComp] INT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL,
    [Ano] INT NULL,
    [CodProjeto] UNIQUEIDENTIFIER NOT NULL,
    [CodAcao] INT NOT NULL,
    [TipoPessoa] CHAR(1) NULL,
    [CodMomentoVida] TINYINT NULL,
    [MesAnoCompetencia] DATETIME NOT NULL,
    [CargaHoraria] DECIMAL(18,2) NULL,
    [Faturam] SMALLINT NULL,
    [CodEntidadeParceira] INT NULL,
    [CodConst] SMALLINT NULL,
    [CategoriaPessoa] SMALLINT NULL,
    [DataEntrada] DATETIME NULL,
    [DataETL] DATETIME NULL,
    [codcategoria] INT NULL,
    [CodSistemaOrigem] INT NULL
);

CREATE TABLE [dbo].[HistoricoRealizacoesCliente_UF] (
    [CodSebrae] INT NOT NULL,
    [CodCliente] INT NOT NULL,
    [DataHoraInicioRealizacao] DATETIME NOT NULL,
    [CodEmpreedimento] INT NULL,
    [DataHoraFimRealizacao] DATETIME NULL,
    [NomeRealizacao] VARCHAR(255) NOT NULL,
    [DescRealizacao] TEXT NOT NULL,
    [CodResponsavel] INT NOT NULL,
    [CodAplicacao] INT NOT NULL,
    [CodRealizacao] INT NULL,
    [TipoRealizacao] VARCHAR(3) NULL,
    [Instrumento] VARCHAR(50) NULL,
    [Abordagem] CHAR(1) NULL,
    [CodRealizacaoComp] INT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL,
    [Ano] INT NULL,
    [CodProjeto] UNIQUEIDENTIFIER NULL,
    [CodAcao] INT NULL,
    [TipoPessoa] CHAR(1) NULL,
    [CodMomentoVida] TINYINT NULL,
    [MesAnoCompetencia] DATETIME NULL,
    [CargaHoraria] DECIMAL(18,2) NULL
);

CREATE TABLE [dbo].[HistoricoRecibo] (
    [NumRecibo] INT NOT NULL,
    [CodUsuario] VARCHAR(8) NOT NULL,
    [ValorRecibo] FLOAT NOT NULL,
    [DataEmissao] SMALLDATETIME NOT NULL,
    [Descricao] VARCHAR(255) NOT NULL,
    [IndCancelado] BIT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[HistoricoUnificacaoCadastroAuto] (
    [CodParceiro_Origem] INT NOT NULL,
    [CodParceiro_Destino] INT NOT NULL,
    [DataAtu_Origem] SMALLDATETIME NOT NULL,
    [DataAtu_Destino] SMALLDATETIME NOT NULL,
    [CodSebrae_Origem] INT NOT NULL,
    [CodSebrae_Destino] INT NOT NULL,
    [TipoParceiro] VARCHAR(1) NOT NULL,
    [CGCCPF] NUMERIC(18,0) NOT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[HorarioEvento] (
    [CodEvento] INT NOT NULL,
    [DataInicio] DATETIME NOT NULL,
    [DataFinal] DATETIME NOT NULL,
    [HoraInicial] SMALLDATETIME NOT NULL,
    [HoraFinal] SMALLDATETIME NOT NULL,
    [CodReserva] INT NOT NULL,
    [IndPrincipal] TINYINT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[HorarioEvtoRoda] (
    [CodEvtoRoda] INT NOT NULL,
    [Data] SMALLDATETIME NOT NULL,
    [SeqHorarioEvtoRoda] INT NOT NULL,
    [DescHorarioEvtoRoda] VARCHAR(40) NOT NULL,
    [HoraInicio] SMALLDATETIME NOT NULL,
    [TempoDuracao] INT NOT NULL
);

CREATE TABLE [dbo].[HorarioParticipanteEvtoRoda] (
    [CodEvtoRoda] INT NOT NULL,
    [CodParticipante] INT NOT NULL,
    [Data] SMALLDATETIME NOT NULL,
    [SeqHorarioEvtoRoda] INT NOT NULL
);

CREATE TABLE [dbo].[HORARIOTECNICO] (
    [CodTecnico] INT NOT NULL,
    [Dia] INT NOT NULL,
    [HoraInicio] DATETIME NOT NULL,
    [HoraIntervalo] DATETIME NOT NULL,
    [HoraRetorno] DATETIME NOT NULL,
    [HoraFim] DATETIME NOT NULL,
    [TempoAtendimento] INT NULL,
    [CodUnidOper] INT NULL
);

CREATE TABLE [dbo].[HRC_EQ] (
    [CodSebrae] INT NOT NULL,
    [CodCliente] INT NOT NULL,
    [DataHoraInicioRealizacao] DATETIME NOT NULL,
    [CodEmpreedimento] INT NULL,
    [DataHoraFimRealizacao] DATETIME NULL,
    [NomeRealizacao] VARCHAR(255) NOT NULL,
    [DescRealizacao] TEXT NOT NULL,
    [CodResponsavel] INT NOT NULL,
    [CodAplicacao] INT NOT NULL,
    [CodRealizacao] INT NULL,
    [TipoRealizacao] VARCHAR(3) NULL,
    [Instrumento] VARCHAR(50) NULL,
    [Abordagem] CHAR(1) NULL,
    [CodRealizacaoComp] INT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL,
    [Ano] INT NULL,
    [CodProjeto] UNIQUEIDENTIFIER NULL,
    [CodAcao] INT NULL,
    [TipoPessoa] CHAR(1) NULL,
    [CodMomentoVida] TINYINT NULL,
    [MesAnoCompetencia] DATETIME NULL,
    [CargaHoraria] DECIMAL(18,2) NULL,
    [Faturam] SMALLINT NULL,
    [CodAtendimentoCRM] UNIQUEIDENTIFIER NULL,
    [CodEntidadeParceira] INT NULL,
    [CodConst] SMALLINT NULL,
    [CategoriaPessoa] SMALLINT NULL,
    [DataEntrada] DATETIME NULL,
    [DataETL] DATETIME NULL,
    [codcategoria] INT NULL
);

CREATE TABLE [dbo].[HRC_EQ2] (
    [CodSebrae] INT NOT NULL,
    [CodCliente] INT NOT NULL,
    [DataHoraInicioRealizacao] DATETIME NOT NULL,
    [CodEmpreedimento] INT NULL,
    [DataHoraFimRealizacao] DATETIME NULL,
    [NomeRealizacao] VARCHAR(255) NOT NULL,
    [DescRealizacao] TEXT NOT NULL,
    [CodResponsavel] INT NOT NULL,
    [CodAplicacao] INT NOT NULL,
    [CodRealizacao] INT NULL,
    [TipoRealizacao] VARCHAR(3) NULL,
    [Instrumento] VARCHAR(50) NULL,
    [Abordagem] CHAR(1) NULL,
    [CodRealizacaoComp] INT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL,
    [Ano] INT NULL,
    [CodProjeto] UNIQUEIDENTIFIER NULL,
    [CodAcao] INT NULL,
    [TipoPessoa] CHAR(1) NULL,
    [CodMomentoVida] TINYINT NULL,
    [MesAnoCompetencia] DATETIME NULL,
    [CargaHoraria] DECIMAL(18,2) NULL,
    [Faturam] SMALLINT NULL,
    [CodAtendimentoCRM] UNIQUEIDENTIFIER NULL,
    [CodEntidadeParceira] INT NULL,
    [CodConst] SMALLINT NULL,
    [CategoriaPessoa] SMALLINT NULL,
    [DataEntrada] DATETIME NULL,
    [DataETL] DATETIME NULL,
    [codcategoria] INT NULL
);

CREATE TABLE [dbo].[HRC_SISTEMAORIGEM] (
    [CODSEBRAE] INT NOT NULL,
    [CODCLIENTE] INT NOT NULL,
    [DataHoraInicioRealizacao] DATETIME NOT NULL,
    [DATAENTRADA] DATETIME NOT NULL,
    [ORIGEMREGISTRO] VARCHAR(100) NOT NULL
);

CREATE TABLE [dbo].[HRC_UF_novo_rowguid] (
    [CodSebrae] INT NOT NULL,
    [CodCliente] INT NOT NULL,
    [DataHoraInicioRealizacao] DATETIME NOT NULL,
    [CodEmpreedimento] INT NULL,
    [DataHoraFimRealizacao] DATETIME NULL,
    [NomeRealizacao] VARCHAR(255) NOT NULL,
    [DescRealizacao] TEXT NOT NULL,
    [CodResponsavel] INT NOT NULL,
    [CodAplicacao] INT NOT NULL,
    [CodRealizacao] INT NULL,
    [TipoRealizacao] VARCHAR(3) NULL,
    [Instrumento] VARCHAR(50) NULL,
    [Abordagem] CHAR(1) NULL,
    [CodRealizacaoComp] INT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL,
    [novo_rowguid] UNIQUEIDENTIFIER NULL,
    [Ano] INT NULL,
    [CodProjeto] UNIQUEIDENTIFIER NULL,
    [CodAcao] INT NULL,
    [TipoPessoa] CHAR(1) NULL,
    [CodMomentoVida] TINYINT NULL,
    [MesAnoCompetencia] DATETIME NULL,
    [CargaHoraria] DECIMAL(18,2) NULL,
    [Faturam] SMALLINT NULL,
    [CodAtendimentoCRM] UNIQUEIDENTIFIER NULL,
    [CodEntidadeParceira] INT NULL,
    [CodConst] SMALLINT NULL,
    [CategoriaPessoa] SMALLINT NULL,
    [DataEntrada] DATETIME NULL,
    [DataETL] DATETIME NULL,
    [codcategoria] INT NULL,
    [CodSistemaOrigem] INT NULL
);

CREATE TABLE [dbo].[ID_Deletar] (
    [ID] BIGINT NULL
);

CREATE TABLE [dbo].[Indicador] (
    [CodIndicador] INT NOT NULL,
    [DescIndicador] VARCHAR(100) NOT NULL,
    [ObjIndicador] VARCHAR(100) NOT NULL,
    [CodPeriodo] TINYINT NOT NULL,
    [TipoIndicador] TINYINT NOT NULL,
    [Status] TINYINT NOT NULL,
    [TipoPessoa] TINYINT NULL,
    [TipoCriterio] TINYINT NULL
);

CREATE TABLE [dbo].[IndicadorAtividade] (
    [CodClass] SMALLINT NOT NULL,
    [CodAtivEcon] VARCHAR(5) NOT NULL,
    [CodIndicador] INT NOT NULL,
    [CodSetor] SMALLINT NULL,
    [SeqAtivEcon] INT NOT NULL,
    [CodCnaeFiscal] VARCHAR(2) NULL
);

CREATE TABLE [dbo].[IndicadorAval] (
    [CodIndicadorAval] INT NOT NULL,
    [DescIndicador] VARCHAR(255) NOT NULL,
    [TipoIndicador] CHAR(1) NULL,
    [Pergunta] VARCHAR(255) NULL,
    [IndTipoIndicador] CHAR(2) NULL,
    [IndObservacao] TINYINT NULL,
    [CodSebrae] INT NOT NULL,
    [CodAplicacao] INT NOT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[IndicadorAvaliacao] (
    [CodIndicador] INT NOT NULL,
    [CodPeriodo] TINYINT NULL,
    [CodUnidMed] TINYINT NULL,
    [Nome] VARCHAR(50) NULL,
    [Descricao] VARCHAR(255) NULL,
    [Abrangencia] BIT NOT NULL,
    [Questao] TEXT NULL,
    [TipoFaixa] TINYINT NOT NULL,
    [PadraoUF] FLOAT NULL,
    [PadraoNA] FLOAT NOT NULL
);

CREATE TABLE [dbo].[IndicadorGrupo] (
    [CodGrupo] INT NOT NULL,
    [CodIndicadorAval] INT NOT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[IndPesqSatisfacao] (
    [CodIndPesqSatisfacao] INT NOT NULL,
    [TipoIndPesqSatisfacao] SMALLINT NOT NULL,
    [IndicaTipo] SMALLINT NULL,
    [DescIndPesqSatisfacao] VARCHAR(250) NOT NULL,
    [Situacao] TINYINT NULL
);

CREATE TABLE [dbo].[IndPesqSatisfacaoLista] (
    [CodIndPesqSatisfacao] INT NOT NULL,
    [CodItem] SMALLINT NOT NULL,
    [TipoLista] TINYINT NOT NULL,
    [DescItem] VARCHAR(150) NULL
);

CREATE TABLE [dbo].[IndPesqSatisfacaoNum] (
    [CodIndPesqSatisfacao] INT NOT NULL,
    [CodIndPesqSatisfacaoNum] SMALLINT NOT NULL,
    [TipoNumero] TINYINT NULL,
    [Intervalo] TINYINT NULL,
    [CodIntervalo] INT NULL,
    [ValorI] INT NULL,
    [ValorF] INT NULL
);

CREATE TABLE [dbo].[IndPesqSatisfacaoText] (
    [CodIndPesqSatisfacao] INT NOT NULL,
    [TipoTexto] TINYINT NOT NULL
);

CREATE TABLE [dbo].[InformacaoSetorial] (
    [CodInfoSetorial] INT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [CodFonteInformacao] INT NOT NULL,
    [CodPesquisa] INT NOT NULL,
    [CodQuestao] INT NOT NULL,
    [Categoria] CHAR(1) NOT NULL,
    [TipoInformacao] CHAR(1) NOT NULL,
    [DataRegistro] SMALLDATETIME NOT NULL,
    [DataAtualizacao] SMALLDATETIME NOT NULL,
    [Intervalo] BIT NOT NULL,
    [ValorExato] BIT NOT NULL,
    [CodIntervalo] INT NULL,
    [CodItemLista] INT NULL,
    [Texto] TEXT NULL,
    [Valor] FLOAT NULL,
    [Resultado] FLOAT NOT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[Informacoes_Indices_Melhorias] (
    [servidor] NVARCHAR(128) NULL,
    [ObjectName] NVARCHAR(128) NOT NULL,
    [ObjectID] INT NOT NULL,
    [IndexName] NVARCHAR(128) NULL,
    [IndexID] INT NOT NULL,
    [Reads] BIGINT NULL,
    [Writes] BIGINT NULL,
    [IndexType] NVARCHAR(60) NULL,
    [FillFactor] TINYINT NOT NULL,
    [type] TINYINT NOT NULL,
    [is_unique] BIT NULL,
    [data_space_id] INT NOT NULL,
    [ignore_dup_key] BIT NULL,
    [is_primary_key] BIT NULL,
    [is_unique_constraint] BIT NULL,
    [fill_factor] TINYINT NOT NULL,
    [is_padded] BIT NULL,
    [is_disabled] BIT NULL,
    [is_hypothetical] BIT NULL,
    [allow_row_locks] BIT NULL,
    [allow_page_locks] BIT NULL,
    [has_filter] BIT NULL,
    [filter_definition] NVARCHAR(MAX) NULL,
    [database_id] SMALLINT NULL,
    [user_seeks] BIGINT NULL,
    [user_scans] BIGINT NULL,
    [user_lookups] BIGINT NULL,
    [user_updates] BIGINT NULL,
    [last_user_seek] DATETIME NULL,
    [last_user_scan] DATETIME NULL,
    [last_user_lookup] DATETIME NULL,
    [last_user_update] DATETIME NULL,
    [system_seeks] BIGINT NULL,
    [system_scans] BIGINT NULL,
    [system_lookups] BIGINT NULL,
    [system_updates] BIGINT NULL,
    [last_system_seek] DATETIME NULL,
    [last_system_scan] DATETIME NULL,
    [last_system_lookup] DATETIME NULL,
    [last_system_update] DATETIME NULL
);

CREATE TABLE [dbo].[InstPartEMP] (
    [CodInst] INT NOT NULL,
    [DescInstPart] VARCHAR(60) NOT NULL,
    [CodInstPart] VARCHAR(6) NOT NULL
);

CREATE TABLE [dbo].[IntegrantesGrupoEmp] (
    [CodGrupEmp] SMALLINT NOT NULL,
    [CodParceiro] INT NOT NULL
);

CREATE TABLE [dbo].[IntencaoEvento] (
    [codcliint] INT NOT NULL,
    [seqinten] INT NOT NULL,
    [codcadevento] INT NULL,
    [CodProdutoPortfolio] INT NULL,
    [codevevirtual] INT NULL,
    [dataintencao] SMALLDATETIME NULL,
    [codparceiro] INT NOT NULL,
    [datainclusao] SMALLDATETIME NULL,
    [comunicacao] VARCHAR(60) NULL,
    [nomepesres] VARCHAR(60) NULL,
    [Situacao] TINYINT NULL,
    [IndPeriodo] TINYINT NULL,
    [CodunidOpe] INT NULL,
    [codprod] INT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[Internal_FK_Definition_Storage] (
    [ID] INT NOT NULL,
    [FK_Name] VARCHAR(250) NOT NULL,
    [FK_CreationStatement] VARCHAR(MAX) NOT NULL,
    [FK_DestructionStatement] VARCHAR(MAX) NOT NULL,
    [Table_TruncationStatement] VARCHAR(MAX) NOT NULL
);

CREATE TABLE [dbo].[itemareaespec] (
    [codareaesp] INT NOT NULL,
    [coditemareaesp] INT NOT NULL,
    [descitemareaesp] VARCHAR(3000) NOT NULL
);

CREATE TABLE [dbo].[ItemAvalEvtoFeira] (
    [CodEvtoFeira] INT NOT NULL,
    [CodGrupo] INT NOT NULL,
    [CodItem] INT NOT NULL,
    [CodSebrae] INT NOT NULL
);

CREATE TABLE [dbo].[itemavaliacao] (
    [codgrupo] INT NOT NULL,
    [coditem] INT NOT NULL,
    [descavaliacao] VARCHAR(60) NOT NULL
);

CREATE TABLE [dbo].[ITEMAVALIACAOEVENTO] (
    [CodItemAvaliacao] INT NOT NULL,
    [DescItemAvaliacao] VARCHAR(255) NULL
);

CREATE TABLE [dbo].[ItemAvaliacaoEvtoRoda] (
    [CodEvtoRoda] INT NOT NULL,
    [CodGrupo] INT NOT NULL,
    [CodItem] INT NOT NULL
);

CREATE TABLE [dbo].[ItemConsultaBolsa] (
    [CodItemConsulta] INT NOT NULL,
    [CodConsulta] INT NOT NULL,
    [Cod_capitulo] VARCHAR(2) NOT NULL,
    [Cod_posicao] VARCHAR(2) NOT NULL,
    [Cod_produto] VARCHAR(4) NOT NULL,
    [Observacao] TEXT NULL,
    [TipoNegOprt] CHAR(1) NULL,
    [TipoOferDem] CHAR(1) NULL,
    [CodSituacao] INT NULL
);

CREATE TABLE [dbo].[itemdespesa] (
    [codgrupodesp] INT NOT NULL,
    [coditemdesp] INT NOT NULL,
    [descitemdesp] VARCHAR(60) NOT NULL,
    [codmat] INT NULL,
    [Situacao] CHAR(1) NOT NULL
);

CREATE TABLE [dbo].[ItemEntradaMaterial] (
    [CodEntradaMaterial] INT NOT NULL,
    [CodMaterial] INT NOT NULL,
    [QtdEntradaMaterial] FLOAT NOT NULL,
    [VlUnitario] NUMERIC(15,6) NOT NULL,
    [Status] TINYINT NULL
);

CREATE TABLE [dbo].[ItemEntradaTitulo] (
    [CodEntradaTitulo] INT NOT NULL,
    [CodTitulo] INT NOT NULL,
    [QtdEntradaTitulo] FLOAT NOT NULL,
    [VlCustoTitulo] FLOAT NOT NULL
);

CREATE TABLE [dbo].[ItemIndicadorAval] (
    [CodItemAval] INT NOT NULL,
    [CodIndicadorAval] INT NOT NULL,
    [DescItem] VARCHAR(255) NULL,
    [ValorI] INT NULL,
    [ValorF] INT NULL,
    [CodSebrae] INT NOT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[ItemOcorrencia] (
    [CodOcorrencia] INT NOT NULL,
    [TipoOcorrencia] TINYINT NOT NULL
);

CREATE TABLE [dbo].[ItemParticipanteCompra] (
    [CodTpCompra] TINYINT NOT NULL,
    [AnoExercicio] INT NOT NULL,
    [SeqProcCompra] INT NOT NULL,
    [CodFornecedor] INT NOT NULL,
    [CodObjetoCompra] INT NOT NULL,
    [QtdObjetoCompra] FLOAT NULL,
    [VlObjetoCompra] FLOAT NULL,
    [Status] TINYINT NULL
);

CREATE TABLE [dbo].[ItemProcCompra] (
    [CodTpCompra] TINYINT NOT NULL,
    [AnoExercicio] INT NOT NULL,
    [SeqProcCompra] INT NOT NULL,
    [CodObjetoCompra] INT NOT NULL,
    [QtdSolicitada] FLOAT NULL,
    [QtdComprada] FLOAT NULL,
    [VlCompra] FLOAT NULL,
    [Status] INT NULL
);

CREATE TABLE [dbo].[ItemReqAssistMedPessoal] (
    [CodReqPessoal] INT NOT NULL,
    [CodObjetoReq] INT NOT NULL,
    [CodAssistMedica] TINYINT NOT NULL,
    [Observacao] VARCHAR(255) NULL,
    [ValorSolic] FLOAT NULL,
    [Status] TINYINT NOT NULL
);

CREATE TABLE [dbo].[ItemReqCompra] (
    [CodReqCompra] INT NOT NULL,
    [CodObjetoReq] INT NOT NULL,
    [Especificacao] TEXT NULL,
    [QtdRequisitada] FLOAT NULL,
    [Status] TINYINT NULL,
    [VlObjetoReq] FLOAT NULL,
    [QtdHoras] FLOAT NULL,
    [Descricao] VARCHAR(100) NULL
);

CREATE TABLE [dbo].[ItemReqDiariaPessoal] (
    [CodReqPessoal] INT NOT NULL,
    [CodObjetoReq] INT NOT NULL,
    [CodCargo] INT NOT NULL,
    [CodRegiao] TINYINT NOT NULL,
    [DataIniDiaria] DATETIME NULL,
    [DataFimDiaria] DATETIME NULL,
    [QtdDiarias] FLOAT NOT NULL,
    [VlDiaria] FLOAT NOT NULL,
    [Status] TINYINT NOT NULL,
    [QtdAtendida] FLOAT NULL
);

CREATE TABLE [dbo].[ItemReqDireitoPessoal] (
    [CodReqPessoal] INT NOT NULL,
    [CodObjetoReq] INT NOT NULL,
    [CodTpDireito] TINYINT NOT NULL,
    [QtdRequisitada] FLOAT NOT NULL,
    [VlRequisitado] FLOAT NOT NULL,
    [Status] TINYINT NULL,
    [QtdAtendida] FLOAT NULL
);

CREATE TABLE [dbo].[ItemReqMaterial] (
    [CodReqMaterial] INT NOT NULL,
    [CodMaterial] INT NOT NULL,
    [QtdRequisitada] FLOAT NOT NULL,
    [QtdAtendida] FLOAT NULL,
    [VlItemRequisicao] FLOAT NOT NULL,
    [Status] TINYINT NULL
);

CREATE TABLE [dbo].[ItemReqMaterialLog] (
    [CodReqMaterial] INT NOT NULL,
    [CodMaterial] INT NOT NULL,
    [QtdRequisitada] FLOAT NOT NULL,
    [QtdAtendida] FLOAT NULL,
    [VlItemRequisicao] FLOAT NOT NULL,
    [Status] TINYINT NULL
);

CREATE TABLE [dbo].[ItemReqPassagemPessoal] (
    [CodReqPessoal] INT NOT NULL,
    [CodObjetoReq] INT NOT NULL,
    [NrVoo] VARCHAR(20) NOT NULL,
    [CompAerea] VARCHAR(80) NULL,
    [CodPais] SMALLINT NULL,
    [CodEstado] SMALLINT NULL,
    [CodCidade] INT NULL,
    [Roteiro] VARCHAR(80) NULL,
    [DataIniPassagem] DATETIME NULL,
    [DataFimPassagem] DATETIME NULL,
    [VlPassagem] FLOAT NOT NULL,
    [Status] TINYINT NOT NULL
);

CREATE TABLE [dbo].[ItemReqPessoal] (
    [CodReqPessoal] INT NOT NULL,
    [CodObjetoReq] INT NOT NULL,
    [CodProfis] INT NOT NULL,
    [CodGrauEscol] SMALLINT NULL,
    [DtIniContrato] DATETIME NOT NULL,
    [DtFimContrato] DATETIME NULL,
    [HorTrabalho] TINYINT NULL,
    [AtividadesDesenv] VARCHAR(150) NULL,
    [Conhecimentos] VARCHAR(150) NULL,
    [Habilidades] VARCHAR(100) NULL,
    [PretSalarial] FLOAT NULL,
    [QtdPessoal] TINYINT NOT NULL,
    [CodEntidadeParc] INT NULL,
    [CodCurso] INT NULL,
    [Status] TINYINT NULL,
    [QtdAtendida] TINYINT NULL
);

CREATE TABLE [dbo].[ItemReqSalaPessoal] (
    [CodReqPessoal] INT NOT NULL,
    [CodObjetoReq] INT NOT NULL,
    [CodOcupacaoSala] TINYINT NOT NULL,
    [DataIniReserva] DATETIME NULL,
    [DataFimReserva] DATETIME NULL,
    [Status] TINYINT NOT NULL
);

CREATE TABLE [dbo].[ItemReqTransporte] (
    [CodReqTransporte] INT NOT NULL,
    [Chassi] VARCHAR(20) NOT NULL,
    [CodCondutor] INT NOT NULL
);

CREATE TABLE [dbo].[ItemReqTreinPessoal] (
    [CodReqPessoal] INT NOT NULL,
    [CodObjetoReq] INT NOT NULL,
    [CodTreinPessoal] INT NOT NULL,
    [DataIniTrein] DATETIME NULL,
    [DataFimTrein] DATETIME NULL,
    [Status] INT NULL,
    [Valor] FLOAT NULL,
    [Descricao] VARCHAR(80) NULL
);

CREATE TABLE [dbo].[ItemSaidaMaterial] (
    [CodSaidaMaterial] INT NOT NULL,
    [CodMaterial] INT NOT NULL,
    [QtdSaidaMaterial] FLOAT NOT NULL,
    [VlUnitario] NUMERIC(15,6) NULL,
    [Status] TINYINT NULL
);

CREATE TABLE [dbo].[ItemSaidaTitulo] (
    [CodSaidaTitulo] INT NOT NULL,
    [CodTitulo] INT NOT NULL,
    [QtdSaidaTitulo] FLOAT NOT NULL,
    [VlSaidaTitulo] FLOAT NOT NULL
);

CREATE TABLE [dbo].[ItemServico] (
    [Chassi] VARCHAR(20) NOT NULL,
    [CodMntVeiculo] INT NOT NULL,
    [CodTipoServico] TINYINT NOT NULL,
    [Status] BIT NOT NULL
);

CREATE TABLE [dbo].[ItemSugerido] (
    [CodItemSugerido] INT NOT NULL,
    [DescItemSugerido] VARCHAR(255) NOT NULL,
    [TipoItemSugerido] TINYINT NOT NULL,
    [Situacao] TINYINT NOT NULL
);

CREATE TABLE [dbo].[ItemTransferTitulo] (
    [CodTransferTitulo] INT NOT NULL,
    [CodTitulo] INT NOT NULL,
    [QtdTransferTitulo] FLOAT NOT NULL,
    [VlTransferTitulo] FLOAT NOT NULL
);

CREATE TABLE [dbo].[ItemVendaTitulo] (
    [CodVendaTitulo] INT NOT NULL,
    [CodTitulo] INT NOT NULL,
    [QtdVendaTitulo] FLOAT NOT NULL,
    [VlVendaTitulo] FLOAT NOT NULL
);

CREATE TABLE [dbo].[JuntaTribunal] (
    [CodJuntaTribunal] INT NOT NULL,
    [CodTribunal] INT NOT NULL,
    [DescJuntaTribunal] VARCHAR(150) NOT NULL
);

CREATE TABLE [dbo].[Kit] (
    [CodKit] INT NOT NULL,
    [Desckit] VARCHAR(60) NOT NULL,
    [Caracteristicas] VARCHAR(250) NULL,
    [TempoConclusao] INT NULL,
    [CargaHoraria] INT NULL,
    [Situacao] CHAR(1) NULL
);

CREATE TABLE [dbo].[Limite] (
    [CodUnidOp] INT NOT NULL,
    [CodProduto] INT NOT NULL,
    [CodNatDesp] INT NOT NULL,
    [AnoVigencia] INT NOT NULL,
    [Mes] INT NOT NULL,
    [VlOrcado] FLOAT NOT NULL,
    [VlComprometido] FLOAT NULL,
    [VlGasto] FLOAT NULL
);

CREATE TABLE [dbo].[LimiteGdGrupo] (
    [CodUnidOp] INT NOT NULL,
    [CodProduto] INT NOT NULL,
    [CodGdGrupo] INT NOT NULL,
    [AnoVigencia] INT NOT NULL,
    [Mes] INT NOT NULL,
    [VlOrcado] FLOAT NULL,
    [VlComprometido] FLOAT NULL,
    [VlGasto] FLOAT NULL
);

CREATE TABLE [dbo].[ListaVarejoIBS] (
    [FORNECEDOR] NVARCHAR(255) NULL,
    [WQS_IBS] NVARCHAR(255) NULL,
    [CERTIFICAÇÃO] NVARCHAR(255) NULL,
    [PORTE] NVARCHAR(255) NULL,
    [MUNICIPIO] NVARCHAR(255) NULL,
    [UF] NVARCHAR(255) NULL,
    [cpnj_cpf] NVARCHAR(255) NULL
);

CREATE TABLE [dbo].[localevento] (
    [codlocal] INT NOT NULL,
    [desclocal] VARCHAR(60) NOT NULL,
    [capacidade] INT NULL,
    [telcontato] VARCHAR(20) NULL,
    [pescontato] VARCHAR(60) NULL,
    [codlogr] SMALLINT NULL,
    [endereco] VARCHAR(60) NULL,
    [complemento] VARCHAR(30) NULL,
    [codbairro] INT NULL,
    [codcid] INT NULL,
    [codest] SMALLINT NULL,
    [codpais] SMALLINT NULL,
    [cep] INT NULL,
    [numero] INT NULL,
    [TipoLocal] TINYINT NULL,
    [Situacao] TINYINT NULL,
    [CodSebrae] INT NOT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[LocalEvtoFeira] (
    [CodEvtoFeira] INT NOT NULL,
    [CodLocal] INT NOT NULL,
    [CodSebrae] INT NOT NULL
);

CREATE TABLE [dbo].[LocalEvtoRoda] (
    [CodEvtoRoda] INT NOT NULL,
    [CodLocal] INT NOT NULL
);

CREATE TABLE [dbo].[localizacao] (
    [codfunc] VARCHAR(16) NOT NULL,
    [areaorig] VARCHAR(20) NOT NULL,
    [blocorig] VARCHAR(2) NOT NULL,
    [salaorig] SMALLINT NOT NULL,
    [ramalorig] SMALLINT NOT NULL,
    [arealoc] VARCHAR(20) NULL,
    [blocloc] VARCHAR(2) NULL,
    [salaloc] SMALLINT NULL,
    [ramalloc] SMALLINT NULL,
    [situacao] VARCHAR(20) NULL,
    [codsubst] VARCHAR(16) NULL
);

CREATE TABLE [dbo].[locconsulta] (
    [codloccons] SMALLINT NOT NULL,
    [descloccons] VARCHAR(30) NOT NULL
);

CREATE TABLE [dbo].[log_assinatura_cadastro] (
    [DataHoraInicioRealizacao] DATETIME NULL,
    [CodCliente] INT NULL,
    [CodEmpreendimento] INT NULL,
    [CodSebrae] INT NULL,
    [CodSebraePF] INT NULL,
    [CodSebraePJ] INT NULL,
    [Log] VARCHAR(8000) NULL
);

CREATE TABLE [dbo].[Log_Erro] (
    [Maquina] VARCHAR(64) NOT NULL,
    [Aplicacao] VARCHAR(64) NOT NULL,
    [DataHora] DATETIME NOT NULL,
    [NumErro] INT NOT NULL,
    [DescErro] VARCHAR(255) NULL,
    [Procedimento] VARCHAR(64) NULL,
    [Parametros] VARCHAR(255) NULL
);

CREATE TABLE [dbo].[LOG_ERROS] (
    [CodiLog_erro] INT NOT NULL,
    [DataErro] DATETIME NULL,
    [Tabela] NVARCHAR(128) NOT NULL,
    [Campo] VARCHAR(256) NULL,
    [Valor] VARCHAR(512) NULL,
    [Contexto] VARCHAR(128) NULL,
    [MensagemErro] VARCHAR(8000) NULL
);

CREATE TABLE [dbo].[LOG_ERROS_QUALIDADE] (
    [CodiLog_erro] INT NOT NULL,
    [DataErro] DATETIME NULL,
    [Tabela] NVARCHAR(128) NOT NULL,
    [Campo] VARCHAR(256) NULL,
    [Valor] NUMERIC(18,0) NULL,
    [Contexto] VARCHAR(128) NULL,
    [MensagemErro] VARCHAR(8000) NULL
);

CREATE TABLE [dbo].[LOG_LOCALIDADE] (
    [Column 0] VARCHAR(50) NULL,
    [Column 1] VARCHAR(50) NULL,
    [Column 2] VARCHAR(50) NULL,
    [Column 3] VARCHAR(50) NULL,
    [Column 4] VARCHAR(50) NULL,
    [Column 5] VARCHAR(50) NULL,
    [Column 6] VARCHAR(50) NULL,
    [Column 7] VARCHAR(50) NULL,
    [Column 8] VARCHAR(50) NULL
);

CREATE TABLE [dbo].[LogAudit] (
    [CodAplic] VARCHAR(15) NOT NULL,
    [DataHora] SMALLDATETIME NOT NULL,
    [CodUnidOp] INT NOT NULL,
    [Cod_Usuario] VARCHAR(8) NOT NULL,
    [Tabela] VARCHAR(32) NULL,
    [Campo] VARCHAR(32) NULL,
    [ValorAnterior] VARCHAR(255) NULL,
    [ValorAtual] VARCHAR(255) NULL,
    [Sp] VARCHAR(32) NOT NULL,
    [Params] VARCHAR(255) NOT NULL
);

CREATE TABLE [dbo].[logradouro] (
    [codlogr] SMALLINT NOT NULL,
    [desclogr] VARCHAR(50) NULL,
    [desclograbrev] VARCHAR(50) NULL,
    [controlerede] SMALLINT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[LogSenha] (
    [IdLog] INT NOT NULL,
    [DataHora] DATETIME NULL,
    [TipoLog] INT NULL,
    [IP] VARCHAR(20) NULL,
    [usuarioLogin] VARCHAR(50) NULL,
    [UsuarioAutorLog] VARCHAR(50) NULL
);

CREATE TABLE [dbo].[LogWS] (
    [ID] INT NOT NULL,
    [CodParceiro] INT NULL,
    [IdWebServ] INT NULL,
    [IdMetodo] INT NULL,
    [Data] DATETIME NULL,
    [Acao] VARCHAR(48) NULL,
    [Obs] VARCHAR(128) NULL
);

CREATE TABLE [dbo].[MarcaVeiculo] (
    [CodMarca] TINYINT NOT NULL,
    [DescMarca] VARCHAR(40) NOT NULL
);

CREATE TABLE [dbo].[Material] (
    [CodMaterial] INT NOT NULL,
    [CodGrupoMaterial] VARCHAR(5) NOT NULL,
    [DescMaterial] VARCHAR(80) NOT NULL,
    [Natureza] TINYINT NOT NULL,
    [Cor] VARCHAR(20) NULL,
    [Marca] VARCHAR(20) NULL,
    [Modelo] VARCHAR(20) NULL,
    [Tipo] VARCHAR(20) NULL,
    [QtdFisica] FLOAT NOT NULL,
    [QtdReservada] FLOAT NULL,
    [QtdFutura] FLOAT NULL,
    [QtdIdeal] FLOAT NULL,
    [QtdMinima] FLOAT NULL,
    [SaldoValorTotal] NUMERIC(15,6) NULL,
    [VlMedio] NUMERIC(15,6) NULL,
    [VlUltimaEntrada] NUMERIC(15,6) NULL,
    [DataUltimaEntrada] DATETIME NULL,
    [Observacao] VARCHAR(80) NULL,
    [Status] TINYINT NULL,
    [IndInteiro] TINYINT NULL,
    [DataCadastramento] DATETIME NULL,
    [CodApresentacao] INT NOT NULL,
    [Especificacao] TEXT NULL
);

CREATE TABLE [dbo].[MaterialSimilar] (
    [CodMaterial] INT NOT NULL,
    [CodMaterialSimilar] INT NOT NULL
);

CREATE TABLE [dbo].[MEI2016_02_Celulares] (
    [CNPJ] VARCHAR(50) NULL,
    [Celular] VARCHAR(102) NULL
);

CREATE TABLE [dbo].[MEIOATENDIMENTO] (
    [CodMeioAtendimento] INT NOT NULL,
    [DescMeioAtendimento] VARCHAR(50) NOT NULL,
    [TipoAtendimento] CHAR(1) NOT NULL,
    [Ativo] BIT NOT NULL
);

CREATE TABLE [dbo].[meioatendimentoFaseI] (
    [codmeioatend] SMALLINT NOT NULL,
    [descmeioatend] VARCHAR(15) NOT NULL
);

CREATE TABLE [dbo].[MenuBIA] (
    [CodMenu] INT NOT NULL,
    [TituloMenu] VARCHAR(50) NOT NULL,
    [CodSEBRAE] INT NOT NULL,
    [Ordem] INT NULL,
    [Situacao] CHAR(1) NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[MenuSubmenu] (
    [CodMenu] UNIQUEIDENTIFIER NOT NULL,
    [CodSubMenu] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[mesoreg] (
    [codmeso] SMALLINT NOT NULL,
    [codest] SMALLINT NOT NULL,
    [descmeso] VARCHAR(30) NOT NULL
);

CREATE TABLE [dbo].[META] (
    [Numero] INT NOT NULL,
    [Ano] INT NOT NULL,
    [TipoDocumento] CHAR(1) NOT NULL,
    [Cedente] INT NOT NULL,
    [CodMeta] INT NOT NULL,
    [CodPessoaJ] INT NULL,
    [TipoMeta] CHAR(1) NULL,
    [Descricao] VARCHAR(255) NULL,
    [DataMeta] DATETIME NULL,
    [DataPrestacao] DATETIME NULL,
    [Historico] TEXT NULL
);

CREATE TABLE [dbo].[METAFINANCEIRA] (
    [Numero] INT NOT NULL,
    [Ano] INT NOT NULL,
    [TipoDocumento] CHAR(1) NOT NULL,
    [Cedente] INT NOT NULL,
    [CodMeta] INT NOT NULL,
    [ValorMeta] REAL NULL,
    [ValorPrestacao] REAL NULL
);

CREATE TABLE [dbo].[METAFISICA] (
    [Numero] INT NOT NULL,
    [Ano] INT NOT NULL,
    [TipoDocumento] CHAR(1) NOT NULL,
    [Cedente] INT NOT NULL,
    [CodMeta] INT NOT NULL,
    [QuantidadeMeta] INT NULL,
    [QuantidadePrestacao] INT NULL,
    [CodTipoPrestacao] INT NULL
);

CREATE TABLE [dbo].[Metodologia] (
    [CodMetodologia] SMALLINT NOT NULL,
    [DescMetodologia] VARCHAR(50) NOT NULL
);

CREATE TABLE [dbo].[MetodosWS] (
    [Id] INT NOT NULL,
    [IdWebServ] INT NOT NULL,
    [Metodo] VARCHAR(64) NULL,
    [Status] SMALLINT NULL
);

CREATE TABLE [dbo].[Metrica] (
    [CodCategoria] INT NOT NULL,
    [CodMetrica] INT NOT NULL,
    [DescMetrica] VARCHAR(50) NOT NULL
);

CREATE TABLE [dbo].[microreg] (
    [codmicro] SMALLINT NOT NULL,
    [codest] SMALLINT NOT NULL,
    [descmicro] VARCHAR(30) NOT NULL,
    [numcidade] SMALLINT NULL,
    [codmeso] SMALLINT NOT NULL
);

CREATE TABLE [dbo].[MntVeiculo] (
    [Chassi] VARCHAR(20) NOT NULL,
    [CodMntVeiculo] INT NOT NULL,
    [CodOcorrencia] INT NULL,
    [CodParceiro] FLOAT NULL,
    [TipoMntVeiculo] TINYINT NOT NULL,
    [DataInicial] DATETIME NOT NULL,
    [DataFinal] DATETIME NULL,
    [DescMntVeiculo] VARCHAR(150) NOT NULL,
    [Status] BIT NOT NULL,
    [CodNfVeiculo] INT NULL,
    [CodRevisaoPeriodica] INT NULL,
    [KmRevisao] INT NULL,
    [DataRegistro] DATETIME NULL,
    [DataCiencia] DATETIME NULL
);

CREATE TABLE [dbo].[ModeloAtividade] (
    [CodModeloAtividade] INT NOT NULL,
    [NomeModeloAtividade] VARCHAR(80) NOT NULL,
    [DescricaoModeloAtividade] VARCHAR(500) NOT NULL,
    [DuracaoModeloAtividade] INT NOT NULL,
    [CodGrupoResp] INT NOT NULL,
    [Situacao] CHAR(1) NOT NULL,
    [TipoModeloAtividade] CHAR(1) NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[ModeloAtividadeTarefa] (
    [CodModeloTarefa] INT NOT NULL,
    [CodModeloAtividade] INT NOT NULL,
    [Sequencial] INT NOT NULL,
    [NomeModeloTarefa] VARCHAR(80) NOT NULL,
    [TipoModeloTarefa] CHAR(1) NOT NULL,
    [CodFormEletronico] INT NULL,
    [TipoDocumento] CHAR(1) NULL,
    [NomeDocumento] VARCHAR(150) NULL,
    [TipoNotificacao] CHAR(1) NULL,
    [CodPerfilNotificacao] INT NULL,
    [TextoPadraoNotificacao] VARCHAR(500) NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[ModeloCertificado] (
    [CodModCertificado] INT NOT NULL,
    [NomeModCertificado] VARCHAR(60) NOT NULL,
    [Dados] VARCHAR(1000) NULL,
    [FonteTipo] VARCHAR(20) NULL,
    [FonteTamanho] VARCHAR(10) NULL,
    [Papel] VARCHAR(10) NOT NULL,
    [Situacao] CHAR(1) NOT NULL,
    [Padrao] CHAR(1) NOT NULL,
    [ImgAssinatura1Frente] IMAGE NULL,
    [ImgAssinatura2Frente] IMAGE NULL,
    [ImgAssinatura1Verso] IMAGE NULL,
    [ImgAssinatura2Verso] IMAGE NULL,
    [CodSEBRAE] INT NULL,
    [AssCoordUnidOper] CHAR(2) NULL,
    [DataCriacao] DATETIME NULL
);

CREATE TABLE [dbo].[ModeloProcesso] (
    [CodModeloProcesso] INT NOT NULL,
    [NomeModeloProcesso] VARCHAR(255) NOT NULL,
    [NomeAbrevModeloProcesso] VARCHAR(40) NOT NULL,
    [DescricaoModeloProcesso] VARCHAR(500) NULL,
    [TipoModeloProcesso] CHAR(1) NOT NULL,
    [CodPerfilResp] INT NOT NULL,
    [CodParceiro] INT NOT NULL,
    [TipoSolicitacao] CHAR(1) NULL,
    [Acao] CHAR(1) NULL,
    [Situacao] CHAR(1) NOT NULL,
    [CodPerfilSolicitante] INT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[ModeloProcessoAtividade] (
    [CodModeloProcessoAtividade] INT NOT NULL,
    [CodModeloProcesso] INT NOT NULL,
    [Sequencial] INT NOT NULL,
    [TipoAtividadeProcesso] CHAR(1) NOT NULL,
    [CodAtividadeProcesso] INT NOT NULL,
    [MarcoConteudo] CHAR(1) NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[ModeloProcessoAtividadeRelacoes] (
    [CodModeloProcessoAtividade] INT NOT NULL,
    [TipoRelacao] CHAR(1) NOT NULL,
    [CodAtividadeRelacionada] INT NOT NULL,
    [TipoDecisaoCondicao] CHAR(1) NULL,
    [Condicao] CHAR(1) NULL,
    [ObjetoCondicao] CHAR(1) NULL,
    [CondicaoRetorno] CHAR(1) NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[ModeloVeiculo] (
    [CodModelo] TINYINT NOT NULL,
    [CodMarca] TINYINT NOT NULL,
    [DescModelo] VARCHAR(80) NOT NULL
);

CREATE TABLE [dbo].[MomentoVida] (
    [CodMomentoVida] TINYINT NOT NULL,
    [DescMomentoVida] VARCHAR(80) NULL,
    [Situacao] CHAR(1) NULL,
    [TipoPessoa] CHAR(1) NULL,
    [ClassificacaoPessoa] SMALLINT NULL,
    [OperadorAnosAbertura] VARCHAR(50) NULL,
    [QtdAnosAbertura] SMALLINT NULL
);

CREATE TABLE [dbo].[Monitoramento_Sessoes] (
    [Servidor] NVARCHAR(128) NULL,
    [Programa] NVARCHAR(128) NULL,
    [Login] NVARCHAR(128) NOT NULL,
    [IP] VARCHAR(48) NULL,
    [Banco] NVARCHAR(128) NULL,
    [DataColeta] DATETIME NOT NULL,
    [Sessoes] INT NULL
);

CREATE TABLE [dbo].[MotivoFinalizacao] (
    [CodMotivo] SMALLINT NOT NULL,
    [DescMotivo] VARCHAR(80) NOT NULL,
    [Situacao] TINYINT NULL
);

CREATE TABLE [dbo].[MotivoFinalizarCons] (
    [CodMotivo] INT NOT NULL,
    [DescMotivo] VARCHAR(255) NULL,
    [Situacao] TINYINT NULL
);

CREATE TABLE [dbo].[MovEstoque] (
    [CodMovEstoque] INT NOT NULL,
    [CodTpMovEstoque] TINYINT NOT NULL,
    [CodMaterial] INT NOT NULL,
    [SeqMovEstoque] INT NOT NULL,
    [DataMovEstoque] DATETIME NOT NULL,
    [Status] TINYINT NOT NULL,
    [QtdMovEstoque] FLOAT NULL
);

CREATE TABLE [dbo].[MovTituloEstoque] (
    [CodMovTituloEstoque] INT NOT NULL,
    [CodTitulo] INT NOT NULL,
    [CodTipoMovTitulo] TINYINT NOT NULL,
    [CodDocumento] INT NOT NULL,
    [DataMovTituloEstoque] DATETIME NOT NULL,
    [QtdMovTituloEstoque] FLOAT NOT NULL,
    [CodBalcaoCDI] INT NOT NULL,
    [ValorTitulo] FLOAT NULL
);

CREATE TABLE [dbo].[Natureza] (
    [CodNatureza] INT NOT NULL,
    [DescNatureza] VARCHAR(20) NULL
);

CREATE TABLE [dbo].[NaturezaAssunto] (
    [CodNaturezaAssunto] INT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [DescNaturezaAssunto] VARCHAR(60) NOT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[NaturezaDesp] (
    [CodNatDespesa] INT NOT NULL,
    [CodGdGrupo] INT NOT NULL,
    [TipoNatDespesa] TINYINT NOT NULL,
    [DescNatDespesa] VARCHAR(40) NOT NULL
);

CREATE TABLE [dbo].[NaturezaProcJuridico] (
    [CodNaturezaProc] TINYINT NOT NULL,
    [DescNaturezaProc] VARCHAR(50) NOT NULL,
    [Status] TINYINT NULL
);

CREATE TABLE [dbo].[Ncm] (
    [Codncm] FLOAT NOT NULL,
    [Descncm] VARCHAR(200) NOT NULL,
    [aliquota] NUMERIC(18,0) NULL
);

CREATE TABLE [dbo].[ncm_capitulo] (
    [cod_capitulo] VARCHAR(2) NULL,
    [cod_secao] VARCHAR(2) NULL,
    [desc_capitulo] TEXT NULL
);

CREATE TABLE [dbo].[ncm_consulta] (
    [codigo] SMALLINT NULL,
    [pai] SMALLINT NULL,
    [cod_secao] VARCHAR(2) NULL,
    [cod_capitulo] VARCHAR(2) NULL,
    [cod_posicao] VARCHAR(2) NULL,
    [cod_produto] VARCHAR(4) NULL,
    [desc_produto] TEXT NULL
);

CREATE TABLE [dbo].[ncm_grupos] (
    [cod_sub_secao] VARCHAR(2) NULL,
    [cod_grupo] VARCHAR(2) NULL,
    [desc_grupo] TEXT NULL
);

CREATE TABLE [dbo].[ncm_posicao] (
    [cod_capitulo] VARCHAR(2) NOT NULL,
    [cod_posicao] VARCHAR(2) NOT NULL,
    [desc_posicao] TEXT NULL
);

CREATE TABLE [dbo].[ncm_prod] (
    [codncm] INT NOT NULL,
    [codprodserv] INT NOT NULL
);

CREATE TABLE [dbo].[ncm_produtos] (
    [cod_capitulo] VARCHAR(2) NOT NULL,
    [cod_posicao] VARCHAR(2) NOT NULL,
    [cod_produto] VARCHAR(4) NOT NULL,
    [desc_produto] TEXT NULL
);

CREATE TABLE [dbo].[ncm_secoes] (
    [cod_secao] VARCHAR(2) NOT NULL,
    [desc_secao] TEXT NULL
);

CREATE TABLE [dbo].[ncm_sub_secoes] (
    [cod_sub_secao] VARCHAR(2) NULL,
    [cod_secao] VARCHAR(2) NULL,
    [desc_sub_secao] TEXT NULL
);

CREATE TABLE [dbo].[NegContato] (
    [CodParceiro] INT NOT NULL,
    [CodNegocio] INT NOT NULL
);

CREATE TABLE [dbo].[NegEdicao] (
    [CodNegocio] INT NOT NULL,
    [CodParceiro] INT NOT NULL,
    [CodEdicao] INT NOT NULL
);

CREATE TABLE [dbo].[NegEdicaoBolsa] (
    [Codedicao] INT NOT NULL,
    [Codparceiro] INT NOT NULL,
    [CodNegocio] INT NOT NULL
);

CREATE TABLE [dbo].[Negocio] (
    [CodParceiro] INT NOT NULL,
    [CodNegocio] INT NOT NULL,
    [CodAssinatura] INT NOT NULL,
    [Cod_Produto] VARCHAR(4) NULL,
    [Cod_Posicao] VARCHAR(2) NULL,
    [Cod_Capitulo] VARCHAR(2) NULL,
    [CodUnid] INT NULL,
    [Caracteristica] TEXT NULL,
    [QtdProduzida] INT NULL,
    [Dt_Inclusao] DATETIME NULL,
    [LocalNacional] VARCHAR(1) NULL,
    [TipoNeg] VARCHAR(1) NULL,
    [CodClasse] INT NULL,
    [DescEspanhol] TEXT NULL,
    [DescIngles] TEXT NULL,
    [Dt_Renovacao] DATETIME NULL
);

CREATE TABLE [dbo].[NegocioBolsa] (
    [CodNegocio] INT NOT NULL,
    [CodParceiro] INT NOT NULL,
    [Codunid] INT NULL,
    [Cod_produto] CHAR(4) NULL,
    [Cod_posicao] CHAR(2) NULL,
    [Cod_capitulo] CHAR(2) NULL,
    [Codclasse] INT NULL,
    [Caracteristica] CHAR(200) NULL,
    [qtdproduzida] NUMERIC(18,0) NULL,
    [LocalNacional] CHAR(10) NULL,
    [dt_Inclusao] DATETIME NULL,
    [tiponeg] CHAR(2) NULL,
    [Dt_Validade] DATETIME NULL,
    [Dt_Renovacao] DATETIME NULL
);

CREATE TABLE [dbo].[NegocioRoda] (
    [CodEvtoRoda] INT NOT NULL,
    [CodParticipante] INT NOT NULL,
    [SeqNegocioRoda] INT NOT NULL,
    [Cod_Produto] CHAR(4) NOT NULL,
    [Cod_Posicao] CHAR(2) NOT NULL,
    [Cod_Capitulo] CHAR(2) NOT NULL,
    [codunid] INT NULL,
    [caracteristica] CHAR(200) NOT NULL,
    [qtdproduzida] INT NOT NULL,
    [tiponeg] CHAR(1) NOT NULL,
    [CodClasse] INT NULL,
    [CodTpUnidade] INT NULL
);

CREATE TABLE [dbo].[NFVeiculo] (
    [CodNFVeiculo] INT NOT NULL,
    [CodParceiro] INT NOT NULL,
    [NumNotaFiscal] INT NOT NULL,
    [SerieNotaFiscal] VARCHAR(3) NOT NULL,
    [TpNotaFiscal] TINYINT NOT NULL,
    [VlNotaFiscal] FLOAT NOT NULL,
    [QtdNotaFiscal] FLOAT NOT NULL,
    [KmAbastecimento] INT NOT NULL,
    [DataNotaFiscal] DATETIME NULL,
    [Status] BIT NOT NULL,
    [Chassi] VARCHAR(20) NULL
);

CREATE TABLE [dbo].[NivelAcesso] (
    [CodNivelAcesso] TINYINT NOT NULL,
    [DescNivelAcesso] VARCHAR(50) NOT NULL,
    [PercDesconto] FLOAT NULL,
    [Status] TINYINT NULL
);

CREATE TABLE [dbo].[NotasAvaliacao] (
    [NumNota] TINYINT NOT NULL,
    [DescNota] VARCHAR(30) NOT NULL
);

CREATE TABLE [dbo].[ObjetoReqPessoal] (
    [CodObjetoReq] INT NOT NULL,
    [DescObjetoReq] VARCHAR(100) NOT NULL,
    [DescResumObjeto] VARCHAR(50) NOT NULL,
    [CodTipoReq] TINYINT NOT NULL,
    [Status] TINYINT NOT NULL
);

CREATE TABLE [dbo].[ObjetoRequisicao] (
    [CodObjetoReq] INT NOT NULL,
    [CodNatCompra] TINYINT NOT NULL,
    [Descricao] VARCHAR(120) NULL,
    [Especificacao] TEXT NULL
);

CREATE TABLE [dbo].[OcorrenciaMnt] (
    [CodOcorrencia] INT NOT NULL,
    [Chassi] VARCHAR(20) NOT NULL,
    [CodInformante] INT NOT NULL,
    [CodSupervisor] INT NULL,
    [Data] DATETIME NOT NULL,
    [DescOcorrencia] VARCHAR(150) NOT NULL,
    [Status] BIT NOT NULL,
    [DataRegistro] DATETIME NULL,
    [DataCiencia] DATETIME NULL
);

CREATE TABLE [dbo].[OcupacaoSala] (
    [CodOcupacaoSala] TINYINT NOT NULL,
    [DescOcupacaoSala] VARCHAR(80) NOT NULL,
    [HoraInicial] DATETIME NOT NULL,
    [HoraFinal] DATETIME NOT NULL
);

CREATE TABLE [dbo].[OFF_AgendaConsultor] (
    [Consultor] INT NOT NULL,
    [DataAgendamento] DATETIME NOT NULL,
    [HoraInicial] DATETIME NOT NULL,
    [HoraIntervalo] DATETIME NULL,
    [HoraRetorno] DATETIME NULL,
    [HoraFinal] DATETIME NOT NULL,
    [UnidadeOperacional] INT NOT NULL,
    [Status] BIT NOT NULL
);

CREATE TABLE [dbo].[OFF_agendamento] (
    [CodConsultor] INT NOT NULL,
    [Data] SMALLDATETIME NOT NULL,
    [Hora] DATETIME NOT NULL,
    [SeqAgendamento] INT NOT NULL,
    [Status] CHAR(1) NOT NULL,
    [CodParceiro] INT NOT NULL,
    [CodPessoaFisica] INT NULL,
    [CodMeioAgendamento] INT NOT NULL,
    [ClasseAgendamento] CHAR(1) NOT NULL,
    [VisitaExterna] BIT NOT NULL,
    [IndPresenca] BIT NOT NULL,
    [CodRecepcao] INT NULL
);

CREATE TABLE [dbo].[OFF_AGENDAMENTOVISITAEXT] (
    [CodConsultor] INT NOT NULL,
    [Data] SMALLDATETIME NOT NULL,
    [Hora] DATETIME NOT NULL,
    [CodParceiro] INT NOT NULL,
    [Cep] INT NOT NULL,
    [CodPais] INT NOT NULL,
    [CodEstado] INT NOT NULL,
    [CodCidade] INT NOT NULL,
    [CodBairro] INT NOT NULL,
    [CodTpLog] INT NULL,
    [DescEndereco] VARCHAR(60) NULL,
    [Numero] VARCHAR(6) NULL,
    [Complemento] VARCHAR(30) NULL
);

CREATE TABLE [dbo].[OLD_SetorPrioritario] (
    [CodSetorPrioritario] INT NOT NULL,
    [DescSetorPrioritario] VARCHAR(80) NULL,
    [Situacao] CHAR(1) NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[OLD_TBPLAN01ProjetoAtividade] (
    [CodProjAtiv_PLAN01] UNIQUEIDENTIFIER NOT NULL,
    [CodColaborador_PLAN13] UNIQUEIDENTIFIER NOT NULL,
    [CodSetor_PLAN20] SMALLINT NULL,
    [CodColaborador_PLAN13_CoodEst] UNIQUEIDENTIFIER NULL,
    [CodColaborador_PLAN13_CoodReg] UNIQUEIDENTIFIER NULL,
    [CodColaborador_PLAN13_CoodNac] UNIQUEIDENTIFIER NULL,
    [CodPrograma_PLAN08] UNIQUEIDENTIFIER NULL,
    [CodRegiaoSebrae_PLAN21] UNIQUEIDENTIFIER NULL,
    [TpProjAtiv] CHAR(2) NOT NULL,
    [Tipologia] CHAR(2) NOT NULL,
    [TitProjAtiv] VARCHAR(100) NOT NULL,
    [PublicoAlvo] VARCHAR(500) NULL,
    [OrgPublicoAlvo] CHAR(1) NULL,
    [ObjetivoGeral] VARCHAR(500) NULL,
    [DtInicio] DATETIME NULL,
    [DtTermino] DATETIME NULL,
    [DtCadastro] DATETIME NOT NULL,
    [DtAlteracao] DATETIME NOT NULL,
    [NuProjAtiv] INT NOT NULL,
    [FundoReserva] CHAR(1) NULL,
    [Aceite] CHAR(1) NULL,
    [ComentarioEquipe] VARCHAR(1000) NULL,
    [NuPadrao] SMALLINT NULL,
    [EmpresasAtendidas] INT NULL,
    [PessoasAtendidas] INT NULL,
    [ComentarioGestor] VARCHAR(1000) NULL,
    [TipoGestao] CHAR(1) NULL,
    [EmpresasInformais] INT NULL,
    [PessoasAtingidas] INT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[OLD_TBPLAN14Acao] (
    [CodAcao_PLAN14] UNIQUEIDENTIFIER NOT NULL,
    [CodProjAtiv_PLAN01] UNIQUEIDENTIFIER NOT NULL,
    [CodClasFuncional_PLAN34] INT NULL,
    [CodEntidade_PLAN04] UNIQUEIDENTIFIER NULL,
    [SgUnidadeOrg_PLAN12] VARCHAR(10) NULL,
    [OrdemAcao] SMALLINT NOT NULL,
    [NmAcao] VARCHAR(100) NOT NULL,
    [DscAcao] VARCHAR(500) NULL,
    [Ativa] CHAR(1) NULL,
    [Inclusao] CHAR(1) NULL,
    [CodObj] INT NOT NULL,
    [Transferencia] CHAR(1) NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[OporContato] (
    [CodParceiro] INT NOT NULL,
    [CodOport] INT NOT NULL
);

CREATE TABLE [dbo].[OportEdicao] (
    [CodParceiro] INT NOT NULL,
    [CodOport] INT NOT NULL,
    [CodEdicao] INT NOT NULL
);

CREATE TABLE [dbo].[OportEdicaoBolsa] (
    [CodOport] INT NOT NULL,
    [CodParceiro] INT NOT NULL,
    [Codedicao] INT NOT NULL
);

CREATE TABLE [dbo].[OportNegComunicacao] (
    [CodOport] INT NOT NULL,
    [CodContato] INT NOT NULL,
    [CodNegocio] INT NOT NULL,
    [DescComunicacao] CHAR(60) NULL
);

CREATE TABLE [dbo].[OportNegContato] (
    [CodOport] INT NOT NULL,
    [CodContato] INT NOT NULL,
    [CodNegocio] INT NOT NULL,
    [IndNegOport] CHAR(2) NULL
);

CREATE TABLE [dbo].[Oportunidade] (
    [CodParceiro] INT NOT NULL,
    [CodOport] INT NOT NULL,
    [CodAssinatura] INT NULL,
    [Cod_Produto] VARCHAR(4) NULL,
    [Cod_Posicao] VARCHAR(2) NULL,
    [Cod_Capitulo] VARCHAR(2) NULL,
    [Cod_Classe] INT NULL,
    [DescOport] TEXT NULL,
    [DescOportIng] TEXT NULL,
    [DescOportEsp] TEXT NULL,
    [Dt_Inclusao] DATETIME NULL,
    [LocalNacional] CHAR(1) NOT NULL,
    [Dt_Renovacao] DATETIME NULL,
    [TipoOport] CHAR(1) NOT NULL
);

CREATE TABLE [dbo].[Oportunidade_Backup] (
    [CodParceiro] INT NOT NULL,
    [CodOport] INT NOT NULL,
    [CodAssinatura] INT NULL,
    [Cod_Produto] VARCHAR(4) NULL,
    [Cod_Posicao] VARCHAR(2) NULL,
    [Cod_Capitulo] VARCHAR(2) NULL,
    [Cod_Classe] INT NULL,
    [DescOport] VARCHAR(200) NULL,
    [DescOportIng] VARCHAR(200) NULL,
    [DescOportEsp] VARCHAR(200) NULL,
    [Dt_Inclusao] DATETIME NULL,
    [LocalNacional] CHAR(1) NOT NULL,
    [Dt_Renovacao] DATETIME NULL,
    [TipoOport] CHAR(1) NOT NULL
);

CREATE TABLE [dbo].[oportunidadeBolsa] (
    [Codoport] INT NOT NULL,
    [CodParceiro] INT NOT NULL,
    [CodClasse] INT NOT NULL,
    [DescOport] VARCHAR(180) NOT NULL,
    [DT_Inclusao] SMALLDATETIME NOT NULL,
    [LocalNacional] CHAR(8) NOT NULL,
    [DT_Validade] SMALLDATETIME NULL,
    [DT_Renovacao] SMALLDATETIME NULL,
    [TipoOport] CHAR(2) NOT NULL
);

CREATE TABLE [dbo].[OportunidadeRoda] (
    [CodEvtoRoda] INT NOT NULL,
    [CodParticipante] INT NOT NULL,
    [SeqOportRoda] INT NOT NULL,
    [Cod_Produto] CHAR(4) NOT NULL,
    [Cod_Posicao] CHAR(2) NOT NULL,
    [Cod_Capitulo] CHAR(2) NOT NULL,
    [CodClasse] SMALLINT NOT NULL,
    [DescOportRoda] CHAR(200) NOT NULL,
    [TipoOport] CHAR(1) NOT NULL
);

CREATE TABLE [dbo].[OrigemDemanda] (
    [CodOrigemDemanda] INT NOT NULL,
    [DescOrigemDemanda] VARCHAR(255) NULL,
    [Situacao] TINYINT NULL
);

CREATE TABLE [dbo].[PACOTETURISTICOEVENTO] (
    [CodPacoteTuristico] INT NOT NULL,
    [CodEventoMC] INT NULL,
    [CodAgenciaTurismo] INT NULL,
    [Descricao] VARCHAR(255) NULL,
    [Valor] REAL NULL,
    [Hotel] VARCHAR(255) NULL,
    [Transporte] VARCHAR(255) NULL,
    [CondicaoPagamento] VARCHAR(255) NULL,
    [CodSebrae] INT NOT NULL
);

CREATE TABLE [dbo].[PagtoBolsa] (
    [CodPagto] INT NOT NULL,
    [CodNegocio] INT NULL,
    [CodParceiro] INT NOT NULL,
    [CodTipoPagto] INT NOT NULL,
    [CodOport] INT NULL,
    [DataPagto] SMALLDATETIME NULL,
    [codedicao] INT NULL
);

CREATE TABLE [dbo].[Pais] (
    [CodPais] SMALLINT NOT NULL,
    [DescPais] VARCHAR(30) NOT NULL,
    [AbrevPais] VARCHAR(3) NOT NULL,
    [Area] INT NULL,
    [Percapita] FLOAT NULL,
    [Pib] FLOAT NULL,
    [Populacao] INT NULL,
    [IndAtuPais] VARCHAR(3) NOT NULL,
    [IndNacional] VARCHAR(3) NULL,
    [Nacionalidade] VARCHAR(20) NULL,
    [DataAtualiz] SMALLDATETIME NULL,
    [Fonte] VARCHAR(50) NULL,
    [IndAtualizacao] BIT NOT NULL,
    [IndNacaoPadrao] BIT NOT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL,
    [SITUACAO] BIT NOT NULL
);

CREATE TABLE [dbo].[PalavraAssociadaAssunto] (
    [CodPalavraAssociada] INT NOT NULL,
    [CodAssuntoAtributo] INT NOT NULL,
    [DescPalavraAssociada] VARCHAR(50) NOT NULL,
    [TipoPalavraAssociada] TINYINT NULL
);

CREATE TABLE [dbo].[PalavrasNaoPesquisa] (
    [CodPalavra] SMALLINT NOT NULL,
    [TipoPesquisa] TINYINT NOT NULL,
    [DescPalavra] VARCHAR(15) NOT NULL
);

CREATE TABLE [dbo].[PalavrasProibidas] (
    [Codigo] INT NOT NULL,
    [Descricao] VARCHAR(50) NOT NULL
);

CREATE TABLE [dbo].[PalavrasSenha] (
    [CodPalavra] INT NOT NULL,
    [CodParceiro] INT NOT NULL,
    [PalavraSenha] CHAR(100) NOT NULL
);

CREATE TABLE [dbo].[PalavrasSinonimo] (
    [CodSinonimo] INT NOT NULL,
    [TipoPesquisa] TINYINT NOT NULL,
    [DescPalavra] VARCHAR(15) NOT NULL,
    [DescSinonimo] VARCHAR(15) NOT NULL
);

CREATE TABLE [dbo].[Parametro] (
    [CodParametro] INT NOT NULL,
    [TipoParametro] SMALLINT NOT NULL,
    [IndParametro] SMALLINT NULL,
    [DescParametro] VARCHAR(250) NOT NULL,
    [Situacao] TINYINT NULL
);

CREATE TABLE [dbo].[ParametroAdm] (
    [AplicacaoCodigo] INT NOT NULL,
    [CodTipoProduto] INT NULL,
    [CodGrupoAdm] INT NULL,
    [CodUnidOpe] INT NULL,
    [integrarRM] BIT NULL,
    [GerarLogCadastro] CHAR(1) NULL,
    [GerarLogCadastroDetalhado] CHAR(1) NULL
);

CREATE TABLE [dbo].[ParametroAtendInternet] (
    [QtdDiasResposta] INT NULL,
    [UrlDiretorioAnexos] VARCHAR(120) NULL
);

CREATE TABLE [dbo].[ParametroAteSIAD] (
    [CodAB] SMALLINT NULL,
    [CodAE] UNIQUEIDENTIFIER NULL,
    [CodSOL] UNIQUEIDENTIFIER NULL,
    [CodOBJ] SMALLINT NULL,
    [ano] INT NULL
);

CREATE TABLE [dbo].[ParametroAvaliacao] (
    [CodParametro] INT NOT NULL,
    [Nome] VARCHAR(50) NULL,
    [Descricao] TEXT NULL,
    [Natureza] BIT NOT NULL,
    [CodDimensao] INT NULL
);

CREATE TABLE [dbo].[ParametroBia] (
    [ID_Parametro] VARCHAR(30) NULL,
    [DESC_Parametro] VARCHAR(300) NULL,
    [VALOR_Parametro] VARCHAR(200) NULL
);

CREATE TABLE [dbo].[ParametroCDI] (
    [IndCodAutomacao] TINYINT NOT NULL,
    [PercPrecificacao] FLOAT NULL,
    [IndNotaFiscalRecibo] TINYINT NOT NULL,
    [NumNotaFiscal] INT NULL,
    [NumRecibo] INT NULL,
    [SeqCodAutomacao] INT NULL
);

CREATE TABLE [dbo].[ParametroCDISIAD] (
    [CodAB] SMALLINT NULL,
    [CodAE] UNIQUEIDENTIFIER NULL,
    [CodSOL] UNIQUEIDENTIFIER NULL,
    [CodOBJ] SMALLINT NULL,
    [ano] INT NULL
);

CREATE TABLE [dbo].[ParametroCliente] (
    [UmaPalavraNomePJ] CHAR(1) NULL,
    [UmaPalavraNomePF] CHAR(1) NULL,
    [CPFObrigatorio] CHAR(1) NULL,
    [CNPJObrigatorio] CHAR(1) NULL
);

CREATE TABLE [dbo].[ParametroConSIAD] (
    [CodAB] SMALLINT NULL,
    [CodAE] UNIQUEIDENTIFIER NULL,
    [CodSOL] UNIQUEIDENTIFIER NULL,
    [CodOBJ] SMALLINT NULL,
    [Ano] INT NULL
);

CREATE TABLE [dbo].[ParametroEduEmp] (
    [CodParSistemas] INT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [CodEscritorio] INT NOT NULL,
    [CodArea] INT NOT NULL,
    [CodCidade] INT NOT NULL,
    [CodLocal] INT NOT NULL,
    [HoraInicial] DATETIME NOT NULL,
    [HoraFinal] DATETIME NOT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[ParametroExport] (
    [NomeSist] VARCHAR(100) NULL,
    [IndExport] TINYINT NULL,
    [DataExport] DATETIME NULL
);

CREATE TABLE [dbo].[ParametroIndicador] (
    [CodIndicador] INT NOT NULL,
    [CodParametro] INT NOT NULL
);

CREATE TABLE [dbo].[ParametroLista] (
    [CodParametro] INT NOT NULL,
    [CodItem] SMALLINT NOT NULL,
    [TipoLista] TINYINT NOT NULL,
    [DescItem] VARCHAR(150) NULL,
    [IndProblema] TINYINT NULL
);

CREATE TABLE [dbo].[ParametroNum] (
    [CodParametro] INT NOT NULL,
    [CodParametroNum] SMALLINT NOT NULL,
    [TipoNumero] TINYINT NULL,
    [Intervalo] TINYINT NULL,
    [CodIntervalo] INT NULL,
    [ValorI] INT NULL,
    [ValorF] INT NULL,
    [IndProblema] TINYINT NULL
);

CREATE TABLE [dbo].[PARAMETROPESQUISAEMPINTERVALO] (
    [CodParametroPesquisa] INT NOT NULL,
    [CodIntervalo] INT NOT NULL,
    [ValorInicial] FLOAT NOT NULL,
    [ValorFinal] FLOAT NOT NULL,
    [FormaObtencao] CHAR(1) NOT NULL
);

CREATE TABLE [dbo].[PARAMETROPESQUISAEMPLISTA] (
    [CodParametroPesquisa] INT NOT NULL,
    [TipoLista] CHAR(1) NOT NULL,
    [TipoEscolha] CHAR(1) NULL
);

CREATE TABLE [dbo].[PARAMETROPESQUISAEMPLISTAINSER] (
    [CodParametroPesquisa] INT NOT NULL,
    [CodItem] INT NOT NULL,
    [DescricaoItem] VARCHAR(255) NULL
);

CREATE TABLE [dbo].[PARAMETROPESQUISAEMPLISTATAB] (
    [CodParametroPesquisa] INT NOT NULL,
    [Tabela] VARCHAR(255) NOT NULL,
    [Campo] VARCHAR(255) NOT NULL
);

CREATE TABLE [dbo].[PARAMETROPESQUISAEMPNUMERO] (
    [CodParametroPesquisa] INT NOT NULL,
    [TipoNumero] CHAR(1) NOT NULL,
    [Intervalo] BIT NOT NULL,
    [ValorPadrao] FLOAT NULL,
    [ValorFixo] BIT NOT NULL
);

CREATE TABLE [dbo].[PARAMETROPESQUISAEMPRESARIAL] (
    [CodParametroPesquisa] INT NOT NULL,
    [Descricao] VARCHAR(255) NULL,
    [TipoParametro] CHAR(1) NULL,
    [Opcional] BIT NOT NULL,
    [Empresario] BIT NOT NULL,
    [Candidato] BIT NOT NULL,
    [PreAtendimento] BIT NOT NULL,
    [AutoAtendimento] BIT NOT NULL,
    [Personalizado] BIT NOT NULL,
    [ParametroSuperior] INT NULL,
    [Componente] VARCHAR(3) NULL,
    [Outros] BIT NOT NULL
);

CREATE TABLE [dbo].[PARAMETROPESQUISAEMPTEXTO] (
    [CodParametroPesquisa] INT NOT NULL,
    [TipoTexto] CHAR(1) NULL,
    [TextoPadrao] TEXT NULL,
    [NumeroCaracteres] INT NULL
);

CREATE TABLE [dbo].[Parametros] (
    [CodCampo] VARCHAR(15) NOT NULL,
    [TabelaCampo] VARCHAR(25) NULL,
    [ValorCampo] VARCHAR(100) NOT NULL,
    [DescCampo] VARCHAR(150) NULL
);

CREATE TABLE [dbo].[PARAMETROS_CONEXAO] (
    [UF] VARCHAR(20) NOT NULL,
    [Server] VARCHAR(255) NOT NULL,
    [DataHora] DATETIME NULL,
    [Status] TINYINT NULL
);

CREATE TABLE [dbo].[ParametrosAte] (
    [TempoEsperaAtendPerson] SMALLINT NULL,
    [PrazoValidadePF] TINYINT NULL,
    [PrazoValidadePJ] TINYINT NULL,
    [TempoAtendPersonal] SMALLINT NULL,
    [TempoAutoAtend] SMALLINT NULL,
    [TempoMedioAutoAtend] SMALLINT NULL,
    [TempoPreAtend] SMALLINT NULL,
    [NumTerminais] SMALLINT NULL,
    [DataPreAtend] SMALLDATETIME NULL,
    [DataAtendPersonalizado] SMALLDATETIME NULL,
    [ParamPreAtendAnterior] SMALLINT NULL,
    [ParamAtendPersonAnterior] SMALLINT NULL,
    [GrupoGestor] INT NULL,
    [TempoEncaixe] INT NULL,
    [TempoEsperaPreAtend] SMALLINT NULL,
    [EmailPadrao] VARCHAR(30) NULL,
    [IndAntecedencia] SMALLINT NULL
);

CREATE TABLE [dbo].[ParametrosAteFaseI] (
    [aplicacaoCodigo] INT NOT NULL,
    [codMeioAtend] INT NULL,
    [CodTipoServico] INT NULL,
    [CodConstJurInformal] INT NULL,
    [AssuntosMetasFis] VARCHAR(200) NULL
);

CREATE TABLE [dbo].[ParametrosBEmp] (
    [IdadeJovem] INT NULL
);

CREATE TABLE [dbo].[ParametrosCad] (
    [AplicacaoCodigo] INT NOT NULL,
    [CodClassificacao] INT NULL,
    [CodCargoRepres] INT NULL
);

CREATE TABLE [dbo].[ParametrosHD] (
    [CodGrupoTecnicos] INT NOT NULL,
    [CodGrupoUsuarios] INT NOT NULL
);

CREATE TABLE [dbo].[ParametroSIAD] (
    [ano] INT NULL,
    [NomeBase] VARCHAR(100) NULL,
    [ExisteBase] TINYINT NULL
);

CREATE TABLE [dbo].[ParametrosINF] (
    [TempoAtendimento] SMALLINT NULL,
    [DataAtendimento] DATETIME NULL,
    [ParamAtendimentoAnterior] SMALLINT NULL,
    [GrupoGestor] INT NULL,
    [EnviarEmail] BIT NULL,
    [ApenasUsuario] BIT NULL
);

CREATE TABLE [dbo].[ParametrosTRANS] (
    [LimiteRM] INT NULL,
    [LimiteOutras] INT NULL,
    [CodMicroReg] INT NULL
);

CREATE TABLE [dbo].[ParametrosTrein] (
    [AplicacaoCodigo] INT NOT NULL,
    [CodCargoRepr] INT NULL,
    [Agentes] CHAR(15) NULL,
    [CargaHoraMax] INT NULL,
    [ResCompromete] TINYINT NULL,
    [PermitirReserva] TINYINT NULL,
    [IndAvaliarTec] TINYINT NULL,
    [AltTituloSolic] CHAR(1) NULL,
    [QtdDiasSolic] CHAR(4) NULL,
    [AltDespAgend] CHAR(1) NULL,
    [NotifAutomatica] CHAR(1) NULL,
    [GerarContrato] CHAR(1) NULL,
    [IndAssCoordUnidOper] CHAR(1) NULL,
    [TextoEmailConsultores] TEXT NULL,
    [LinkDocumento] VARCHAR(150) NULL,
    [UtilizaLogistica] CHAR(1) NULL
);

CREATE TABLE [dbo].[ParametrosUsuarioEdicaoBOLSA] (
    [UsuarioLogin] CHAR(20) NOT NULL,
    [CodEdicao] INT NOT NULL
);

CREATE TABLE [dbo].[ParametroText] (
    [CodParametro] INT NOT NULL,
    [TipoTexto] TINYINT NOT NULL
);

CREATE TABLE [dbo].[Parceiro] (
    [CodParceiro] INT NOT NULL,
    [TipoParceiro] VARCHAR(1) NOT NULL,
    [NomeRazaoSocial] VARCHAR(120) NULL,
    [NomeAbrevFantasia] VARCHAR(80) NULL,
    [CgcCpf] NUMERIC(15,0) NULL,
    [IndAtu] VARCHAR(3) NULL,
    [DataInc] SMALLDATETIME NOT NULL,
    [DataAtu] SMALLDATETIME NOT NULL,
    [CodUnidOperInc] INT NULL,
    [CodUnidOperAtu] INT NULL,
    [ControleRede] SMALLINT NULL,
    [Tipo] INT NULL,
    [IndAtualizacao] SMALLINT NULL,
    [CodSebrae] INT NOT NULL,
    [CodResponsavel] INT NULL,
    [ReceberInfoSEBRAE] CHAR(1) NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL,
    [Situacao] INT NOT NULL,
    [Deficiencia] CHAR(1) NULL,
    [Deficiencia_Resposta] CHAR(1) NOT NULL
);

CREATE TABLE [dbo].[Parceiro_Banco] (
    [CodParceiro] INT NOT NULL,
    [CodBanco] INT NOT NULL
);

CREATE TABLE [dbo].[Parceiro_Inclusao] (
    [CodParceiro] INT NOT NULL,
    [TipoParceiro] VARCHAR(1) NOT NULL,
    [NomeRazaoSocial] VARCHAR(120) NULL,
    [NomeAbrevFantasia] VARCHAR(80) NULL,
    [CgcCpf] NUMERIC(15,0) NULL,
    [IndAtu] VARCHAR(3) NULL,
    [DataInc] SMALLDATETIME NOT NULL,
    [DataAtu] SMALLDATETIME NOT NULL,
    [CodUnidOperInc] INT NULL,
    [CodUnidOperAtu] INT NULL,
    [ControleRede] SMALLINT NULL,
    [Tipo] INT NULL,
    [IndAtualizacao] SMALLINT NULL,
    [CodSebrae] INT NOT NULL,
    [CodResponsavel] INT NULL,
    [ReceberInfoSEBRAE] CHAR(1) NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL,
    [Situacao] INT NOT NULL,
    [DataInclusao] DATETIME NULL,
    [TipoInclusao] CHAR(1) NULL
);

CREATE TABLE [dbo].[ParceiroBloqueioCampos] (
    [Tipo] CHAR(1) NOT NULL,
    [Campo] VARCHAR(25) NOT NULL,
    [Bloqueio] SMALLINT NOT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[ParceiroBrasilEmp] (
    [CodParceiro_BEmp] INT NOT NULL,
    [NomeRazaoSocial] VARCHAR(50) NULL,
    [Nome] VARCHAR(50) NULL,
    [CgcCpf] NUMERIC(15,0) NULL,
    [DataInc] SMALLDATETIME NULL,
    [DataAtu] SMALLDATETIME NULL,
    [CodCep] CHAR(8) NULL,
    [EndEstado] VARCHAR(40) NULL,
    [EndCidade] VARCHAR(60) NULL,
    [EndBairro] VARCHAR(100) NULL,
    [EndLogradouro] VARCHAR(125) NULL,
    [EndTipoLogr] VARCHAR(8) NULL,
    [EndNumero] VARCHAR(6) NULL,
    [EndComplemento] VARCHAR(120) NULL,
    [ContatoPreferido] CHAR(1) NULL,
    [SitBanco] CHAR(1) NULL,
    [SitFornec] CHAR(1) NULL,
    [SitImpComp] CHAR(1) NULL,
    [MidiaPreferida] CHAR(2) NULL,
    [MidiaFolheto] CHAR(1) NULL,
    [MidiaInternet] CHAR(1) NULL,
    [MidiaJornal] CHAR(1) NULL,
    [MidiaOutDoor] CHAR(1) NULL,
    [MidiaOutro] CHAR(1) NULL,
    [MidiaRadio] CHAR(1) NULL,
    [MidiaRevista] CHAR(1) NULL,
    [MidiaTv] CHAR(1) NULL,
    [Cap_CreditoOrientado] CHAR(1) NULL,
    [Cap_Gerencial] CHAR(1) NULL,
    [Cap_Tecnologia] CHAR(1) NULL,
    [CodFaturamento] CHAR(1) NULL,
    [PromoAtendimento] CHAR(1) NULL,
    [PromoEncontro] CHAR(1) NULL,
    [PromoOutro] CHAR(1) NULL,
    [PromoPalestra] CHAR(1) NULL,
    [PromoReuniao] CHAR(1) NULL,
    [PromoSeminario] CHAR(1) NULL,
    [AtividadeFim] TEXT NULL,
    [NomeResp] VARCHAR(50) NULL,
    [CPFResp] VARCHAR(11) NULL,
    [EMailResp] VARCHAR(40) NULL,
    [CepInstResp] CHAR(8) NULL,
    [EMailInstResp] VARCHAR(40) NULL,
    [ObsInstResp] TEXT NULL,
    [CodInst] CHAR(6) NULL,
    [Credito] CHAR(1) NULL,
    [PlanoNegocio] CHAR(1) NULL,
    [PosCredito] CHAR(1) NULL,
    [CodSecaoCnae] CHAR(2) NULL,
    [CodGrupo] CHAR(1) NULL,
    [CodRamo] CHAR(1) NULL,
    [Telefone] VARCHAR(40) NULL,
    [Fax] VARCHAR(40) NULL,
    [EMail] VARCHAR(40) NULL,
    [NumFunc] INT NULL,
    [TipoParceiro] CHAR(1) NULL,
    [codUnidOper] INT NULL,
    [CodCnaeFiscal] VARCHAR(2) NULL
);

CREATE TABLE [dbo].[ParceiroCapacitacaoBEmp] (
    [CodParceiro_BEmp] INT NOT NULL,
    [CodFaseBEmp] INT NOT NULL,
    [CodEvento] INT NOT NULL
);

CREATE TABLE [dbo].[ParceiroControleQualidade] (
    [CodParceiro] INT NOT NULL,
    [Campo] VARCHAR(25) NOT NULL,
    [Data] DATETIME NOT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL,
    [CodSebrae] INT NOT NULL
);

CREATE TABLE [dbo].[PARCEIROEVENTOMC] (
    [CodEventoMC] INT NOT NULL,
    [CodParceiro] INT NOT NULL
);

CREATE TABLE [dbo].[ParceiroFaseBEmp] (
    [CodParceiro_BEmp] INT NOT NULL,
    [CodFaseBEmp] INT NOT NULL,
    [CodSituacaoBEmp] INT NOT NULL,
    [DataInicial] DATETIME NOT NULL,
    [DataFinal] DATETIME NULL,
    [Acompanhamento] TEXT NULL
);

CREATE TABLE [dbo].[ParceiroGrupoParceiro] (
    [CodParceiro] INT NOT NULL,
    [CodGrupoParceiro] INT NOT NULL
);

CREATE TABLE [dbo].[ParceiroInternet] (
    [CodParceiroInternet] BIGINT NOT NULL,
    [Email] VARCHAR(80) NULL,
    [NomeParceiroInternet] VARCHAR(120) NOT NULL,
    [SenhaInternet] VARCHAR(20) NOT NULL,
    [CodParceiro] INT NULL,
    [SenhaBloqueada] CHAR(1) NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[ParceiroLogOperacao] (
    [CodParceiro] INT NOT NULL,
    [DataHora] DATETIME NOT NULL,
    [Operacao] CHAR(1) NOT NULL,
    [SEBRAEResp] INT NOT NULL,
    [LoginResp] VARCHAR(30) NOT NULL,
    [Cliente] VARCHAR(120) NOT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[ParceiroLogOperacaoCampos] (
    [Codparceiro] INT NOT NULL,
    [DataHora] DATETIME NOT NULL,
    [Campo] VARCHAR(50) NOT NULL,
    [Operacao] CHAR(1) NOT NULL,
    [Sequencial] INT NOT NULL,
    [ConteudoANT] VARCHAR(255) NULL,
    [ConteudoATUAL] VARCHAR(255) NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[ParceiroProjeto] (
    [CodParceiro] INT NOT NULL,
    [CodSEBRAE] CHAR(2) NOT NULL,
    [CodProjeto] UNIQUEIDENTIFIER NOT NULL,
    [DataCadastro] DATETIME NULL,
    [DataAtualizacao] DATETIME NULL,
    [Situacao] CHAR(1) NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[ParcelaConta] (
    [CodConta] INT NOT NULL,
    [NumSeqParc] TINYINT NOT NULL,
    [DataVecto] SMALLDATETIME NOT NULL,
    [DataPagto] SMALLDATETIME NULL,
    [ValorParcela] FLOAT NULL,
    [ValorPago] FLOAT NULL,
    [Banco] VARCHAR(4) NULL,
    [PracaComp] VARCHAR(3) NULL,
    [CodCartao] SMALLINT NULL,
    [NumDocumento] VARCHAR(25) NULL,
    [NumRecibo] INT NOT NULL,
    [NumReciboExterno] INT NULL,
    [Boleto] INT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[particao_ativecon] (
    [CodPesquisa] INT NOT NULL,
    [sequniversoamostra] SMALLINT NOT NULL,
    [seqparticao] SMALLINT NOT NULL,
    [SeqAtivEcon] INT NOT NULL,
    [CodClass] SMALLINT NULL,
    [CodAtivEcon] VARCHAR(5) NULL,
    [CodSetor] SMALLINT NULL,
    [CodCnaeFiscal] VARCHAR(2) NULL
);

CREATE TABLE [dbo].[particao_local] (
    [CodPais] SMALLINT NULL,
    [CodEst] SMALLINT NULL,
    [CodCid] INT NULL,
    [CodPesquisa] INT NOT NULL,
    [sequniversoamostra] SMALLINT NOT NULL,
    [seqparticao] SMALLINT NOT NULL,
    [seqparticaolocal] INT NOT NULL
);

CREATE TABLE [dbo].[particao_parceiro] (
    [CodPesquisa] INT NOT NULL,
    [SeqUniversoAmostra] SMALLINT NOT NULL,
    [SeqParticao] SMALLINT NOT NULL,
    [CodParceiro] INT NOT NULL
);

CREATE TABLE [dbo].[particao_porte] (
    [CodPesquisa] INT NOT NULL,
    [sequniversoamostra] SMALLINT NOT NULL,
    [seqparticao] SMALLINT NOT NULL,
    [CodPorte] VARCHAR(10) NOT NULL
);

CREATE TABLE [dbo].[Participante] (
    [codevento] INT NOT NULL,
    [codpessoapf] INT NOT NULL,
    [codpessoapj] INT NULL,
    [codcargcli] INT NULL,
    [fonecontato] VARCHAR(20) NULL,
    [indtelcont] VARCHAR(2) NULL,
    [indaprov] VARCHAR(20) NULL,
    [percfreq] INT NULL,
    [indreccert] VARCHAR(3) NULL,
    [codtipopartic] INT NOT NULL,
    [indformpagto] VARCHAR(3) NULL,
    [valordev] NUMERIC(11,2) NULL,
    [valordesc] NUMERIC(11,2) NULL,
    [numrecibo] INT NULL,
    [qtdviacertif] INT NULL,
    [codmidia] INT NULL,
    [indprogcurseb] VARCHAR(3) NULL,
    [indcancinsc] VARCHAR(3) NULL,
    [datainscricao] SMALLDATETIME NOT NULL,
    [datadesist] SMALLDATETIME NULL,
    [valorcred] NUMERIC(11,2) NULL,
    [indaprovacao] TINYINT NULL,
    [indinforsebrae] BIT NOT NULL,
    [indcancelada] BIT NOT NULL,
    [indreccertificado] BIT NOT NULL,
    [codcontaReceber] INT NULL,
    [Observacao] VARCHAR(200) NULL,
    [CodPagamento] INT NULL,
    [status] TINYINT NULL,
    [UsuarioResp] INT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[PARTICIPANTE_EVENTO] (
    [CodEventoMC] INT NOT NULL,
    [CodPartipante] INT NOT NULL,
    [CodPessoaJ] INT NULL,
    [CodTipoParticipante] INT NULL,
    [NumeroPassaporte] VARCHAR(50) NULL,
    [ValidadePassaporte] DATETIME NULL,
    [CodConta] INT NULL,
    [CodSebrae] INT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[participante_exclusao] (
    [codevento] INT NOT NULL,
    [codpessoapf] INT NOT NULL,
    [codpessoapj] INT NULL,
    [codcargcli] INT NULL,
    [fonecontato] VARCHAR(20) NULL,
    [indtelcont] VARCHAR(2) NULL,
    [indaprov] VARCHAR(20) NULL,
    [percfreq] INT NULL,
    [indreccert] VARCHAR(3) NULL,
    [codtipopartic] INT NOT NULL,
    [indformpagto] VARCHAR(3) NULL,
    [valordev] NUMERIC(11,2) NULL,
    [valordesc] NUMERIC(11,2) NULL,
    [numrecibo] INT NULL,
    [qtdviacertif] INT NULL,
    [codmidia] INT NULL,
    [indprogcurseb] VARCHAR(3) NULL,
    [indcancinsc] VARCHAR(3) NULL,
    [datainscricao] SMALLDATETIME NOT NULL,
    [datadesist] SMALLDATETIME NULL,
    [valorcred] NUMERIC(11,2) NULL,
    [indaprovacao] TINYINT NULL,
    [indinforsebrae] BIT NOT NULL,
    [indcancelada] BIT NOT NULL,
    [indreccertificado] BIT NOT NULL,
    [codcontaReceber] INT NULL,
    [Observacao] VARCHAR(200) NULL,
    [CodPagamento] INT NULL,
    [status] TINYINT NULL,
    [UsuarioResp] INT NULL,
    [rowguid] UNIQUEIDENTIFIER NULL
);

CREATE TABLE [dbo].[ParticipanteCompra] (
    [CodTpCompra] TINYINT NOT NULL,
    [AnoExercicio] INT NOT NULL,
    [SeqProcCompra] INT NOT NULL,
    [CodFornecedor] INT NOT NULL,
    [CodAutFaturamento] INT NOT NULL,
    [PrzEntrega] INT NULL,
    [DtEntrega] DATETIME NULL,
    [Status] TINYINT NULL,
    [CondParticipacao] VARCHAR(255) NULL,
    [CodCondPgto] INT NULL,
    [DataEmissao] DATETIME NULL,
    [validadeProc] INT NULL
);

CREATE TABLE [dbo].[ParticipanteCredito] (
    [CodParceiro] INT NOT NULL,
    [ValorCredito] FLOAT NULL
);

CREATE TABLE [dbo].[ParticipanteEvtoRoda] (
    [CodEvtoRoda] INT NOT NULL,
    [CodParticipante] INT NOT NULL,
    [CodLocal] INT NULL,
    [CodRecursoRoda] INT NULL,
    [CodPessoaJ] INT NULL,
    [Tipo] INT NOT NULL,
    [DataInscricao] SMALLDATETIME NOT NULL
);

CREATE TABLE [dbo].[ParticipanteKit] (
    [CodProdutoPortfolio] INT NOT NULL,
    [CodPessoaPF] INT NOT NULL,
    [CodTipoKit] INT NOT NULL,
    [CodKit] INT NULL,
    [CodContaReceber] INT NULL,
    [CodPessoaPJ] INT NULL,
    [CodCargCli] INT NULL,
    [CodTipoParticip] INT NOT NULL,
    [QtdViaCertificado] INT NULL,
    [DataInscricao] SMALLDATETIME NOT NULL,
    [IndInforSebrae] TINYINT NULL,
    [IndRecCertificado] TINYINT NULL,
    [DataEntrega] SMALLDATETIME NULL,
    [NumInscricao] INT NULL,
    [CodMidia] INT NULL,
    [IndEntAvaliacao] TINYINT NULL,
    [Observacao] VARCHAR(200) NULL,
    [CodPagamento] INT NULL,
    [status] TINYINT NULL,
    [UsuarioResp] INT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[ParticProcJuridico] (
    [CodProcJuridico] INT NOT NULL,
    [CodParticProcesso] INT NOT NULL,
    [CodTipoParticProcesso] TINYINT NOT NULL,
    [ObservParticProcesso] VARCHAR(150) NOT NULL,
    [Status] TINYINT NOT NULL
);

CREATE TABLE [dbo].[PendenciaAtendimento] (
    [CodAtendimento] INT NOT NULL,
    [DescPendencia] TEXT NOT NULL,
    [DataAtendimento] DATETIME NULL,
    [DataPrevisaoResposta] DATETIME NOT NULL,
    [DataResposta] DATETIME NULL,
    [DescResposta] TEXT NULL,
    [Status] TINYINT NOT NULL
);

CREATE TABLE [dbo].[PerguntaInternet] (
    [CodPerguntaInternet] INT NOT NULL,
    [TituloPergunta] VARCHAR(80) NULL,
    [Pergunta] TEXT NULL,
    [DataEnvioPergunta] DATETIME NULL,
    [CodFase] INT NULL,
    [CodEstado] SMALLINT NULL,
    [CodPerguntaInternetREL] INT NULL,
    [SeqPergunta] SMALLINT NOT NULL,
    [CodParceiroInternet] BIGINT NULL,
    [Situacao] CHAR(1) NOT NULL,
    [CodCategoria] INT NULL,
    [Ano] INT NULL,
    [CodProjeto] UNIQUEIDENTIFIER NULL,
    [CodAcao] INT NULL
);

CREATE TABLE [dbo].[PerguntaResposta] (
    [CodPerguntaResposta] INT NOT NULL,
    [TituloPergunta] VARCHAR(80) NOT NULL,
    [Pergunta] TEXT NOT NULL,
    [DataEnvioPergunta] DATETIME NOT NULL,
    [Resposta] TEXT NULL,
    [DataResposta] DATETIME NULL,
    [CodFase] INT NOT NULL,
    [CodEstado] SMALLINT NOT NULL,
    [CodTecnico] INT NULL,
    [CodPerguntaRespostaREL] INT NULL,
    [SeqPergunta] SMALLINT NOT NULL,
    [CodParceiroInternet] BIGINT NULL,
    [RespostaConcluida] BIT NULL
);

CREATE TABLE [dbo].[PerguntaRespostaAnexos] (
    [CodPerguntaResposta] INT NOT NULL,
    [NomeArquivo] VARCHAR(500) NOT NULL,
    [tipo] TINYINT NULL,
    [descArquivo] VARCHAR(500) NULL,
    [codConteudo] CHAR(10) NULL
);

CREATE TABLE [dbo].[PeriodoContrato] (
    [CodConsultoria] INT NOT NULL,
    [SeqPeriodo] INT NOT NULL,
    [DescPeriodo] VARCHAR(40) NOT NULL
);

CREATE TABLE [dbo].[PeriodoIndicador] (
    [CodPeriodo] TINYINT NOT NULL,
    [DescPeriodo] VARCHAR(15) NOT NULL,
    [QtdDias] INT NOT NULL,
    [Status] TINYINT NULL
);

CREATE TABLE [dbo].[Perspectiva] (
    [CodPerspectiva] SMALLINT NOT NULL,
    [DescPerspectiva] VARCHAR(100) NOT NULL,
    [PerspectivaNegativada] VARCHAR(100) NULL,
    [DescAtor] VARCHAR(80) NOT NULL,
    [Conceito] TEXT NULL,
    [Situacao] TINYINT NOT NULL
);

CREATE TABLE [dbo].[Pesquisa] (
    [CodPesquisa] INT NOT NULL,
    [DescPesquisa] VARCHAR(255) NULL,
    [Empresario] BIT NOT NULL,
    [Candidato] BIT NOT NULL,
    [Ativa] BIT NOT NULL,
    [Codclass] SMALLINT NULL,
    [CodAtivecon] VARCHAR(5) NULL,
    [Outros] BIT NOT NULL,
    [CodSetor] SMALLINT NULL,
    [CodCnaeFiscal] VARCHAR(2) NULL
);

CREATE TABLE [dbo].[PesquisaAvaliacao] (
    [CodPesquisa] INT NOT NULL,
    [Nome] VARCHAR(50) NULL,
    [Periodicidade] SMALLINT NULL,
    [Natureza] TINYINT NOT NULL,
    [CodFonte] SMALLINT NULL,
    [CodMetodologia] SMALLINT NULL,
    [IndAutoAvaliacao] INT NULL,
    [IndPesquisaAtiva] SMALLINT NULL
);

CREATE TABLE [dbo].[PesquisaGrupo] (
    [CodPesquisa] INT NOT NULL,
    [Codigo] INT NOT NULL,
    [OrdemGrupo] SMALLINT NULL
);

CREATE TABLE [dbo].[PesquisaGrupoQuestoes] (
    [CodPesquisa] INT NOT NULL,
    [CodGrupo] INT NOT NULL,
    [CodQuestoes] INT NOT NULL,
    [Ordem] SMALLINT NULL,
    [DescQuestoes] VARCHAR(255) NULL,
    [Obrigatorio] BIT NOT NULL
);

CREATE TABLE [dbo].[PesquisaIndicador] (
    [CodIndicador] INT NOT NULL,
    [CodPesquisa] INT NOT NULL
);

CREATE TABLE [dbo].[PESQUISAREALIZADA] (
    [CodAtendimento] INT NOT NULL,
    [CodPesquisa] INT NOT NULL,
    [Data] DATETIME NOT NULL,
    [HoraInicio] DATETIME NOT NULL,
    [HoraFinal] DATETIME NULL
);

CREATE TABLE [dbo].[PessoaAtendida] (
    [CodAtendimento] INT NOT NULL,
    [CodPessoaFisica] INT NOT NULL,
    [Representante] BIT NOT NULL
);

CREATE TABLE [dbo].[Pessoaf] (
    [CodParceiro] INT NOT NULL,
    [Identidade] VARCHAR(15) NULL,
    [OrgEmis] VARCHAR(10) NULL,
    [DataNasc] SMALLDATETIME NULL,
    [CodProfis] INT NULL,
    [CodGrauEscol] SMALLINT NULL,
    [Autonomo] VARCHAR(3) NULL,
    [CodPais] SMALLINT NULL,
    [EstCivil] VARCHAR(10) NULL,
    [Sexo] TINYINT NULL,
    [EstadoCivil] TINYINT NULL,
    [IndAutonomo] BIT NULL,
    [ClassificacaoPessoa] SMALLINT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL,
    [CodAtividadePF] INT NULL,
    [NomeMae] VARCHAR(120) NULL,
    [SituacaoAtualID] BIGINT NULL
);

CREATE TABLE [dbo].[PessoaF_BEmp] (
    [CodParceiro_BEmp] INT NOT NULL,
    [Identidade] VARCHAR(15) NULL,
    [OrgEmis] VARCHAR(6) NULL,
    [DataNasc] SMALLDATETIME NULL,
    [Sexo] CHAR(1) NULL,
    [CodEscolaridade] CHAR(2) NULL
);

CREATE TABLE [dbo].[Pessoaj] (
    [codparceiro] INT NOT NULL,
    [inscest] VARCHAR(20) NULL,
    [inscmun] VARCHAR(20) NULL,
    [databert] SMALLDATETIME NULL,
    [datfech] SMALLDATETIME NULL,
    [codsetor] SMALLINT NOT NULL,
    [codconst] SMALLINT NOT NULL,
    [codgrupemp] SMALLINT NULL,
    [numfunc] SMALLINT NULL,
    [numfiliais] SMALLINT NULL,
    [capsocial] NUMERIC(16,2) NULL,
    [faturam] SMALLINT NOT NULL,
    [porte] SMALLINT NULL,
    [codareaatu] INT NULL,
    [indLegalizado] SMALLINT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL,
    [CodProdutorRural] VARCHAR(20) NULL,
    [CodDap] VARCHAR(40) NULL,
    [CodPescador] VARCHAR(40) NULL,
    [NIRF] NUMERIC(8,0) NULL,
    [tamanhoPropriedade] INT NULL,
    [OptanteSimplesNacional] BIT NULL,
    [CodSICAB] VARCHAR(20) NULL,
    [DataValidade] DATE NULL,
    [INEP] NUMERIC(8,0) NULL,
    [NaturezaJuridicaID] INT NULL,
    [CodCAF] VARCHAR(24) NULL,
    [CpfCAEPF] NUMERIC(11,0) NULL,
    [CodCAEPF] NUMERIC(14,0) NULL
);

CREATE TABLE [dbo].[PessoaJ_BEmp] (
    [CodParceiro_BEmp] INT NOT NULL,
    [DataFundacao] SMALLDATETIME NULL,
    [ObjetivoSocial] TEXT NULL
);

CREATE TABLE [dbo].[PessoaJ_Faturam_AM] (
    [codparceiro] INT NOT NULL,
    [atual_uf] SMALLINT NOT NULL,
    [atual_dc] SMALLINT NOT NULL
);

CREATE TABLE [dbo].[PessoaJ_Faturam_AM_2] (
    [codparceiro] INT NOT NULL,
    [atual_uf] SMALLINT NOT NULL,
    [atual_dc] SMALLINT NOT NULL
);

CREATE TABLE [dbo].[PessoaJ_Faturam_AM2] (
    [codparceiro] INT NOT NULL,
    [atual_uf] SMALLINT NOT NULL,
    [atual_dc] SMALLINT NOT NULL
);

CREATE TABLE [dbo].[PessoaJ_TMP] (
    [codparceiro] INT NULL,
    [inscest] VARCHAR(20) NULL,
    [inscmun] VARCHAR(20) NULL,
    [databert] SMALLDATETIME NULL,
    [datfech] SMALLDATETIME NULL,
    [codsetor] SMALLINT NULL,
    [codconst] SMALLINT NULL,
    [codgrupemp] SMALLINT NULL,
    [numfunc] SMALLINT NULL,
    [numfiliais] SMALLINT NULL,
    [capsocial] NUMERIC(16,2) NULL,
    [faturam] SMALLINT NOT NULL,
    [porte] SMALLINT NULL,
    [codareaatu] INT NULL,
    [indLegalizado] SMALLINT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL,
    [CodProdutorRural] VARCHAR(20) NULL,
    [CodDap] VARCHAR(40) NULL,
    [CodPescador] VARCHAR(40) NULL,
    [NIRF] NUMERIC(8,0) NULL,
    [tamanhoPropriedade] INT NULL,
    [OptanteSimplesNacional] BIT NULL,
    [CodSICAB] VARCHAR(20) NULL,
    [DataValidade] DATE NULL,
    [INEP] NUMERIC(8,0) NULL,
    [NaturezaJuridicaID] INT NULL
);

CREATE TABLE [dbo].[PessoaRecebida] (
    [CodRecepcao] INT NOT NULL,
    [CodPessoaFisica] INT NOT NULL,
    [Representante] BIT NOT NULL
);

CREATE TABLE [dbo].[PessoasAtingidas] (
    [CodRealizacao] BIGINT NOT NULL,
    [DescRealizacao] VARCHAR(255) NULL,
    [CodProjeto] UNIQUEIDENTIFIER NULL,
    [CodAcao] INT NULL,
    [Categoria] SMALLINT NULL,
    [DataInicio] DATETIME NULL,
    [DataFim] DATETIME NULL,
    [MesAnoCompetencia] DATETIME NULL,
    [NumPessoas] INT NULL,
    [CodSebrae] INT NOT NULL,
    [CodRealizacaoComp] INT NULL,
    [TipoRealizacao] TINYINT NULL,
    [DataCadastro] DATETIME NULL,
    [CodResponsavel] INT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL,
    [CodCanalInformacao] INT NULL,
    [Entidade] INT NULL,
    [Professor] INT NULL,
    [NumCursosTurmas] INT NULL,
    [Credenciado] INT NULL,
    [Situacao] INT NULL
);

CREATE TABLE [dbo].[pessoatendida] (
    [codatend] INT NOT NULL,
    [codpessoapf] INT NOT NULL,
    [codpessoapj] INT NULL,
    [codcargcli] INT NULL,
    [indrepres] VARCHAR(3) NOT NULL,
    [indrepresentante] BIT NOT NULL
);

CREATE TABLE [dbo].[PlanoExecContr] (
    [CodConsultoria] INT NOT NULL,
    [SeqAtividade] INT NOT NULL,
    [SeqPeriodo] INT NOT NULL
);

CREATE TABLE [dbo].[PLANOTRABALHO] (
    [CodPlanoTrabalho] INT NOT NULL,
    [TituloProjeto] VARCHAR(255) NULL,
    [PrevisaoInicio] DATETIME NULL,
    [PrevisaoFinal] DATETIME NULL,
    [Objeto] TEXT NULL,
    [Segmento] TEXT NULL,
    [Metas] TEXT NULL,
    [Etapas] TEXT NULL,
    [Obrigacoes] TEXT NULL,
    [Parecer] TEXT NULL,
    [Situacao] INT NULL
);

CREATE TABLE [dbo].[PleitoFeira] (
    [CodPleitoFeira] INT NOT NULL,
    [CodEvtoPadraoFeira] INT NULL,
    [DataPrevInicio] DATETIME NULL,
    [DataPrevFim] DATETIME NULL,
    [DataAbertura] DATETIME NULL,
    [DataEncerramento] DATETIME NULL,
    [CodUnidOp] INT NOT NULL,
    [IndTipoApoio] TINYINT NULL,
    [DescPleitoFeira] VARCHAR(40) NULL,
    [Observacao] TEXT NULL
);

CREATE TABLE [dbo].[porte] (
    [porte] VARCHAR(50) NOT NULL,
    [nummaxfunc] SMALLINT NOT NULL,
    [numminfunc] SMALLINT NOT NULL,
    [FaturamentoMIN] NUMERIC(16,2) NULL,
    [FaturamentoMAX] NUMERIC(16,2) NULL,
    [codPorte] SMALLINT NOT NULL,
    [Situacao] CHAR(1) NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL,
    [DescPorte] VARCHAR(255) NULL
);

CREATE TABLE [dbo].[PortfolioInformacaoMatriz] (
    [CodInformacao] INT NOT NULL,
    [CodProblema] INT NULL,
    [TipoProblema] CHAR(1) NULL,
    [DescInformacao] TEXT NULL,
    [TipoInformacao] CHAR(1) NULL,
    [Situacao] TINYINT NULL
);

CREATE TABLE [dbo].[PortfolioProdutoAtributo] (
    [CodAtributo] INT NOT NULL,
    [CodProduto] INT NOT NULL
);

CREATE TABLE [dbo].[PortfolioProdutoCadEvento] (
    [codcadevento] INT NOT NULL,
    [codProduto] INT NOT NULL
);

CREATE TABLE [dbo].[PortfolioProdutoCanalDistribuicao] (
    [CodProduto] INT NOT NULL,
    [CodCanalDist] INT NOT NULL
);

CREATE TABLE [dbo].[PortfolioProdutoFormaAquisicao] (
    [CodProduto] INT NOT NULL,
    [CodFormaAquisicao] INT NOT NULL
);

CREATE TABLE [dbo].[PortfolioProdutoProcesso] (
    [CodAtributo] INT NOT NULL,
    [CodProcesso] INT NOT NULL,
    [CodProduto] INT NOT NULL
);

CREATE TABLE [dbo].[PortfolioProdutoPublicoAlvo] (
    [CodProduto] INT NOT NULL,
    [CodPublicoAlvo] INT NOT NULL
);

CREATE TABLE [dbo].[PortfolioProdutoQuestao] (
    [CodAtributo] INT NOT NULL,
    [CodProcesso] INT NOT NULL,
    [CodQuestaoInvestigativa] INT NOT NULL,
    [CodProduto] INT NOT NULL
);

CREATE TABLE [dbo].[PortfolioProdutoSEB] (
    [CodProduto] INT NOT NULL,
    [NomeProduto] VARCHAR(255) NOT NULL,
    [Objetivo] TEXT NOT NULL,
    [Caracteristicas] TEXT NULL,
    [DataCadastro] DATETIME NOT NULL,
    [DataCriacao] DATETIME NULL,
    [DataAvaliacao] DATETIME NULL,
    [CodTipoProduto] INT NOT NULL,
    [Disponibilidade] CHAR(1) NULL,
    [UsuarioLogin] VARCHAR(20) NOT NULL,
    [TipoPortfolio] INT NOT NULL,
    [SEBRAEReferencia] INT NOT NULL,
    [TipoAutor] TINYINT NOT NULL,
    [CodAutorPJ] INT NULL,
    [NomePessoaRef] VARCHAR(50) NULL,
    [CodProdutoPAI] INT NULL,
    [StatusEfetivacao] TINYINT NULL,
    [NivelComp] TINYINT NULL,
    [Status] TINYINT NULL,
    [MediaAvaliacao] SMALLINT NULL,
    [Descendente] INT NULL
);

CREATE TABLE [dbo].[PortfolioProdutoSEBRAE] (
    [CodProduto] INT NOT NULL,
    [CodSEBRAE] INT NOT NULL
);

CREATE TABLE [dbo].[PortfolioProdutoTema] (
    [CodProduto] INT NOT NULL,
    [CodAreaTematica] INT NOT NULL
);

CREATE TABLE [dbo].[PortifolioProduto] (
    [CodProdutoSebrae] INT NOT NULL,
    [CodSetor] SMALLINT NULL,
    [CodSebrae] SMALLINT NULL,
    [CodAcaoBasica] INT NULL,
    [CodAreaTematica] INT NULL,
    [CodTema] INT NULL,
    [Categoria] CHAR(1) NULL,
    [NomeProduto] VARCHAR(255) NOT NULL,
    [Descricao] VARCHAR(255) NOT NULL,
    [Caracteristica] TEXT NOT NULL,
    [DataCadastro] DATETIME NOT NULL,
    [RespCadastro] VARCHAR(50) NOT NULL,
    [Disponibilidade] CHAR(1) NULL,
    [TipoRegistro] TINYINT NULL
);

CREATE TABLE [dbo].[PPS_RelMetasFisicas2015_tab] (
    [Categoria] VARCHAR(100) NULL,
    [Instrumento] VARCHAR(100) NULL,
    [Abordagem] VARCHAR(15) NULL,
    [Metrica] VARCHAR(100) NULL,
    [MES] INT NULL,
    [DescMes] VARCHAR(255) NULL,
    [Quantidade] FLOAT NULL,
    [OrdemMetrica] VARCHAR(1) NULL,
    [Modulo] VARCHAR(50) NULL,
    [CodSebrae] INT NULL,
    [DataHora] DATETIME NULL,
    [Origem] BIT NULL
);

CREATE TABLE [dbo].[PracaInteresse] (
    [codparceiro] INT NOT NULL,
    [codest] SMALLINT NOT NULL
);

CREATE TABLE [dbo].[Problema] (
    [CodNatureza] INT NOT NULL,
    [CodProdutoHD] INT NOT NULL,
    [CodProblema] INT NOT NULL,
    [DescProblema] VARCHAR(255) NULL
);

CREATE TABLE [dbo].[ProblemaCausa] (
    [CodProblema] INT NOT NULL,
    [CodCausa] INT NOT NULL
);

CREATE TABLE [dbo].[ProblemaCliente] (
    [CodProblema] INT NOT NULL,
    [Descricao] VARCHAR(255) NOT NULL,
    [PalavraChave] VARCHAR(255) NULL,
    [Problema] BIT NOT NULL,
    [Causa] BIT NOT NULL,
    [CodAreaTematica] INT NULL
);

CREATE TABLE [dbo].[ProblemaMatriz] (
    [CodProblema] INT NOT NULL,
    [DescProblema] VARCHAR(500) NOT NULL,
    [Conceito] TEXT NULL,
    [Status] TINYINT NULL,
    [Situacao] TINYINT NULL
);

CREATE TABLE [dbo].[ProblemaPerspectiva] (
    [CodProblema] INT NOT NULL,
    [CodPerspectiva] SMALLINT NOT NULL
);

CREATE TABLE [dbo].[ProblemaSolucao] (
    [CodSolucao] INT NOT NULL,
    [CodProblema] INT NOT NULL
);

CREATE TABLE [dbo].[ProcCompra] (
    [CodTpCompra] TINYINT NOT NULL,
    [AnoExercicio] INT NOT NULL,
    [SeqProcCompra] INT NOT NULL,
    [DtAbertura] DATETIME NULL,
    [DtFechamento] DATETIME NULL,
    [Adjudicacao] TINYINT NULL,
    [NrEdital] INT NULL,
    [Status] TINYINT NULL,
    [Especificacao] TEXT NULL,
    [CodNatCompra] TINYINT NULL,
    [Situacao] TINYINT NULL,
    [PathEdital] TEXT NULL
);

CREATE TABLE [dbo].[Processo] (
    [CodProcesso] INT NOT NULL,
    [DescProcesso] VARCHAR(500) NOT NULL,
    [ProcessoNegativado] VARCHAR(500) NULL,
    [CodAreaTematica] INT NOT NULL,
    [CodTema] INT NOT NULL,
    [Conceito] TEXT NULL,
    [CodDimensao] SMALLINT NULL,
    [IndGenerico] TINYINT NULL,
    [Situacao] TINYINT NOT NULL,
    [TipoProcesso] TINYINT NULL,
    [AnaliseProcesso] TEXT NULL
);

CREATE TABLE [dbo].[ProcessoIntegradorAssunto] (
    [CodProcesso] INT NOT NULL,
    [CodAssuntoAtributo] INT NOT NULL
);

CREATE TABLE [dbo].[ProcessoJuridico] (
    [CodProcJuridico] INT NOT NULL,
    [NumProcJuridico] VARCHAR(20) NULL,
    [CodNaturezaProc] TINYINT NOT NULL,
    [CodTipoProcesso] TINYINT NOT NULL,
    [CodTribunal] INT NULL,
    [CodJuntaTribunal] INT NULL,
    [DataIniProcJuridico] DATETIME NOT NULL,
    [DataFimProcJuridico] DATETIME NULL,
    [Observacao] VARCHAR(255) NULL,
    [Status] TINYINT NOT NULL,
    [CodAssuntoJuridico] INT NULL,
    [IdentEventoProcesso] VARCHAR(3) NULL
);

CREATE TABLE [dbo].[ProcessoPortfolioProduto] (
    [CodProcesso] INT NOT NULL,
    [CodAtributo] INT NOT NULL,
    [CodProduto] INT NOT NULL
);

CREATE TABLE [dbo].[ProcessoProdutivoAtividadesBIA] (
    [CodProcessoProd] INT NOT NULL,
    [CodModeloProcessoAtividade] INT NOT NULL,
    [Sequencial] INT NOT NULL,
    [TipoAtividade] CHAR(1) NOT NULL,
    [NomeAtividade] VARCHAR(80) NOT NULL,
    [CodPerfilResp] INT NULL,
    [CodResponsavel] INT NULL,
    [Duracao] INT NOT NULL,
    [DataCriacao] DATETIME NOT NULL,
    [DataAtualizacao] DATETIME NOT NULL,
    [DataIniPrevisto] DATETIME NOT NULL,
    [DataFimPrevisto] DATETIME NOT NULL,
    [DataIniReal] DATETIME NULL,
    [DataFimReal] DATETIME NULL,
    [TipoDecisao] CHAR(1) NULL,
    [MarcoConteudo] CHAR(1) NULL,
    [SituacaoATIV] CHAR(1) NOT NULL,
    [CodSubProcessoProd] INT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[ProcessoProdutivoAtividadesNotificacoesBIA] (
    [CodProcessoProd] INT NOT NULL,
    [CodModeloProcessoAtividade] INT NOT NULL,
    [Sequencial] INT NOT NULL,
    [DataEnvio] DATETIME NOT NULL,
    [DataLeitura] DATETIME NULL,
    [Situacao] CHAR(1) NULL,
    [TipoNotificacaoFluxo] CHAR(1) NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[ProcessoProdutivoAtividadesRelacoesBIA] (
    [CodProcessoProd] INT NOT NULL,
    [CodModeloProcessoAtividade] INT NOT NULL,
    [TipoRelacao] CHAR(1) NOT NULL,
    [CodModeloProcessoAtividadeRelacionada] INT NOT NULL,
    [TipoDecisaoCondicao] CHAR(1) NULL,
    [Condicao] CHAR(1) NULL,
    [ObjetoCondicao] CHAR(1) NULL,
    [CondicaoRetorno] CHAR(1) NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[ProcessoProdutivoAtividadesTarefasBackupBIA] (
    [CodProcessoProd] INT NOT NULL,
    [CodModeloProcessoAtividade] INT NOT NULL,
    [Sequencial] INT NOT NULL,
    [Tipo] CHAR(1) NOT NULL,
    [SituacaoAnterior] CHAR(1) NULL,
    [DataIniRealAtividade] DATETIME NULL,
    [DataFimRealAtividade] DATETIME NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[ProcessoProdutivoAtividadesTarefasBIA] (
    [CodProcessoProd] INT NOT NULL,
    [CodModeloProcessoAtividade] INT NOT NULL,
    [Sequencial] INT NOT NULL,
    [NomeTarefa] VARCHAR(80) NOT NULL,
    [TipoTarefa] CHAR(1) NOT NULL,
    [CodFormEletronico] INT NULL,
    [TipoDocumento] CHAR(1) NULL,
    [NomeDocumento] VARCHAR(150) NULL,
    [TipoNotificacao] CHAR(1) NULL,
    [CodPerfilNotificacao] INT NULL,
    [CodDestNotificacao] INT NULL,
    [TextoPadraoNotificacao] VARCHAR(500) NULL,
    [Situacao] CHAR(1) NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[ProcessoProdutivoBIA] (
    [CodProcessoProd] INT NOT NULL,
    [NoSolicitacao] INT NOT NULL,
    [TipoProcesso] CHAR(1) NULL,
    [CodModeloProcesso] INT NOT NULL,
    [NomeProcessoProd] VARCHAR(155) NOT NULL,
    [NomeAbrevProcessoProd] VARCHAR(40) NULL,
    [CodEditorAssunto] INT NULL,
    [DuracaoTotal] INT NULL,
    [DesvioTotal] INT NULL,
    [DataCriacao] DATETIME NOT NULL,
    [DataAtualizacao] DATETIME NOT NULL,
    [DataIniPrevisto] DATETIME NOT NULL,
    [DataFimPrevisto] DATETIME NOT NULL,
    [DataIniReal] DATETIME NULL,
    [DataFimReal] DATETIME NULL,
    [SituacaoCONT] CHAR(1) NULL,
    [SituacaoPROC] CHAR(1) NOT NULL,
    [SituacaoVERSAO] CHAR(1) NOT NULL,
    [CodProcessoProdANT] INT NULL,
    [CodConteudoProc] INT NULL,
    [CodConteudoBkp] INT NULL,
    [SeqComplementoProc] INT NULL,
    [SeqComplementoBkp] INT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[ProcessoProdutivoIntegrador] (
    [CodProcessoProdutivo] INT NOT NULL,
    [CodProcessoIntegrador] INT NOT NULL
);

CREATE TABLE [dbo].[ProcessoQuestaoInvestigativa] (
    [CodProcesso] INT NOT NULL,
    [CodQuestaoInvestigativa] INT NOT NULL
);

CREATE TABLE [dbo].[ProdExpositorFeira] (
    [CodEvtoFeira] INT NOT NULL,
    [CodParceiro] INT NOT NULL,
    [CodCapitulo] VARCHAR(2) NOT NULL,
    [CodPosicao] VARCHAR(2) NOT NULL,
    [CodProduto] VARCHAR(4) NOT NULL,
    [QtdDisponivel] INT NULL,
    [QtdComercializada] INT NULL,
    [ValorComercializado] FLOAT NULL,
    [CodSebrae] INT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[ProdRealBEmp] (
    [CodProdReal] INT NOT NULL,
    [DescProdReal] VARCHAR(60) NOT NULL
);

CREATE TABLE [dbo].[Produto] (
    [CodProd] INT NOT NULL,
    [CodNeg] INT NOT NULL,
    [Descprod] VARCHAR(30) NOT NULL,
    [CodAreaAtu] INT NULL,
    [CodTipoProd] SMALLINT NOT NULL,
    [CodAutoRel] INT NULL,
    [IndRatProd] TINYINT NULL,
    [CodSebrae] INT NOT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL,
    [Sigla] VARCHAR(15) NULL
);

CREATE TABLE [dbo].[ProdutoHD] (
    [CodNatureza] INT NOT NULL,
    [CodProdutoHD] INT NOT NULL,
    [DescProdutoHD] VARCHAR(80) NULL
);

CREATE TABLE [dbo].[ProdutoMaterial] (
    [CodUnidOp] INT NOT NULL,
    [CodProduto] INT NOT NULL,
    [CodMaterial] INT NOT NULL
);

CREATE TABLE [dbo].[ProdutoPortfolio] (
    [CodProdutoPortfolio] INT NOT NULL,
    [CodProdutoEstruturado] VARCHAR(15) NULL,
    [NomeProduto] VARCHAR(80) NULL,
    [Objetivo] VARCHAR(500) NULL,
    [Conteudo] VARCHAR(500) NULL,
    [PublicoAlvo] VARCHAR(500) NULL,
    [CodFamiliaProduto] SMALLINT NULL,
    [CodCanalMidia] SMALLINT NULL,
    [CodAbrangencia] SMALLINT NULL,
    [CodFocoTematico] SMALLINT NULL,
    [CodSEBRAEResp] INT NULL,
    [CodPessoaResp] INT NULL,
    [TipoAutor] TINYINT NULL,
    [CodAutorProduto] INT NULL,
    [Publicado] CHAR(1) NULL,
    [Situacao] CHAR(1) NULL,
    [DataCadastro] DATETIME NULL,
    [DataAltualizacao] DATETIME NULL,
    [UsuarioAtualizacao] VARCHAR(20) NULL,
    [CodProdutoPortfolioPAI] INT NULL,
    [Observacao] VARCHAR(500) NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[ProdutoPortfolioAnexos] (
    [CodProdutoPortfolio] INT NOT NULL,
    [NomeArquivo] VARCHAR(80) NOT NULL,
    [DescrArquivo] VARCHAR(255) NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[ProdutoPortfolioEDU] (
    [CodProdutoPortfolio] INT NOT NULL,
    [CargaHoraria] FLOAT NULL,
    [ConteudoProgramatico] TEXT NULL,
    [TempoConclusao] INT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[ProdutoPortfolioEDUComplemento] (
    [CodProdutoPortfolio] INT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [CodFichaAval] INT NOT NULL,
    [ChPrevista] FLOAT NOT NULL,
    [Percfreqmin] INT NOT NULL,
    [Qtdinscmaxprev] INT NOT NULL,
    [Qtdminpagantes] INT NOT NULL,
    [Valorevento] NUMERIC(18,2) NOT NULL,
    [Qtdlimdiareserv] INT NOT NULL,
    [Observacoes] VARCHAR(255) NULL,
    [CodRespTecnico] INT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL,
    [CodModCertificado] INT NULL
);

CREATE TABLE [dbo].[ProdutoPortfolioEDUCredenciado] (
    [CodProdutoPortfolio] INT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [Codtecnico] INT NOT NULL,
    [Codclasse] INT NOT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[ProdutoPortfolioEDUDespesaPadrao] (
    [CodProdutoPortfolio] INT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [CodGrupoDesp] INT NOT NULL,
    [CodItemDesp] INT NOT NULL,
    [IndQtdDespesa] TINYINT NULL,
    [QtdDespesa] INT NULL,
    [CustoDespesa] NUMERIC(18,2) NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[ProdutoPortfolioEDUEscritorio] (
    [CodProdutoPortfolio] INT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [Codunidop] INT NOT NULL,
    [Codprod] INT NOT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[ProdutoPortfolioEDUModulos] (
    [CodProdutoPortfolio] INT NOT NULL,
    [CodModulo] SMALLINT NOT NULL,
    [Descricao] VARCHAR(100) NOT NULL,
    [CargaHoraria] FLOAT NULL,
    [Observacao] VARCHAR(500) NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[ProdutoPortfolioMomentoVida] (
    [CodProdutoPortfolio] INT NOT NULL,
    [CodMomentoVida] TINYINT NOT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[ProdutoPortfolioParametros] (
    [CodAbrangencia] SMALLINT NULL,
    [CodCanalMidia] SMALLINT NULL,
    [CodSetorPrioritario] INT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL,
    [DiaFechamento] INT NULL
);

CREATE TABLE [dbo].[ProdutoPortfolioProdutoReal] (
    [CodProdutoPortfolio] INT NOT NULL,
    [CodCadEvento] INT NOT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[ProdutoPortfolioPublicoAlvo] (
    [CodProdutoPortfolio] INT NOT NULL,
    [CodPublicoAlvo] INT NOT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[ProdutoPortfolioSEBRAE] (
    [CodProdutoPortfolio] INT NOT NULL,
    [CodSEBRAE] INT NOT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[ProdutoPortfolioSetorPrioritario] (
    [CodProdutoPortfolio] INT NOT NULL,
    [CodSetorPrioritario] INT NOT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[ProdutoPortfolioSINCO] (
    [CodProdutoPortfolio] INT NOT NULL,
    [CodProdutoSINCO] UNIQUEIDENTIFIER NOT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[ProdutoProposta] (
    [CodConsultoria] INT NOT NULL,
    [SeqProdProposta] INT NOT NULL,
    [Descricao] VARCHAR(60) NOT NULL,
    [CodTipoProdProposta] INT NOT NULL,
    [DataPrevista] DATETIME NULL,
    [DataEntrega] DATETIME NULL,
    [Observacao] VARCHAR(255) NULL
);

CREATE TABLE [dbo].[produtorecomendado] (
    [codatend] INT NOT NULL,
    [seqconsulta] SMALLINT NOT NULL,
    [codprod] INT NOT NULL
);

CREATE TABLE [dbo].[ProdutoRecomendCons] (
    [CodConsultoria] INT NOT NULL,
    [CodProduto] INT NOT NULL,
    [SeqServico] INT NOT NULL
);

CREATE TABLE [dbo].[profissao] (
    [codprofis] INT NOT NULL,
    [descprofis] VARCHAR(30) NOT NULL
);

CREATE TABLE [dbo].[PROGRAMACAOEVENTOMC] (
    [CodProgramacao] INT NOT NULL,
    [CodEventoMC] INT NOT NULL,
    [DataProgramacao] DATETIME NULL,
    [HoraProgramacao] DATETIME NULL,
    [Local] VARCHAR(60) NULL,
    [Objetivo] TEXT NULL,
    [OrdemRoteiro] INT NULL,
    [DescProgramacao] VARCHAR(60) NULL,
    [CodSebrae] INT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[ProgramacaoMnt] (
    [Chassi] VARCHAR(20) NOT NULL,
    [CodRevisaoPeriodica] INT NOT NULL,
    [KmRevisao] INT NOT NULL,
    [Data] DATETIME NOT NULL,
    [KmRealizada] INT NULL,
    [HoraInicio] DATETIME NULL,
    [HoraFinal] DATETIME NULL,
    [Status] BIT NOT NULL
);

CREATE TABLE [dbo].[ProgramacaoVeiculo] (
    [CodProgramacaoVeiculo] INT NOT NULL,
    [CodReqTransporte] INT NOT NULL,
    [Chassi] VARCHAR(20) NOT NULL,
    [CodUnidOp] INT NULL,
    [CodProduto] INT NULL,
    [NaturezaProgramacao] INT NOT NULL,
    [DataProgramacao] DATETIME NOT NULL,
    [HoraInicio] DATETIME NOT NULL,
    [HoraFinal] DATETIME NOT NULL,
    [Status] BIT NOT NULL,
    [CodRevisaoPeriodica] INT NULL,
    [KmRevisao] INT NULL
);

CREATE TABLE [dbo].[ProgramaPortfolio] (
    [CodProgramaPortfolio] INT NOT NULL,
    [NomePrograma] VARCHAR(120) NULL,
    [Situacao] CHAR(1) NOT NULL,
    [CodSebrae] INT NOT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[ProgramaPortfolioProduto] (
    [CodPrograma] INT NOT NULL,
    [CodProduto] INT NOT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[ProgramaPortfolioSEBRAE] (
    [CodPrograma] INT NOT NULL,
    [CodSEBRAE] INT NOT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[ProgramaSGE] (
    [CodPrograma] UNIQUEIDENTIFIER NOT NULL,
    [TitPrograma] VARCHAR(100) NOT NULL,
    [Ativo] CHAR(1) NOT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL,
    [BloqueioSIAC] CHAR(1) NOT NULL
);

CREATE TABLE [dbo].[ProjetoEntidade] (
    [CodProjAtiv_PLAN01] UNIQUEIDENTIFIER NOT NULL,
    [CodParceiro] INT NOT NULL,
    [DataCadastro] DATETIME NULL,
    [DataAtualizacao] DATETIME NULL,
    [Situacao] CHAR(1) NULL
);

CREATE TABLE [dbo].[ProjetoPublicoAlvoBloqueio] (
    [CodProjAtiv_PLAN01] UNIQUEIDENTIFIER NOT NULL,
    [DataIniBloqueio] DATETIME NOT NULL,
    [DataFimBloqueio] DATETIME NULL,
    [CodResponsavel] INT NULL,
    [DataBloqueio] DATETIME NULL
);

CREATE TABLE [dbo].[ProjetoRealizacao] (
    [CodProjetoRealizacao] INT NOT NULL,
    [CodAcao_Plan14] UNIQUEIDENTIFIER NULL,
    [DescRealizacao] VARCHAR(255) NOT NULL,
    [DataCadastro] DATETIME NULL,
    [DataAtualizacao] DATETIME NULL,
    [DataRealizacao] DATETIME NULL,
    [CodEntidade] INT NULL
);

CREATE TABLE [dbo].[ProjetoRealizacaoPublicoAlvo] (
    [CodProjetoRealizacao] INT NOT NULL,
    [CodProjAtiv_PLAN01] UNIQUEIDENTIFIER NOT NULL,
    [CodParceiro] INT NOT NULL,
    [DataCadastro] DATETIME NULL
);

CREATE TABLE [dbo].[proposta] (
    [CodConsultoria] INT NOT NULL,
    [Descricao] VARCHAR(255) NOT NULL,
    [DataEntrega] DATETIME NULL,
    [DataAprovacao] DATETIME NULL,
    [DataIniTrab] DATETIME NULL,
    [TempoTotal] INT NULL,
    [DataAprovacaoEmpresaCred] DATETIME NULL,
    [DataAprovacaoConsultor] DATETIME NULL,
    [DataAprovacaoSebrae] DATETIME NULL,
    [TempoSebrae] INT NULL,
    [Comentario] TEXT NULL
);

CREATE TABLE [dbo].[PropostaCons] (
    [CodConsultoria] INT NOT NULL,
    [CodConsultor] INT NOT NULL
);

CREATE TABLE [dbo].[publicacao] (
    [CodEdicao] INT NOT NULL,
    [CodAssinatura] INT NOT NULL,
    [CodOporNegocio] INT NOT NULL,
    [Tipo] CHAR(1) NOT NULL
);

CREATE TABLE [dbo].[PublicoAlvoProduto] (
    [CodPublicoAlvo] INT NOT NULL,
    [DescPublicoAlvo] VARCHAR(80) NOT NULL,
    [Categoria] CHAR(1) NULL,
    [Status] TINYINT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL,
    [Ordem] SMALLINT NOT NULL,
    [TipoPublico] CHAR(1) NULL,
    [TipoPessoa] CHAR(1) NULL,
    [TipoJuridica] CHAR(1) NULL
);

CREATE TABLE [dbo].[QualificacaoCadastro] (
    [IndAtualizacao] SMALLINT NOT NULL,
    [DescQualificacao] VARCHAR(80) NULL,
    [Situacao] CHAR(1) NULL
);

CREATE TABLE [dbo].[QuestaoInvestigativa] (
    [CodQuestaoInvestigativa] INT NOT NULL,
    [CodParametro] INT NOT NULL,
    [Descricao] VARCHAR(500) NOT NULL,
    [Conceito] TEXT NULL,
    [Categoria] SMALLINT NULL,
    [Status] TINYINT NOT NULL,
    [Situacao] TINYINT NULL,
    [TipoQuestao] TINYINT NULL
);

CREATE TABLE [dbo].[QuestaoInvestigativaAtivEconomica] (
    [CodQuestaoInvestigativa] INT NOT NULL,
    [SeqQIAE] SMALLINT NOT NULL,
    [CodSetor] SMALLINT NULL,
    [CodAtivEcon] VARCHAR(5) NULL,
    [CodCnaeFiscal] VARCHAR(2) NULL,
    [SeqOperacional] VARCHAR(3) NULL
);

CREATE TABLE [dbo].[QuestaoPreparatoria] (
    [CodQuestaoPreparatoria] INT NOT NULL,
    [DescQuestaoPreparatoria] VARCHAR(255) NOT NULL,
    [Conceito] TEXT NULL,
    [Situacao] TINYINT NULL
);

CREATE TABLE [dbo].[QuestaoPreparatoriaOpcao] (
    [CodQuestaoPreparatoria] INT NOT NULL,
    [CodQuestaoPreparatoriaOpcao] INT NOT NULL,
    [DescQuestaoPreparatoriaOpcao] VARCHAR(500) NOT NULL,
    [Status] TINYINT NULL
);

CREATE TABLE [dbo].[QuestaoPrincipalQuestaoGeral] (
    [CodQuestaoPrincipal] INT NOT NULL,
    [CodQuestaoGeral] INT NOT NULL,
    [CodParametro] INT NOT NULL,
    [CodItem] INT NOT NULL,
    [Ordem] SMALLINT NOT NULL,
    [IndProblema] SMALLINT NOT NULL
);

CREATE TABLE [dbo].[Questoes] (
    [CodQuestoes] INT NOT NULL,
    [DescQuestoes] VARCHAR(255) NULL,
    [CodParametro] INT NOT NULL,
    [CodGrupo] INT NULL
);

CREATE TABLE [dbo].[Queue] (
    [QueueID] INT NOT NULL,
    [SchemaName] NVARCHAR(128) NOT NULL,
    [ObjectName] NVARCHAR(128) NOT NULL,
    [Parameters] NVARCHAR(MAX) NOT NULL,
    [QueueStartTime] DATETIME2 NULL,
    [SessionID] SMALLINT NULL,
    [RequestID] INT NULL,
    [RequestStartTime] DATETIME NULL
);

CREATE TABLE [dbo].[QueueDatabase] (
    [QueueID] INT NOT NULL,
    [DatabaseName] NVARCHAR(128) NOT NULL,
    [DatabaseOrder] INT NULL,
    [DatabaseStartTime] DATETIME2 NULL,
    [DatabaseEndTime] DATETIME2 NULL,
    [SessionID] SMALLINT NULL,
    [RequestID] INT NULL,
    [RequestStartTime] DATETIME NULL
);

CREATE TABLE [dbo].[RecAprovPleitoFeira] (
    [CodPleitoFeira] INT NOT NULL,
    [CodTipoRecPleitoFeira] INT NOT NULL,
    [CodPessoaPJ] INT NOT NULL,
    [IndTipoApoio] TINYINT NOT NULL,
    [QtdAprovada] INT NULL
);

CREATE TABLE [dbo].[Recepcao] (
    [recCodigoRecepcao] INT NOT NULL,
    [CodParceiro] INT NOT NULL,
    [recData] SMALLDATETIME NOT NULL,
    [recHoraInicial] DATETIME NULL,
    [recHoraFinal] DATETIME NULL,
    [recAgendamento] BIT NOT NULL,
    [recFilaEspera] BIT NOT NULL
);

CREATE TABLE [dbo].[RecPleitoFeira] (
    [CodPleitoFeira] INT NOT NULL,
    [CodTipoRecPleitoFeira] INT NOT NULL,
    [QtdSolicitada] INT NULL,
    [DataSolicitacao] DATETIME NULL
);

CREATE TABLE [dbo].[RecursoRoda] (
    [CodEvtoRoda] INT NOT NULL,
    [CodLocal] INT NOT NULL,
    [CodRecursoRoda] INT NOT NULL,
    [DescRecursoRoda] VARCHAR(40) NOT NULL
);

CREATE TABLE [dbo].[RECURSOS] (
    [CodRecurso] INT NOT NULL,
    [DescRecurso] VARCHAR(255) NULL
);

CREATE TABLE [dbo].[RECURSOSCONTCONV] (
    [CodigoRecursoCC] INT NOT NULL,
    [Descricao] VARCHAR(255) NULL,
    [Quantidade] INT NULL
);

CREATE TABLE [dbo].[RECURSOSEVENTOMC] (
    [CodEventoMC] INT NOT NULL,
    [CodRecurso] INT NOT NULL,
    [CodPessoaJ] INT NULL,
    [ValorUnitario] REAL NULL,
    [Quantidade] REAL NULL,
    [Subsidiado] BIT NOT NULL
);

CREATE TABLE [dbo].[reedicao] (
    [CodReedicao] INT NOT NULL,
    [CodAssinatura] INT NOT NULL,
    [CodConta] INT NOT NULL
);

CREATE TABLE [dbo].[Regiao] (
    [CodRegiao] INT NOT NULL,
    [DescricaoRegiao] VARCHAR(50) NULL
);

CREATE TABLE [dbo].[RegistroEnvioAvaliacaoATI] (
    [CodFichaAval] INT NOT NULL,
    [CodParceiroInternet] BIGINT NOT NULL,
    [DataEnvioAval] DATETIME NOT NULL,
    [Respondida] CHAR(1) NULL
);

CREATE TABLE [dbo].[RegistroHorasTrab] (
    [CodRaht] INT NOT NULL,
    [CodConsultoria] INT NULL,
    [CodConsultor] INT NULL,
    [Data] DATETIME NULL,
    [HoraInicio] DATETIME NULL,
    [HoraFim] DATETIME NULL,
    [Atividades] VARCHAR(255) NULL,
    [CodClasseCons] INT NULL,
    [ValorHora] FLOAT NULL,
    [IndFase] TINYINT NOT NULL,
    [CodConta] INT NULL
);

CREATE TABLE [dbo].[RegistroHsInterv] (
    [CodRaht] INT NOT NULL,
    [SeqRaht] SMALLINT NOT NULL,
    [HoraInicio] DATETIME NULL,
    [HoraFim] DATETIME NULL
);

CREATE TABLE [dbo].[registros_conferir_sas] (
    [id_atendimento_sas] VARCHAR(50) NULL,
    [dataHoraInicio] VARCHAR(50) NULL,
    [cpfCliente] VARCHAR(20) NULL,
    [cnpjEmpreendimento] VARCHAR(20) NULL,
    [codDisponibilizacao] BIGINT NULL,
    [tipoRealizacao] VARCHAR(10) NULL,
    [codMomento] INT NULL,
    [CodParceiro] INT NULL,
    [dataHoraInicio_t] DATETIME NULL
);

CREATE TABLE [dbo].[registros_conferir_sas_1] (
    [id_atendimento_sas] VARCHAR(50) NULL,
    [dataHoraInicio] VARCHAR(50) NULL,
    [cpfCliente] VARCHAR(20) NULL,
    [cnpjEmpreendimento] VARCHAR(20) NULL,
    [codDisponibilizacao] VARCHAR(20) NULL,
    [tipoRealizacao] VARCHAR(10) NULL,
    [codMomento] VARCHAR(50) NULL,
    [CodParceiro] BIGINT NULL,
    [dataHoraInicio_t] DATETIME NULL,
    [Protocolo] VARCHAR(30) NULL
);

CREATE TABLE [dbo].[Regras_offline] (
    [OrdemExecucao] TINYINT NOT NULL,
    [NomeTabela] CHAR(50) NOT NULL,
    [Ancora] TINYINT NOT NULL,
    [PKAncora] VARCHAR(50) NULL
);

CREATE TABLE [dbo].[RelAgentes] (
    [CodRelatorio] SMALLINT NOT NULL,
    [Agentes] CHAR(15) NOT NULL,
    [Descricao] VARCHAR(50) NOT NULL,
    [NomeRelat] VARCHAR(50) NOT NULL,
    [RelPadrao] TINYINT NOT NULL,
    [IndTipoRelat] TINYINT NULL
);

CREATE TABLE [dbo].[RelAssuntoAtributo] (
    [CodAtributo] INT NOT NULL,
    [CodAssuntoAtributo] INT NOT NULL
);

CREATE TABLE [dbo].[relassuntotec] (
    [codtecnico] INT NOT NULL,
    [codassloc] VARCHAR(5) NOT NULL
);

CREATE TABLE [dbo].[RelatorioAfericao] (
    [CodParceiro] INT NOT NULL,
    [CodPesquisa] INT NOT NULL,
    [CodColeta] INT NOT NULL,
    [CodIndicador] INT NOT NULL
);

CREATE TABLE [dbo].[RelatorioAplicacao] (
    [codAplicacao] INT NOT NULL,
    [nome] VARCHAR(50) NOT NULL
);

CREATE TABLE [dbo].[RelatorioAplicacaoRealizacao] (
    [codAplicacao] INT NOT NULL,
    [nome] VARCHAR(50) NOT NULL,
    [codigo] VARCHAR(3) NOT NULL
);

CREATE TABLE [dbo].[RelatorioDiagnostico] (
    [CodAtendimento] INT NULL,
    [codparceiro] INT NULL,
    [Indicador] VARCHAR(255) NULL,
    [Tipoparametro] CHAR(1) NULL,
    [RespCliInterval] VARCHAR(255) NULL,
    [RespCliValorExato] VARCHAR(255) NULL,
    [RespCliLista] TEXT NULL,
    [RespCliTexto] TEXT NULL,
    [IntervaloFonteExterna] VARCHAR(255) NULL,
    [ValorFonteExterna] VARCHAR(255) NULL,
    [ListaFonteExterna] TEXT NULL,
    [TextoFonteExterna] TEXT NULL,
    [IntervaloFonteInterna] INT NULL,
    [ListaFonteInterna] INT NULL,
    [IndicadorFonteInterna] VARCHAR(50) NULL,
    [ValorFonteInterna] VARCHAR(100) NULL,
    [NumRespFonteInterna] INT NULL,
    [NumQuestFonteInterna] INT NULL
);

CREATE TABLE [dbo].[RelatorioGenerico] (
    [idRelatorio] INT NOT NULL,
    [nome] VARCHAR(50) NOT NULL,
    [caption] VARCHAR(100) NOT NULL,
    [codAplicacao] INT NOT NULL,
    [nomeProcedure] VARCHAR(100) NOT NULL
);

CREATE TABLE [dbo].[RelatorioGenericoCampos] (
    [idRelatorio] INT NOT NULL,
    [nome] VARCHAR(50) NOT NULL,
    [campoNoBanco] VARCHAR(50) NOT NULL,
    [caption] VARCHAR(50) NOT NULL
);

CREATE TABLE [dbo].[RelatorioGenericoParametros] (
    [idRelatorio] INT NOT NULL,
    [nome] VARCHAR(50) NOT NULL
);

CREATE TABLE [dbo].[relatoriousuario_com_direito] (
    [Servidor] NVARCHAR(128) NULL,
    [UF] VARCHAR(10) NULL,
    [Escritorio] VARCHAR(30) NULL,
    [usuarioLogin] VARCHAR(50) NOT NULL,
    [CodParceiro] INT NOT NULL,
    [Nome] VARCHAR(120) NULL,
    [EMAIL] VARCHAR(60) NULL,
    [Telefone] VARCHAR(60) NULL
);

CREATE TABLE [dbo].[relatoriousuario_direito] (
    [Servidor] NVARCHAR(128) NULL,
    [UF] VARCHAR(10) NULL,
    [Escritorio] VARCHAR(30) NULL,
    [usuarioLogin] VARCHAR(50) NOT NULL,
    [CodParceiro] INT NOT NULL,
    [Nome] VARCHAR(120) NULL,
    [EMAIL] VARCHAR(60) NULL,
    [Telefone] VARCHAR(60) NULL,
    [direitoCodigo] INT NULL
);

CREATE TABLE [dbo].[RelCatAtendimentoAnoComp] (
    [CodRel] SMALLINT NOT NULL,
    [CodCategoria] INT NOT NULL,
    [AnoComp] INT NOT NULL,
    [Situacao] CHAR(1) NULL,
    [rowguid] UNIQUEIDENTIFIER NULL
);

CREATE TABLE [dbo].[RelCategoriaTipoRealizacao] (
    [CodCategoria] INT NOT NULL,
    [CodTipoRealizacao] VARCHAR(3) NOT NULL,
    [rowguid] UNIQUEIDENTIFIER NULL
);

CREATE TABLE [dbo].[RelCompraEvento] (
    [CodTpCompra] TINYINT NOT NULL,
    [AnoExercicio] INT NOT NULL,
    [SeqProcCompra] INT NOT NULL,
    [CodEventoCompra] INT NOT NULL,
    [DataEvento] DATETIME NULL,
    [Encaminhamento] VARCHAR(120) NULL,
    [Status] TINYINT NULL
);

CREATE TABLE [dbo].[RelConstJurRFB] (
    [CodConst] SMALLINT NOT NULL,
    [CodConstRFB] NVARCHAR(10) NOT NULL,
    [DescConstRFB] NVARCHAR(255) NOT NULL
);

CREATE TABLE [dbo].[relconsultapadrao] (
    [codatend] INT NOT NULL,
    [seqconsulta] INT NOT NULL,
    [codassloc] VARCHAR(5) NOT NULL,
    [seqconsrapida] INT NOT NULL
);

CREATE TABLE [dbo].[RelDiagnostico] (
    [Problema] VARCHAR(255) NULL,
    [Causa] VARCHAR(255) NULL,
    [Solucao] VARCHAR(255) NULL,
    [FormaAquisicao] VARCHAR(255) NULL,
    [CodAtendimento] INT NULL
);

CREATE TABLE [dbo].[RelDiagnosticoAtendPer] (
    [Problema] VARCHAR(255) NULL,
    [Causa] VARCHAR(255) NULL,
    [Solucao] VARCHAR(255) NULL,
    [FormaAquisicao] VARCHAR(255) NULL,
    [CodAtendimento] INT NULL
);

CREATE TABLE [dbo].[RelEspecTec] (
    [codtecnico] INT NOT NULL,
    [codareaesp] INT NOT NULL,
    [coditemareaesp] INT NOT NULL,
    [qualificacao] VARCHAR(25) NULL,
    [indqualificacao] TINYINT NOT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[RelEventoParticipante] (
    [CodProcJuridico] INT NOT NULL,
    [CodEventoProcesso] TINYINT NOT NULL,
    [CodParticProcesso] INT NOT NULL
);

CREATE TABLE [dbo].[RelEventoProcJuridico] (
    [CodProcJuridico] INT NOT NULL,
    [CodEventoProcesso] TINYINT NOT NULL,
    [DataIniEventoProcesso] DATETIME NULL,
    [DataFimEventoProcesso] DATETIME NULL,
    [AcompEventoProcesso] TEXT NULL,
    [Status] TINYINT NOT NULL,
    [NumEventoProcesso] VARCHAR(20) NULL
);

CREATE TABLE [dbo].[RelEventoTipoPartic] (
    [CodEventoProcesso] TINYINT NOT NULL,
    [CodTipoParticProcesso] TINYINT NOT NULL,
    [Status] TINYINT NOT NULL
);

CREATE TABLE [dbo].[releveproduop] (
    [codcadevento] INT NOT NULL,
    [codprod] INT NOT NULL,
    [codunidop] INT NOT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[RelFichaAvalIndGrupo] (
    [CodFichaAval] INT NOT NULL,
    [CodGrupo] INT NOT NULL,
    [CodIndicadorAval] INT NOT NULL,
    [Ordem] SMALLINT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[RelFuncAssistMedica] (
    [CodFuncionario] INT NOT NULL,
    [CodAssistMedica] TINYINT NOT NULL,
    [CodCarteira] INT NOT NULL,
    [DataRecebimento] DATETIME NULL,
    [DataValidade] DATETIME NULL,
    [DataReceb] DATETIME NULL,
    [DataEnvio] DATETIME NULL,
    [DataRetorno] DATETIME NULL,
    [DataEntrega] DATETIME NULL,
    [CodSegurado] INT NOT NULL
);

CREATE TABLE [dbo].[RelIndicadorAplicacao] (
    [AplicacaoCodigo] INT NOT NULL,
    [CodIndicador] INT NOT NULL,
    [CodAcesso] INT NOT NULL,
    [DataAtualizacao] DATETIME NULL,
    [DataImpressao] DATETIME NULL,
    [NomeStoredProc] VARCHAR(50) NULL
);

CREATE TABLE [dbo].[RelLimiteCompra] (
    [CodTpContratacao] TINYINT NOT NULL,
    [CodTpCompra] TINYINT NOT NULL,
    [LimValorIni] FLOAT NULL,
    [LimValorFim] FLOAT NULL,
    [QtdMinimaPartic] TINYINT NULL,
    [PrzValidade] TINYINT NULL,
    [IndEdital] TINYINT NULL
);

CREATE TABLE [dbo].[RelNatProd] (
    [CodProd] INT NOT NULL,
    [CodNatDesp] INT NOT NULL
);

CREATE TABLE [dbo].[RelNivelAcessoFuncionario] (
    [CodNivelAcesso] TINYINT NOT NULL,
    [CodFuncionario] INT NOT NULL
);

CREATE TABLE [dbo].[relopeprod] (
    [codunidop] INT NOT NULL,
    [codprod] INT NOT NULL,
    [codcoordprod] VARCHAR(8) NULL,
    [CodBloqProd] SMALLINT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[RelParceiroFormaContato] (
    [CodParceiro] INT NOT NULL,
    [CodFormaContato] INT NOT NULL,
    [DataCadastro] DATETIME NOT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[RelParceiroFormaContato_070514] (
    [CodParceiro] INT NOT NULL,
    [CodFormaContato] INT NOT NULL,
    [DataCadastro] DATETIME NOT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[RelParceiroGdGrupo] (
    [CodParceiro] INT NOT NULL,
    [CodGdGrupo] INT NOT NULL,
    [CodUnidOp] INT NULL,
    [CodProduto] INT NULL
);

CREATE TABLE [dbo].[RelPerfil] (
    [CodTema] INT NOT NULL,
    [Anotacao] TEXT NOT NULL
);

CREATE TABLE [dbo].[RelPerfilAtendPersonal] (
    [DescParametro] VARCHAR(255) NULL,
    [TipoParametro] VARCHAR(1) NULL,
    [Intervalo] VARCHAR(255) NULL,
    [ValorExato] VARCHAR(255) NULL,
    [Lista] TEXT NULL,
    [texto] TEXT NULL,
    [CodAtendimento] INT NULL
);

CREATE TABLE [dbo].[RelPerfilEmpresarial] (
    [DescParametro] VARCHAR(255) NULL,
    [TipoParametro] VARCHAR(1) NULL,
    [Intervalo] VARCHAR(255) NULL,
    [ValorExato] VARCHAR(255) NULL,
    [Lista] TEXT NULL,
    [Texto] TEXT NULL,
    [CodAtendimento] INT NULL,
    [Categoria] CHAR(1) NULL
);

CREATE TABLE [dbo].[RelPesquisaCustomizadas] (
    [DescParametro] VARCHAR(255) NOT NULL,
    [TipoParametro] VARCHAR(1) NOT NULL,
    [Intervalo] VARCHAR(255) NOT NULL,
    [ValorExato] VARCHAR(255) NOT NULL,
    [Lista] TEXT NOT NULL,
    [Texto] TEXT NOT NULL,
    [CodAtendimento] INT NOT NULL
);

CREATE TABLE [dbo].[RelPorteConstJur] (
    [CodRel] SMALLINT NOT NULL,
    [CodConst] SMALLINT NOT NULL,
    [codPorte] SMALLINT NOT NULL,
    [Atende] VARCHAR(1) NULL,
    [Situacao] VARCHAR(1) NULL,
    [rowguid] UNIQUEIDENTIFIER NULL
);

CREATE TABLE [dbo].[RelProcCompraRequisicao] (
    [CodTpCompra] TINYINT NOT NULL,
    [AnoExercicio] INT NOT NULL,
    [SeqTpCompra] INT NOT NULL,
    [CodReqCompra] INT NOT NULL
);

CREATE TABLE [dbo].[RelProdutosNaoVinculados] (
    [CodProduto] INT NULL,
    [ProdutoMestre] VARCHAR(40) NULL,
    [Produto] VARCHAR(40) NULL,
    [ProdutoPai] VARCHAR(40) NULL,
    [TIPOPRODUTO] VARCHAR(80) NULL,
    [TIPOPORTFOLIO] VARCHAR(10) NULL,
    [TIPOAUTOR] VARCHAR(10) NULL,
    [SEBRAEREFERENCIA] VARCHAR(10) NULL,
    [SEBRAEDISPONIVEL] VARCHAR(10) NULL
);

CREATE TABLE [dbo].[relprofeve] (
    [CodEvento] INT NOT NULL,
    [CodParceiro] INT NOT NULL,
    [AvaliarProfessor] BIT NOT NULL,
    [Obs] VARCHAR(255) NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[relteccadeve] (
    [codcadevento] INT NOT NULL,
    [codtecnico] INT NOT NULL,
    [codclasse] INT NOT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[relteceve] (
    [codevento] INT NOT NULL,
    [codtecnico] INT NOT NULL,
    [codclasse] INT NOT NULL,
    [valorhora] NUMERIC(9,2) NOT NULL,
    [Qualificacao] INT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[reltipoeveitemaval] (
    [codtipoevento] INT NOT NULL,
    [codgrupo] INT NOT NULL,
    [coditem] INT NOT NULL,
    [dataatualiz] SMALLDATETIME NOT NULL
);

CREATE TABLE [dbo].[RelTipoKit] (
    [CodprodutoPortfolio] INT NOT NULL,
    [CodTipoKit] INT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [PrecoVenda] FLOAT NULL,
    [codkit] INT NULL,
    [Situacao] CHAR(10) NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[RelTipoRealizacaoCategoriaAtendimento] (
    [CodRel] SMALLINT NOT NULL,
    [CodTipoRealizacao] VARCHAR(3) NOT NULL,
    [CodCategoria] INT NOT NULL,
    [Situacao] VARCHAR(1) NOT NULL,
    [rowguid] UNIQUEIDENTIFIER NULL
);

CREATE TABLE [dbo].[RelTipoRealizacaoCategoriaAtendimentoWS] (
    [CodRel] SMALLINT NOT NULL,
    [CodTipoRealizacao] VARCHAR(3) NOT NULL,
    [CodCategoria] INT NOT NULL
);

CREATE TABLE [dbo].[renovacao] (
    [CodRenovacao] INT NOT NULL,
    [CodAssinatura] INT NOT NULL,
    [CodConta] INT NULL,
    [CodAssinRenovada] INT NULL
);

CREATE TABLE [dbo].[Replicacao_Divergencia] (
    [ID_ReplDive] INT NOT NULL,
    [DataHora] DATETIME NULL,
    [UF] CHAR(2) NULL,
    [Tabela] VARCHAR(128) NULL,
    [Sentido] BIT NULL,
    [Divergencia] INT NULL
);

CREATE TABLE [dbo].[RepParticipanteEvtoRoda] (
    [CodEvtoRoda] INT NOT NULL,
    [CodParticipante] INT NOT NULL,
    [CodPessoaF] INT NOT NULL
);

CREATE TABLE [dbo].[ReqCompra] (
    [CodReqCompra] INT NOT NULL,
    [CodNatCompra] TINYINT NOT NULL,
    [CodCoordenador] INT NULL,
    [Justificativa] TEXT NULL,
    [Status] TINYINT NOT NULL
);

CREATE TABLE [dbo].[ReqMaterial] (
    [CodReqMaterial] INT NOT NULL,
    [Natureza] TINYINT NOT NULL,
    [VlTotal] FLOAT NOT NULL,
    [NumCD] INT NULL,
    [NumReqSIAC] INT NULL,
    [Status] TINYINT NULL
);

CREATE TABLE [dbo].[ReqMaterialLog] (
    [CodReqMaterial] INT NOT NULL,
    [Natureza] TINYINT NOT NULL,
    [VlTotal] FLOAT NOT NULL,
    [NumCD] INT NULL,
    [NumReqSIAC] INT NULL,
    [Status] TINYINT NULL
);

CREATE TABLE [dbo].[ReqPessoal] (
    [CodReqPessoal] INT NOT NULL,
    [CodTpReqPessoal] TINYINT NOT NULL,
    [Justificativa] VARCHAR(255) NULL,
    [Status] TINYINT NOT NULL,
    [CodBeneficiario] INT NULL,
    [Motivo] VARCHAR(255) NULL
);

CREATE TABLE [dbo].[ReqProcJuridico] (
    [CodReqProcJuridico] INT NOT NULL,
    [CodUnidOp] INT NOT NULL,
    [CodProduto] INT NOT NULL,
    [CodRequisitante] INT NOT NULL,
    [DataRequisicao] DATETIME NOT NULL,
    [CodNaturezaProc] TINYINT NOT NULL,
    [CodTipoProcesso] TINYINT NULL,
    [AssuntoRequisicao] TEXT NULL,
    [RespostaRequisicao] TEXT NULL,
    [Status] TINYINT NOT NULL,
    [DataResposta] DATETIME NULL,
    [CodRespondente] INT NULL,
    [DataCiencia] DATETIME NULL,
    [CodAssuntoJuridico] INT NULL
);

CREATE TABLE [dbo].[ReqTransporte] (
    [CodReqTransporte] INT NOT NULL,
    [CodEstado] INT NOT NULL,
    [CodCoordenador] INT NULL,
    [CodFuncControle] INT NULL,
    [CodCidade] FLOAT NOT NULL,
    [Roteiro] VARCHAR(200) NULL,
    [HoraSaida] DATETIME NULL,
    [HoraRetorno] DATETIME NULL,
    [Finalidade] VARCHAR(200) NOT NULL,
    [Status] TINYINT NULL,
    [CodBeneficiario] INT NULL,
    [ForadoPrazo] TINYINT NULL
);

CREATE TABLE [dbo].[Requisicao] (
    [CodRequisicao] INT NOT NULL,
    [TipoRequisicao] TINYINT NOT NULL,
    [CodUnidOp] INT NOT NULL,
    [CodProduto] INT NOT NULL,
    [CodNatDesp] INT NULL,
    [CodRequisitante] INT NOT NULL,
    [DataRequisicao] DATETIME NOT NULL,
    [DataCancelamento] DATETIME NULL,
    [DataProgramacao] DATETIME NULL,
    [Status] TINYINT NULL
);

CREATE TABLE [dbo].[RequisicaoLog] (
    [CodRequisicao] INT NOT NULL,
    [TipoRequisicao] TINYINT NOT NULL,
    [CodUnidOp] INT NOT NULL,
    [CodProduto] INT NOT NULL,
    [CodNatDesp] INT NULL,
    [CodRequisitante] INT NOT NULL,
    [DataRequisicao] DATETIME NOT NULL,
    [DataCancelamento] DATETIME NULL,
    [DataProgramacao] DATETIME NULL,
    [Status] TINYINT NULL
);

CREATE TABLE [dbo].[ReservaEvento] (
    [codreseve] INT NOT NULL,
    [codevento] INT NOT NULL,
    [codpessoapf] INT NULL,
    [codpessoapj] INT NULL,
    [codcargcli] INT NULL,
    [status] VARCHAR(3) NOT NULL,
    [datareserva] SMALLDATETIME NOT NULL,
    [nomepesres] VARCHAR(60) NULL,
    [comunic] VARCHAR(60) NULL,
    [datacanc] SMALLDATETIME NULL,
    [nomepescanc] VARCHAR(60) NULL,
    [statusreserva] TINYINT NOT NULL,
    [CodParceiro] INT NOT NULL,
    [QtdReserva] INT NOT NULL,
    [QtdCancelada] INT NOT NULL,
    [QtdAtendida] INT NOT NULL,
    [Observacao] VARCHAR(200) NULL,
    [UsuarioResp] INT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[ReservaEventoComunicacao] (
    [CodResEve] INT NOT NULL,
    [CodComunic] SMALLINT NOT NULL,
    [Numero] VARCHAR(30) NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[reservalocal] (
    [codlocal] INT NOT NULL,
    [codreserva] INT NOT NULL,
    [datainires] SMALLDATETIME NOT NULL,
    [datafimres] SMALLDATETIME NOT NULL,
    [horainires] SMALLDATETIME NOT NULL,
    [horafimres] SMALLDATETIME NOT NULL,
    [pessoares] VARCHAR(20) NULL,
    [finalidres] VARCHAR(60) NULL,
    [datareserva] SMALLDATETIME NOT NULL,
    [CodParceiro] INT NULL,
    [IndCliente] TINYINT NULL,
    [Bloquear] TINYINT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[ReservaLocalFeira] (
    [CodEventoPleito] INT NOT NULL,
    [CodLocalEvento] INT NOT NULL,
    [DataInicio] SMALLDATETIME NOT NULL,
    [DataFim] SMALLDATETIME NOT NULL,
    [DataReserva] SMALLDATETIME NULL,
    [IndSituacao] INT NULL,
    [TipoReserva] VARCHAR(1) NULL,
    [CodSebrae] INT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[ReservaParticipante] (
    [CodResEve] INT NOT NULL,
    [CodEvento] INT NOT NULL,
    [CodPessoaPF] INT NOT NULL,
    [Status] TINYINT NOT NULL,
    [CodMidia] INT NULL,
    [IndInforSebrae] TINYINT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[RESPOSTA] (
    [CodAtendimento] INT NOT NULL,
    [CodPesquisa] INT NOT NULL,
    [CodQuestao] INT NOT NULL,
    [TipoResposta] CHAR(1) NULL,
    [Categoria] CHAR(1) NULL,
    [Intervalo] BIT NOT NULL,
    [ValorExato] BIT NOT NULL,
    [CodIntervalo] INT NULL,
    [CodItemEscolhido] INT NULL,
    [Texto] TEXT NULL,
    [Valor] FLOAT NULL
);

CREATE TABLE [dbo].[RespostaInternet] (
    [CodRespostaInternet] INT NOT NULL,
    [CodPerguntaInternet] INT NOT NULL,
    [Resposta] TEXT NOT NULL,
    [DataResposta] DATETIME NOT NULL,
    [CodTecnico] INT NULL,
    [CodFAQ] INT NULL,
    [Situacao] CHAR(1) NULL,
    [CodCategoria] INT NULL
);

CREATE TABLE [dbo].[RespostaInternetAnexos] (
    [CodRespostaInternet] INT NOT NULL,
    [NomeArquivo] VARCHAR(500) NOT NULL,
    [Tipo] CHAR(1) NULL,
    [CodConteudo] INT NULL
);

CREATE TABLE [dbo].[Results] (
    [CodProcesso] CHAR(4) NOT NULL,
    [CodMacroProcesso] CHAR(4) NOT NULL,
    [NomeProcesso] VARCHAR(255) NOT NULL,
    [DescricaoProcesso] VARCHAR(500) NOT NULL,
    [Autor] VARCHAR(10) NULL,
    [DataCriacao] DATETIME NOT NULL,
    [DataUltimaAtualizacao] DATETIME NULL,
    [URLArquivo] VARCHAR(255) NULL
);

CREATE TABLE [dbo].[ResumoObjetosBD] (
    [Objeto] VARCHAR(60) NOT NULL,
    [Quantidade] INT NOT NULL,
    [Ordem] SMALLINT NOT NULL,
    [tipo] TINYINT NULL
);

CREATE TABLE [dbo].[ReuniaoRoda] (
    [CodEvtoRoda] INT NOT NULL,
    [CodReuniaoRoda] INT NOT NULL,
    [Data] SMALLDATETIME NOT NULL,
    [SeqHorarioEvtoRoda] INT NOT NULL,
    [CodLocal] INT NOT NULL,
    [CodRecursoRoda] INT NOT NULL,
    [CodSolicitante] INT NOT NULL,
    [CodSolicitado] INT NOT NULL
);

CREATE TABLE [dbo].[RevisaoPeriodica] (
    [CodRevisaoPeriodica] INT NOT NULL,
    [CodMarca] TINYINT NOT NULL,
    [CodModelo] TINYINT NOT NULL,
    [RevisaoInicial] INT NOT NULL,
    [Frequencia] INT NOT NULL,
    [TempoExecucao] INT NULL,
    [DescRevisao] VARCHAR(80) NOT NULL
);

CREATE TABLE [dbo].[RM_Parametros] (
    [IndIntegracaoAtiva] BIT NOT NULL,
    [CodColigadaRM] INT NULL,
    [IdPrdCdiRM] INT NULL,
    [IdPrdEducacaoRM] INT NULL,
    [PrdCdiRMTributa] BIT NULL,
    [PrdEducacaoRMTributa] BIT NULL,
    [IndAgruparPagtoEvento] BIT NOT NULL,
    [IndAgruparPagtoPF] BIT NOT NULL
);

CREATE TABLE [dbo].[Rodada] (
    [CodRodada] INT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [NomeRodada] VARCHAR(255) NOT NULL,
    [DescRodada] VARCHAR(3000) NULL,
    [CodProjeto] UNIQUEIDENTIFIER NOT NULL,
    [CodAcao] INT NOT NULL,
    [LocalRodada] VARCHAR(255) NULL,
    [VolumeNegocio] NUMERIC(18,2) NULL,
    [DataInicio] DATETIME NOT NULL,
    [DataFim] DATETIME NOT NULL,
    [MesAnoCompetencia] DATETIME NULL,
    [DataCadastro] DATETIME NULL,
    [CodResponsavel] INT NULL,
    [IndTipoApoio] TINYINT NULL,
    [codTema] INT NULL,
    [CodSubtema] INT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[RodadaParticipantes] (
    [CodRodada] INT NOT NULL,
    [CodPessoa] INT NOT NULL,
    [CodEmpreendimento] INT NULL,
    [CodSebrae] INT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[SaidaMaterial] (
    [CodSaidaMaterial] INT NOT NULL,
    [CodTpMovEstoque] TINYINT NOT NULL,
    [CodUnidOp] INT NOT NULL,
    [Codproduto] INT NOT NULL,
    [CodRequisicao] INT NULL,
    [DataSaida] DATETIME NOT NULL,
    [VlTotal] FLOAT NULL,
    [Status] TINYINT NULL
);

CREATE TABLE [dbo].[SaidaTitulo] (
    [CodSaidaTitulo] INT NOT NULL,
    [CodTipoMovTitulo] TINYINT NOT NULL,
    [CodBalcaoCDI] INT NOT NULL,
    [DataSaida] DATETIME NOT NULL,
    [DataConclusao] DATETIME NULL,
    [VlTotalSaida] FLOAT NOT NULL,
    [Status] TINYINT NULL
);

CREATE TABLE [dbo].[sebrae] (
    [codsebrae] INT NOT NULL,
    [descsebrae] VARCHAR(40) NOT NULL,
    [nomeabrev] VARCHAR(10) NULL,
    [fone] VARCHAR(30) NULL,
    [cgc] NUMERIC(15,0) NOT NULL,
    [codlogr] INT NOT NULL,
    [descendereco] VARCHAR(60) NULL,
    [numero] VARCHAR(6) NULL,
    [complemento] VARCHAR(30) NULL,
    [codbairro] INT NULL,
    [codcid] INT NULL,
    [codest] SMALLINT NULL,
    [codpais] SMALLINT NULL,
    [cep] INT NULL,
    [SeqUF] INT NULL,
    [Situacao] CHAR(1) NULL,
    [codsebraeSGE] UNIQUEIDENTIFIER NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL,
    [NIRF] BIT NULL,
    [CodResponsavel] INT NULL,
    [Centralizado] BIT NOT NULL
);

CREATE TABLE [dbo].[SEBRAE-BA] (
    [CPF] VARCHAR(50) NULL,
    [Nome] VARCHAR(100) NULL,
    [Login] VARCHAR(50) NULL,
    [Email] VARCHAR(100) NULL,
    [Telefone] VARCHAR(50) NULL,
    [Grupo] VARCHAR(50) NULL,
    [Perfil] VARCHAR(50) NULL,
    [CodTipoUsuario] VARCHAR(50) NULL,
    [UnidadeOrganizacional] VARCHAR(50) NULL,
    [DataInicio_no SAS] VARCHAR(50) NULL,
    [DataAtualizacao] VARCHAR(50) NULL,
    [CNPJ] VARCHAR(50) NULL,
    [Data Fim AtivaÃ§Ã£o] VARCHAR(50) NULL
);

CREATE TABLE [dbo].[SEBRAE-BA1] (
    [CPF] VARCHAR(50) NULL,
    [Nome] VARCHAR(100) NULL,
    [Login] VARCHAR(50) NULL,
    [Email] VARCHAR(100) NULL,
    [Telefone] VARCHAR(50) NULL,
    [Grupo] VARCHAR(50) NULL,
    [Perfil] VARCHAR(50) NULL,
    [CodTipoUsuario] VARCHAR(50) NULL,
    [UnidadeOrganizacional] VARCHAR(50) NULL,
    [DataInicio] VARCHAR(50) NULL,
    [DataAtualizacao] VARCHAR(50) NULL,
    [CNPJ] VARCHAR(50) NULL,
    [DataFim] VARCHAR(50) NULL,
    [Coluna 13] VARCHAR(50) NULL,
    [Valida CPF] VARCHAR(50) NULL
);

CREATE TABLE [dbo].[SebraeReplicacao] (
    [CodParceiro] INT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [DataInclusao] DATETIME NOT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[SebraetecCNPJ] (
    [F1] NVARCHAR(255) NULL,
    [F2] FLOAT NULL
);

CREATE TABLE [dbo].[SegmentacaoAcessoBIA] (
    [CodParceiro] INT NOT NULL,
    [GrupoCodigo] INT NOT NULL,
    [CodSEBRAE] CHAR(10) NOT NULL,
    [CodSetorPrioritario] INT NOT NULL,
    [CodTema] INT NOT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[SenhaParceiro] (
    [CodParceiro] INT NOT NULL,
    [Senha] CHAR(20) NOT NULL,
    [PalavraSenha] CHAR(100) NULL
);

CREATE TABLE [dbo].[SeqTpCompra] (
    [CodTpCompra] TINYINT NOT NULL,
    [AnoExercicio] INT NOT NULL,
    [SeqTpCompra] INT NULL,
    [QtdProcValidos] FLOAT NULL,
    [QtdProcInvalidos] FLOAT NULL
);

CREATE TABLE [dbo].[sequenciador] (
    [tabela] VARCHAR(20) NOT NULL,
    [coluna] VARCHAR(20) NOT NULL,
    [sequencial] FLOAT NOT NULL,
    [ID] SMALLINT NOT NULL
);

CREATE TABLE [dbo].[SerieTitulo] (
    [CodSerieTitulo] INT NOT NULL,
    [DescSerieTitulo] VARCHAR(50) NOT NULL
);

CREATE TABLE [dbo].[Servico] (
    [CodConsultoria] INT NOT NULL,
    [SeqServico] INT NOT NULL,
    [CodParceiro] INT NULL,
    [DataHoraAgend] DATETIME NULL,
    [DataHoraIni] DATETIME NULL,
    [DataHoraFim] DATETIME NULL,
    [Objetivos] VARCHAR(255) NULL,
    [Conclusoes] VARCHAR(255) NULL,
    [IndFase] INT NULL,
    [Diagnostico] TEXT NULL,
    [DataHoraAgendFim] DATETIME NULL
);

CREATE TABLE [dbo].[ServicoCons] (
    [CodConsultoria] INT NOT NULL,
    [SeqServico] INT NOT NULL,
    [CodConsultor] INT NOT NULL,
    [IndPresenca] BIT NOT NULL
);

CREATE TABLE [dbo].[setor] (
    [codsetor] SMALLINT NOT NULL,
    [descsetor] VARCHAR(30) NOT NULL,
    [Situacao] CHAR(1) NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[Siac_Monitoramento] (
    [id] BIGINT NOT NULL,
    [usuario] INT NULL,
    [dataregistro] DATETIME NULL,
    [operacao] VARCHAR(50) NULL,
    [descricaoAlteracao] NVARCHAR(3000) NULL
);

CREATE TABLE [dbo].[SIM_LOGEXECUCAO] (
    [idconsumo] INT NOT NULL,
    [datahorainicio] DATETIME NULL,
    [xmlenviado] XML NULL,
    [datahorafim] DATETIME NULL
);

CREATE TABLE [dbo].[SincronizacaoCadastro] (
    [CodParceiro] INT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [DataAtu] DATETIME NOT NULL
);

CREATE TABLE [dbo].[SincronizacaoCadastroAtualizacao] (
    [CodParceiro] INT NOT NULL,
    [DataAtu] DATETIME NOT NULL,
    [CodSebrae] INT NOT NULL,
    [Link] VARCHAR(255) NOT NULL,
    [Atualizado] BIT NOT NULL
);

CREATE TABLE [dbo].[sincronizar] (
    [name] NVARCHAR(128) NOT NULL,
    [alterecao] NVARCHAR(1421) NULL
);

CREATE TABLE [dbo].[sites] (
    [CodGrupo] INT NOT NULL,
    [CodSite] INT NOT NULL,
    [Url] VARCHAR(255) NOT NULL,
    [Descricao] VARCHAR(255) NULL,
    [Tipo] BIT NOT NULL,
    [CodResponsavel] INT NULL,
    [DataAtualizacao] SMALLDATETIME NULL
);

CREATE TABLE [dbo].[SituacaoFaseBEmp] (
    [CodFaseBEmp] INT NOT NULL,
    [CodSituacaoBEmp] INT NOT NULL,
    [DescSituacaoBEmp] VARCHAR(20) NOT NULL
);

CREATE TABLE [dbo].[SME_Divergencias_2017] (
    [Seq] INT NOT NULL,
    [Descricao] VARCHAR(100) NULL,
    [Ocorrencia] INT NULL
);

CREATE TABLE [dbo].[Socio] (
    [CodParceiro] INT NOT NULL,
    [CNPF_Socio] NUMERIC(15,0) NOT NULL,
    [Nome_Socio] VARCHAR(50) NULL,
    [CodEscolaridade] SMALLINT NULL
);

CREATE TABLE [dbo].[SolicitacaoBIA] (
    [NoSolicitacao] INT NOT NULL,
    [DataSolicitacao] DATETIME NOT NULL,
    [CodSEBRAE] INT NOT NULL,
    [CodSolicitante] INT NOT NULL,
    [TipoSolicitacao] CHAR(1) NOT NULL,
    [Acao] CHAR(1) NOT NULL,
    [CodEditorAssunto] INT NULL,
    [CodConteudo] INT NULL,
    [TituloConteudo] VARCHAR(60) NULL,
    [SubTituloConteudo] VARCHAR(155) NULL,
    [Pauta] VARCHAR(8000) NOT NULL,
    [Justificativa] VARCHAR(500) NULL,
    [Situacao] TINYINT NULL,
    [TipoModificacao] CHAR(1) NULL,
    [CodSetorPrioritario] INT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[SolicitacaoBIASegmentacao] (
    [NoSolicitacao] INT NOT NULL,
    [TipoSegmentacao] CHAR(1) NOT NULL,
    [CodSegmentacao] INT NOT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[SolicitacaoCons] (
    [CodSolicitacao] INT NOT NULL,
    [CodParceiro] INT NULL,
    [CodProduto] INT NULL,
    [DataRegistro] DATETIME NULL,
    [DataLimite] DATETIME NULL,
    [CodunidOp] INT NULL,
    [CodPessoaJ] INT NULL,
    [Observacao] VARCHAR(255) NULL,
    [CodAtend] INT NULL
);

CREATE TABLE [dbo].[SolicPleitoFeira] (
    [CodPleitoFeira] INT NOT NULL,
    [CodParceiro] INT NOT NULL
);

CREATE TABLE [dbo].[SolicReuniaoRoda] (
    [CodEvtoRoda] INT NOT NULL,
    [CodSolicReuniaoRoda] INT NOT NULL,
    [CodParticipante] INT NOT NULL,
    [CodParticipanteSolicitado] INT NOT NULL,
    [Status] INT NULL
);

CREATE TABLE [dbo].[Solucao] (
    [CodSolucao] INT NOT NULL,
    [Descricao] VARCHAR(255) NOT NULL,
    [FormaAquisicao] VARCHAR(255) NULL,
    [TipoSolucao] VARCHAR(1) NULL,
    [Candidato] BIT NOT NULL,
    [Empresario] BIT NOT NULL,
    [Outras] BIT NOT NULL
);

CREATE TABLE [dbo].[SolucaoComposicao] (
    [CodSolucao] INT NOT NULL,
    [CodSolucaoConstituinte] INT NOT NULL
);

CREATE TABLE [dbo].[SolucaoPadrao] (
    [CodNatureza] INT NOT NULL,
    [CodProdutoHD] INT NOT NULL,
    [CodProblema] INT NOT NULL,
    [CodSolucaoPadrao] INT NOT NULL,
    [DescSolucao] VARCHAR(255) NULL
);

CREATE TABLE [dbo].[source_audit] (
    [tstamp] DATETIME NULL,
    [ProgramName] NVARCHAR(128) NULL,
    [hostname] NVARCHAR(128) NULL,
    [suser] NVARCHAR(128) NULL,
    [actiontype] CHAR(2) NULL,
    [inputbuffer] NVARCHAR(4000) NULL,
    [spid] INT NULL
);

CREATE TABLE [dbo].[sqlprofilerlog] (
    [RowNumber] INT NOT NULL,
    [EventClass] INT NULL,
    [TextData] NTEXT NULL,
    [NTUserName] NVARCHAR(128) NULL,
    [HostName] NVARCHAR(128) NULL,
    [ClientProcessID] INT NULL,
    [ApplicationName] NVARCHAR(128) NULL,
    [LoginName] NVARCHAR(128) NULL,
    [SPID] INT NULL,
    [Duration] BIGINT NULL,
    [StartTime] DATETIME NULL,
    [Reads] BIGINT NULL,
    [Writes] BIGINT NULL,
    [CPU] INT NULL
);

CREATE TABLE [dbo].[SR_metasFisicas_ClinicaTecnologica] (
    [CLÍNICA TECNOLÓGICA - Clinica - Individual - Número de Clínicas] INT NULL,
    [CLÍNICA TECNOLÓGICA - Clinica - Individual - Número de Horas] INT NULL,
    [CLÍNICA TECNOLÓGICA - Clinica - Individual - Número de Participantes] INT NULL,
    [CLÍNICA TECNOLÓGICA - Clinica - Individual - Número de Concluintes] INT NULL,
    [CLÍNICA TECNOLÓGICA - Clinica - Individual - Taxa de Evasão] INT NULL,
    [CodSebrae] INT NULL,
    [DataExecucao] DATETIME NULL
);

CREATE TABLE [dbo].[SR_metasFisicas_consultoria] (
    [CONSULTORIA - A Distância - Individual - Número de Consultorias] INT NULL,
    [CONSULTORIA - A Distância - Individual - Número de Horas] INT NULL,
    [CONSULTORIA - Presencial - Individual - Número de Consultorias] INT NULL,
    [CONSULTORIA - Presencial - Individual - Número de Horas] INT NULL,
    [CodSebrae] INT NULL,
    [DataExecucao] DATETIME NULL
);

CREATE TABLE [dbo].[SR_metasFisicas_curso] (
    [CURSO - A Distância - Individual - Número de Cursos] INT NULL,
    [CURSO - A Distância - Individual - Número de Concluintes] INT NULL,
    [CURSO - A Distância - Individual - Número de Inscritos] INT NULL,
    [CURSO - A Distância - Individual - Número de Horas] INT NULL,
    [CURSO - A Distância - Individual - Taxa de Evasão] NUMERIC(5,4) NULL,
    [CURSO - Presencial - Individual - Número de Cursos] INT NULL,
    [CURSO - Presencial - Individual - Número de Concluintes] INT NULL,
    [CURSO - Presencial - Individual - Número de Inscritos] INT NULL,
    [CURSO - Presencial - Individual - Número de Horas] INT NULL,
    [CURSO - Presencial - Individual - Taxa de Evasão] NUMERIC(5,4) NULL,
    [CodSebrae] INT NULL,
    [DataExecucao] DATETIME NULL
);

CREATE TABLE [dbo].[SR_metasFisicas_fampe] (
    [FAMPE - Operações Garantidas pelo SEBRAE - Individual - Número de Operações] INT NULL,
    [FAMPE - Operações Garantidas pelo SEBRAE - Individual - Volume de Recursos] INT NULL,
    [CodSebrae] INT NULL,
    [DataExecucao] DATETIME NULL
);

CREATE TABLE [dbo].[SR_metasFisicas_Feira] (
    [FEIRA - Feira - Sebrae - Número de Feiras] INT NULL,
    [FEIRA - Feira - Sebrae - Número de Pequenos Negócios] INT NULL,
    [FEIRA - Feira - Sebrae - Número de Atendimentos] INT NULL,
    [FEIRA - Feira - Terceiro - Número de Feiras] INT NULL,
    [FEIRA - Feira - Terceiro - Número de Pequenos Negócios] INT NULL,
    [FEIRA - Feira - Terceiro - Número de Atendimentos] INT NULL,
    [CodSebrae] INT NULL,
    [DataExecucao] DATETIME NULL
);

CREATE TABLE [dbo].[SR_metasFisicas_Informacao] (
    [INFORMAÇÃO - Presencial - Individual - Número de Informações] INT NULL,
    [INFORMAÇÃO - Presencial - Individual - Número de Pessoas Informadas] INT NULL,
    [INFORMAÇÃO - A Distância - Individual - Número de Informações] INT NULL,
    [INFORMAÇÃO - A Distância - Individual - Número de Pessoas Informadas] INT NULL,
    [CodSebrae] INT NULL,
    [DataExecucao] DATETIME NULL
);

CREATE TABLE [dbo].[SR_metasFisicas_MissaoCaravana] (
    [MISSÃO/ CARAVANA - Missão/ Caravana - Sebrae - Número de missões/caravanas] INT NULL,
    [MISSÃO/ CARAVANA - Missão/ Caravana - Sebrae - Número de Pequenos Negócios] INT NULL,
    [MISSÃO/ CARAVANA - Missão/ Caravana - Sebrae - Número de Atendimentos] INT NULL,
    [MISSÃO/ CARAVANA - Missão/ Caravana - Terceiro - Número de missões/caravanas] INT NULL,
    [MISSÃO/ CARAVANA - Missão/ Caravana - Terceiro - Número de Pequenos Negócios] INT NULL,
    [MISSÃO/ CARAVANA - Missão/ Caravana - Terceiro - Número de Atendimentos] INT NULL,
    [CodSebrae] INT NULL,
    [DataExecucao] DATETIME NULL
);

CREATE TABLE [dbo].[SR_metasFisicas_Oficina] (
    [OFICINA - Presencial - Individual - Número de Oficinas] INT NULL,
    [OFICINA - Presencial - Individual - Número de Participantes] INT NULL,
    [OFICINA - Presencial - Individual - Número de Horas] INT NULL,
    [CodSebrae] INT NULL,
    [DataExecucao] DATETIME NULL
);

CREATE TABLE [dbo].[SR_metasFisicas_Orientacao] (
    [ORIENTAÇÃO TÉCNICA - Presencial - Individual - Número de Orientações] INT NULL,
    [ORIENTAÇÃO TÉCNICA - A Distância - Individual - Número de Orientações] INT NULL,
    [CodSebrae] INT NULL,
    [DataExecucao] DATETIME NULL
);

CREATE TABLE [dbo].[SR_metasFisicas_Palestra] (
    [PALESTRA - Presencial - Individual - Número de Palestras] INT NULL,
    [PALESTRA - Presencial - Individual - Número de Participantes] INT NULL,
    [PALESTRA - Presencial - Individual - Número de Horas] INT NULL,
    [CodSebrae] INT NULL,
    [DataExecucao] DATETIME NULL
);

CREATE TABLE [dbo].[SR_metasFisicas_Rodada] (
    [RODADA - Rodada - Individual - Número de Rodadas] INT NULL,
    [RODADA - Rodada - Individual - Número de Participantes] INT NULL,
    [CodSebrae] INT NULL,
    [DataExecucao] DATETIME NULL
);

CREATE TABLE [dbo].[SR_metasFisicas_Seminario] (
    [SEMINÁRIO - Presencial - Individual - Número de Seminários] INT NULL,
    [SEMINÁRIO - Presencial - Individual - Número de Participantes] INT NULL,
    [SEMINÁRIO - Presencial - Individual - Número de Horas] INT NULL,
    [CodSebrae] INT NULL,
    [DataExecucao] DATETIME NULL
);

CREATE TABLE [dbo].[StandEvtoFeira] (
    [CodEvtoFeira] INT NOT NULL,
    [CodStandEvtoFeira] INT NOT NULL,
    [Rua] VARCHAR(40) NULL,
    [Numero] VARCHAR(10) NOT NULL,
    [Area] FLOAT NULL,
    [Valor] FLOAT NULL,
    [CodComprPartFeira] INT NULL,
    [CodSegmento] INT NULL,
    [CodSebrae] INT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[StatusUnificacaoCadastroAuto] (
    [CodParceiro_Origem] INT NOT NULL,
    [CodParceiro_Destino] INT NOT NULL,
    [CodSebrae_Unificado] INT NOT NULL,
    [DataHoraInicio] DATETIME NOT NULL,
    [DataHoraFim] DATETIME NULL,
    [Status] VARCHAR(1) NOT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[SubMenuBIA] (
    [CodSubMenu] INT NOT NULL,
    [CodMenu] INT NOT NULL,
    [TituloSubMenu] VARCHAR(50) NOT NULL,
    [CodSEBRAE] INT NOT NULL,
    [Ordem] INT NULL,
    [Situacao] CHAR(1) NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[SubsidioHoraCons] (
    [SeqSubsidioHoraCons] INT NOT NULL,
    [HoraConsLimite] INT NOT NULL,
    [ValSubsidio] FLOAT NOT NULL,
    [HoraConsInicio] INT NULL
);

CREATE TABLE [dbo].[SUBSIDIORECURSOEVENTOMC] (
    [CodEventoMC] INT NOT NULL,
    [CodRecurso] INT NOT NULL,
    [CodPessoaJ] INT NOT NULL,
    [PercSubsidio] REAL NULL
);

CREATE TABLE [dbo].[syncobj_0x3834464543384136] (
    [a] INT NULL
);

CREATE TABLE [dbo].[sysdiagrams] (
    [name] NVARCHAR(128) NOT NULL,
    [principal_id] INT NOT NULL,
    [diagram_id] INT NOT NULL,
    [version] INT NULL,
    [definition] VARBINARY NULL
);

CREATE TABLE [dbo].[sysmergepublications_retention] (
    [name] NVARCHAR(128) NOT NULL,
    [retention] INT NULL
);

CREATE TABLE [dbo].[sysprocess_PessoasAtingidas] (
    [CodRealizacao] BIGINT NOT NULL,
    [NumPessoasAnt] INT NULL,
    [NumPessoasAtu] INT NULL,
    [CodResponsavel] INT NULL,
    [Data] DATETIME NOT NULL,
    [Acao] VARCHAR(255) NOT NULL,
    [hostname] NCHAR(128) NOT NULL,
    [program_name] NCHAR(128) NOT NULL
);

CREATE TABLE [dbo].[sysprocesses_AtivEconPJ_i] (
    [spid] SMALLINT NULL,
    [kpid] SMALLINT NULL,
    [dbid] SMALLINT NULL,
    [uid] SMALLINT NULL,
    [login_time] DATETIME NULL,
    [hostname] NCHAR(128) NULL,
    [program_name] NCHAR(128) NULL,
    [hostprocess] NCHAR(10) NULL,
    [nt_domain] NCHAR(128) NULL,
    [nt_username] NCHAR(128) NULL,
    [net_address] VARCHAR(48) NULL,
    [net_library] NCHAR(12) NULL,
    [loginame] NCHAR(128) NULL,
    [context_info] BINARY NULL,
    [rowguid] UNIQUEIDENTIFIER NULL,
    [datahora] DATETIME NULL,
    [EventInfo] NVARCHAR(4000) NULL
);

CREATE TABLE [dbo].[sysprocesses_contato] (
    [spid] SMALLINT NULL,
    [kpid] SMALLINT NULL,
    [dbid] SMALLINT NULL,
    [uid] SMALLINT NULL,
    [login_time] DATETIME NULL,
    [hostname] NCHAR(128) NULL,
    [program_name] NCHAR(128) NULL,
    [hostprocess] NCHAR(10) NULL,
    [nt_domain] NCHAR(128) NULL,
    [nt_username] NCHAR(128) NULL,
    [net_address] VARCHAR(48) NULL,
    [net_library] NCHAR(12) NULL,
    [loginame] NCHAR(128) NULL,
    [context_info] BINARY NULL,
    [rowguid] UNIQUEIDENTIFIER NULL,
    [datahora] DATETIME NULL,
    [EventInfo] NVARCHAR(4000) NULL
);

CREATE TABLE [dbo].[sysprocesses_evento] (
    [spid] SMALLINT NOT NULL,
    [kpid] SMALLINT NOT NULL,
    [blocked] SMALLINT NOT NULL,
    [waittype] BINARY NOT NULL,
    [waittime] BIGINT NOT NULL,
    [lastwaittype] NCHAR(32) NOT NULL,
    [waitresource] NCHAR(256) NOT NULL,
    [dbid] SMALLINT NOT NULL,
    [uid] SMALLINT NULL,
    [cpu] INT NOT NULL,
    [physical_io] BIGINT NOT NULL,
    [memusage] INT NOT NULL,
    [login_time] DATETIME NOT NULL,
    [last_batch] DATETIME NOT NULL,
    [ecid] SMALLINT NOT NULL,
    [open_tran] SMALLINT NOT NULL,
    [status] NCHAR(30) NOT NULL,
    [sid] BINARY NOT NULL,
    [hostname] NCHAR(128) NOT NULL,
    [program_name] NCHAR(128) NOT NULL,
    [hostprocess] NCHAR(10) NOT NULL,
    [cmd] NCHAR(16) NOT NULL,
    [nt_domain] NCHAR(128) NOT NULL,
    [nt_username] NCHAR(128) NOT NULL,
    [net_address] NCHAR(12) NOT NULL,
    [net_library] NCHAR(12) NOT NULL,
    [loginame] NCHAR(128) NOT NULL,
    [context_info] BINARY NOT NULL,
    [rowguid] UNIQUEIDENTIFIER NULL,
    [datahora] DATETIME NULL
);

CREATE TABLE [dbo].[sysprocesses_hrc] (
    [spid] SMALLINT NOT NULL,
    [kpid] SMALLINT NOT NULL,
    [blocked] SMALLINT NOT NULL,
    [waittype] BINARY NOT NULL,
    [waittime] BIGINT NOT NULL,
    [lastwaittype] NCHAR(32) NOT NULL,
    [waitresource] NCHAR(256) NOT NULL,
    [dbid] SMALLINT NOT NULL,
    [uid] SMALLINT NULL,
    [cpu] INT NOT NULL,
    [physical_io] BIGINT NOT NULL,
    [memusage] INT NOT NULL,
    [login_time] DATETIME NOT NULL,
    [last_batch] DATETIME NOT NULL,
    [ecid] SMALLINT NOT NULL,
    [open_tran] SMALLINT NOT NULL,
    [status] NCHAR(30) NOT NULL,
    [sid] BINARY NOT NULL,
    [hostname] NCHAR(128) NOT NULL,
    [program_name] NCHAR(128) NOT NULL,
    [hostprocess] NCHAR(10) NOT NULL,
    [cmd] NCHAR(16) NOT NULL,
    [nt_domain] NCHAR(128) NOT NULL,
    [nt_username] NCHAR(128) NOT NULL,
    [net_address] NCHAR(12) NOT NULL,
    [net_library] NCHAR(12) NOT NULL,
    [loginame] NCHAR(128) NOT NULL,
    [context_info] BINARY NOT NULL,
    [rowguid] UNIQUEIDENTIFIER NULL,
    [datahora] DATETIME NULL
);

CREATE TABLE [dbo].[sysprocesses_Parceiro_i] (
    [spid] SMALLINT NULL,
    [kpid] SMALLINT NULL,
    [dbid] SMALLINT NULL,
    [uid] SMALLINT NULL,
    [login_time] DATETIME NULL,
    [hostname] NCHAR(128) NULL,
    [program_name] NCHAR(128) NULL,
    [hostprocess] NCHAR(10) NULL,
    [nt_domain] NCHAR(128) NULL,
    [nt_username] NCHAR(128) NULL,
    [net_address] VARCHAR(48) NULL,
    [net_library] NCHAR(12) NULL,
    [loginame] NCHAR(128) NULL,
    [context_info] BINARY NULL,
    [rowguid] UNIQUEIDENTIFIER NULL,
    [datahora] DATETIME NULL,
    [EventInfo] NVARCHAR(4000) NULL
);

CREATE TABLE [dbo].[sysprocesses_participante] (
    [spid] SMALLINT NOT NULL,
    [kpid] SMALLINT NOT NULL,
    [blocked] SMALLINT NOT NULL,
    [waittype] BINARY NOT NULL,
    [waittime] BIGINT NOT NULL,
    [lastwaittype] NCHAR(32) NOT NULL,
    [waitresource] NCHAR(256) NOT NULL,
    [dbid] SMALLINT NOT NULL,
    [uid] SMALLINT NULL,
    [cpu] INT NOT NULL,
    [physical_io] BIGINT NOT NULL,
    [memusage] INT NOT NULL,
    [login_time] DATETIME NOT NULL,
    [last_batch] DATETIME NOT NULL,
    [ecid] SMALLINT NOT NULL,
    [open_tran] SMALLINT NOT NULL,
    [status] NCHAR(30) NOT NULL,
    [sid] BINARY NOT NULL,
    [hostname] NCHAR(128) NOT NULL,
    [program_name] NCHAR(128) NOT NULL,
    [hostprocess] NCHAR(10) NOT NULL,
    [cmd] NCHAR(16) NOT NULL,
    [nt_domain] NCHAR(128) NOT NULL,
    [nt_username] NCHAR(128) NOT NULL,
    [net_address] NCHAR(12) NOT NULL,
    [net_library] NCHAR(12) NOT NULL,
    [loginame] NCHAR(128) NOT NULL,
    [context_info] BINARY NOT NULL,
    [rowguid] UNIQUEIDENTIFIER NULL,
    [datahora] DATETIME NULL
);

CREATE TABLE [dbo].[sysprocesses_pessoaj_faturam] (
    [spid] SMALLINT NOT NULL,
    [kpid] SMALLINT NOT NULL,
    [blocked] SMALLINT NOT NULL,
    [waittype] BINARY NOT NULL,
    [waittime] BIGINT NOT NULL,
    [lastwaittype] NCHAR(32) NOT NULL,
    [waitresource] NCHAR(256) NOT NULL,
    [dbid] SMALLINT NOT NULL,
    [uid] SMALLINT NULL,
    [cpu] INT NOT NULL,
    [physical_io] BIGINT NOT NULL,
    [memusage] INT NOT NULL,
    [login_time] DATETIME NOT NULL,
    [last_batch] DATETIME NOT NULL,
    [ecid] SMALLINT NOT NULL,
    [open_tran] SMALLINT NOT NULL,
    [status] NCHAR(30) NOT NULL,
    [sid] BINARY NOT NULL,
    [hostname] NCHAR(128) NOT NULL,
    [program_name] NCHAR(128) NOT NULL,
    [hostprocess] NCHAR(10) NOT NULL,
    [cmd] NCHAR(16) NOT NULL,
    [nt_domain] NCHAR(128) NOT NULL,
    [nt_username] NCHAR(128) NOT NULL,
    [net_address] NCHAR(12) NOT NULL,
    [net_library] NCHAR(12) NOT NULL,
    [loginame] NCHAR(128) NOT NULL,
    [context_info] BINARY NOT NULL,
    [rowguid] UNIQUEIDENTIFIER NULL,
    [datahora] DATETIME NULL
);

CREATE TABLE [dbo].[sysprocesses_usuario] (
    [spid] SMALLINT NOT NULL,
    [kpid] SMALLINT NOT NULL,
    [blocked] SMALLINT NOT NULL,
    [waittype] BINARY NOT NULL,
    [waittime] BIGINT NOT NULL,
    [lastwaittype] NCHAR(32) NOT NULL,
    [waitresource] NCHAR(256) NOT NULL,
    [dbid] SMALLINT NOT NULL,
    [uid] SMALLINT NULL,
    [cpu] INT NOT NULL,
    [physical_io] BIGINT NOT NULL,
    [memusage] INT NOT NULL,
    [login_time] DATETIME NOT NULL,
    [last_batch] DATETIME NOT NULL,
    [ecid] SMALLINT NOT NULL,
    [open_tran] SMALLINT NOT NULL,
    [status] NCHAR(30) NOT NULL,
    [sid] BINARY NOT NULL,
    [hostname] NCHAR(128) NOT NULL,
    [program_name] NCHAR(128) NOT NULL,
    [hostprocess] NCHAR(10) NOT NULL,
    [cmd] NCHAR(16) NOT NULL,
    [nt_domain] NCHAR(128) NOT NULL,
    [nt_username] NCHAR(128) NOT NULL,
    [net_address] NCHAR(12) NOT NULL,
    [net_library] NCHAR(12) NOT NULL,
    [loginame] NCHAR(128) NOT NULL,
    [context_info] BINARY NOT NULL,
    [rowguid] UNIQUEIDENTIFIER NULL,
    [datahora] DATETIME NULL
);

CREATE TABLE [dbo].[TabelaBairros] (
    [CHAVEBAI] INT NOT NULL,
    [EXTENSOBAI] NVARCHAR(60) NULL,
    [ABREVBAI] NVARCHAR(30) NULL,
    [CHVLOCBAI] INT NOT NULL,
    [UFBAI] NVARCHAR(2) NULL,
    [OPERB_AI] NVARCHAR(1) NULL,
    [CodBairro] NVARCHAR(6) NULL
);

CREATE TABLE [dbo].[TabelaLocalidades] (
    [CHAVELOC] INT NOT NULL,
    [NOMELOC] NVARCHAR(60) NULL,
    [CEPLOC] INT NULL,
    [UFLOC] NVARCHAR(2) NULL,
    [TIPO] NVARCHAR(1) NULL,
    [SITUACAOLOC] INT NULL,
    [CHVSUBORLOC] INT NULL,
    [DR_LOCAL] NVARCHAR(3) NULL,
    [REOP_LOCAL] NVARCHAR(2) NULL,
    [OPER_LOCAL] NVARCHAR(1) NULL,
    [CodCidade] NVARCHAR(50) NULL
);

CREATE TABLE [dbo].[tabelas_carga_ufs] (
    [servidor] NVARCHAR(128) NULL,
    [tablename] NVARCHAR(257) NULL,
    [registros] BIGINT NULL
);

CREATE TABLE [dbo].[TabelaTipolog] (
    [TIPOPAT] INT NULL,
    [CHAVEPAT] INT NULL,
    [NOMEPAT] NVARCHAR(30) NULL,
    [ABREVPAT] NVARCHAR(10) NULL,
    [CodLogr] INT NULL
);

CREATE TABLE [dbo].[TabelaUF] (
    [SiglaUF] NVARCHAR(2) NULL,
    [NomeUF] NVARCHAR(20) NULL,
    [ChaveUF] SMALLINT NULL,
    [Faixa1iniUF] NVARCHAR(8) NULL,
    [Faixa1fimUF] NVARCHAR(8) NULL,
    [Faixa2iniUF] NVARCHAR(8) NULL,
    [Faixa2fimUF] NVARCHAR(8) NULL,
    [CodEst] NVARCHAR(3) NULL
);

CREATE TABLE [dbo].[tableMA] (
    [UF] VARCHAR(MAX) NULL,
    [codMeioAtendimento] INT NULL,
    [DescMeioAtendimento] VARCHAR(MAX) NULL,
    [TipoAtendimento] VARCHAR(MAX) NULL
);

CREATE TABLE [dbo].[TabulacaoIndicador] (
    [CodIndicador] INT NOT NULL,
    [CodTabulacao] TINYINT NOT NULL,
    [TipoTabulacao] TINYINT NOT NULL
);

CREATE TABLE [dbo].[tb_evento_impossivel_NA] (
    [id] INT NOT NULL,
    [Nome] NVARCHAR(255) NULL,
    [email] NVARCHAR(255) NULL,
    [Sexo] NVARCHAR(255) NULL,
    [UF] NVARCHAR(255) NULL,
    [Cidade] NVARCHAR(255) NULL,
    [Tipo] NVARCHAR(255) NULL,
    [Nascimento] NVARCHAR(255) NULL,
    [Telefone] NVARCHAR(255) NULL,
    [CPF] NVARCHAR(255) NULL,
    [TipoEventoCod] NVARCHAR(255) NULL,
    [CodProduto] NVARCHAR(255) NULL,
    [CodEvento] NVARCHAR(255) NULL,
    [CodProjeto] NVARCHAR(255) NULL,
    [CodAcao] NVARCHAR(255) NULL,
    [Instrumento] NVARCHAR(255) NULL,
    [Abordagem] NVARCHAR(255) NULL,
    [TipoRealização] NVARCHAR(255) NULL,
    [DataHoraInicio] NVARCHAR(255) NULL,
    [DataHoraFim] NVARCHAR(255) NULL,
    [CargaHoraria] NVARCHAR(255) NULL,
    [DescritivoAtendimento] NVARCHAR(255) NULL,
    [TipoPessoa] NVARCHAR(255) NULL,
    [CodFocoTematico] NVARCHAR(255) NULL,
    [id_parceiropf] INT NULL,
    [Obs_PF] VARCHAR(500) NULL,
    [Obs_Inscricao] VARCHAR(500) NULL,
    [Inscrito] CHAR(1) NULL
);

CREATE TABLE [dbo].[TB_SME_MetasFisicas] (
    [ID] INT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [SiglaSebrae_Apuracao] CHAR(2) NOT NULL,
    [DataApuracao] DATETIME NOT NULL,
    [Instrumento] VARCHAR(100) NOT NULL,
    [TipoInstrumento] VARCHAR(2) NOT NULL,
    [Executor] VARCHAR(10) NOT NULL,
    [NumerodeRealizacoes] INT NULL,
    [NumerodeAtendimentos] INT NULL,
    [NumerodeParticipantes] INT NULL,
    [NumerodeParticipantesPN] INT NULL,
    [NumerodeConcluintes] INT NULL,
    [NumerodeInscritos] INT NULL,
    [NumerodeHoras] DECIMAL(38,2) NULL,
    [VolumedeRecursos] DECIMAL(38,2) NULL,
    [NumerodePessoasInformadas] INT NULL
);

CREATE TABLE [dbo].[tb_temp] (
    [ID] INT NULL,
    [CPF Atendente] NUMERIC(15,0) NULL,
    [Atendente] VARCHAR(100) NULL,
    [Cod. Atendente] INT NULL,
    [UnidadeOrganizacional (para cada UF)] VARCHAR(255) NULL,
    [UnidadeOrganizacionalID] BIGINT NULL,
    [DataHoraInicio] VARCHAR(20) NULL,
    [DataHoraFim] VARCHAR(20) NULL,
    [DescRealizacao] VARCHAR(MAX) NULL,
    [Projeto] VARCHAR(100) NULL,
    [CodProjeto] UNIQUEIDENTIFIER NULL,
    [Ação] VARCHAR(100) NULL,
    [CodAcao] INT NULL,
    [Instrumento] VARCHAR(100) NULL,
    [CodCategoria] INT NULL,
    [MacroEventoID] VARCHAR(50) NULL,
    [MeioAtendimento] VARCHAR(50) NULL,
    [CodMeioAtendimento] INT NULL,
    [ListaParticipante] NUMERIC(15,0) NULL,
    [CodPessoaF] INT NULL,
    [CNPJ do cliente] NUMERIC(15,0) NULL,
    [CodPessoaJ] INT NULL,
    [Tema] VARCHAR(255) NULL,
    [CodTema] INT NULL,
    [Subtema] VARCHAR(255) NULL,
    [CodSubtema] INT NULL,
    [CodContratoSGF] VARCHAR(50) NULL,
    [PortifolioDisponibilizacaoID] VARCHAR(50) NULL,
    [CodSebrae] INT NULL,
    [OrientacaoCliente] VARCHAR(100) NULL,
    [UF do Cliente e do atendimento] VARCHAR(2) NULL,
    [Cod Sebrae da Uf do cliente do atendimento] INT NULL
);

CREATE TABLE [dbo].[tb_UCE_AL_NA] (
    [id] INT NOT NULL,
    [Evento] NVARCHAR(255) NULL,
    [Data] NVARCHAR(255) NULL,
    [Nome] NVARCHAR(255) NULL,
    [Email] NVARCHAR(255) NULL,
    [Nascimento] NVARCHAR(255) NULL,
    [Telefone] NVARCHAR(255) NULL,
    [CPF] NVARCHAR(255) NULL,
    [Público] NVARCHAR(255) NULL,
    [TipoEventoCod] NVARCHAR(255) NULL,
    [sexo] NVARCHAR(255) NULL,
    [Cidade] NVARCHAR(255) NULL,
    [UF] NVARCHAR(255) NULL,
    [CodProduto] NVARCHAR(255) NULL,
    [CodEvento] NVARCHAR(255) NULL,
    [CodProjeto] NVARCHAR(255) NULL,
    [CodAcao] NVARCHAR(255) NULL,
    [Instrumento] NVARCHAR(255) NULL,
    [Abordagem] NVARCHAR(255) NULL,
    [TipoRealização] NVARCHAR(255) NULL,
    [DataHoraInicio] NVARCHAR(255) NULL,
    [DataHoraFim] NVARCHAR(255) NULL,
    [Carga Horaria] NVARCHAR(255) NULL,
    [Descritivo Atendimento] NVARCHAR(255) NULL,
    [CPF Responsável] NVARCHAR(255) NULL,
    [TipoPessoa] NVARCHAR(255) NULL,
    [CodFocoTemático] NVARCHAR(255) NULL,
    [Tipo] NVARCHAR(255) NULL,
    [id_parceiropf] INT NULL,
    [Obs_PF] VARCHAR(500) NULL,
    [Obs_Inscricao] VARCHAR(500) NULL,
    [Inscrito] CHAR(1) NULL
);

CREATE TABLE [dbo].[tb_uce_sebraeNA] (
    [id] INT NOT NULL,
    [Evento] NVARCHAR(255) NULL,
    [Data] NVARCHAR(255) NULL,
    [Nome] NVARCHAR(255) NULL,
    [Email] NVARCHAR(255) NULL,
    [Nascimento] NVARCHAR(255) NULL,
    [Telefone] NVARCHAR(255) NULL,
    [CPF] NVARCHAR(255) NULL,
    [Público] NVARCHAR(255) NULL,
    [TipoEventoCod] NVARCHAR(255) NULL,
    [sexo] NVARCHAR(255) NULL,
    [Cidade] NVARCHAR(255) NULL,
    [UF] NVARCHAR(255) NULL,
    [CodProduto] NVARCHAR(255) NULL,
    [CodEvento] NVARCHAR(255) NULL,
    [CodProjeto] NVARCHAR(255) NULL,
    [CodAcao] NVARCHAR(255) NULL,
    [Instrumento] NVARCHAR(255) NULL,
    [Abordagem] NVARCHAR(255) NULL,
    [TipoRealização] NVARCHAR(255) NULL,
    [DataHoraInicio] NVARCHAR(255) NULL,
    [DataHoraFim] NVARCHAR(255) NULL,
    [Carga Horaria] NVARCHAR(255) NULL,
    [Descritivo Atendimento] NVARCHAR(255) NULL,
    [CPF Responsável] NVARCHAR(255) NULL,
    [TipoPessoa] NVARCHAR(255) NULL,
    [CodFocoTemático] NVARCHAR(255) NULL,
    [Planilha] NVARCHAR(255) NULL,
    [id_parceiropf] INT NULL,
    [Obs_PF] VARCHAR(500) NULL,
    [Obs_Inscricao] VARCHAR(500) NULL,
    [Inscrito] CHAR(1) NULL,
    [Telefone_Invalido] VARCHAR(20) NULL
);

CREATE TABLE [dbo].[tb_uce_sebraeNA_Final] (
    [id] INT NOT NULL,
    [Evento] NVARCHAR(255) NULL,
    [Nome] NVARCHAR(255) NULL,
    [Email] NVARCHAR(255) NULL,
    [Nascimento] NVARCHAR(255) NULL,
    [Telefone] NVARCHAR(255) NULL,
    [CPF] NVARCHAR(255) NULL,
    [sexo] NVARCHAR(255) NULL,
    [Cidade] NVARCHAR(255) NULL,
    [UF] NVARCHAR(255) NULL,
    [APROVEITAMENTO] NVARCHAR(255) NULL,
    [Data] NVARCHAR(255) NULL,
    [TipoEventoCod] NVARCHAR(255) NULL,
    [CodProduto] NVARCHAR(255) NULL,
    [CodEvento] NVARCHAR(255) NULL,
    [CodProjeto] NVARCHAR(255) NULL,
    [CodAcao] NVARCHAR(255) NULL,
    [Instrumento] NVARCHAR(255) NULL,
    [Abordagem] NVARCHAR(255) NULL,
    [TipoRealização] NVARCHAR(255) NULL,
    [Carga Horaria] NVARCHAR(255) NULL,
    [Descritivo Atendimento] NVARCHAR(255) NULL,
    [CPF Responsável] NVARCHAR(255) NULL,
    [TipoPessoa] NVARCHAR(255) NULL,
    [CodFocoTematico] NVARCHAR(255) NULL,
    [Planilha] NVARCHAR(255) NULL,
    [DataHoraInicio] NVARCHAR(255) NULL,
    [DataHoraFim] NVARCHAR(255) NULL,
    [TipoPessoa1] NVARCHAR(255) NULL,
    [CodFocoTemático1] NVARCHAR(255) NULL,
    [Planilha1] NVARCHAR(255) NULL,
    [id_parceiropf] INT NULL,
    [Obs_PF] VARCHAR(500) NULL,
    [Obs_Inscricao] VARCHAR(500) NULL,
    [Inscrito] CHAR(1) NULL
);

CREATE TABLE [dbo].[tb_uce_SebraeNA_MT] (
    [id] INT NOT NULL,
    [Evento] NVARCHAR(255) NULL,
    [Nome] NVARCHAR(255) NULL,
    [Email] NVARCHAR(255) NULL,
    [Nascimento] NVARCHAR(255) NULL,
    [Telefone] NVARCHAR(255) NULL,
    [CPF] NVARCHAR(255) NULL,
    [sexo] NVARCHAR(255) NULL,
    [Cidade] NVARCHAR(255) NULL,
    [UF] NVARCHAR(255) NULL,
    [CONCLUSÃO] NVARCHAR(255) NULL,
    [DATAMATRICULA] NVARCHAR(255) NULL,
    [TipoEventoCod] NVARCHAR(255) NULL,
    [CodProduto] NVARCHAR(255) NULL,
    [CodEvento] NVARCHAR(255) NULL,
    [CodProjeto] NVARCHAR(255) NULL,
    [CodAcao] NVARCHAR(255) NULL,
    [Instrumento] NVARCHAR(255) NULL,
    [Abordagem] NVARCHAR(255) NULL,
    [TipoRealização] NVARCHAR(255) NULL,
    [Carga Horaria] NVARCHAR(255) NULL,
    [Descritivo Atendimento] NVARCHAR(255) NULL,
    [CPF Responsável] NVARCHAR(255) NULL,
    [TipoPessoa] NVARCHAR(255) NULL,
    [CodFocoTematico] NVARCHAR(255) NULL,
    [Planilha] NVARCHAR(255) NULL,
    [id_parceiropf] INT NULL,
    [Obs_PF] VARCHAR(500) NULL,
    [Obs_Inscricao] VARCHAR(500) NULL,
    [Inscrito] CHAR(1) NULL
);

CREATE TABLE [dbo].[tb_webinar_evento_na] (
    [id] INT NOT NULL,
    [Evento] NVARCHAR(255) NULL,
    [Data] NVARCHAR(255) NULL,
    [Nome] NVARCHAR(255) NULL,
    [Email] NVARCHAR(255) NULL,
    [Nascimento] NVARCHAR(255) NULL,
    [Telefone] NVARCHAR(255) NULL,
    [CPF] NVARCHAR(255) NULL,
    [Publico] NVARCHAR(255) NULL,
    [TipoEventoCod] NVARCHAR(255) NULL,
    [sexo] NVARCHAR(255) NULL,
    [Cidade] NVARCHAR(255) NULL,
    [UF] NVARCHAR(255) NULL,
    [CodProduto] NVARCHAR(255) NULL,
    [CodEvento] NVARCHAR(255) NULL,
    [CodProjeto] NVARCHAR(255) NULL,
    [CodAcao] NVARCHAR(255) NULL,
    [Instrumento] NVARCHAR(255) NULL,
    [Abordagem] NVARCHAR(255) NULL,
    [TipoRealização] NVARCHAR(255) NULL,
    [DataHoraInicio] NVARCHAR(255) NULL,
    [DataHoraFim] NVARCHAR(255) NULL,
    [Carga Horaria] NVARCHAR(255) NULL,
    [Descritivo Atendimento] NVARCHAR(255) NULL,
    [CPF Responsável] NVARCHAR(255) NULL,
    [TipoPessoa] NVARCHAR(255) NULL,
    [CodFocoTematico] NVARCHAR(255) NULL,
    [id_parceiropf] INT NULL,
    [Obs_PF] VARCHAR(500) NULL,
    [Obs_Inscricao] VARCHAR(500) NULL,
    [Inscrito] CHAR(1) NULL,
    [codeventogerado] INT NULL
);

CREATE TABLE [dbo].[TBATECSetorSebrae] (
    [CodSetorSebrae] SMALLINT NOT NULL,
    [NmSetor] VARCHAR(50) NOT NULL,
    [DscSetor] VARCHAR(500) NOT NULL,
    [Ativo] CHAR(1) NOT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[TBL_SCRIPT] (
    [COD_SCRIPT] INT NOT NULL,
    [COD_TIQUETE] INT NULL,
    [COD_XTI] UNIQUEIDENTIFIER NOT NULL,
    [NM_NOME_SCRIPT] NVARCHAR(100) NULL,
    [DT_DATA] DATETIME NULL,
    [TP_OPERACAO] NVARCHAR(100) NULL,
    [TP_OBJETO] NVARCHAR(50) NULL,
    [NM_ESTADO] NVARCHAR(100) NULL,
    [NM_OBS] NVARCHAR(100) NULL
);

CREATE TABLE [dbo].[TBLSIACNET_ConstJurParceiro] (
    [CodParceiro] INT NOT NULL,
    [codconst] INT NULL
);

CREATE TABLE [dbo].[TBLSIACNET_PorteParceiro] (
    [CodParceiro] INT NOT NULL,
    [Porte] VARCHAR(10) NULL,
    [Faturam] NUMERIC(18,0) NULL
);

CREATE TABLE [dbo].[TBPAIAcao] (
    [CodPRATIF] UNIQUEIDENTIFIER NOT NULL,
    [CodAcao] UNIQUEIDENTIFIER NOT NULL,
    [NomeAcao] VARCHAR(100) NOT NULL,
    [Ativo] CHAR(1) NOT NULL,
    [CodAcao_Seq] INT NOT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL,
    [CodPrograma] UNIQUEIDENTIFIER NULL
);

CREATE TABLE [dbo].[TBPAIAcao_17] (
    [CodPRATIF] UNIQUEIDENTIFIER NOT NULL,
    [CodAcao] UNIQUEIDENTIFIER NOT NULL,
    [NomeAcao] VARCHAR(100) NOT NULL,
    [Ativo] CHAR(1) NOT NULL,
    [CodAcao_Seq] INT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL,
    [CodPrograma] UNIQUEIDENTIFIER NULL
);

CREATE TABLE [dbo].[tbpaiacao_registrosDuplicados] (
    [CodPRATIF] UNIQUEIDENTIFIER NOT NULL,
    [CodAcao] UNIQUEIDENTIFIER NOT NULL,
    [NomeAcao] VARCHAR(100) NOT NULL,
    [Ativo] CHAR(1) NOT NULL,
    [CodAcao_Seq] INT NOT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL,
    [CodPrograma] UNIQUEIDENTIFIER NULL
);

CREATE TABLE [dbo].[tbpaiacao_sge] (
    [CodPRATIF] UNIQUEIDENTIFIER NOT NULL,
    [CodAcao] UNIQUEIDENTIFIER NOT NULL,
    [NomeAcao] VARCHAR(100) NOT NULL,
    [Ativo] CHAR(1) NOT NULL,
    [CodAcao_Seq] INT NOT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL,
    [CodPrograma] UNIQUEIDENTIFIER NULL
);

CREATE TABLE [dbo].[TBPAIAcaoSGE] (
    [CodPRATIF] UNIQUEIDENTIFIER NOT NULL,
    [CodAcao] UNIQUEIDENTIFIER NOT NULL,
    [NomeAcao] VARCHAR(100) NOT NULL,
    [Ativo] CHAR(1) NOT NULL,
    [CodAcao_Seq] INT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL,
    [CodPrograma] UNIQUEIDENTIFIER NULL
);

CREATE TABLE [dbo].[TBPAIPRATIF] (
    [CodPRATIF] UNIQUEIDENTIFIER NOT NULL,
    [CodSEBRAESGE] UNIQUEIDENTIFIER NOT NULL,
    [Codtipologia] CHAR(2) NOT NULL,
    [CodArtefato] CHAR(2) NOT NULL,
    [CodFormaGestao] CHAR(1) NOT NULL,
    [CodGrauGestao] CHAR(1) NOT NULL,
    [NuPRATIFSeq] INT NOT NULL,
    [NomePRATIF] VARCHAR(100) NOT NULL,
    [CodSetorSEBRAE] SMALLINT NULL,
    [Ativo] CHAR(1) NOT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL,
    [indParceiro] VARCHAR(1) NOT NULL,
    [nupratif] VARCHAR(12) NULL,
    [CNPJ] VARCHAR(14) NULL
);

CREATE TABLE [dbo].[TBPLAN04Entidade] (
    [CodEntidade_PLAN04] UNIQUEIDENTIFIER NOT NULL,
    [NmComercial] VARCHAR(30) NOT NULL,
    [Escopo] CHAR(1) NOT NULL,
    [SistemaSEBRAE] CHAR(1) NOT NULL,
    [UF] CHAR(2) NOT NULL
);

CREATE TABLE [dbo].[TBPLAN13Colaborador] (
    [CodColaborador_PLAN13] UNIQUEIDENTIFIER NOT NULL,
    [CodEntidade_PLAN04] UNIQUEIDENTIFIER NOT NULL,
    [SgUnidadeOrg_PLAN12] VARCHAR(10) NOT NULL,
    [NmColaborador] VARCHAR(50) NOT NULL,
    [Usuario] VARCHAR(15) NULL,
    [Senha] NVARCHAR(50) NULL,
    [Email] VARCHAR(100) NULL,
    [Ativo] CHAR(1) NOT NULL
);

CREATE TABLE [dbo].[TBPLAN20SetorSEBRAE] (
    [CodSetor_PLAN20] SMALLINT NOT NULL,
    [NmSetor] VARCHAR(50) NOT NULL,
    [DscSetor] VARCHAR(500) NOT NULL,
    [OrgPubA_I] CHAR(1) NOT NULL,
    [OrgPubA_C] CHAR(1) NOT NULL,
    [OrgPubA_E] CHAR(1) NOT NULL
);

CREATE TABLE [dbo].[TBPLAN21RegiaoSEBRAE] (
    [CodRegiaoSebrae_PLAN21] UNIQUEIDENTIFIER NOT NULL,
    [CodEntidade_PLAN04] UNIQUEIDENTIFIER NOT NULL,
    [NmRegiaoSebrae] VARCHAR(100) NOT NULL,
    [Ativo] CHAR(1) NOT NULL,
    [Estado] CHAR(1) NOT NULL
);

CREATE TABLE [dbo].[TBPLAN41TipoProduto] (
    [CodTpProduto_PLAN41] SMALLINT NOT NULL,
    [DscTpProduto] VARCHAR(100) NOT NULL,
    [TitTpProduto] VARCHAR(30) NOT NULL
);

CREATE TABLE [dbo].[TBPLAN42ProdutoSEBRAE] (
    [CodProdutoSEBRAE_PLAN42] UNIQUEIDENTIFIER NOT NULL,
    [CodTpProduto_PLAN41] SMALLINT NOT NULL,
    [CodColaborador_PLAN13] UNIQUEIDENTIFIER NOT NULL,
    [Ativa] CHAR(1) NOT NULL,
    [EscopoProdutoSEBRAE] CHAR(1) NOT NULL,
    [NmProdutoSEBRAE] VARCHAR(100) NOT NULL,
    [DscProdutoSEBRAE] VARCHAR(1000) NOT NULL,
    [CodProdutoSIAC] INT NULL
);

CREATE TABLE [dbo].[TBPLAN43EntidadeProdutoSEBRAE] (
    [CodProdutoSEBRAE_PLAN42] UNIQUEIDENTIFIER NOT NULL,
    [CodEntidade_PLAN04] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[TBPLAN99ProjetoAno] (
    [CodProjAtiv_PLAN01] UNIQUEIDENTIFIER NOT NULL,
    [Ano] INT NOT NULL
);

CREATE TABLE [dbo].[TecBanco] (
    [codtecnico] INT NOT NULL,
    [CodBanco] INT NULL,
    [CodAgencia] VARCHAR(10) NULL,
    [CodConta] VARCHAR(15) NULL
);

CREATE TABLE [dbo].[TecCurriculo] (
    [codtecnico] INT NOT NULL,
    [ExpTrab1] VARCHAR(200) NULL,
    [ExpTrab2] VARCHAR(200) NULL,
    [ExpCons1] VARCHAR(200) NULL,
    [ExpCons2] VARCHAR(200) NULL,
    [ExpInst1] VARCHAR(200) NULL,
    [ExpInst2] VARCHAR(200) NULL,
    [ExpDocen1] VARCHAR(200) NULL,
    [ExpDocen2] VARCHAR(200) NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[tecnico] (
    [codtecnico] INT NOT NULL,
    [codpessoapf] INT NOT NULL,
    [codpessoapj] INT NULL,
    [codunidope] INT NULL,
    [codprod] INT NULL,
    [codusuario] VARCHAR(8) NULL,
    [indtecinterno] VARCHAR(3) NOT NULL,
    [indbalcao] VARCHAR(3) NOT NULL,
    [indcdi] VARCHAR(3) NOT NULL,
    [indconsultor] VARCHAR(3) NOT NULL,
    [escolarid1] VARCHAR(200) NULL,
    [escolarid2] VARCHAR(200) NULL,
    [idiomas] VARCHAR(100) NULL,
    [cursoaperf1] VARCHAR(200) NULL,
    [cursoaperf2] VARCHAR(200) NULL,
    [Artigo1] VARCHAR(200) NULL,
    [Artigo2] VARCHAR(200) NULL,
    [Observ1] VARCHAR(250) NULL,
    [datainclusao] SMALLDATETIME NULL,
    [dataultatualiz] SMALLDATETIME NULL,
    [codusuarioatu] VARCHAR(8) NULL,
    [TipoTec] TINYINT NULL,
    [Situacao] TINYINT NULL,
    [Credenciado] TINYINT NULL,
    [CodSebrae] INT NOT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[TecnicoAreaAtuacaoEstadual] (
    [CodEstado] INT NOT NULL,
    [CodTecnico] INT NOT NULL
);

CREATE TABLE [dbo].[TECNICOAREATEMATICA] (
    [CodTecnico] INT NOT NULL,
    [CodAreaTematica] INT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[TemaAtendPersonalizadoSessao] (
    [CodAtendimento] INT NOT NULL,
    [Data] SMALLDATETIME NOT NULL,
    [HoraInicial] DATETIME NOT NULL,
    [CodAreaTematica] INT NOT NULL,
    [IndPrincipal] TINYINT NULL
);

CREATE TABLE [dbo].[TEMP_AtivEconomicaObsoletos] (
    [CODATIVECON] VARCHAR(5) NULL,
    [STATUS] CHAR(1) NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[TEMP_Bairro] (
    [CODANT] INT NULL,
    [NOMEANT] VARCHAR(72) NULL,
    [CODNOVO] INT NULL,
    [NOMENOVO] VARCHAR(72) NULL,
    [UFE_SG] VARCHAR(2) NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[TEMP_CEP] (
    [CEPANT] INT NOT NULL,
    [NOMEANT] VARCHAR(150) NOT NULL,
    [CEPNOVO] NVARCHAR(8) NULL,
    [NOMENOVO] NVARCHAR(100) NULL,
    [codBairro] INT NOT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[TEMP_Cidade] (
    [CODANT] INT NOT NULL,
    [NOMEANT] VARCHAR(72) NULL,
    [CODNOVO] INT NOT NULL,
    [NOMENOVO] NVARCHAR(72) NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[TEMP_CNAEFISCAL] (
    [CODATIVECONANT] VARCHAR(5) NULL,
    [CODATIVECONNOVO] VARCHAR(5) NULL,
    [CODFISCALANT] VARCHAR(5) NULL,
    [CODFISCALNOVO] VARCHAR(5) NULL,
    [DESCANT] VARCHAR(255) NULL,
    [DESCNOVA] VARCHAR(255) NULL
);

CREATE TABLE [dbo].[TEMP_CnaeFiscalObsoletos] (
    [CodAtivEcon] VARCHAR(5) NULL,
    [CodCnaeFiscal] VARCHAR(2) NULL,
    [STATUS] VARCHAR(1) NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[TEMP_CNAEOPERACIONAL] (
    [CodAtivEcon] VARCHAR(10) NULL,
    [CodCnaeFiscal] VARCHAR(4) NULL,
    [SeqOperacional] VARCHAR(6) NULL,
    [DescOperacional] VARCHAR(250) NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[TEMP_NCM] (
    [ID] FLOAT NULL,
    [DESCRICAO] NVARCHAR(255) NULL,
    [CODIGO] FLOAT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[TempHistCliente] (
    [TipoSistema] VARCHAR(50) NULL,
    [DescEvento] VARCHAR(255) NULL,
    [TipoEvnto] VARCHAR(50) NULL,
    [Cliente] VARCHAR(50) NULL,
    [Periodo] VARCHAR(30) NULL,
    [Duracao] VARCHAR(30) NULL,
    [Consultor] VARCHAR(50) NULL,
    [AnotacaoCons] VARCHAR(255) NULL,
    [Tema] VARCHAR(255) NULL,
    [Anotacao] VARCHAR(255) NULL
);

CREATE TABLE [dbo].[TempLogWSAcessos] (
    [CodSebrae] INT NULL,
    [siglaUF] VARCHAR(2) NULL,
    [WebService] VARCHAR(250) NULL,
    [Metodo] VARCHAR(250) NULL,
    [dataAcesso] DATE NULL,
    [QtdAcesso] INT NULL
);

CREATE TABLE [dbo].[TempoEspera] (
    [ID] BIGINT NULL,
    [UF] VARCHAR(2) NULL,
    [UnidadeOrganizacionalID] BIGINT NULL,
    [UnidadeOrganizacional] VARCHAR(255) NULL,
    [TipoUnidadeOrganizacional] VARCHAR(255) NULL,
    [Logradouro] VARCHAR(150) NULL,
    [Complemento] VARCHAR(70) NULL,
    [Bairro] VARCHAR(150) NULL,
    [Cidade] VARCHAR(150) NULL,
    [Estado] VARCHAR(30) NULL,
    [Cep] BIGINT NULL,
    [Data] DATE NULL,
    [DataPrimeiraRecepcao] VARCHAR(100) NULL,
    [DataUltimaRecepcao] VARCHAR(100) NULL,
    [TempoEspera] BIGINT NULL
);

CREATE TABLE [dbo].[tempPessoaFisica] (
    [CodParceiro] INT NULL,
    [Identidade] VARCHAR(30) NULL,
    [OrgEmis] VARCHAR(20) NULL,
    [DataNasc] DATETIME NULL,
    [Sexo] TINYINT NULL,
    [EstadoCivil] TINYINT NULL,
    [IndAutonomo] BIT NOT NULL,
    [NumSeqEnd] INT NULL,
    [DescEndereco] VARCHAR(120) NULL,
    [Numero] VARCHAR(12) NULL,
    [Complemento] VARCHAR(60) NULL,
    [CodBairro] INT NULL,
    [CodCid] INT NULL,
    [CodEst] SMALLINT NULL,
    [CodPais] SMALLINT NULL,
    [EndInternacional] VARCHAR(255) NULL,
    [IndCorrespond] INT NULL,
    [Comunicacao] VARCHAR(30) NULL,
    [DescGrauEscol] VARCHAR(100) NULL,
    [DescProfis] VARCHAR(60) NULL,
    [NomeRazaoSocial] VARCHAR(50) NULL,
    [NomeAbrevFantasia] VARCHAR(30) NULL,
    [Nacionalidade] VARCHAR(40) NULL,
    [IndNacaoPadrao] VARCHAR(6) NULL,
    [DescLogrAbrev] VARCHAR(16) NULL,
    [AbrevEst] VARCHAR(6) NULL,
    [DescBairro] VARCHAR(120) NULL,
    [DescCid] VARCHAR(70) NULL,
    [cep] INT NULL,
    [cgccpf] NUMERIC(18,0) NULL,
    [datainc] DATETIME NULL
);

CREATE TABLE [dbo].[TempPessoaFisicaEtq] (
    [DescEndereco] VARCHAR(60) NULL,
    [Numero] VARCHAR(6) NULL,
    [Complemento] VARCHAR(30) NULL,
    [EndInternacional] VARCHAR(255) NULL,
    [NomeRazaoSocial] VARCHAR(60) NULL,
    [NomeAbrevFantasia] VARCHAR(30) NULL,
    [DescLogrAbrev] VARCHAR(30) NULL,
    [AbrevEst] VARCHAR(3) NULL,
    [DescBairro] VARCHAR(30) NULL,
    [DescCid] VARCHAR(30) NULL,
    [cep] INT NULL,
    [indNacaoPadrao] TINYINT NULL
);

CREATE TABLE [dbo].[tempPF] (
    [CNPJTabela] VARCHAR(40) NULL,
    [CNPJ] VARCHAR(40) NULL,
    [CPF] VARCHAR(40) NULL,
    [Nome] VARCHAR(200) NULL,
    [cargo] VARCHAR(200) NULL,
    [Cep] INT NULL,
    [Estado] INT NULL,
    [Cidade] INT NULL,
    [Bairro] INT NULL,
    [Endereco] VARCHAR(300) NULL,
    [Complemento] VARCHAR(30) NULL,
    [Telefone] VARCHAR(60) NULL,
    [Email] VARCHAR(60) NULL,
    [codSIAC] INT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[tempPFPSMN] (
    [CNPJTabela] VARCHAR(40) NULL,
    [CNPJ] VARCHAR(40) NULL,
    [CPF] VARCHAR(40) NULL,
    [Nome] VARCHAR(200) NULL,
    [cargo] VARCHAR(200) NULL,
    [Cep] INT NULL,
    [Estado] INT NULL,
    [Cidade] INT NULL,
    [Bairro] INT NULL,
    [Endereco] VARCHAR(300) NULL,
    [Complemento] VARCHAR(30) NULL,
    [Telefone] VARCHAR(60) NULL,
    [Email] VARCHAR(60) NULL,
    [codSIAC] INT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[tempPJPSMN] (
    [CNPJTabela] VARCHAR(40) NULL,
    [CNPJ] VARCHAR(40) NULL,
    [Nome] VARCHAR(200) NULL,
    [Fantasia] VARCHAR(200) NULL,
    [Setor] INT NULL,
    [CodAtivEconomica] VARCHAR(7) NULL,
    [funcionario] INT NULL,
    [DataAbertura] DATETIME NULL,
    [ConstJur] INT NULL,
    [Cep] INT NULL,
    [Estado] INT NULL,
    [Cidade] INT NULL,
    [Bairro] INT NULL,
    [Endereco] VARCHAR(300) NULL,
    [Complemento] VARCHAR(30) NULL,
    [Telefone] VARCHAR(60) NULL,
    [Email] VARCHAR(60) NULL,
    [codSIAC] INT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[TEMPRELAT_BEMP] (
    [CodParceiro] INT NOT NULL
);

CREATE TABLE [dbo].[TempTable] (
    [DescParametro] VARCHAR(255) NULL,
    [CodParametro] INT NULL,
    [TipoParametro] CHAR(1) NULL,
    [Intervalo] BIT NOT NULL,
    [ValorExato] BIT NOT NULL,
    [CodItemEscolhido] INT NULL,
    [CodIntervalo] INT NULL,
    [DescItem] VARCHAR(50) NULL,
    [Valor] VARCHAR(30) NULL,
    [NumRespostas] INT NULL,
    [NumQuestoes] INT NULL,
    [Texto] TEXT NULL,
    [Categoria] CHAR(1) NULL
);

CREATE TABLE [dbo].[TermoAditivo] (
    [Numero_DC] INT NOT NULL,
    [Ano_DC] INT NOT NULL,
    [TipoDoc_DC] CHAR(1) NOT NULL,
    [Cedente_DC] INT NOT NULL,
    [Numero_TA] INT NOT NULL,
    [Ano_TA] INT NOT NULL,
    [Descricao_TA] VARCHAR(255) NULL
);

CREATE TABLE [dbo].[Teste] (
    [CodParceiro_Origem] INT NOT NULL,
    [CodParceiro_Destino] INT NOT NULL,
    [CodSebrae_Unificado] INT NOT NULL,
    [DataHoraInicio] DATETIME NOT NULL,
    [DataHoraFim] DATETIME NULL,
    [Status] VARCHAR(1) NOT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL,
    [rowguid8] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[testeartigo] (
    [codsebrae] INT NOT NULL,
    [descsebrae] VARCHAR(40) NOT NULL,
    [nomeabrev] VARCHAR(10) NULL,
    [fone] VARCHAR(30) NULL,
    [cgc] NUMERIC(15,0) NOT NULL,
    [codlogr] INT NOT NULL,
    [descendereco] VARCHAR(60) NULL,
    [numero] VARCHAR(6) NULL,
    [complemento] VARCHAR(30) NULL,
    [codbairro] INT NULL,
    [codcid] INT NULL,
    [codest] SMALLINT NULL,
    [codpais] SMALLINT NULL,
    [cep] INT NULL,
    [SeqUF] INT NULL,
    [Situacao] CHAR(1) NULL,
    [codsebraeSGE] UNIQUEIDENTIFIER NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[TIPOCLASSIFICACAO] (
    [CodTipoClassificacao] INT NOT NULL,
    [DescricaoClassificacao] VARCHAR(255) NULL,
    [TipoClassificacao] CHAR(1) NULL,
    [InicioIntervalo] FLOAT NULL,
    [FinalIntervalo] FLOAT NULL
);

CREATE TABLE [dbo].[tipocomunic] (
    [codcomunic] SMALLINT NOT NULL,
    [desccomunic] VARCHAR(30) NOT NULL,
    [Situacao] CHAR(1) NULL
);

CREATE TABLE [dbo].[TipoConsultoria] (
    [CodTipoConsultoria] INT NOT NULL,
    [DescTipoConsultoria] VARCHAR(150) NOT NULL,
    [Situacao] TINYINT NULL
);

CREATE TABLE [dbo].[TipoDireito] (
    [TpDireitoCodigo] INT NOT NULL,
    [TpDireitoDescricao] VARCHAR(50) NULL
);

CREATE TABLE [dbo].[tipoevento] (
    [codtipoevento] INT NOT NULL,
    [DescTipoEven] VARCHAR(20) NOT NULL,
    [situacao] CHAR(1) NOT NULL,
    [CodFamiliaProduto] SMALLINT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[TipoFormaEnt] (
    [CodTipoFormaEnt] INT NOT NULL,
    [DescTipoFormaEnt] VARCHAR(200) NULL
);

CREATE TABLE [dbo].[TipoKit] (
    [CodTipoKit] INT NOT NULL,
    [DescTipoKit] VARCHAR(60) NULL,
    [Situacao] CHAR(1) NULL
);

CREATE TABLE [dbo].[TipoLogradouro] (
    [CodTipoLogradouro] SMALLINT NOT NULL,
    [DescTipoLogradouro] VARCHAR(30) NOT NULL,
    [SiglaTipoLogradouro] VARCHAR(10) NOT NULL,
    [publicado] INT NULL,
    [transacao_pendente] BIT NULL
);

CREATE TABLE [dbo].[tipomidia] (
    [codmidia] INT NOT NULL,
    [descmidia] VARCHAR(60) NOT NULL,
    [situacao] CHAR(1) NOT NULL
);

CREATE TABLE [dbo].[TipoMovTitulo] (
    [CodTipoMovTitulo] TINYINT NOT NULL,
    [DescTipoMovTitulo] VARCHAR(50) NOT NULL,
    [TipoMovimentacao] TINYINT NOT NULL,
    [CodNivelAcesso] TINYINT NOT NULL,
    [IndCustoVenda] TINYINT NOT NULL,
    [CodOperacao] TINYINT NOT NULL,
    [Status] TINYINT NOT NULL
);

CREATE TABLE [dbo].[TipoNegFranquia] (
    [codparceiro] INT NOT NULL,
    [codtiponeg] INT NOT NULL
);

CREATE TABLE [dbo].[tiponegocio] (
    [codtiponeg] INT NOT NULL,
    [desctiponeg] VARCHAR(30) NOT NULL
);

CREATE TABLE [dbo].[TipoOcorrencia] (
    [TipoOcorrencia] TINYINT NOT NULL,
    [DescTipo] VARCHAR(20) NOT NULL
);

CREATE TABLE [dbo].[TipoPagto] (
    [CodTipoPagto] INT NOT NULL,
    [DescTipoPagto] CHAR(50) NULL,
    [Valor] NUMERIC(18,0) NULL
);

CREATE TABLE [dbo].[TipoParticip] (
    [CodTipoPartic] INT NOT NULL,
    [DescTipoPartic] VARCHAR(20) NOT NULL,
    [IndPagamento] TINYINT NULL,
    [Situacao] CHAR(1) NULL
);

CREATE TABLE [dbo].[TIPOPARTICIPANTE] (
    [CodigoTipoParticipante] INT NOT NULL,
    [DescricaoTipoParticipante] VARCHAR(255) NULL,
    [SemDesembolso] BIT NOT NULL
);

CREATE TABLE [dbo].[TipoParticProcJuridico] (
    [CodTipoParticProcesso] TINYINT NOT NULL,
    [DescTipoParticProcesso] VARCHAR(50) NOT NULL
);

CREATE TABLE [dbo].[TipoPrestacao] (
    [Codigo] INT NOT NULL,
    [Descricao] VARCHAR(255) NULL,
    [UnidadeMedida] TINYINT NULL
);

CREATE TABLE [dbo].[TipoProcJuridico] (
    [CodTipoProcesso] TINYINT NOT NULL,
    [DescTipoProcesso] VARCHAR(50) NOT NULL
);

CREATE TABLE [dbo].[TipoProduto] (
    [CodTipoProd] SMALLINT NOT NULL,
    [DescTipoProd] VARCHAR(20) NOT NULL
);

CREATE TABLE [dbo].[TipoProdutoProposta] (
    [CodTipoProdProposta] INT NOT NULL,
    [DescTipoProdProposta] VARCHAR(30) NOT NULL
);

CREATE TABLE [dbo].[TipoProdutoSEB] (
    [CodTipoProduto] INT NOT NULL,
    [DescTipoProduto] VARCHAR(80) NOT NULL,
    [Status] TINYINT NULL
);

CREATE TABLE [dbo].[TipoProdutoSEBTipoEvento] (
    [codTipoProduto] INT NOT NULL,
    [codTipoEvento] INT NOT NULL
);

CREATE TABLE [dbo].[TipoRealizacao] (
    [CodTipoRealizacao] VARCHAR(3) NOT NULL,
    [DescTipoRealizacao] VARCHAR(50) NOT NULL,
    [CodCategoria] INT NULL,
    [Ano] INT NULL,
    [CodProjeto] UNIQUEIDENTIFIER NULL,
    [CodAcao] INT NULL,
    [TipoSIAC] CHAR(1) NOT NULL,
    [Situacao] CHAR(1) NOT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL,
    [CodAplicacao] INT NULL,
    [CodEntidadeParceira] INT NULL,
    [CodEmpreendimento] BIT NULL
);

CREATE TABLE [dbo].[TipoRecPleitoFeira] (
    [CodTipoRecPleitoFeira] INT NOT NULL,
    [DescTipoRecPleitoFeira] VARCHAR(40) NULL,
    [CodUnidMedida] TINYINT NOT NULL
);

CREATE TABLE [dbo].[TipoReqPessoal] (
    [CodTipoReq] TINYINT NOT NULL,
    [DescTipoReq] VARCHAR(80) NOT NULL,
    [CodGrupoReq] TINYINT NOT NULL
);

CREATE TABLE [dbo].[TipoSebrae] (
    [CodSebrae] SMALLINT NOT NULL,
    [DescSebrae] VARCHAR(25) NULL
);

CREATE TABLE [dbo].[tiposervico] (
    [CodTipoServico] INT NOT NULL,
    [DescTiposervico] VARCHAR(20) NOT NULL
);

CREATE TABLE [dbo].[TipoServicoVeiculo] (
    [CodTipoServico] TINYINT NOT NULL,
    [DescTipoServico] VARCHAR(50) NOT NULL
);

CREATE TABLE [dbo].[tiposervprod] (
    [tiposervico] VARCHAR(20) NOT NULL,
    [codtiposervico] INT NOT NULL,
    [codprod] INT NOT NULL
);

CREATE TABLE [dbo].[TipoTitulo] (
    [CodTipoTitulo] INT NOT NULL,
    [DescTipoTitulo] VARCHAR(50) NOT NULL
);

CREATE TABLE [dbo].[TipoUnidade] (
    [CodTipoUnid] SMALLINT NOT NULL,
    [DescTipoUnid] VARCHAR(20) NOT NULL
);

CREATE TABLE [dbo].[TipoUsuario] (
    [CodTipoUsuario] INT NOT NULL,
    [DescTipoUsuario] VARCHAR(255) NULL,
    [CodClassificacaoTipoUsuario] INT NULL,
    [Situacao] CHAR(1) NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[Titulo] (
    [CodTitulo] INT NOT NULL,
    [DescTitulo] VARCHAR(100) NOT NULL,
    [CodSerieTitulo] INT NULL,
    [CodTipoTitulo] INT NULL,
    [CodAssuntoTitulo] INT NULL,
    [CodAutomacao] VARCHAR(15) NULL,
    [PadraoEAN] TINYINT NULL,
    [EdicaoTitulo] INT NULL,
    [AutorTitulo] VARCHAR(80) NULL,
    [PrecVenda] FLOAT NULL,
    [PrecCusto] FLOAT NULL,
    [DataCadastro] DATETIME NOT NULL,
    [DataPrecificacao] DATETIME NULL,
    [Situacao] CHAR(1) NULL,
    [IndComercializacao] TINYINT NULL
);

CREATE TABLE [dbo].[tmp_assinar_parceiro] (
    [Servidor] VARCHAR(40) NULL,
    [CodSebrae] VARCHAR(2) NULL,
    [Publicador] NVARCHAR(128) NOT NULL,
    [Tabela] NVARCHAR(128) NOT NULL,
    [Chave] VARCHAR(50) NULL
);

CREATE TABLE [dbo].[tmp_centralizacao_rowcount] (
    [Servidor] NVARCHAR(128) NULL,
    [tablename] NVARCHAR(257) NULL,
    [registros] BIGINT NULL
);

CREATE TABLE [dbo].[tmp_cidades_mei2017] (
    [codest] SMALLINT NULL,
    [codcid] INT NULL
);

CREATE TABLE [dbo].[tmp_cidades_mei2018] (
    [codest] SMALLINT NULL,
    [codcid] INT NULL,
    [TipoSemana] INT NULL
);

CREATE TABLE [dbo].[tmp_cidades_mei2019] (
    [CodEst] SMALLINT NULL,
    [CodCid] INT NULL,
    [DataInicio] DATE NULL,
    [DataFim] DATE NULL
);

CREATE TABLE [dbo].[tmp_constraint] (
    [TabelaProcesso] NVARCHAR(128) NOT NULL,
    [Tabela] NVARCHAR(128) NOT NULL,
    [ChaveEstrangeira] NVARCHAR(128) NOT NULL
);

CREATE TABLE [dbo].[tmp_controle_meioatendimento] (
    [CodSebrae] INT NULL,
    [Data] DATETIME NULL
);

CREATE TABLE [dbo].[tmp_endereco_duplicado] (
    [CodParceiro] INT NOT NULL,
    [NumSeqEnd] INT NOT NULL,
    [EndCorresp] CHAR(3) NOT NULL,
    [CodLogr] SMALLINT NULL,
    [DescEndereco] VARCHAR(150) NULL,
    [Numero] VARCHAR(6) NULL,
    [Complemento] VARCHAR(70) NULL,
    [CodBairro] INT NULL,
    [CodCid] INT NULL,
    [CodEst] SMALLINT NULL,
    [CodPais] SMALLINT NULL,
    [Cep] INT NULL,
    [EndInternacional] VARCHAR(250) NULL,
    [IndCorrespond] BIT NOT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL,
    [principal] BIT NULL
);

CREATE TABLE [dbo].[tmp_filestream] (
    [codsebrae] INT NULL,
    [tabela] NVARCHAR(128) NOT NULL,
    [tamanho] BIGINT NULL
);

CREATE TABLE [dbo].[tmp_hrc_enriquecer] (
    [DataProcessamento] DATETIME NULL,
    [CodSebrae] INT NULL,
    [DataHoraInicioRealizacao] DATETIME NULL,
    [CodAplicacao] INT NULL,
    [TipoRealizacao] VARCHAR(3) NULL,
    [CodCliente] INT NULL,
    [CodEmpreedimento] INT NULL,
    [Rowguid] VARCHAR(100) NULL
);

CREATE TABLE [dbo].[tmp_hrc_sgd_0734] (
    [DataProcessamento] DATETIME NULL,
    [Rowguid_hrc] VARCHAR(100) NULL,
    [CodSebrae_hrc] INT NULL,
    [CodCliente_hrc] INT NULL,
    [DataHoraInicioRealizacao_hrc] DATETIME NULL,
    [CodEmpreedimento_upd] INT NULL
);

CREATE TABLE [dbo].[tmp_ident_parceirointernet] (
    [servername] NVARCHAR(128) NULL,
    [tabela] NVARCHAR(128) NOT NULL,
    [seed] SQL_VARIANT NULL,
    [increment] SQL_VARIANT NULL,
    [last_identity] SQL_VARIANT NULL,
    [is_not_for_replication] BIT NULL
);

CREATE TABLE [dbo].[TMP_LogErroCadastroPFisica] (
    [Id_Erro] INT NOT NULL,
    [MODULO] NVARCHAR(300) NULL,
    [Id_Registro_Erro] NVARCHAR(300) NULL,
    [Erro] NVARCHAR(300) NULL,
    [Data] SMALLDATETIME NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[tmp_parceiros_classificacaoPessoa] (
    [CodParceiro] INT NOT NULL
);

CREATE TABLE [dbo].[tmp_RangeInicial] (
    [CodSebrae] INT NULL,
    [RangeInicial] BIGINT NULL
);

CREATE TABLE [dbo].[tmp_transferencia] (
    [servidor] NVARCHAR(128) NOT NULL,
    [total_transferido] INT NULL,
    [total_2020_hrc] INT NULL
);

CREATE TABLE [dbo].[tmpRelTpRealizCategAtend] (
    [CodTipoRealizacao] VARCHAR(3) NULL,
    [CodCategoria] INT NULL
);

CREATE TABLE [dbo].[TMPsebrae] (
    [codsebrae] INT NULL,
    [descsebrae] VARCHAR(40) NULL,
    [nomeabrev] VARCHAR(10) NULL,
    [fone] VARCHAR(30) NULL,
    [cgc] NUMERIC(15,0) NULL,
    [codlogr] INT NULL,
    [descendereco] VARCHAR(60) NULL,
    [numero] VARCHAR(6) NULL,
    [complemento] VARCHAR(30) NULL,
    [codbairro] INT NULL,
    [codcid] INT NULL,
    [codest] SMALLINT NULL,
    [codpais] SMALLINT NULL,
    [cep] INT NULL,
    [SeqUF] INT NULL,
    [situacao] CHAR(1) NULL,
    [NovoCod] INT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[TpCompra] (
    [CodTpCompra] TINYINT NOT NULL,
    [DescTpCompra] VARCHAR(50) NULL
);

CREATE TABLE [dbo].[TpContratacao] (
    [CodTpContratacao] TINYINT NOT NULL,
    [DescTpContratacao] VARCHAR(50) NOT NULL,
    [Status] TINYINT NOT NULL
);

CREATE TABLE [dbo].[TpConvenioMedico] (
    [CodTpConvenio] TINYINT NOT NULL,
    [DescTpConvenio] VARCHAR(150) NOT NULL
);

CREATE TABLE [dbo].[TpDiaria] (
    [CodCargo] INT NOT NULL,
    [CodRegiao] TINYINT NOT NULL,
    [DescTpDiaria] VARCHAR(80) NOT NULL,
    [VlTpDiaria] FLOAT NOT NULL
);

CREATE TABLE [dbo].[TpFuncionario] (
    [CodTpFuncionario] TINYINT NOT NULL,
    [DescTpFuncionario] VARCHAR(80) NOT NULL
);

CREATE TABLE [dbo].[TpLicitacao] (
    [codLicitacao] INT NOT NULL,
    [descLicitacao] VARCHAR(50) NULL
);

CREATE TABLE [dbo].[TpMovEstoque] (
    [CodTpMovEstoque] TINYINT NOT NULL,
    [DescTpMovEstoque] VARCHAR(80) NOT NULL,
    [Tipo] VARCHAR(1) NOT NULL,
    [PermissaoAcesso] INT NOT NULL,
    [AtualizaEstoque] VARCHAR(1) NOT NULL,
    [Natureza] TINYINT NULL,
    [UsoInterno] TINYINT NULL
);

CREATE TABLE [dbo].[TpTicket] (
    [CodTpTicket] TINYINT NOT NULL,
    [DescTpTicket] VARCHAR(80) NOT NULL,
    [VlTpTicket] FLOAT NOT NULL
);

CREATE TABLE [dbo].[TpUnidadeMedida] (
    [TipoUnidade] TINYINT NOT NULL,
    [DescTipoUnidade] VARCHAR(20) NOT NULL
);

CREATE TABLE [dbo].[TpValeTransporte] (
    [CodTpValeTransp] TINYINT NOT NULL,
    [DescTpValeTransp] VARCHAR(80) NOT NULL,
    [VlTpValeTransp] FLOAT NOT NULL
);

CREATE TABLE [dbo].[Trace_Alteracao_Objeto] (
    [Id_Trace_Alteracao_Objeto] INT NOT NULL,
    [TipoEvento] VARCHAR(50) NULL,
    [DataAlteracao] DATETIME NULL,
    [Spid] SMALLINT NULL,
    [Servidor] VARCHAR(128) NULL,
    [Login] VARCHAR(128) NULL,
    [BancoDados] VARCHAR(128) NULL,
    [Objeto] VARCHAR(128) NULL,
    [Comando] VARCHAR(MAX) NULL,
    [CodSebrae] INT NULL
);

CREATE TABLE [dbo].[trace_na] (
    [RowNumber] INT NOT NULL,
    [EventClass] INT NULL,
    [TextData] NTEXT NULL,
    [DatabaseID] INT NULL,
    [DatabaseName] NVARCHAR(128) NULL,
    [ObjectID] INT NULL,
    [ObjectName] NVARCHAR(128) NULL,
    [ServerName] NVARCHAR(128) NULL,
    [BinaryData] IMAGE NULL,
    [SPID] INT NULL,
    [StartTime] DATETIME NULL,
    [ApplicationName] NVARCHAR(128) NULL,
    [Duration] BIGINT NULL,
    [EndTime] DATETIME NULL
);

CREATE TABLE [dbo].[TransferTitulo] (
    [CodTransferTitulo] INT NOT NULL,
    [CodTipoMovTitulo] TINYINT NOT NULL,
    [CodBalcaoCDIOrig] INT NOT NULL,
    [CodBalcaoCDIDestino] INT NOT NULL,
    [DataTransferencia] DATETIME NOT NULL,
    [DataConclusao] DATETIME NULL,
    [VlTotalTransferencia] FLOAT NOT NULL,
    [Situacao] TINYINT NOT NULL
);

CREATE TABLE [dbo].[TreinPessoal] (
    [CodTreinPessoal] INT NOT NULL,
    [DescTreinPessoal] VARCHAR(255) NOT NULL,
    [Caracteristicas] TEXT NOT NULL,
    [CargaHoraria] INT NOT NULL,
    [Status] TINYINT NOT NULL,
    [VlTreinPessoal] FLOAT NULL,
    [CodProdutoHD] INT NULL,
    [CodNaturezaHD] INT NULL
);

CREATE TABLE [dbo].[TribunalJuridico] (
    [CodTribunal] INT NOT NULL,
    [IdentTribunal] VARCHAR(80) NOT NULL
);

CREATE TABLE [dbo].[Turmas] (
    [CodTurma] BIGINT NOT NULL,
    [Nome] VARCHAR(255) NOT NULL,
    [Descricao] TEXT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [DataHoraInicio] DATETIME NOT NULL,
    [DataHoraFim] DATETIME NOT NULL,
    [MesAnoCompetencia] DATETIME NOT NULL,
    [CargaHoraria] DECIMAL(18,2) NOT NULL,
    [TipoAtendimento] VARCHAR(3) NOT NULL,
    [CodCategoria] INT NOT NULL,
    [Abordagem] CHAR(1) NOT NULL,
    [CodProjeto] UNIQUEIDENTIFIER NOT NULL,
    [CodAcao] INT NOT NULL,
    [CodCliente] INT NULL,
    [CodEmpreendimento] INT NULL,
    [CodResponsavel] INT NULL
);

CREATE TABLE [dbo].[TurmasParticipantes] (
    [CodTurma] BIGINT NOT NULL,
    [CodParceiro] INT NOT NULL,
    [CodEmpreendimento] INT NULL
);

CREATE TABLE [dbo].[Tutoria] (
    [CodTutoria] INT NOT NULL,
    [CodProdutoPortfolio] INT NOT NULL,
    [CodParceiro] INT NOT NULL,
    [CodTipoKit] INT NOT NULL,
    [Data] SMALLDATETIME NOT NULL,
    [DescPergunta] TEXT NULL,
    [DescResposta] TEXT NULL,
    [CodParcTec] INT NULL,
    [CodSebrae] INT NOT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[UGE_Batimento] (
    [CNPJ] BIGINT NULL
);

CREATE TABLE [dbo].[uniamo_ativecon] (
    [sequniversoamostra] SMALLINT NOT NULL,
    [CodClass] SMALLINT NOT NULL,
    [CodAtivEcon] VARCHAR(5) NULL,
    [CodPesquisa] INT NOT NULL,
    [sequniamo_ativecon] INT NOT NULL,
    [CodSetor] SMALLINT NULL,
    [CodCnaeFiscal] VARCHAR(2) NULL
);

CREATE TABLE [dbo].[uniamo_local] (
    [sequniversoamostra] SMALLINT NOT NULL,
    [CodPais] SMALLINT NULL,
    [CodEst] SMALLINT NULL,
    [CodCid] INT NULL,
    [CodPesquisa] INT NOT NULL,
    [sequniamo_local] INT NOT NULL
);

CREATE TABLE [dbo].[uniamo_parceiro] (
    [CodPesquisa] INT NOT NULL,
    [SeqUniversoAmostra] SMALLINT NOT NULL,
    [SeqParticao] SMALLINT NOT NULL,
    [CodParceiro] INT NOT NULL
);

CREATE TABLE [dbo].[uniamo_particao] (
    [CodPesquisa] INT NOT NULL,
    [sequniversoamostra] SMALLINT NOT NULL,
    [seqparticao] SMALLINT NOT NULL,
    [tamamostra] INT NULL
);

CREATE TABLE [dbo].[uniamo_porte] (
    [sequniversoamostra] SMALLINT NOT NULL,
    [CodPorte] VARCHAR(10) NOT NULL,
    [CodPesquisa] INT NOT NULL
);

CREATE TABLE [dbo].[Unid_Audit] (
    [CodAplic] VARCHAR(15) NOT NULL,
    [CodUnidOp] INT NOT NULL
);

CREATE TABLE [dbo].[unidade] (
    [codunid] INT NOT NULL,
    [descunid] VARCHAR(40) NULL,
    [obrigatoriona] NUMERIC(18,0) NULL
);

CREATE TABLE [dbo].[UnidadeMedida] (
    [CodUnidade] VARCHAR(5) NOT NULL,
    [TipoUnidade] TINYINT NOT NULL,
    [DescUnidade] VARCHAR(40) NOT NULL
);

CREATE TABLE [dbo].[unidmedida] (
    [codunidmed] FLOAT NOT NULL,
    [descunidmed] VARCHAR(40) NOT NULL,
    [controlerede] SMALLINT NULL
);

CREATE TABLE [dbo].[UnidNegocio] (
    [CodUnidNegocio] INT NOT NULL,
    [DescUnidNegocio] VARCHAR(40) NOT NULL,
    [NomeAbrev] VARCHAR(40) NULL,
    [CodSebrae] INT NULL
);

CREATE TABLE [dbo].[UnidOperacional] (
    [CodUnidOp] INT NOT NULL,
    [DescOper] VARCHAR(30) NOT NULL,
    [NomeAbrev] VARCHAR(10) NULL,
    [CodLogr] INT NULL,
    [DescEndereco] VARCHAR(60) NULL,
    [Numero] VARCHAR(6) NULL,
    [Complemento] VARCHAR(30) NULL,
    [CodBairro] INT NULL,
    [CodCid] INT NULL,
    [CodEst] SMALLINT NULL,
    [CodPais] SMALLINT NULL,
    [Cep] INT NULL,
    [CodSebrae] INT NULL,
    [CodAutoRel] INT NULL,
    [IndRatUnidOp] TINYINT NOT NULL,
    [CodCoordUop] INT NULL,
    [CodTipoUnid] SMALLINT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL,
    [AssinaturaCoord] IMAGE NULL,
    [CodMeso] SMALLINT NULL,
    [CodMicro] SMALLINT NULL
);

CREATE TABLE [dbo].[UNIFICACAO_ERRO] (
    [CodErroUnif] INT NOT NULL,
    [DataErro] DATETIME NOT NULL,
    [CodParceiro] VARCHAR(1000) NULL,
    [CodParceiroDestino] VARCHAR(1000) NULL,
    [GN_ERRO] VARCHAR(8000) NULL
);

CREATE TABLE [dbo].[UnificacaoAutomatica] (
    [CodSebrae] INT NOT NULL
);

CREATE TABLE [dbo].[universoamostra] (
    [CodPesquisa] INT NOT NULL,
    [sequniversoamostra] SMALLINT NOT NULL,
    [tamuniverso] INT NULL,
    [tamamostra] INT NULL
);

CREATE TABLE [dbo].[Usuario] (
    [usuarioLogin] VARCHAR(50) NOT NULL,
    [CodSebrae] INT NOT NULL,
    [usuarioBloqueio] BIT NOT NULL,
    [usuarioVisReserva] BIT NOT NULL,
    [parceiroCodigo] INT NULL,
    [unidadeoperacionalCodigo] INT NULL,
    [meioatendimentoCodigo] INT NULL,
    [produtoCodigo] INT NULL,
    [tiposervicoCodigo] INT NULL,
    [usuarioSenha] VARCHAR(32) NULL,
    [lembreteSenha] VARCHAR(60) NULL,
    [GrupoGestor] TINYINT NULL,
    [AnoMeta] INT NULL,
    [CodObj] INT NULL,
    [CodSol] UNIQUEIDENTIFIER NULL,
    [codAreaAtuacaoUnidApoio] INT NULL,
    [CodEntidadeParceira] INT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL,
    [CodTipoUsuario] INT NULL,
    [dataCriacaoSenha] DATETIME NULL,
    [controle] VARCHAR(100) NULL
);

CREATE TABLE [dbo].[Usuario_Audit] (
    [CodAplic] VARCHAR(15) NOT NULL,
    [CodUusuario] VARCHAR(8) NOT NULL
);

CREATE TABLE [dbo].[usuario_exclusao] (
    [usuarioLogin] VARCHAR(50) NOT NULL,
    [CodSebrae] INT NOT NULL,
    [usuarioBloqueio] BIT NOT NULL,
    [usuarioVisReserva] BIT NOT NULL,
    [parceiroCodigo] INT NULL,
    [unidadeoperacionalCodigo] INT NULL,
    [meioatendimentoCodigo] INT NULL,
    [produtoCodigo] INT NULL,
    [tiposervicoCodigo] INT NULL,
    [usuarioSenha] VARCHAR(32) NULL,
    [lembreteSenha] VARCHAR(60) NULL,
    [GrupoGestor] TINYINT NULL,
    [AnoMeta] INT NULL,
    [CodObj] INT NULL,
    [CodSol] UNIQUEIDENTIFIER NULL,
    [codAreaAtuacaoUnidApoio] INT NULL,
    [CodEntidadeParceira] INT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL,
    [CodTipoUsuario] INT NULL,
    [dataCriacaoSenha] DATETIME NULL,
    [controle] VARCHAR(100) NULL
);

CREATE TABLE [dbo].[UsuarioIPWs] (
    [idUsuarioIP] INT NOT NULL,
    [CodParceiro] INT NOT NULL,
    [IP] VARCHAR(32) NOT NULL,
    [dataCriacao] DATETIME NOT NULL,
    [CodParceiroCriador] INT NOT NULL,
    [CodParceiroAlteracao] INT NULL,
    [DataUltimaAlteracao] DATETIME NULL
);

CREATE TABLE [dbo].[UsuarioRealizacaoWS] (
    [CodParceiro] INT NOT NULL,
    [TipoRealizacao] VARCHAR(3) NOT NULL,
    [DataCriacao] DATETIME NOT NULL,
    [DataAlteracao] DATETIME NULL
);

CREATE TABLE [dbo].[Usuarios_SCQ_QD] (
    [Seq] INT NOT NULL,
    [login] VARCHAR(255) NULL,
    [codSebrae] INT NULL,
    [CodParceiro] INT NULL,
    [Sistema] INT NULL
);

CREATE TABLE [dbo].[Usuarios_SCQ_QD_2018] (
    [Seq] INT NOT NULL,
    [login] VARCHAR(255) NULL,
    [codSebrae] INT NULL,
    [CodParceiro] INT NULL,
    [Sistema] INT NULL
);

CREATE TABLE [dbo].[UsuariosWS] (
    [CodParceiro] INT NOT NULL,
    [DataCriacao] DATETIME NULL,
    [CodSebrae] INT NULL,
    [ServicoOnline] BIT NULL
);

CREATE TABLE [dbo].[UtilizacaoVeiculo] (
    [Chassi] VARCHAR(20) NOT NULL,
    [AnoUtilizacao] INT NOT NULL,
    [MesUtilizacao] TINYINT NOT NULL,
    [CodUtilizacao] INT NOT NULL,
    [DiaUtilizacao] TINYINT NOT NULL,
    [CodReqTransporte] INT NULL,
    [CodCondutor] INT NULL,
    [CodCidade] FLOAT NOT NULL,
    [KmInicial] INT NULL,
    [KmFinal] INT NULL,
    [CodNFVeiculo] INT NULL,
    [Roteiro] VARCHAR(200) NOT NULL,
    [HoraSaida] DATETIME NOT NULL,
    [HoraChegada] DATETIME NOT NULL,
    [Status] TINYINT NOT NULL,
    [CodEstado] SMALLINT NULL,
    [CodBeneficiario] INT NULL
);

CREATE TABLE [dbo].[ValHoraDist] (
    [codclasse] INT NOT NULL,
    [classe] SMALLINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [indtipotec] VARCHAR(15) NOT NULL,
    [kminicial] INT NOT NULL,
    [kmfinal] INT NOT NULL,
    [valorhora] NUMERIC(9,2) NOT NULL,
    [dataatualiz] SMALLDATETIME NOT NULL,
    [indTipoTecnico] TINYINT NOT NULL,
    [situacao] CHAR(1) NOT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [dbo].[Veiculo] (
    [Chassi] VARCHAR(20) NOT NULL,
    [Placa] VARCHAR(8) NOT NULL,
    [CodUnidOp] INT NOT NULL,
    [CodMarca] TINYINT NOT NULL,
    [CodModelo] TINYINT NOT NULL,
    [CodResponsavel] INT NOT NULL,
    [Data] DATETIME NOT NULL,
    [AnoFabric] INT NOT NULL,
    [AnoModelo] INT NOT NULL,
    [Cor] VARCHAR(15) NOT NULL,
    [Tipo] TINYINT NOT NULL,
    [TipoCombustivel] TINYINT NOT NULL,
    [Caracteristicas] VARCHAR(80) NULL,
    [KmCadastramento] INT NULL,
    [Status] TINYINT NULL,
    [Garantia] TINYINT NULL,
    [DataIniGarantia] DATETIME NULL,
    [DataFimGarantia] DATETIME NULL,
    [Segurado] TINYINT NULL,
    [NumApolice] FLOAT NULL,
    [IndTaxi] TINYINT NULL
);

CREATE TABLE [dbo].[VendaTitulo] (
    [CodVendaTitulo] INT NOT NULL,
    [CodCliente] INT NULL,
    [CodVendedor] INT NOT NULL,
    [CodBalcaoCDI] INT NOT NULL,
    [NumNotaFiscal] INT NULL,
    [DataVenda] DATETIME NOT NULL,
    [VlTotal] FLOAT NOT NULL,
    [VlFrete] FLOAT NULL,
    [VlICMS] FLOAT NULL,
    [VlDesconto] FLOAT NULL,
    [CodFormaPagto] TINYINT NULL,
    [SituacaoVenda] TINYINT NOT NULL,
    [ObsVenda] VARCHAR(50) NULL,
    [ClienteConsum] VARCHAR(30) NULL,
    [Status] TINYINT NULL,
    [CodTipoMovTitulo] TINYINT NOT NULL,
    [CodEntidade] INT NULL,
    [CodRepresentante] INT NULL,
    [Ano] INT NULL,
    [CodProjeto] UNIQUEIDENTIFIER NULL,
    [CodAcao] INT NULL
);

CREATE TABLE [dbo].[VendaTituloSIAD] (
    [CodVendaTitulo] INT NOT NULL,
    [CodAB] SMALLINT NULL,
    [CodAE] UNIQUEIDENTIFIER NULL,
    [CodSOL] UNIQUEIDENTIFIER NULL,
    [CodOBJ] SMALLINT NULL,
    [ANO] INT NULL
);

CREATE TABLE [dbo].[vinculos_com_cpf_2024-07-26] (
    [cpf] VARCHAR(50) NULL,
    [cnpj] VARCHAR(50) NULL,
    [Coluna1] VARCHAR(50) NULL,
    [Coluna2] VARCHAR(50) NULL
);

CREATE TABLE [dbo].[vinculos_com_cpf_2024-07-29] (
    [cpf] VARCHAR(50) NULL,
    [cnpj] VARCHAR(50) NULL,
    [Coluna1] VARCHAR(50) NULL,
    [Coluna2] VARCHAR(50) NULL
);

CREATE TABLE [dbo].[VoceSabia] (
    [CodPesquisa] INT NOT NULL,
    [CodGrupo] INT NOT NULL,
    [CodQuestoes] INT NOT NULL,
    [CodDiagnostico] INT NOT NULL,
    [DiagnosticoOnline] VARCHAR(255) NULL,
    [Ativo] BIT NOT NULL
);

CREATE TABLE [dbo].[WebServicesWS] (
    [Id] INT NOT NULL,
    [WebServ] VARCHAR(48) NULL,
    [Status] SMALLINT NULL
);

CREATE TABLE [SAS].[_SAS_CONTROLE_VERSAO] (
    [CodUFOrigem] TINYINT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [ID_Cod_Sebrae] INT NOT NULL,
    [DS_Versao] VARCHAR(20) NOT NULL,
    [VersaoCompativel] VARCHAR(20) NOT NULL,
    [DT_Instalacao] DATETIME NOT NULL,
    [DT_Atualizacao] DATETIME NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[BKP_TB_Macroevento_Publico] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NULL,
    [MacroeventoID] BIGINT NOT NULL,
    [CodPublicoAlvo] INT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Ali_Acompanhamento_Log] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [AliClienteID] BIGINT NOT NULL,
    [CodParceiro] INT NOT NULL,
    [Data] DATETIME NOT NULL,
    [Campo] VARCHAR(255) NOT NULL,
    [ValorAnterior] VARCHAR(MAX) NULL,
    [ValorAtual] VARCHAR(MAX) NULL,
    [Acao] CHAR(1) NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Ali_Anexo_Tipo] (
    [ID] BIGINT NOT NULL,
    [Nome] VARCHAR(255) NOT NULL
);

CREATE TABLE [SAS].[TB_Ali_Camada] (
    [ID] BIGINT NOT NULL,
    [Nome] VARCHAR(255) NOT NULL
);

CREATE TABLE [SAS].[TB_Ali_Cliente] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [AliProjetoEquipeID] BIGINT NOT NULL,
    [CodParceiroPF] INT NOT NULL,
    [CodParceiroPJ] INT NOT NULL,
    [Situacao] CHAR(1) NOT NULL,
    [MotivoEncerramento] VARCHAR(600) NULL,
    [DataParticipacao] DATETIME NULL,
    [DataInclusao] DATETIME NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Ali_Cliente_Anexo] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [Anexo] VARBINARY NOT NULL,
    [NomeArquivo] VARCHAR(255) NOT NULL,
    [AliAnexoTipoID] BIGINT NULL,
    [AliClienteID] BIGINT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL,
    [AliInstrumentoAnexoTipoID] BIGINT NULL
);

CREATE TABLE [SAS].[TB_Ali_Cliente_Encontro] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [AliEncontroID] BIGINT NOT NULL,
    [AliClienteFaseID] BIGINT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Ali_Cliente_Fase] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [AliClienteID] BIGINT NOT NULL,
    [AliFaseID] BIGINT NOT NULL,
    [Situacao] CHAR(1) NOT NULL,
    [DataInclusao] DATETIME NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Ali_Cliente_Indicador] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Ali_Cliente_Indicador_Data] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [AliIndicadorDataID] BIGINT NOT NULL,
    [AliClienteIndicadorID] BIGINT NOT NULL,
    [Data] DATETIME NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Ali_Cliente_Indicador_Data_Item] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [AliClienteIndicadorDataID] BIGINT NOT NULL,
    [AliClienteIndicadorItemID] BIGINT NOT NULL,
    [Valor] NUMERIC(11,4) NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Ali_Cliente_Indicador_Item] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [AliClienteIndicadorID] BIGINT NOT NULL,
    [AliIndicadorID] BIGINT NOT NULL,
    [AliIndicadorTipoID] BIGINT NOT NULL,
    [AliIndicadorFrequenciaID] BIGINT NOT NULL,
    [AliIndicadorFormulaID] BIGINT NULL,
    [TipoDado] CHAR(1) NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Ali_Cliente_Instrumento] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [AliClienteEncontroID] BIGINT NOT NULL,
    [AliInstrumentoID] BIGINT NULL,
    [InteracaoID] BIGINT NULL,
    [AliClienteRadarID] BIGINT NULL,
    [Situacao] CHAR(1) NOT NULL,
    [DataInclusao] DATETIME NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL,
    [AliClienteIndicadorID] BIGINT NULL,
    [AliClienteValorID] BIGINT NULL,
    [ObservacaoCiencia] VARCHAR(5000) NULL
);

CREATE TABLE [SAS].[TB_Ali_Cliente_Log] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [AliProjetoEquipeID] BIGINT NOT NULL,
    [CodParceiro] INT NOT NULL,
    [Data] DATETIME NOT NULL,
    [Campo] VARCHAR(255) NOT NULL,
    [ValorAnterior] VARCHAR(MAX) NULL,
    [ValorAtual] VARCHAR(MAX) NULL,
    [Acao] CHAR(1) NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Ali_Cliente_Radar] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [NotaPraticas] NUMERIC(6,4) NULL,
    [NotaResultados] NUMERIC(6,4) NULL,
    [NotaGeral] NUMERIC(6,4) NULL,
    [AliPerfilID] BIGINT NULL,
    [DataInclusao] DATETIME NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Ali_Cliente_Radar_Resposta] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [AliRespostaID] BIGINT NOT NULL,
    [AliClienteRadarID] BIGINT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Ali_Cliente_Valor] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [Descricao] VARCHAR(5000) NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Ali_Encontro] (
    [ID] BIGINT NOT NULL,
    [Nome] VARCHAR(255) NOT NULL,
    [AliFaseID] BIGINT NOT NULL,
    [Numero] TINYINT NOT NULL,
    [AliEncontroProximoID] BIGINT NULL
);

CREATE TABLE [SAS].[TB_Ali_Equipe_Tipo] (
    [ID] BIGINT NOT NULL,
    [Nome] VARCHAR(255) NOT NULL
);

CREATE TABLE [SAS].[TB_Ali_Fase] (
    [ID] BIGINT NOT NULL,
    [Nome] VARCHAR(255) NOT NULL,
    [AliFaseProximoID] BIGINT NULL,
    [AliIndicadorDataID] BIGINT NULL
);

CREATE TABLE [SAS].[TB_Ali_Indicador] (
    [ID] BIGINT NOT NULL,
    [Descricao] VARCHAR(40) NOT NULL,
    [AliIndicadorTipoID] BIGINT NOT NULL,
    [AliIndicadorFrequenciaID] BIGINT NOT NULL,
    [AliIndicadorFormulaID] BIGINT NULL,
    [TipoDado] CHAR(1) NOT NULL
);

CREATE TABLE [SAS].[TB_Ali_Indicador_Data] (
    [ID] BIGINT NOT NULL,
    [Descricao] VARCHAR(40) NOT NULL
);

CREATE TABLE [SAS].[TB_Ali_Indicador_Formula] (
    [ID] BIGINT NOT NULL,
    [Descricao] VARCHAR(100) NULL,
    [Padrao] BIT NOT NULL
);

CREATE TABLE [SAS].[TB_Ali_Indicador_Frequencia] (
    [ID] BIGINT NOT NULL,
    [Descricao] VARCHAR(40) NOT NULL
);

CREATE TABLE [SAS].[TB_Ali_Indicador_Tipo] (
    [ID] BIGINT NOT NULL,
    [Descricao] VARCHAR(40) NOT NULL
);

CREATE TABLE [SAS].[TB_Ali_Instrumento] (
    [ID] BIGINT NOT NULL,
    [Nome] VARCHAR(255) NOT NULL,
    [AliEncontroID] BIGINT NOT NULL,
    [CodigoChamada] VARCHAR(300) NULL,
    [Tipo] CHAR(1) NULL,
    [DescricaoInteracao] VARCHAR(5000) NULL
);

CREATE TABLE [SAS].[TB_Ali_Instrumento_Anexo_Tipo] (
    [ID] BIGINT NOT NULL,
    [AliInstrumentoID] BIGINT NOT NULL,
    [AliAnexoTipoID] BIGINT NOT NULL
);

CREATE TABLE [SAS].[TB_Ali_Perfil] (
    [ID] BIGINT NOT NULL,
    [Nome] VARCHAR(255) NOT NULL
);

CREATE TABLE [SAS].[TB_Ali_Pergunta] (
    [ID] BIGINT NOT NULL,
    [Descricao] VARCHAR(300) NOT NULL,
    [AliVertenteID] BIGINT NOT NULL
);

CREATE TABLE [SAS].[TB_Ali_Projeto] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [Nome] VARCHAR(255) NOT NULL,
    [DataInicio] DATETIME NOT NULL,
    [DataTermino] DATETIME NOT NULL,
    [Ciclo] INT NOT NULL,
    [DataResolucao] DATETIME NOT NULL,
    [Resolucao] VARBINARY NOT NULL,
    [NomeArquivo] VARCHAR(255) NULL,
    [Situacao] CHAR(1) NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Ali_Projeto_Equipe] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [AliProjetoID] BIGINT NOT NULL,
    [AliEquipeTipoID] BIGINT NOT NULL,
    [UsuarioID] INT NOT NULL,
    [AliProjetoEquipeSuperiorID] BIGINT NULL,
    [ProjetoID] UNIQUEIDENTIFIER NULL,
    [AcaoID] INT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Ali_Projeto_Log] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [AliProjetoID] BIGINT NOT NULL,
    [CodParceiro] INT NOT NULL,
    [Data] DATETIME NOT NULL,
    [Campo] VARCHAR(255) NOT NULL,
    [ValorAnterior] VARCHAR(MAX) NULL,
    [ValorAtual] VARCHAR(MAX) NULL,
    [Acao] CHAR(1) NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Ali_Resposta] (
    [ID] BIGINT NOT NULL,
    [Descricao] VARCHAR(600) NOT NULL,
    [AliPerguntaID] BIGINT NOT NULL,
    [Nivel] TINYINT NOT NULL
);

CREATE TABLE [SAS].[TB_Ali_Vertente] (
    [ID] BIGINT NOT NULL,
    [Nome] VARCHAR(300) NOT NULL,
    [AliCamadaID] BIGINT NOT NULL,
    [Ordem] TINYINT NOT NULL
);

CREATE TABLE [SAS].[TB_Aplicacao_Log] (
    [ID] BIGINT NOT NULL,
    [AplicacaoID] INT NOT NULL,
    [Campo] VARCHAR(255) NOT NULL,
    [ValorAnterior] VARCHAR(MAX) NULL,
    [ValorAtual] VARCHAR(MAX) NULL,
    [Data] DATETIME NOT NULL,
    [CodParceiro] INT NOT NULL,
    [Acao] CHAR(1) NOT NULL,
    [CodSebrae] INT NULL
);

CREATE TABLE [SAS].[TB_Assunto] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [Nome] VARCHAR(255) NOT NULL,
    [Ativo] BIT NOT NULL,
    [DataSituacao] DATETIME NOT NULL,
    [DisponivelPara] TINYINT NOT NULL,
    [NivelID] BIGINT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Assunto_UF] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [Nome] VARCHAR(255) NOT NULL,
    [Ativo] BIT NOT NULL,
    [DataSituacao] DATETIME NOT NULL,
    [DisponivelPara] TINYINT NOT NULL,
    [NivelID] BIGINT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Assunto_Unidade_Organizacional] (
    [ID] BIGINT NOT NULL,
    [AssuntoID] BIGINT NOT NULL,
    [UnidadeOrganizacionalID] BIGINT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Assunto_Unidade_Organizacional_UF] (
    [AssuntoID] BIGINT NOT NULL,
    [UnidadeOrganizacionalID] BIGINT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Assunto_Usuario] (
    [ID] BIGINT NOT NULL,
    [AssuntoID] BIGINT NOT NULL,
    [UsuarioID] INT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Assunto_Usuario_UF] (
    [AssuntoID] BIGINT NOT NULL,
    [UsuarioID] INT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Atendente_Agendamento] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [UsuarioID] INT NOT NULL,
    [ClienteIDPessoaJuridica] INT NULL,
    [Ativo] BIT NOT NULL,
    [DataSituacao] DATETIME NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Atendente_Agendamento_Agenda] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [UnidadeOrganizacionalID] BIGINT NULL,
    [Ativo] BIT NOT NULL,
    [DataSituacao] DATETIME NOT NULL,
    [AtendenteAgendamentoID] BIGINT NOT NULL,
    [ParametroIntervaloHoraAgendamento] INT NULL,
    [TipoAgenda] CHAR(2) NOT NULL,
    [PortfolioDisponibilizacaoID] BIGINT NULL,
    [ConsultoriaSebrae] BIT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL,
    [LinkAcesso] VARCHAR(500) NULL
);

CREATE TABLE [SAS].[TB_Atendente_Agendamento_Agenda_Assunto] (
    [ID] BIGINT NOT NULL,
    [AssuntoID] BIGINT NOT NULL,
    [AtendenteAgendamentoAgendaID] BIGINT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Atendente_Agendamento_Agenda_Assunto_UF] (
    [AssuntoID] BIGINT NOT NULL,
    [AtendenteAgendamentoAgendaID] BIGINT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Atendente_Agendamento_Agenda_Horario] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [Data] DATETIME NOT NULL,
    [HoraInicial] DATETIME NOT NULL,
    [HoraFinal] DATETIME NOT NULL,
    [AtendenteAgendamentoAgendaID] BIGINT NOT NULL,
    [Ativo] BIT NOT NULL,
    [Combo] BIT NOT NULL,
    [Valor] NUMERIC(18,2) NOT NULL,
    [PermiteDesconto] BIT NOT NULL,
    [ValorDesconto] NUMERIC(18,2) NULL,
    [AgendamentoNovo] BIT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Atendente_Agendamento_Agenda_Horario_UF] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [Data] DATETIME NOT NULL,
    [HoraInicial] DATETIME NOT NULL,
    [HoraFinal] DATETIME NOT NULL,
    [AtendenteAgendamentoAgendaID] BIGINT NOT NULL,
    [Ativo] BIT NOT NULL,
    [Combo] BIT NOT NULL,
    [Valor] NUMERIC(18,2) NOT NULL,
    [PermiteDesconto] BIT NOT NULL,
    [ValorDesconto] NUMERIC(18,2) NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL,
    [AgendamentoNovo] BIT NOT NULL
);

CREATE TABLE [SAS].[TB_Atendente_Agendamento_Agenda_Log] (
    [ID] BIGINT NOT NULL,
    [AtendenteAgendamentoAgendaID] BIGINT NOT NULL,
    [DataHoraInicial] DATETIME NOT NULL,
    [Data] DATETIME NOT NULL,
    [CodParceiro] INT NOT NULL,
    [ValorAnterior] VARCHAR(MAX) NULL,
    [ValorPosterior] VARCHAR(MAX) NULL,
    [Acao] CHAR(1) NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Atendente_Agendamento_Agenda_Log_UF] (
    [ID] BIGINT NOT NULL,
    [AtendenteAgendamentoAgendaID] BIGINT NOT NULL,
    [DataHoraInicial] DATETIME NOT NULL,
    [Data] DATETIME NOT NULL,
    [CodParceiro] INT NOT NULL,
    [ValorAnterior] VARCHAR(MAX) NULL,
    [ValorPosterior] VARCHAR(MAX) NULL,
    [Acao] CHAR(1) NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Atendente_Agendamento_Agenda_UF] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [UnidadeOrganizacionalID] BIGINT NOT NULL,
    [Ativo] BIT NOT NULL,
    [DataSituacao] DATETIME NOT NULL,
    [AtendenteAgendamentoID] BIGINT NOT NULL,
    [ParametroIntervaloHoraAgendamento] INT NULL,
    [TipoAgenda] CHAR(2) NOT NULL,
    [PortfolioDisponibilizacaoID] BIGINT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL,
    [ConsultoriaSebrae] BIT NOT NULL,
    [LinkAcesso] VARCHAR(500) NULL
);

CREATE TABLE [SAS].[TB_Atendente_Agendamento_UF] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [UsuarioID] INT NOT NULL,
    [ClienteIDPessoaJuridica] INT NULL,
    [Ativo] BIT NOT NULL,
    [DataSituacao] DATETIME NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Atendente_Recepcao] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [UsuarioID] INT NOT NULL,
    [UnidadeOrganizacionalID] BIGINT NOT NULL,
    [Tipo] TINYINT NOT NULL,
    [Ativo] BIT NOT NULL,
    [DataHoraInicioDisponibilidade] DATETIME NOT NULL,
    [DataHoraFimDisponibilidade] DATETIME NULL,
    [Posicao] VARCHAR(MAX) NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Atendente_Recepcao_Assunto] (
    [ID] BIGINT NOT NULL,
    [AssuntoID] BIGINT NOT NULL,
    [UsuarioID] INT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Atendente_Recepcao_Assunto_UF] (
    [AssuntoID] BIGINT NOT NULL,
    [UsuarioID] INT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Atendente_Recepcao_UF] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [UsuarioID] INT NOT NULL,
    [UnidadeOrganizacionalID] BIGINT NOT NULL,
    [Tipo] TINYINT NOT NULL,
    [Ativo] BIT NOT NULL,
    [DataHoraInicioDisponibilidade] DATETIME NOT NULL,
    [DataHoraFimDisponibilidade] DATETIME NULL,
    [Posicao] VARCHAR(MAX) NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_AtendenteAgendamentoAgenda_REL_Cidade] (
    [ID] BIGINT NOT NULL,
    [AtendenteAgendamentoAgendaID] BIGINT NOT NULL,
    [CodCid] INT NOT NULL
);

CREATE TABLE [SAS].[TB_AtividadeEconomica_Log] (
    [ID] BIGINT NOT NULL,
    [CodAtivEcon] VARCHAR(5) NOT NULL,
    [CodCnaeFiscal] VARCHAR(2) NOT NULL,
    [Campo] VARCHAR(250) NOT NULL,
    [ValorAnterior] VARCHAR(2500) NULL,
    [ValorAtual] VARCHAR(2500) NULL,
    [Data] DATETIME NOT NULL,
    [CodParceiro] INT NOT NULL,
    [Acao] CHAR(1) NOT NULL
);

CREATE TABLE [SAS].[TB_Cargcli_Log] (
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [CodCargCli] INT NOT NULL,
    [Campo] VARCHAR(255) NOT NULL,
    [ValorAnterior] VARCHAR(MAX) NULL,
    [ValorAtual] VARCHAR(MAX) NULL,
    [Data] DATETIME NOT NULL,
    [CodParceiro] INT NOT NULL,
    [Acao] CHAR(1) NOT NULL
);

CREATE TABLE [SAS].[TB_Certificado] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [Nome] VARCHAR(MAX) NOT NULL,
    [Ativo] BIT NOT NULL,
    [Tipo] TINYINT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL,
    [CertificadoClassificacaoID] INT NULL
);

CREATE TABLE [SAS].[TB_Certificado_Classificacao] (
    [ID] INT NOT NULL,
    [Descricao] VARCHAR(50) NOT NULL,
    [Ativo] BIT NOT NULL
);

CREATE TABLE [SAS].[TB_Certificado_Frente] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [CertificadoID] BIGINT NOT NULL,
    [Logotipo] VARBINARY NULL,
    [Titulo] VARCHAR(MAX) NULL,
    [Conteudo] VARCHAR(MAX) NULL,
    [Rodape] VARCHAR(MAX) NULL,
    [ImagemPrimeiraAssinatura] VARBINARY NULL,
    [ImagemSegundaAssinatura] VARBINARY NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL,
    [ImagemFundo] VARBINARY NULL
);

CREATE TABLE [SAS].[TB_Certificado_Informacao] (
    [ID] INT NOT NULL,
    [Nome] VARCHAR(MAX) NOT NULL,
    [Consumo] TINYINT NOT NULL,
    [Ativo] BIT NOT NULL,
    [CertificadoClassificacaoID] INT NULL
);

CREATE TABLE [SAS].[TB_Certificado_Verso] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [CertificadoID] BIGINT NOT NULL,
    [Conteudo] VARCHAR(MAX) NULL,
    [Rodape] VARCHAR(MAX) NULL,
    [ImagemPrimeiraAssinatura] VARBINARY NULL,
    [ImagemSegundaAssinatura] VARBINARY NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL,
    [ImagemFundo] VARBINARY NULL
);

CREATE TABLE [SAS].[TB_Cidade_DDD] (
    [ID] BIGINT NOT NULL,
    [CodCidade] INT NOT NULL,
    [DDD] INT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Cidade_DDD_UF] (
    [codCidade] INT NOT NULL,
    [ddd] INT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Classificacao_Parceiro] (
    [ID] BIGINT NOT NULL,
    [Descricao] VARCHAR(100) NOT NULL
);

CREATE TABLE [SAS].[TB_ClassificacaoParceiro_REL_EntidadeParceira] (
    [ID] BIGINT NOT NULL,
    [ClassificacaoParceiroID] BIGINT NOT NULL,
    [EntidadeParceiraID] BIGINT NOT NULL
);

CREATE TABLE [SAS].[TB_Cliente_Arquivo] (
    [ID] UNIQUEIDENTIFIER NOT NULL,
    [ClienteID] INT NOT NULL,
    [Arquivo] VARBINARY NOT NULL,
    [NomeArquivo] VARCHAR(255) NULL,
    [Titulo] VARCHAR(255) NOT NULL,
    [Tamanho] DECIMAL(18,2) NOT NULL,
    [CodSebrae] INT NOT NULL,
    [InteracaoID] BIGINT NULL,
    [DataAlteracao] DATETIME NULL,
    [DataCriacao] DATETIME NULL,
    [DadosQualificados] BIT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL,
    [Ativo] BIT NOT NULL,
    [ArquivoID] UNIQUEIDENTIFIER NULL
);

CREATE TABLE [SAS].[TB_Cliente_Arquivo_Log] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [ClienteArquivoID] UNIQUEIDENTIFIER NOT NULL,
    [Campo] VARCHAR(255) NOT NULL,
    [ValorAnterior] VARCHAR(MAX) NULL,
    [ValorAtual] VARCHAR(MAX) NULL,
    [Data] DATETIME NOT NULL,
    [CodParceiro] INT NOT NULL,
    [Acao] CHAR(1) NOT NULL
);

CREATE TABLE [SAS].[TB_Cliente_ArquivoTipo] (
    [ID] BIGINT NOT NULL,
    [Nome] VARCHAR(50) NOT NULL
);

CREATE TABLE [SAS].[TB_Cliente_Interesse_Necessidade] (
    [ID] BIGINT NOT NULL,
    [ClienteID] INT NOT NULL,
    [InteresseNecessidadeID] BIGINT NOT NULL,
    [Data] DATETIME NOT NULL,
    [CodParceiro] INT NOT NULL,
    [UnidadeOrganizacionalID] BIGINT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Cliente_Log_Operacao_Configuracao] (
    [ID] BIGINT NOT NULL,
    [CampoChavePesquisa] VARCHAR(100) NULL,
    [TabelaRelacional] VARCHAR(100) NULL,
    [CampoRetornoPesquisa] VARCHAR(100) NULL,
    [Chave] VARCHAR(100) NOT NULL,
    [Comando] VARCHAR(MAX) NULL
);

CREATE TABLE [SAS].[TB_Cliente_Observacao] (
    [ClienteID] INT NOT NULL,
    [Texto] VARCHAR(1000) NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL,
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [UsuarioID] INT NULL,
    [Data] DATETIME NULL
);

CREATE TABLE [SAS].[TB_Cliente_Qualificacao_Cadastro] (
    [ID] BIGINT NOT NULL,
    [ClienteID] INT NOT NULL,
    [QualificacaoCadastroID] BIGINT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Cliente_Situacao_Atual] (
    [ClienteID] INT NOT NULL,
    [SituacaoAtualID] BIGINT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Cliente_Situacao_Atual_BKP] (
    [ClienteID] INT NOT NULL,
    [SituacaoAtualID] BIGINT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_ClienteArquivo_REL_ClienteArquivoTipo] (
    [ClienteArquivoID] UNIQUEIDENTIFIER NOT NULL,
    [ClienteArquivoTipoID] BIGINT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Combo] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [Nome] VARCHAR(255) NOT NULL,
    [Situacao] BIT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Combo_Detalhe] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [ComboID] BIGINT NOT NULL,
    [PortfolioID] BIGINT NOT NULL,
    [TipoServicoID] BIGINT NOT NULL,
    [TipoDisponibilizacao] CHAR(1) NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Combo_Detalhe_UF] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [ComboID] BIGINT NOT NULL,
    [PortfolioID] BIGINT NOT NULL,
    [TipoServicoID] BIGINT NOT NULL,
    [TipoDisponibilizacao] CHAR(1) NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Combo_Disponibilizacao] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [Nome] VARCHAR(255) NOT NULL,
    [ComboID] BIGINT NOT NULL,
    [Situacao] BIT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL,
    [ContratoID] BIGINT NULL,
    [CertificadoID] BIGINT NULL
);

CREATE TABLE [SAS].[TB_Combo_Disponibilizacao_Detalhe] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [ComboDisponibilizacaoID] BIGINT NOT NULL,
    [ComboDetalheID] BIGINT NOT NULL,
    [EventoID] BIGINT NULL,
    [PortfolioDisponibilizacaoID] BIGINT NULL,
    [AtendenteAgendamentoAgendaHorarioID] BIGINT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Combo_Disponibilizacao_Detalhe_UF] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [ComboDisponibilizacaoID] BIGINT NOT NULL,
    [ComboDetalheID] BIGINT NOT NULL,
    [EventoID] BIGINT NULL,
    [PortfolioDisponibilizacaoID] BIGINT NULL,
    [AtendenteAgendamentoAgendaHorarioID] BIGINT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Combo_Disponibilizacao_REL_Cidade] (
    [ID] BIGINT NOT NULL,
    [ComboDisponibilizacaoID] BIGINT NOT NULL,
    [CodCid] INT NOT NULL
);

CREATE TABLE [SAS].[TB_Combo_Disponibilizacao_UF] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [Nome] VARCHAR(255) NOT NULL,
    [ComboID] BIGINT NOT NULL,
    [Situacao] BIT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL,
    [ContratoID] BIGINT NULL,
    [CertificadoID] BIGINT NULL
);

CREATE TABLE [SAS].[TB_Combo_Log] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [ComboID] BIGINT NOT NULL,
    [Campo] VARCHAR(255) NOT NULL,
    [ValorAnterior] VARCHAR(MAX) NULL,
    [ValorAtual] VARCHAR(MAX) NULL,
    [Data] DATETIME NOT NULL,
    [CodParceiro] INT NOT NULL,
    [Acao] CHAR(1) NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Combo_Log_UF] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [ComboID] BIGINT NOT NULL,
    [Campo] VARCHAR(255) NOT NULL,
    [ValorAnterior] VARCHAR(MAX) NULL,
    [ValorAtual] VARCHAR(MAX) NULL,
    [Data] DATETIME NOT NULL,
    [CodParceiro] INT NOT NULL,
    [Acao] CHAR(1) NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Combo_UF] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [Nome] VARCHAR(255) NOT NULL,
    [Situacao] BIT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Comercializacao_Atendimento] (
    [CodUFOrigem] TINYINT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [EventoID] BIGINT NULL,
    [PortfolioDisponibilizacaoID] BIGINT NULL,
    [CodMeioAtendimento] INT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Comercializacao_Atendimento_UF] (
    [CodUFOrigem] TINYINT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [EventoID] BIGINT NULL,
    [PortfolioDisponibilizacaoID] BIGINT NULL,
    [CodMeioAtendimento] INT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Completude] (
    [ID] BIGINT NOT NULL,
    [TipoParceiro] CHAR(1) NOT NULL,
    [Campo] VARCHAR(255) NOT NULL,
    [TelaID] VARCHAR(255) NULL,
    [Pontuacao] SMALLINT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Completude_Nivel] (
    [ID] BIGINT NOT NULL,
    [DescricaoQualidade] VARCHAR(255) NULL,
    [LimiteInicial] TINYINT NOT NULL,
    [LimiteFinal] TINYINT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Configuracao] (
    [ID] BIGINT NOT NULL,
    [ProjetoID] UNIQUEIDENTIFIER NULL,
    [AcaoID] INT NULL,
    [UnidadeOrganizacionalID] BIGINT NULL,
    [MeioAtendimentoID] INT NULL,
    [UsuarioID] INT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Configuracao_UF] (
    [ID] BIGINT NOT NULL,
    [ProjetoID] UNIQUEIDENTIFIER NULL,
    [AcaoID] INT NULL,
    [UnidadeOrganizacionalID] BIGINT NULL,
    [MeioAtendimentoID] INT NULL,
    [UsuarioID] INT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL,
    [CodSebrae] INT NOT NULL
);

CREATE TABLE [SAS].[TB_Constjur_Log] (
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [CodConst] SMALLINT NOT NULL,
    [Campo] VARCHAR(255) NOT NULL,
    [ValorAnterior] VARCHAR(MAX) NULL,
    [ValorAtual] VARCHAR(MAX) NULL,
    [Data] DATETIME NOT NULL,
    [CodParceiro] INT NOT NULL,
    [Acao] CHAR(1) NOT NULL
);

CREATE TABLE [SAS].[TB_Contrato] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [Nome] VARCHAR(100) NOT NULL,
    [Ativo] BIT NOT NULL,
    [Cabecalho] VARCHAR(255) NULL,
    [Conteudo] VARCHAR(MAX) NULL,
    [ConteudoFinal] VARCHAR(MAX) NULL,
    [Logotipo] VARBINARY NULL,
    [ImagemPrimeiraAssinatura] VARBINARY NULL,
    [ImagemSegundaAssinatura] VARBINARY NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL,
    [ContratoClassificacaoID] INT NULL
);

CREATE TABLE [SAS].[TB_Contrato_Classificacao] (
    [ID] INT NOT NULL,
    [Descricao] VARCHAR(50) NOT NULL,
    [Ativo] BIT NOT NULL
);

CREATE TABLE [SAS].[TB_Contrato_Informacao] (
    [ID] INT NOT NULL,
    [Nome] VARCHAR(MAX) NOT NULL,
    [Ativo] BIT NOT NULL,
    [ContratoClassificacaoID] INT NULL,
    [IntegradorERP] BIT NULL
);

CREATE TABLE [SAS].[TB_Contrato_UF] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [Nome] VARCHAR(100) NOT NULL,
    [Ativo] BIT NOT NULL,
    [Cabecalho] VARCHAR(255) NULL,
    [Conteudo] VARCHAR(MAX) NULL,
    [ConteudoFinal] VARCHAR(MAX) NULL,
    [Logotipo] VARBINARY NULL,
    [ImagemPrimeiraAssinatura] VARBINARY NULL,
    [ImagemSegundaAssinatura] VARBINARY NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL,
    [ContratoClassificacaoID] INT NULL
);

CREATE TABLE [SAS].[TB_Deficiencia] (
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [DescDeficiencia] VARCHAR(120) NOT NULL,
    [Status] CHAR(1) NOT NULL
);

CREATE TABLE [SAS].[TB_Deficiencia_Log] (
    [ID] INT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [DeficienciaID] BIGINT NOT NULL,
    [Campo] VARCHAR(255) NOT NULL,
    [ValorAnterior] VARCHAR(MAX) NULL,
    [ValorAtual] VARCHAR(MAX) NULL,
    [Data] DATETIME NOT NULL,
    [CodPessoaF] INT NOT NULL,
    [Acao] CHAR(1) NULL
);

CREATE TABLE [SAS].[TB_Diagnostico] (
    [CodUFOrigem] TINYINT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [Nome] VARCHAR(100) NOT NULL,
    [Ativo] BIT NOT NULL,
    [QtdeTemasDevolutiva] INT NULL,
    [QtdeSubtemasDevolutiva] INT NULL,
    [DescricaoDevolutiva] VARCHAR(MAX) NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL,
    [AplicabilidadeFinalidade] VARCHAR(MAX) NULL
);

CREATE TABLE [SAS].[TB_Diagnostico_Descricao_Tema] (
    [CodUFOrigem] TINYINT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [CodAreaTematica] INT NOT NULL,
    [Descricao] VARCHAR(MAX) NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Diagnostico_Devolutiva_Tema] (
    [CodUFOrigem] TINYINT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [InteracaoDetalheDiagnosticoID] BIGINT NOT NULL,
    [CodAreaTematica] INT NOT NULL,
    [Desempenho] NUMERIC(6,5) NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL,
    [MostrarDevolutiva] BIT NOT NULL
);

CREATE TABLE [SAS].[TB_Diagnostico_Interacao_Resposta] (
    [CodUFOrigem] TINYINT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [DiagnosticoRelDiagnosticoPerguntaID] BIGINT NOT NULL,
    [InteracaoDetalheDiagnosticoID] BIGINT NOT NULL,
    [DiagnosticoPerguntaRespostaID] BIGINT NULL,
    [RespostaLivre] VARCHAR(MAX) NULL,
    [NaoSeAplica] BIT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Diagnostico_LOG] (
    [CodUFOrigem] TINYINT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [DiagnosticoID] BIGINT NOT NULL,
    [Campo] VARCHAR(255) NOT NULL,
    [ValorAnterior] VARCHAR(MAX) NULL,
    [ValorAtual] VARCHAR(MAX) NULL,
    [Data] DATETIME NOT NULL,
    [CodParceiro] INT NOT NULL,
    [Acao] CHAR(1) NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Diagnostico_Pergunta] (
    [CodUFOrigem] TINYINT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [Descricao] VARCHAR(255) NOT NULL,
    [Ativo] BIT NOT NULL,
    [IncluirOpcaoNaoSeAplica] BIT NOT NULL,
    [Tipo] CHAR(1) NOT NULL,
    [RespostaLivre] BIT NULL,
    [CodAreaTematica] INT NULL,
    [DescricaoCliente] VARCHAR(MAX) NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Diagnostico_Pergunta_CNAE] (
    [CodUFOrigem] TINYINT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [CodAtivEcon] VARCHAR(5) NOT NULL,
    [CodCnaeFiscal] VARCHAR(2) NOT NULL,
    [DiagnosticoPerguntaID] BIGINT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Diagnostico_Pergunta_Resposta] (
    [CodUFOrigem] TINYINT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [DiagnosticoPerguntaID] BIGINT NOT NULL,
    [Descricao] VARCHAR(255) NOT NULL,
    [Ordenacao] INT NULL,
    [Valor] NUMERIC(6,5) NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Diagnostico_Publico] (
    [ID] BIGINT NOT NULL,
    [Nome] VARCHAR(100) NOT NULL
);

CREATE TABLE [SAS].[TB_Diagnostico_REL_Devolutiva_Solucao_Indicada] (
    [CodUFOrigem] TINYINT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [InteracaoDetalheDiagnosticoID] BIGINT NOT NULL,
    [Titulo] VARCHAR(100) NULL,
    [Descricao] VARCHAR(255) NULL,
    [URL] VARCHAR(255) NULL,
    [PortfolioID] BIGINT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Diagnostico_REL_Devolutiva_Tema_Portfolio] (
    [CodUFOrigem] TINYINT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [DiagnosticoDevolutivaTemaID] BIGINT NOT NULL,
    [PortfolioID] BIGINT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Diagnostico_REL_Diagnostico_Pergunta] (
    [CodUFOrigem] TINYINT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [DiagnosticoPerguntaID] BIGINT NOT NULL,
    [Ordenacao] INT NOT NULL,
    [Ativo] BIT NOT NULL,
    [DiagnosticoID] BIGINT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Diagnostico_REL_Diagnostico_Publico] (
    [CodUFOrigem] TINYINT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [DiagnosticoPublicoID] BIGINT NOT NULL,
    [DiagnosticoID] BIGINT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Diagnostico_REL_Diagnostico_Tema] (
    [CodUFOrigem] TINYINT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [CodAreaTematica] INT NOT NULL,
    [Ordenacao] INT NOT NULL,
    [DiagnosticoID] BIGINT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL,
    [Descricao] VARCHAR(MAX) NULL
);

CREATE TABLE [SAS].[TB_Diagnostico_REL_Setor] (
    [ID] BIGINT NOT NULL,
    [CodSetor] SMALLINT NOT NULL,
    [DiagnosticoID] BIGINT NOT NULL
);

CREATE TABLE [SAS].[TB_Diagnostico_REL_Setor_bkp_28082020] (
    [ID] BIGINT NOT NULL,
    [CodSetor] SMALLINT NOT NULL,
    [DiagnosticoID] BIGINT NOT NULL
);

CREATE TABLE [SAS].[TB_Email_Enviar] (
    [ID] BIGINT NOT NULL,
    [Data] DATETIME NOT NULL,
    [Destinatario] VARCHAR(500) NOT NULL,
    [Mensagem] VARCHAR(MAX) NOT NULL,
    [Titulo] VARCHAR(255) NOT NULL,
    [Origem] TINYINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Email_Enviar_UF] (
    [ID] BIGINT NOT NULL,
    [Data] DATETIME NOT NULL,
    [Destinatario] VARCHAR(500) NOT NULL,
    [Mensagem] VARCHAR(MAX) NOT NULL,
    [Titulo] VARCHAR(255) NOT NULL,
    [Origem] TINYINT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL,
    [CodSebrae] INT NOT NULL
);

CREATE TABLE [SAS].[TB_Email_Financeiro] (
    [ID] BIGINT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [Data] DATETIME NOT NULL,
    [Destinatario] VARCHAR(500) NOT NULL,
    [CodParceiro] INT NOT NULL,
    [Mensagem] VARCHAR(MAX) NOT NULL,
    [Titulo] VARCHAR(255) NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Email_Financeiro_UF] (
    [ID] BIGINT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [Data] DATETIME NOT NULL,
    [Destinatario] VARCHAR(500) NOT NULL,
    [CodParceiro] INT NOT NULL,
    [Mensagem] VARCHAR(MAX) NOT NULL,
    [Titulo] VARCHAR(255) NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Endereco_Principal] (
    [CodParceiro] INT NOT NULL,
    [NumSeqEnd] INT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_ERP_Acao] (
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [CodCCusto] VARCHAR(255) NOT NULL,
    [CodAcao] VARCHAR(255) NOT NULL,
    [Nome] VARCHAR(500) NOT NULL,
    [GUID] UNIQUEIDENTIFIER NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_ERP_Acao_UF] (
    [CodCCusto] VARCHAR(255) NOT NULL,
    [CodAcao] VARCHAR(255) NOT NULL,
    [Nome] VARCHAR(500) NOT NULL,
    [GUID] UNIQUEIDENTIFIER NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL,
    [CodSebrae] INT NOT NULL
);

CREATE TABLE [SAS].[TB_ERP_Cidade] (
    [ID] INT NOT NULL,
    [Nome] VARCHAR(500) NOT NULL,
    [UF] CHAR(2) NOT NULL,
    [CodSebrae] INT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_ERP_Cidade_UF] (
    [ID] INT NOT NULL,
    [Nome] VARCHAR(500) NOT NULL,
    [UF] CHAR(2) NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL,
    [CodSebrae] INT NOT NULL
);

CREATE TABLE [SAS].[TB_ERP_Condicao_Pagamento] (
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [CodCPg] VARCHAR(255) NOT NULL,
    [Nome] VARCHAR(500) NOT NULL,
    [QuantasVezes1] INT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_ERP_Condicao_Pagamento_UF] (
    [CodCPg] VARCHAR(255) NOT NULL,
    [Nome] VARCHAR(500) NOT NULL,
    [QuantasVezes1] INT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL,
    [CodSebrae] INT NOT NULL
);

CREATE TABLE [SAS].[TB_ERP_ContasCX] (
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [CodColigada] INT NOT NULL,
    [CodCXA] VARCHAR(10) NOT NULL,
    [Descricao] VARCHAR(100) NOT NULL
);

CREATE TABLE [SAS].[TB_ERP_Departamento] (
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [CodColigada] INT NOT NULL,
    [CodFilial] INT NOT NULL,
    [CodDepartamento] VARCHAR(20) NOT NULL,
    [Nome] VARCHAR(100) NOT NULL,
    [Contato] VARCHAR(100) NULL,
    [Email] VARCHAR(100) NULL,
    [Ativo] CHAR(1) NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_ERP_Departamento_UF] (
    [CodColigada] INT NOT NULL,
    [CodFilial] INT NOT NULL,
    [CodDepartamento] VARCHAR(20) NOT NULL,
    [Nome] VARCHAR(100) NOT NULL,
    [Contato] VARCHAR(100) NULL,
    [Email] VARCHAR(100) NULL,
    [Ativo] CHAR(1) NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL,
    [CodSebrae] INT NOT NULL
);

CREATE TABLE [SAS].[TB_ERP_Filial] (
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [CodFilial] INT NOT NULL,
    [NomeFantasia] VARCHAR(500) NOT NULL,
    [Nome] VARCHAR(500) NOT NULL,
    [Cgc] VARCHAR(18) NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_ERP_Filial_UF] (
    [CodFilial] INT NOT NULL,
    [NomeFantasia] VARCHAR(500) NOT NULL,
    [Nome] VARCHAR(500) NOT NULL,
    [Cgc] VARCHAR(18) NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL,
    [CodSebrae] INT NOT NULL
);

CREATE TABLE [SAS].[TB_ERP_Forma_Pagamento] (
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [IdFormaPagto] INT NOT NULL,
    [CodFormaPagto] VARCHAR(255) NOT NULL,
    [DescFormaPagto] VARCHAR(500) NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_ERP_Forma_Pagamento_UF] (
    [IdFormaPagto] INT NOT NULL,
    [CodFormaPagto] VARCHAR(255) NOT NULL,
    [DescFormaPagto] VARCHAR(500) NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL,
    [CodSebrae] INT NOT NULL
);

CREATE TABLE [SAS].[TB_Erp_Log_Integracao] (
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [DataHora] DATETIME NOT NULL,
    [Metodo] VARCHAR(100) NOT NULL,
    [Mensagem] VARCHAR(MAX) NULL,
    [ChaveErp] VARCHAR(30) NULL,
    [Xml] VARCHAR(MAX) NULL,
    [Sucesso] BIT NOT NULL
);

CREATE TABLE [SAS].[TB_Erp_Movimento_Datasul] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [Tipo] TINYINT NOT NULL,
    [ChaveErp] VARCHAR(30) NOT NULL,
    [UsuarioLogadoID] INT NOT NULL,
    [CodParceiroFontePagadora] INT NOT NULL,
    [CondicaoPagamentoID] INT NOT NULL,
    [DescricaoCondicaoPagamento] VARCHAR(100) NOT NULL,
    [InteracaoID] BIGINT NULL,
    [ValorTotal] DECIMAL(18,2) NOT NULL,
    [TotalDesconto] DECIMAL(18,2) NOT NULL,
    [Situacao] CHAR(1) NOT NULL,
    [Data] DATETIME NOT NULL,
    [CodComprovVda] VARCHAR(12) NULL,
    [CodAutoriz] VARCHAR(6) NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL,
    [CodParceiroRepresentantePJ] INT NULL
);

CREATE TABLE [SAS].[TB_Erp_Movimento_Datasul_Agendamento] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [ErpMovimentoDatasulID] BIGINT NOT NULL,
    [InteracaoDetalheAgendamentoID] BIGINT NOT NULL,
    [CodigoTurma] INT NOT NULL,
    [Valor] DECIMAL(18,2) NOT NULL,
    [Desconto] DECIMAL(18,2) NOT NULL,
    [InteracaoDetalheComboDisponibilizacaoID] BIGINT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Erp_Movimento_Datasul_Agendamento_UF] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [ErpMovimentoDatasulID] BIGINT NOT NULL,
    [InteracaoDetalheAgendamentoID] BIGINT NOT NULL,
    [CodigoTurma] INT NOT NULL,
    [Valor] DECIMAL(18,2) NOT NULL,
    [Desconto] DECIMAL(18,2) NOT NULL,
    [InteracaoDetalheComboDisponibilizacaoID] BIGINT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Erp_Movimento_Datasul_Consultoria] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [ErpMovimentoDatasulID] BIGINT NOT NULL,
    [InteracaoDetalhePortfolioDisponibilizacaoID] BIGINT NOT NULL,
    [CodigoTurma] INT NOT NULL,
    [Horas] VARCHAR(6) NOT NULL,
    [Valor] DECIMAL(18,2) NOT NULL,
    [Desconto] DECIMAL(18,2) NOT NULL,
    [InteracaoDetalheComboDisponibilizacaoID] BIGINT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Erp_Movimento_Datasul_Consultoria_UF] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [ErpMovimentoDatasulID] BIGINT NOT NULL,
    [InteracaoDetalhePortfolioDisponibilizacaoID] BIGINT NOT NULL,
    [CodigoTurma] INT NOT NULL,
    [Horas] VARCHAR(6) NOT NULL,
    [Valor] DECIMAL(18,2) NOT NULL,
    [Desconto] DECIMAL(18,2) NOT NULL,
    [InteracaoDetalheComboDisponibilizacaoID] BIGINT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Erp_Movimento_Datasul_EventoParticipante] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [ErpMovimentoDatasulID] BIGINT NOT NULL,
    [EventoParticipanteID] BIGINT NOT NULL,
    [CodigoTurma] INT NOT NULL,
    [Valor] DECIMAL(18,2) NOT NULL,
    [Desconto] DECIMAL(18,2) NOT NULL,
    [InteracaoDetalheComboDisponibilizacaoID] BIGINT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Erp_Movimento_Datasul_EventoParticipante_UF] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [ErpMovimentoDatasulID] BIGINT NOT NULL,
    [EventoParticipanteID] BIGINT NOT NULL,
    [CodigoTurma] INT NOT NULL,
    [Valor] DECIMAL(18,2) NOT NULL,
    [Desconto] DECIMAL(18,2) NOT NULL,
    [InteracaoDetalheComboDisponibilizacaoID] BIGINT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Erp_Movimento_Datasul_Ferramenta] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [ErpMovimentoDatasulID] BIGINT NOT NULL,
    [InteracaoDetalhePortfolioDisponibilizacaoID] BIGINT NOT NULL,
    [CodUnidadeErp] VARCHAR(20) NOT NULL,
    [CodCentroCustoErp] VARCHAR(50) NOT NULL,
    [Quantidade] INT NOT NULL,
    [Valor] DECIMAL(18,2) NOT NULL,
    [Desconto] DECIMAL(18,2) NOT NULL,
    [InteracaoDetalheComboDisponibilizacaoID] BIGINT NULL,
    [CodProdutoERP] VARCHAR(20) NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Erp_Movimento_Datasul_Ferramenta_UF] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [ErpMovimentoDatasulID] BIGINT NOT NULL,
    [InteracaoDetalhePortfolioDisponibilizacaoID] BIGINT NOT NULL,
    [CodUnidadeErp] VARCHAR(20) NOT NULL,
    [CodCentroCustoErp] VARCHAR(50) NOT NULL,
    [Quantidade] INT NOT NULL,
    [Valor] DECIMAL(18,2) NOT NULL,
    [Desconto] DECIMAL(18,2) NOT NULL,
    [InteracaoDetalheComboDisponibilizacaoID] BIGINT NULL,
    [CodProdutoERP] VARCHAR(20) NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Erp_Movimento_Datasul_UF] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [Tipo] TINYINT NOT NULL,
    [ChaveErp] VARCHAR(30) NOT NULL,
    [UsuarioLogadoID] INT NOT NULL,
    [CodParceiroFontePagadora] INT NOT NULL,
    [CondicaoPagamentoID] INT NOT NULL,
    [DescricaoCondicaoPagamento] VARCHAR(100) NOT NULL,
    [InteracaoID] BIGINT NULL,
    [ValorTotal] DECIMAL(18,2) NOT NULL,
    [TotalDesconto] DECIMAL(18,2) NOT NULL,
    [Situacao] CHAR(1) NOT NULL,
    [Data] DATETIME NOT NULL,
    [CodComprovVda] VARCHAR(12) NULL,
    [CodAutoriz] VARCHAR(6) NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL,
    [CodParceiroRepresentantePJ] INT NULL
);

CREATE TABLE [SAS].[TB_ERP_Movimento_Filial_RM] (
    [CodUFOrigem] TINYINT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [CodFilial] INT NOT NULL,
    [NomeFilial] VARCHAR(255) NOT NULL,
    [CGCFilial] VARCHAR(20) NOT NULL,
    [IDMovimento] VARCHAR(10) NOT NULL,
    [Ativo] BIT NOT NULL,
    [TipoVenda] TINYINT NOT NULL,
    [CodColTbOrcamento] INT NOT NULL,
    [CodTbOrcamento] VARCHAR(10) NOT NULL,
    [Serie] VARCHAR(10) NOT NULL,
    [Departamento] CHAR(1) NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_ERP_Movimento_Filial_RM_UF] (
    [CodUFOrigem] TINYINT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [CodFilial] INT NOT NULL,
    [NomeFilial] VARCHAR(255) NOT NULL,
    [CGCFilial] VARCHAR(20) NOT NULL,
    [IDMovimento] VARCHAR(10) NOT NULL,
    [Ativo] BIT NOT NULL,
    [TipoVenda] TINYINT NOT NULL,
    [CodColTbOrcamento] INT NOT NULL,
    [CodTbOrcamento] VARCHAR(10) NOT NULL,
    [Serie] VARCHAR(10) NOT NULL,
    [Departamento] CHAR(1) NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_ERP_Movimento_RM] (
    [CodUFOrigem] TINYINT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [CodParceiroFontePagadora] INT NOT NULL,
    [InteracaoID] BIGINT NULL,
    [Observacao] VARCHAR(255) NULL,
    [Tipo] TINYINT NOT NULL,
    [Situacao] CHAR(1) NOT NULL,
    [UsuarioLogadoID] INT NOT NULL,
    [FormaPagamentoID] VARCHAR(25) NOT NULL,
    [CondicaoPagamentoID] VARCHAR(5) NOT NULL,
    [ValorTotal] NUMERIC(9,2) NOT NULL,
    [TotalDesconto] NUMERIC(9,2) NOT NULL,
    [DescricaoFormaPagamento] VARCHAR(250) NOT NULL,
    [DescricaoCondicaoPagamento] VARCHAR(250) NOT NULL,
    [ProporcaoValor] NUMERIC(13,2) NOT NULL,
    [TbFlx_1] VARCHAR(50) NULL,
    [TbFlx_2] VARCHAR(50) NULL,
    [TbFlx_3] VARCHAR(50) NULL,
    [TbFlx_4] VARCHAR(50) NULL,
    [TbFlx_5] VARCHAR(50) NULL,
    [CodDepartamento] VARCHAR(20) NULL,
    [Serie] VARCHAR(10) NOT NULL,
    [CodColOrcamento] INT NOT NULL,
    [CodOrcamento] VARCHAR(10) NOT NULL,
    [ERPMovimentoFilialRMID] BIGINT NOT NULL,
    [NomeFilial] VARCHAR(255) NULL,
    [ChaveErp] VARCHAR(30) NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL,
    [CodParceiroRepresentantePJ] INT NULL,
    [CodAutorizacaoCartao] VARCHAR(50) NULL,
    [CodCXA] VARCHAR(10) NULL,
    [DebitoCredito] CHAR(1) NULL,
    [CodigoEstoque] VARCHAR(10) NULL
);

CREATE TABLE [SAS].[TB_Erp_Movimento_RM_Agendamento] (
    [CodUFOrigem] TINYINT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [InteracaoDetalheAgendamentoID] BIGINT NOT NULL,
    [Valor] NUMERIC(18,2) NOT NULL,
    [Desconto] NUMERIC(18,2) NULL,
    [ProdutoERP] VARCHAR(20) NULL,
    [TbFat_1] VARCHAR(50) NULL,
    [TbFat_2] VARCHAR(50) NULL,
    [TbFat_3] VARCHAR(50) NULL,
    [TbFat_4] VARCHAR(50) NULL,
    [TbFat_5] VARCHAR(50) NULL,
    [CentroCusto] VARCHAR(50) NOT NULL,
    [Sequencia] INT NOT NULL,
    [ERPMovimentoRMID] BIGINT NOT NULL,
    [InteracaoDetalheComboDisponibilizacaoID] BIGINT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Erp_Movimento_RM_Agendamento_UF] (
    [CodUFOrigem] TINYINT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [InteracaoDetalheAgendamentoID] BIGINT NOT NULL,
    [Valor] NUMERIC(18,2) NOT NULL,
    [Desconto] NUMERIC(18,2) NULL,
    [ProdutoERP] VARCHAR(20) NULL,
    [TbFat_1] VARCHAR(50) NULL,
    [TbFat_2] VARCHAR(50) NULL,
    [TbFat_3] VARCHAR(50) NULL,
    [TbFat_4] VARCHAR(50) NULL,
    [TbFat_5] VARCHAR(50) NULL,
    [CentroCusto] VARCHAR(50) NOT NULL,
    [Sequencia] INT NOT NULL,
    [ERPMovimentoRMID] BIGINT NOT NULL,
    [InteracaoDetalheComboDisponibilizacaoID] BIGINT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_ERP_Movimento_RM_Cheque] (
    [CodUFOrigem] TINYINT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [ERPMovimentoRMID] BIGINT NOT NULL,
    [NumeroCheque] VARCHAR(15) NOT NULL,
    [Valor] NUMERIC(18,2) NOT NULL,
    [CPF] VARCHAR(11) NULL,
    [Banco] VARCHAR(30) NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_ERP_Movimento_RM_Cheque_UF] (
    [CodUFOrigem] TINYINT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [ERPMovimentoRMID] BIGINT NOT NULL,
    [NumeroCheque] VARCHAR(15) NOT NULL,
    [Valor] NUMERIC(18,2) NOT NULL,
    [CPF] VARCHAR(11) NULL,
    [Banco] VARCHAR(30) NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Erp_Movimento_RM_Consultoria] (
    [CodUFOrigem] TINYINT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [InteracaoDetalhePortfolioDisponibilizacaoID] BIGINT NOT NULL,
    [Valor] NUMERIC(18,2) NOT NULL,
    [Desconto] NUMERIC(18,2) NULL,
    [ProdutoERP] VARCHAR(20) NULL,
    [TbFat_1] VARCHAR(50) NULL,
    [TbFat_2] VARCHAR(50) NULL,
    [TbFat_3] VARCHAR(50) NULL,
    [TbFat_4] VARCHAR(50) NULL,
    [TbFat_5] VARCHAR(50) NULL,
    [CentroCusto] VARCHAR(50) NOT NULL,
    [Sequencia] INT NOT NULL,
    [Horas] VARCHAR(6) NOT NULL,
    [ERPMovimentoRMID] BIGINT NOT NULL,
    [InteracaoDetalheComboDisponibilizacaoID] BIGINT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Erp_Movimento_RM_Consultoria_UF] (
    [CodUFOrigem] TINYINT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [InteracaoDetalhePortfolioDisponibilizacaoID] BIGINT NOT NULL,
    [Valor] NUMERIC(18,2) NOT NULL,
    [Desconto] NUMERIC(18,2) NULL,
    [ProdutoERP] VARCHAR(20) NULL,
    [TbFat_1] VARCHAR(50) NULL,
    [TbFat_2] VARCHAR(50) NULL,
    [TbFat_3] VARCHAR(50) NULL,
    [TbFat_4] VARCHAR(50) NULL,
    [TbFat_5] VARCHAR(50) NULL,
    [CentroCusto] VARCHAR(50) NOT NULL,
    [Sequencia] INT NOT NULL,
    [Horas] VARCHAR(6) NOT NULL,
    [ERPMovimentoRMID] BIGINT NOT NULL,
    [InteracaoDetalheComboDisponibilizacaoID] BIGINT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Erp_Movimento_RM_EventoParticipante] (
    [CodUFOrigem] TINYINT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [EventoParticipanteID] BIGINT NOT NULL,
    [Valor] NUMERIC(18,2) NOT NULL,
    [Desconto] NUMERIC(18,2) NOT NULL,
    [ProdutoERP] VARCHAR(20) NOT NULL,
    [TbFat_1] VARCHAR(50) NULL,
    [TbFat_2] VARCHAR(50) NULL,
    [TbFat_3] VARCHAR(50) NULL,
    [TbFat_4] VARCHAR(50) NULL,
    [TbFat_5] VARCHAR(50) NULL,
    [CentroCusto] VARCHAR(50) NOT NULL,
    [Sequencia] INT NOT NULL,
    [ERPMovimentoRMID] BIGINT NOT NULL,
    [InteracaoDetalheComboDisponibilizacaoID] BIGINT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Erp_Movimento_RM_EventoParticipante_UF] (
    [CodUFOrigem] TINYINT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [EventoParticipanteID] BIGINT NOT NULL,
    [Valor] NUMERIC(18,2) NOT NULL,
    [Desconto] NUMERIC(18,2) NOT NULL,
    [ProdutoERP] VARCHAR(20) NOT NULL,
    [TbFat_1] VARCHAR(50) NULL,
    [TbFat_2] VARCHAR(50) NULL,
    [TbFat_3] VARCHAR(50) NULL,
    [TbFat_4] VARCHAR(50) NULL,
    [TbFat_5] VARCHAR(50) NULL,
    [CentroCusto] VARCHAR(50) NOT NULL,
    [Sequencia] INT NOT NULL,
    [ERPMovimentoRMID] BIGINT NOT NULL,
    [InteracaoDetalheComboDisponibilizacaoID] BIGINT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Erp_Movimento_RM_EventoReserva] (
    [CodUFOrigem] TINYINT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [EventoReservaID] BIGINT NOT NULL,
    [Valor] NUMERIC(18,2) NOT NULL,
    [Desconto] NUMERIC(18,2) NULL,
    [ProdutoERP] VARCHAR(20) NOT NULL,
    [TbFat_1] VARCHAR(50) NULL,
    [TbFat_2] VARCHAR(50) NULL,
    [TbFat_3] VARCHAR(50) NULL,
    [TbFat_4] VARCHAR(50) NULL,
    [TbFat_5] VARCHAR(50) NULL,
    [CentroCusto] VARCHAR(50) NOT NULL,
    [Sequencia] INT NOT NULL,
    [ERPMovimentoRMID] BIGINT NOT NULL,
    [InteracaoDetalheComboDisponibilizacaoID] BIGINT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Erp_Movimento_RM_EventoReserva_UF] (
    [CodUFOrigem] TINYINT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [EventoReservaID] BIGINT NOT NULL,
    [Valor] NUMERIC(18,2) NOT NULL,
    [Desconto] NUMERIC(18,2) NULL,
    [ProdutoERP] VARCHAR(20) NOT NULL,
    [TbFat_1] VARCHAR(50) NULL,
    [TbFat_2] VARCHAR(50) NULL,
    [TbFat_3] VARCHAR(50) NULL,
    [TbFat_4] VARCHAR(50) NULL,
    [TbFat_5] VARCHAR(50) NULL,
    [CentroCusto] VARCHAR(50) NOT NULL,
    [Sequencia] INT NOT NULL,
    [ERPMovimentoRMID] BIGINT NOT NULL,
    [InteracaoDetalheComboDisponibilizacaoID] BIGINT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Erp_Movimento_RM_Ferramenta] (
    [CodUFOrigem] TINYINT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [InteracaoDetalhePortfolioDisponibilizacaoID] BIGINT NOT NULL,
    [Valor] NUMERIC(18,2) NOT NULL,
    [Desconto] NUMERIC(18,2) NULL,
    [ProdutoERP] VARCHAR(20) NULL,
    [TbFat_1] VARCHAR(50) NULL,
    [TbFat_2] VARCHAR(50) NULL,
    [TbFat_3] VARCHAR(50) NULL,
    [TbFat_4] VARCHAR(50) NULL,
    [TbFat_5] VARCHAR(50) NULL,
    [CentroCusto] VARCHAR(50) NOT NULL,
    [Sequencia] INT NOT NULL,
    [Quantidade] INT NOT NULL,
    [ERPMovimentoRMID] BIGINT NOT NULL,
    [InteracaoDetalheComboDisponibilizacaoID] BIGINT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Erp_Movimento_RM_Ferramenta_UF] (
    [CodUFOrigem] TINYINT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [InteracaoDetalhePortfolioDisponibilizacaoID] BIGINT NOT NULL,
    [Valor] NUMERIC(18,2) NOT NULL,
    [Desconto] NUMERIC(18,2) NULL,
    [ProdutoERP] VARCHAR(20) NULL,
    [TbFat_1] VARCHAR(50) NULL,
    [TbFat_2] VARCHAR(50) NULL,
    [TbFat_3] VARCHAR(50) NULL,
    [TbFat_4] VARCHAR(50) NULL,
    [TbFat_5] VARCHAR(50) NULL,
    [CentroCusto] VARCHAR(50) NOT NULL,
    [Sequencia] INT NOT NULL,
    [Quantidade] INT NOT NULL,
    [ERPMovimentoRMID] BIGINT NOT NULL,
    [InteracaoDetalheComboDisponibilizacaoID] BIGINT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_ERP_Movimento_RM_UF] (
    [CodUFOrigem] TINYINT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [CodParceiroFontePagadora] INT NOT NULL,
    [InteracaoID] BIGINT NULL,
    [Observacao] VARCHAR(255) NULL,
    [Tipo] TINYINT NOT NULL,
    [Situacao] CHAR(1) NOT NULL,
    [UsuarioLogadoID] INT NOT NULL,
    [FormaPagamentoID] VARCHAR(25) NOT NULL,
    [CondicaoPagamentoID] VARCHAR(5) NOT NULL,
    [ValorTotal] NUMERIC(9,2) NOT NULL,
    [TotalDesconto] NUMERIC(9,2) NOT NULL,
    [DescricaoFormaPagamento] VARCHAR(250) NOT NULL,
    [DescricaoCondicaoPagamento] VARCHAR(250) NOT NULL,
    [ProporcaoValor] NUMERIC(13,2) NOT NULL,
    [TbFlx_1] VARCHAR(50) NULL,
    [TbFlx_2] VARCHAR(50) NULL,
    [TbFlx_3] VARCHAR(50) NULL,
    [TbFlx_4] VARCHAR(50) NULL,
    [TbFlx_5] VARCHAR(50) NULL,
    [CodDepartamento] VARCHAR(20) NULL,
    [Serie] VARCHAR(10) NOT NULL,
    [CodColOrcamento] INT NOT NULL,
    [CodOrcamento] VARCHAR(10) NOT NULL,
    [ERPMovimentoFilialRMID] BIGINT NOT NULL,
    [NomeFilial] VARCHAR(255) NULL,
    [ChaveErp] VARCHAR(30) NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL,
    [CodParceiroRepresentantePJ] INT NULL
);

CREATE TABLE [SAS].[TB_ERP_MovimentoFilialRM_REL_TabelasOpcionaisRM] (
    [CodUFOrigem] TINYINT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [ERPMovimentoFilialRMID] BIGINT NOT NULL,
    [ERPTabelasOpcionaisRMID] INT NOT NULL,
    [Tipo] CHAR(1) NOT NULL,
    [Filtro] VARCHAR(500) NULL,
    [NomeLogico] VARCHAR(150) NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_ERP_MovimentoFilialRM_REL_TabelasOpcionaisRM_UF] (
    [CodUFOrigem] TINYINT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [ERPMovimentoFilialRMID] BIGINT NOT NULL,
    [ERPTabelasOpcionaisRMID] INT NOT NULL,
    [Tipo] CHAR(1) NOT NULL,
    [Filtro] VARCHAR(500) NULL,
    [NomeLogico] VARCHAR(150) NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_ERP_Produto] (
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [IdPRD] INT NOT NULL,
    [CodigoPRD] VARCHAR(255) NOT NULL,
    [NomeFantasia] VARCHAR(500) NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_ERP_Produto_UF] (
    [IdPRD] INT NOT NULL,
    [CodigoPRD] VARCHAR(255) NOT NULL,
    [NomeFantasia] VARCHAR(500) NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL,
    [CodSebrae] INT NOT NULL
);

CREATE TABLE [SAS].[TB_ERP_Projeto] (
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [CodCCusto] VARCHAR(255) NOT NULL,
    [Nome] VARCHAR(500) NOT NULL,
    [GUID] UNIQUEIDENTIFIER NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_ERP_Projeto_UF] (
    [CodCCusto] VARCHAR(255) NOT NULL,
    [Nome] VARCHAR(500) NOT NULL,
    [GUID] UNIQUEIDENTIFIER NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL,
    [CodSebrae] INT NOT NULL
);

CREATE TABLE [SAS].[TB_ERP_Tabelas_Opcionais] (
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [Codigo] VARCHAR(50) NOT NULL,
    [Descricao] VARCHAR(255) NOT NULL,
    [Tipo] CHAR(7) NOT NULL,
    [ERPMovimentoFilialRMID] BIGINT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_ERP_Tabelas_Opcionais_RM] (
    [ID] INT NOT NULL,
    [Nome] CHAR(7) NOT NULL
);

CREATE TABLE [SAS].[TB_ERP_Tabelas_Opcionais_UF] (
    [Codigo] VARCHAR(50) NOT NULL,
    [Descricao] VARCHAR(255) NOT NULL,
    [Tipo] CHAR(7) NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL,
    [CodSebrae] INT NOT NULL,
    [ERPMovimentoFilialRMID] BIGINT NULL
);

CREATE TABLE [SAS].[TB_ERP_Unidade] (
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [CodCCusto] VARCHAR(255) NOT NULL,
    [CodUnidade] VARCHAR(255) NOT NULL,
    [Nome] VARCHAR(500) NOT NULL,
    [CodAcao] VARCHAR(255) NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_ERP_Unidade_UF] (
    [CodCCusto] VARCHAR(255) NOT NULL,
    [CodUnidade] VARCHAR(255) NOT NULL,
    [Nome] VARCHAR(500) NOT NULL,
    [CodAcao] VARCHAR(255) NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL,
    [CodSebrae] INT NOT NULL
);

CREATE TABLE [SAS].[TB_Escolaridade_Log] (
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [CodGrauEscol] SMALLINT NOT NULL,
    [Campo] VARCHAR(255) NOT NULL,
    [ValorAnterior] VARCHAR(MAX) NULL,
    [ValorAtual] VARCHAR(MAX) NULL,
    [Data] DATETIME NOT NULL,
    [CodPessoaF] INT NOT NULL,
    [Acao] CHAR(1) NOT NULL
);

CREATE TABLE [SAS].[TB_Etapa_Educacao] (
    [ID] BIGINT NOT NULL,
    [Descricao] VARCHAR(100) NOT NULL
);

CREATE TABLE [SAS].[TB_Evento] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [UnidadeOrganizacionalID] BIGINT NOT NULL,
    [CodAgrupamento] INT NULL,
    [CodProduto] BIGINT NOT NULL,
    [Nome] VARCHAR(255) NOT NULL,
    [TipoPublico] CHAR(1) NULL,
    [PublicoEvento] CHAR(1) NOT NULL,
    [PubCanaisDigitais] BIT NOT NULL,
    [EventoGratuito] BIT NOT NULL,
    [MinimoParticipantes] INT NOT NULL,
    [MaximoParticipantes] INT NOT NULL,
    [MinimoPagantes] INT NOT NULL,
    [CargaHoraria] FLOAT NOT NULL,
    [Preco] NUMERIC(18,2) NOT NULL,
    [DiasReserva] INT NOT NULL,
    [DiasEmitirAviso] INT NULL,
    [PermiteDesconto] BIT NOT NULL,
    [DescontoMaximo] NUMERIC(18,2) NULL,
    [URL] VARCHAR(255) NULL,
    [CodProjeto] UNIQUEIDENTIFIER NOT NULL,
    [CodAcao] INT NOT NULL,
    [Responsavel] INT NOT NULL,
    [GestorProjeto] INT NULL,
    [MesAnoComp] DATETIME NULL,
    [Situacao] CHAR(1) NOT NULL,
    [CodProjetoERP] VARCHAR(20) NULL,
    [CodAcaoERP] VARCHAR(20) NULL,
    [CodUnidadeERP] VARCHAR(20) NULL,
    [CodProdutoERP] VARCHAR(20) NULL,
    [CodCCustoERP] VARCHAR(50) NULL,
    [MotivoCancelamentoID] BIGINT NULL,
    [DescCancelamento] VARCHAR(255) NULL,
    [ProjetoERP] VARCHAR(500) NULL,
    [AcaoERP] VARCHAR(500) NULL,
    [UnidadeERP] VARCHAR(500) NULL,
    [ProdutoERP] VARCHAR(500) NULL,
    [TipoEventoID] INT NULL,
    [CodEmpreendimentoPublicoFechado] INT NULL,
    [CodFilial] INT NULL,
    [FrequenciaMinima] INT NOT NULL,
    [Aproveitamento] BIT NOT NULL,
    [TbFat_1] VARCHAR(50) NULL,
    [TbFat_2] VARCHAR(50) NULL,
    [TbFat_3] VARCHAR(50) NULL,
    [TbFat_4] VARCHAR(50) NULL,
    [TbFat_5] VARCHAR(50) NULL,
    [TbFlx_1] VARCHAR(50) NULL,
    [TbFlx_2] VARCHAR(50) NULL,
    [TbFlx_3] VARCHAR(50) NULL,
    [TbFlx_4] VARCHAR(50) NULL,
    [TbFlx_5] VARCHAR(50) NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL,
    [EmailAviso] VARCHAR(255) NULL,
    [AvisoEnviado] BIT NOT NULL,
    [Conteudo] VARCHAR(500) NULL,
    [UsuarioCadastro] INT NULL,
    [DataCadastro] DATETIME NULL,
    [DataUltimaAlteracao] DATETIME NULL,
    [TipoServicoID] BIGINT NULL,
    [ModalidadeID] BIGINT NULL,
    [InstrumentoID] INT NULL,
    [DiasEnvioAnexo] INT NULL,
    [MacroeventoID] BIGINT NULL,
    [AnexoEnviado] BIT NOT NULL,
    [ObservacaoLogistica] VARCHAR(500) NULL,
    [EmailLogistica] VARCHAR(250) NULL,
    [CodigoTurma] INT NULL,
    [CodCidadeERP] INT NULL,
    [CidadeERP] VARCHAR(500) NULL,
    [Combo] BIT NOT NULL,
    [CodDepartamento] VARCHAR(20) NULL,
    [ERPMovimentoFilialRMID] BIGINT NULL,
    [ContratoID] BIGINT NULL,
    [Observacao] VARCHAR(500) NULL,
    [TipoEvento] CHAR(1) NOT NULL,
    [CategoriaPublico] CHAR(1) NULL,
    [EtapaEducacao] CHAR(1) NULL,
    [QuantidadeInscricoes] INT NULL,
    [NotaMinima] INT NULL,
    [NumeroVisitanteFeira] INT NULL,
    [StandConsolidado] CHAR(1) NULL,
    [IDEventoExterno] VARCHAR(255) NULL
);

CREATE TABLE [SAS].[TB_Evento_Arquivo] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [EventoID] BIGINT NOT NULL,
    [CodParceiro] INT NOT NULL,
    [Arquivo] VARBINARY NOT NULL,
    [Titulo] VARCHAR(255) NOT NULL,
    [NomeArquivo] VARCHAR(255) NOT NULL,
    [Tamanho] DECIMAL(18,2) NOT NULL,
    [DataInclusao] DATETIME NOT NULL,
    [ExibirAtendente] BIT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL,
    [Descricao] VARCHAR(255) NULL
);

CREATE TABLE [SAS].[TB_Evento_Certificado] (
    [EventoID] BIGINT NOT NULL,
    [TipoCertificado] CHAR(1) NOT NULL
);

CREATE TABLE [SAS].[TB_Evento_Condicao_Pagamento] (
    [ID] BIGINT NOT NULL,
    [EventoID] BIGINT NOT NULL,
    [CondicaoPagamentoID] VARCHAR(5) NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Evento_Condicao_Pagamento_UF] (
    [EventoID] BIGINT NOT NULL,
    [CondicaoPagamentoID] VARCHAR(5) NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Evento_Espera] (
    [CodUFOrigem] TINYINT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [EventoID] BIGINT NOT NULL,
    [CodPessoaF] INT NOT NULL,
    [CodPessoaJ] INT NULL,
    [Observacao] VARCHAR(500) NULL,
    [Ativo] BIT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL,
    [TipoParticipanteFeira] CHAR(1) NULL
);

CREATE TABLE [SAS].[TB_Evento_Fila_Certificado_Email] (
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [EventoParticipanteID] BIGINT NOT NULL,
    [DataHoraInclusao] DATETIME NOT NULL,
    [DataHoraExecucao] DATETIME NULL,
    [Situacao] TINYINT NOT NULL,
    [TentativasEnvio] SMALLINT NULL,
    [UsuarioID] INT NOT NULL
);

CREATE TABLE [SAS].[TB_Evento_Forma_Pagamento] (
    [ID] BIGINT NOT NULL,
    [EventoID] BIGINT NOT NULL,
    [FormaPagamentoID] VARCHAR(25) NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Evento_Forma_Pagamento_UF] (
    [EventoID] BIGINT NOT NULL,
    [FormaPagamentoID] VARCHAR(25) NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Evento_Instituicao] (
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [EventoID] BIGINT NOT NULL,
    [Instituicao] VARCHAR(500) NOT NULL
);

CREATE TABLE [SAS].[TB_Evento_Instrutor] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [EventoID] BIGINT NOT NULL,
    [TipoInstrutor] CHAR(1) NOT NULL,
    [FuncionarioCredenciadoID] BIGINT NULL,
    [CodPessoaJ] INT NULL,
    [NomeInstrutor] VARCHAR(255) NULL,
    [CodigoContratoSGF] VARCHAR(30) NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL,
    [TipoInstituicaoPromotora] CHAR(1) NULL,
    [UnidadeOrganizacionalID] BIGINT NULL,
    [CodSebraeInstituicao] INT NULL
);

CREATE TABLE [SAS].[TB_Evento_Instrutor_Data] (
    [ID] BIGINT NOT NULL,
    [EventoInstrutorID] BIGINT NOT NULL,
    [Data] DATETIME NOT NULL
);

CREATE TABLE [SAS].[TB_Evento_Intencao] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [CodProduto] BIGINT NOT NULL,
    [CodPessoaF] INT NOT NULL,
    [CodPessoaJ] INT NULL,
    [Horario] CHAR(3) NOT NULL,
    [DataInicio] DATETIME NULL,
    [DataFinal] DATETIME NOT NULL,
    [CidadeID] INT NULL,
    [UnidadeOrganizacionalID] BIGINT NULL,
    [Ativo] BIT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL,
    [TipoParticipanteFeira] CHAR(1) NULL
);

CREATE TABLE [SAS].[TB_Evento_Intencao_UF] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [CodProduto] BIGINT NOT NULL,
    [CodPessoaF] INT NOT NULL,
    [CodPessoaJ] INT NULL,
    [Horario] CHAR(3) NOT NULL,
    [DataInicio] DATETIME NULL,
    [DataFinal] DATETIME NOT NULL,
    [CidadeID] INT NULL,
    [UnidadeOrganizacionalID] BIGINT NULL,
    [Ativo] BIT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Evento_LinkAcessoConteudo] (
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [EventoID] BIGINT NOT NULL,
    [LinkAcessoConteudo] VARCHAR(500) NULL,
    [Nome] VARCHAR(200) NULL
);

CREATE TABLE [SAS].[TB_Evento_LinkProduto] (
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [EventoID] BIGINT NOT NULL,
    [LinkProduto] VARCHAR(500) NOT NULL
);

CREATE TABLE [SAS].[TB_Evento_Log_Operacao] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [EventoID] BIGINT NOT NULL,
    [DataHora] DATETIME NOT NULL,
    [Operacao] CHAR(1) NOT NULL,
    [CodParceiroResp] INT NOT NULL,
    [Campo] VARCHAR(255) NULL,
    [ValorAtual] VARCHAR(MAX) NULL,
    [ValorAnterior] VARCHAR(MAX) NULL,
    [MotivoCancEventoID] BIGINT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Evento_Log_Operacao_Inscricao] (
    [CodUFOrigem] TINYINT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [EventoID] BIGINT NOT NULL,
    [DataHora] DATETIME NOT NULL,
    [Operacao] CHAR(1) NOT NULL,
    [CodParceiroResp] INT NOT NULL,
    [CodNovoParticipante] INT NULL,
    [CodCliente] INT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Evento_Log_Operacao_Inscricao_UF] (
    [CodUFOrigem] TINYINT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [EventoID] BIGINT NOT NULL,
    [DataHora] DATETIME NOT NULL,
    [Operacao] CHAR(1) NOT NULL,
    [CodParceiroResp] INT NOT NULL,
    [CodNovoParticipante] INT NULL,
    [CodCliente] INT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Evento_Log_Operacao_UF] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [EventoID] BIGINT NOT NULL,
    [DataHora] DATETIME NOT NULL,
    [Operacao] CHAR(1) NOT NULL,
    [CodParceiroResp] INT NOT NULL,
    [Campo] VARCHAR(255) NULL,
    [ValorAtual] VARCHAR(MAX) NULL,
    [ValorAnterior] VARCHAR(MAX) NULL,
    [MotivoCancEventoID] BIGINT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Evento_Manutencao_Tipo_Devolucao] (
    [ID] INT NOT NULL,
    [TipoDevolucaoID] BIGINT NOT NULL,
    [Status] BIT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Evento_Manutencao_Tipo_Devolucao_UF] (
    [TipoDevolucaoID] BIGINT NOT NULL,
    [Status] BIT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Evento_Material] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [EventoID] BIGINT NOT NULL,
    [Material] VARCHAR(70) NOT NULL,
    [Quantidade] VARCHAR(20) NOT NULL,
    [Tipo] CHAR(1) NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Evento_Material_UF] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [EventoID] BIGINT NOT NULL,
    [Material] VARCHAR(70) NOT NULL,
    [Quantidade] VARCHAR(20) NOT NULL,
    [Tipo] CHAR(1) NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Evento_Movimento_Devolucao_Excluir] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [EventoMovimentoID] BIGINT NOT NULL,
    [ValorDevolucao] DECIMAL(18,4) NOT NULL,
    [TipoDevolucaoID] BIGINT NOT NULL,
    [NumVoucherDev] VARCHAR(30) NULL,
    [BancoDev] VARCHAR(10) NULL,
    [ContaDev] VARCHAR(10) NULL,
    [AgenciaDev] VARCHAR(15) NULL,
    [CPFCNPJDev] VARCHAR(15) NULL,
    [NomeRazaoSocialDev] VARCHAR(120) NULL,
    [EventoParticipanteID] BIGINT NULL,
    [EventoReservaID] BIGINT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Evento_Movimento_Devolucao_Excluir_UF] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [EventoMovimentoID] BIGINT NOT NULL,
    [ValorDevolucao] DECIMAL(18,4) NOT NULL,
    [TipoDevolucaoID] BIGINT NOT NULL,
    [NumVoucherDev] VARCHAR(30) NULL,
    [BancoDev] VARCHAR(10) NULL,
    [ContaDev] VARCHAR(10) NULL,
    [AgenciaDev] VARCHAR(15) NULL,
    [CPFCNPJDev] VARCHAR(15) NULL,
    [NomeRazaoSocialDev] VARCHAR(120) NULL,
    [EventoParticipanteID] BIGINT NULL,
    [EventoReservaID] BIGINT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Evento_Movimento_Excluir] (
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [FontePagadora] INT NOT NULL,
    [InteracaoID] BIGINT NULL,
    [Observacao] VARCHAR(255) NULL,
    [Tipo] CHAR(1) NOT NULL,
    [Situacao] CHAR(1) NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Evento_Movimento_Excluir_UF] (
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [FontePagadora] INT NOT NULL,
    [InteracaoID] BIGINT NULL,
    [Observacao] VARCHAR(255) NULL,
    [Tipo] CHAR(1) NOT NULL,
    [Situacao] CHAR(1) NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Evento_Movimento_Pagamento_Cheque_Excluir] (
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [NumeroCheque] VARCHAR(15) NOT NULL,
    [Valor] DECIMAL(18,2) NOT NULL,
    [CPF] VARCHAR(11) NULL,
    [Banco] VARCHAR(30) NOT NULL,
    [EventoMovimentoPagamentoID] BIGINT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Evento_Movimento_Pagamento_Cheque_Excluir_UF] (
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [NumeroCheque] VARCHAR(15) NOT NULL,
    [Valor] DECIMAL(18,2) NOT NULL,
    [CPF] VARCHAR(11) NULL,
    [Banco] VARCHAR(30) NOT NULL,
    [EventoMovimentoPagamentoID] BIGINT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Evento_Movimento_Pagamento_Detalhe_Excluir] (
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [CentroCusto] VARCHAR(50) NOT NULL,
    [Valor] DECIMAL(18,2) NOT NULL,
    [Sequencia] INT NULL,
    [EventoID] BIGINT NOT NULL,
    [EventoMovimentoPagamentoID] BIGINT NOT NULL,
    [CodFilial] INT NULL,
    [ChaveERP] VARCHAR(30) NULL,
    [TbFat_1] VARCHAR(50) NULL,
    [TbFat_2] VARCHAR(50) NULL,
    [TbFat_3] VARCHAR(50) NULL,
    [TbFat_4] VARCHAR(50) NULL,
    [TbFat_5] VARCHAR(50) NULL,
    [TbFlx_1] VARCHAR(50) NULL,
    [TbFlx_2] VARCHAR(50) NULL,
    [TbFlx_3] VARCHAR(50) NULL,
    [TbFlx_4] VARCHAR(50) NULL,
    [TbFlx_5] VARCHAR(50) NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Evento_Movimento_Pagamento_Detalhe_Excluir_UF] (
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [CentroCusto] VARCHAR(50) NOT NULL,
    [Valor] DECIMAL(18,2) NOT NULL,
    [Sequencia] INT NULL,
    [EventoID] BIGINT NOT NULL,
    [EventoMovimentoPagamentoID] BIGINT NOT NULL,
    [CodFilial] INT NULL,
    [ChaveERP] VARCHAR(30) NULL,
    [TbFat_1] VARCHAR(50) NULL,
    [TbFat_2] VARCHAR(50) NULL,
    [TbFat_3] VARCHAR(50) NULL,
    [TbFat_4] VARCHAR(50) NULL,
    [TbFat_5] VARCHAR(50) NULL,
    [TbFlx_1] VARCHAR(50) NULL,
    [TbFlx_2] VARCHAR(50) NULL,
    [TbFlx_3] VARCHAR(50) NULL,
    [TbFlx_4] VARCHAR(50) NULL,
    [TbFlx_5] VARCHAR(50) NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Evento_Movimento_Pagamento_Excluir] (
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [FormaPagamentoID] VARCHAR(25) NOT NULL,
    [CondicaoPagamentoID] VARCHAR(5) NOT NULL,
    [Valor] DECIMAL(18,2) NOT NULL,
    [DescricaoFormaPagamento] VARCHAR(250) NOT NULL,
    [DescricaoCondicaoPagamento] VARCHAR(250) NOT NULL,
    [ProporcaoValor] DECIMAL(22,20) NOT NULL,
    [EventoMovimentoID] BIGINT NOT NULL,
    [TbFat_1] VARCHAR(50) NULL,
    [TbFat_2] VARCHAR(50) NULL,
    [TbFat_3] VARCHAR(50) NULL,
    [TbFat_4] VARCHAR(50) NULL,
    [TbFat_5] VARCHAR(50) NULL,
    [TbFlx_1] VARCHAR(50) NULL,
    [TbFlx_2] VARCHAR(50) NULL,
    [TbFlx_3] VARCHAR(50) NULL,
    [TbFlx_4] VARCHAR(50) NULL,
    [TbFlx_5] VARCHAR(50) NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Evento_Movimento_Pagamento_Excluir_UF] (
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [FormaPagamentoID] VARCHAR(25) NOT NULL,
    [CondicaoPagamentoID] VARCHAR(5) NOT NULL,
    [Valor] DECIMAL(18,2) NOT NULL,
    [DescricaoFormaPagamento] VARCHAR(250) NOT NULL,
    [DescricaoCondicaoPagamento] VARCHAR(250) NOT NULL,
    [ProporcaoValor] DECIMAL(22,20) NOT NULL,
    [EventoMovimentoID] BIGINT NOT NULL,
    [TbFat_1] VARCHAR(50) NULL,
    [TbFat_2] VARCHAR(50) NULL,
    [TbFat_3] VARCHAR(50) NULL,
    [TbFat_4] VARCHAR(50) NULL,
    [TbFat_5] VARCHAR(50) NULL,
    [TbFlx_1] VARCHAR(50) NULL,
    [TbFlx_2] VARCHAR(50) NULL,
    [TbFlx_3] VARCHAR(50) NULL,
    [TbFlx_4] VARCHAR(50) NULL,
    [TbFlx_5] VARCHAR(50) NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Evento_Pacote] (
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [EventoID] BIGINT NOT NULL,
    [PacoteID] BIGINT NOT NULL
);

CREATE TABLE [SAS].[TB_Evento_Participante] (
    [CodUFOrigem] TINYINT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [EventoID] BIGINT NOT NULL,
    [CodPessoaF] INT NOT NULL,
    [CodPessoaJ] INT NULL,
    [Desconto] DECIMAL(18,2) NULL,
    [TipoParticipante] INT NOT NULL,
    [Valor] DECIMAL(18,2) NOT NULL,
    [Observacao] VARCHAR(500) NULL,
    [DataInscricao] DATETIME NOT NULL,
    [Situacao] CHAR(1) NOT NULL,
    [UsuarioResp] INT NOT NULL,
    [DataDesistencia] DATETIME NULL,
    [DiasAusencia] INT NULL,
    [MotivoCancelamentoInscricaoID] BIGINT NULL,
    [DescCancelamento] VARCHAR(255) NULL,
    [ObsCancelamento] VARCHAR(255) NULL,
    [InteracaoID] BIGINT NULL,
    [EventoMovimentoID] BIGINT NULL,
    [Frequencia] INT NULL,
    [Aproveitamento] BIT NULL,
    [Aprovado] BIT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL,
    [InteracaoDetalheComboDisponibilizacaoID] BIGINT NULL,
    [Contrato] VARBINARY NULL,
    [DataConfirmacao] DATE NULL,
    [CodigoPedido] VARCHAR(100) NULL,
    [CodigoOrdem] VARCHAR(100) NULL,
    [CodigoBaixa] VARCHAR(100) NULL,
    [CodigoRetornoPagamento] VARCHAR(100) NULL,
    [DataUltimaAlteracao] DATETIME NULL,
    [TipoParticipanteFeira] CHAR(1) NULL
);

CREATE TABLE [SAS].[TB_Evento_Participante_Stand] (
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [CodPessoaF] INT NOT NULL,
    [CodPessoaJ] INT NULL,
    [EventoID] BIGINT NOT NULL,
    [EventoStandID] BIGINT NOT NULL,
    [TipoStand] VARCHAR(100) NOT NULL,
    [DescricaoStand] VARCHAR(500) NOT NULL,
    [QuantidadeStandAdquirida] INT NOT NULL,
    [PrecoUnStandAdquirido] NUMERIC(18,2) NOT NULL,
    [PrecoTotalStandAdquirido] NUMERIC(18,2) NOT NULL,
    [DescontoStand] NUMERIC(18,2) NOT NULL,
    [TipoParticipanteID] INT NOT NULL
);

CREATE TABLE [SAS].[TB_Evento_ParticipanteRodada] (
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [EventoID] BIGINT NOT NULL,
    [TipoEmpresa] CHAR(1) NOT NULL,
    [CodPessoaF] INT NOT NULL,
    [CodPessoaJ] INT NULL,
    [NomeProduto] VARCHAR(300) NULL,
    [Descricao] VARCHAR(255) NULL,
    [UnidadeMedidaID] BIGINT NULL,
    [Quantidade] INT NULL,
    [PrecoUnitario] NUMERIC(18,2) NULL,
    [PrecoTotal] NUMERIC(18,2) NULL,
    [LinkAcesso] VARCHAR(500) NULL,
    [EventoParticipanteRodadaID] BIGINT NULL
);

CREATE TABLE [SAS].[TB_Evento_PartidaDestino] (
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [EventoID] BIGINT NOT NULL,
    [TipoEndereco] CHAR(1) NOT NULL,
    [Logradouro] VARCHAR(150) NOT NULL,
    [Complemento] VARCHAR(70) NOT NULL,
    [CodBairro] INT NOT NULL,
    [CodCidade] INT NOT NULL,
    [CodEstado] SMALLINT NOT NULL,
    [CodPais] SMALLINT NOT NULL,
    [CEP] INT NOT NULL,
    [DescInternacional] VARCHAR(100) NULL
);

CREATE TABLE [SAS].[TB_Evento_Permissao_Inscricao] (
    [CodUFOrigem] TINYINT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [EventoID] BIGINT NOT NULL,
    [UsuarioID] INT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Evento_ProdutoFeira] (
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [EventoID] BIGINT NOT NULL,
    [EventoParticipanteStandID] BIGINT NOT NULL,
    [NomeProduto] VARCHAR(300) NOT NULL,
    [Descricao] VARCHAR(255) NULL,
    [UnidadeMedidaID] BIGINT NULL,
    [Quantidade] INT NULL,
    [PrecoUnitario] NUMERIC(18,2) NULL,
    [PrecoTotal] NUMERIC(18,2) NULL,
    [LinkAcesso] VARCHAR(500) NULL
);

CREATE TABLE [SAS].[TB_Evento_ProdutoFeira_Arquivo] (
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [EventoID] BIGINT NOT NULL,
    [EventoProdutoFeiraID] BIGINT NOT NULL,
    [CodParceiro] INT NOT NULL,
    [Arquivo] VARBINARY NOT NULL,
    [Titulo] VARCHAR(255) NOT NULL,
    [NomeArquivo] VARCHAR(255) NOT NULL,
    [Tamanho] NUMERIC(9,2) NOT NULL,
    [DataInclusao] DATETIME NOT NULL,
    [RowGuid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Evento_ProdutoRodada_Arquivo] (
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [EventoID] BIGINT NOT NULL,
    [EventoParticipantesRodadaID] BIGINT NOT NULL,
    [CodParceiro] INT NOT NULL,
    [Arquivo] VARBINARY NOT NULL,
    [Título] VARCHAR(255) NOT NULL,
    [NomeArquivo] VARCHAR(255) NOT NULL,
    [Tamanho] NUMERIC(9,2) NOT NULL,
    [DataInclusao] DATETIME NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL,
    [UsuarioID] INT NULL
);

CREATE TABLE [SAS].[TB_Evento_Publico_Definido] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [EventoID] BIGINT NOT NULL,
    [CodPessoaF] INT NOT NULL,
    [CodPessoaJ] INT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Evento_Rel_EventoArquivo_AnexoTipo] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [EventoArquivoID] BIGINT NOT NULL,
    [AnexoTipoID] BIGINT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Evento_Rel_EventoArquivo_AnexoTipo_UF] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [EventoArquivoID] BIGINT NOT NULL,
    [AnexoTipoID] BIGINT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Evento_Reserva] (
    [CodUFOrigem] TINYINT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [EventoID] BIGINT NOT NULL,
    [CodPessoaF] INT NOT NULL,
    [CodPessoaJ] INT NULL,
    [Situacao] CHAR(1) NOT NULL,
    [Observacao] VARCHAR(500) NULL,
    [Desconto] DECIMAL(18,2) NULL,
    [TipoParticipante] INT NOT NULL,
    [Valor] DECIMAL(18,2) NOT NULL,
    [InteracaoID] BIGINT NULL,
    [EventoMovimentoID] BIGINT NULL,
    [DataReserva] DATETIME NOT NULL,
    [InteracaoDetalheComboDisponibilizacaoID] BIGINT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL,
    [TipoParticipanteFeira] CHAR(1) NULL
);

CREATE TABLE [SAS].[TB_Evento_Resultados] (
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [EventoID] BIGINT NOT NULL,
    [Resultados] VARCHAR(5000) NOT NULL
);

CREATE TABLE [SAS].[TB_Evento_Stand] (
    [ID] BIGINT NOT NULL,
    [EventoID] BIGINT NOT NULL,
    [Descricao] VARCHAR(500) NOT NULL,
    [Tipo] VARCHAR(100) NOT NULL,
    [Quantidade] INT NOT NULL,
    [PrecoIndividual] NUMERIC(18,2) NOT NULL,
    [MinimoExpositor] INT NOT NULL,
    [MaximoExpositor] INT NOT NULL,
    [StandGratuito] BIT NOT NULL,
    [PermiteDesconto] BIT NOT NULL,
    [DescontoMaximo] NUMERIC(18,2) NULL,
    [DiasReserva] INT NOT NULL
);

CREATE TABLE [SAS].[TB_Evento_Tipo_Devolucao] (
    [ID] BIGINT NOT NULL,
    [Descricao] VARCHAR(70) NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Evento_TipoParticipanteRodada] (
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [EventoID] BIGINT NOT NULL,
    [TipoEmpresa] CHAR(1) NOT NULL,
    [CodPessoaF] INT NOT NULL,
    [CodPessoaJ] INT NULL
);

CREATE TABLE [SAS].[TB_Familia] (
    [ID] BIGINT NOT NULL,
    [DescFamilia] VARCHAR(255) NOT NULL,
    [Situacao] CHAR(1) NULL
);

CREATE TABLE [SAS].[TB_Familia_Log] (
    [ID] BIGINT NOT NULL,
    [FamiliaID] BIGINT NOT NULL,
    [Campo] VARCHAR(255) NOT NULL,
    [ValorAnterior] VARCHAR(MAX) NULL,
    [ValorAtual] VARCHAR(MAX) NULL,
    [Data] DATETIME NOT NULL,
    [CodParceiro] INT NOT NULL,
    [Acao] CHAR(1) NOT NULL
);

CREATE TABLE [SAS].[TB_Forma_Contato_Log] (
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [CodFormaContato] INT NOT NULL,
    [Campo] VARCHAR(255) NOT NULL,
    [ValorAnterior] VARCHAR(MAX) NULL,
    [ValorAtual] VARCHAR(MAX) NULL,
    [Data] DATETIME NOT NULL,
    [CodParceiro] INT NOT NULL,
    [Acao] CHAR(1) NOT NULL
);

CREATE TABLE [SAS].[TB_Forma_Contato_Principal] (
    [ID] BIGINT NOT NULL,
    [ClienteID] INT NULL,
    [FormaContatoID] INT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Forma_Pagamento_Erp_Valor_Minimo] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [FormaPagamentoID] VARCHAR(25) NOT NULL,
    [ValorMinimo] DECIMAL(18,2) NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Forma_Pagamento_Erp_Valor_Minimo_UF] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [FormaPagamentoID] VARCHAR(25) NOT NULL,
    [ValorMinimo] DECIMAL(18,2) NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Formato_Sala] (
    [CodUFOrigem] TINYINT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [Descricao] VARCHAR(255) NOT NULL,
    [DataCriacao] DATETIME NOT NULL,
    [DataAlteracao] DATETIME NULL,
    [Ativo] BIT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Funcionalidade] (
    [ID] BIGINT NOT NULL,
    [ModuloID] BIGINT NOT NULL,
    [Descricao] VARCHAR(255) NOT NULL,
    [Nome] VARCHAR(255) NOT NULL,
    [Action] VARCHAR(50) NOT NULL,
    [Ativo] BIT NOT NULL
);

CREATE TABLE [SAS].[TB_Funcionario_Credenciado] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [Tipo] CHAR(1) NOT NULL,
    [CPF] VARCHAR(15) NULL,
    [Nome] VARCHAR(255) NOT NULL,
    [Ativo] BIT NOT NULL,
    [Data] DATETIME NOT NULL,
    [CodOrigem] VARCHAR(20) NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL,
    [Excluido] BIT NOT NULL,
    [Lote] VARCHAR(50) NULL
);

CREATE TABLE [SAS].[TB_Funcionario_Credenciado_1708] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [Tipo] CHAR(1) NOT NULL,
    [CPF] VARCHAR(15) NULL,
    [Nome] VARCHAR(255) NOT NULL,
    [Ativo] BIT NOT NULL,
    [Data] DATETIME NOT NULL,
    [CodOrigem] VARCHAR(20) NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[tb_funcionario_credenciado_BAD_2208] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NULL,
    [Tipo] CHAR(1) NOT NULL,
    [CPF] VARCHAR(15) NULL,
    [Nome] VARCHAR(255) NOT NULL,
    [Ativo] BIT NOT NULL,
    [Data] DATETIME NOT NULL,
    [CodOrigem] VARCHAR(20) NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Funcionario_Credenciado_Log] (
    [ID] BIGINT NOT NULL,
    [Codsebrae] INT NOT NULL,
    [FuncionarioCredenciadoID] BIGINT NOT NULL,
    [Campo] VARCHAR(255) NOT NULL,
    [ValorAnterior] VARCHAR(MAX) NULL,
    [ValorAtual] VARCHAR(MAX) NULL,
    [Data] DATETIME NOT NULL,
    [CodPessoaF] INT NOT NULL,
    [Acao] CHAR(1) NOT NULL
);

CREATE TABLE [SAS].[TB_Funcionario_Credenciado_Vinculo] (
    [ID] BIGINT NOT NULL,
    [FuncionarioCredenciadoID] BIGINT NOT NULL,
    [CPF] NUMERIC(18,0) NOT NULL,
    [Nome] VARCHAR(255) NOT NULL,
    [Ativo] BIT NOT NULL,
    [Excluido] BIT NOT NULL
);

CREATE TABLE [SAS].[TB_FuncionarioCredenciado_REL_EtapaEducacao] (
    [ID] BIGINT NOT NULL,
    [EtapaEducacaoID] BIGINT NOT NULL,
    [FuncionarioCredenciadoID] BIGINT NOT NULL
);

CREATE TABLE [SAS].[TB_Genero] (
    [ID] INT NOT NULL,
    [DescGenero] VARCHAR(255) NOT NULL,
    [Situacao] BIT NOT NULL
);

CREATE TABLE [SAS].[TB_Genero_Log] (
    [ID] BIGINT NOT NULL,
    [GeneroID] INT NOT NULL,
    [Campo] VARCHAR(255) NOT NULL,
    [ValorAnterior] VARCHAR(MAX) NULL,
    [ValorAtual] VARCHAR(MAX) NULL,
    [Data] DATETIME NOT NULL,
    [CodParceiro] INT NOT NULL,
    [Acao] CHAR(1) NOT NULL
);

CREATE TABLE [SAS].[TB_Grupo] (
    [ID] BIGINT NOT NULL,
    [Nome] VARCHAR(255) NOT NULL,
    [Descricao] VARCHAR(255) NOT NULL,
    [CodSebrae] INT NOT NULL,
    [DataCriacao] DATETIME NOT NULL,
    [DataAlteracao] DATETIME NULL,
    [Ativo] BIT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Grupo_Cliente] (
    [Descricao] VARCHAR(255) NULL,
    [Situacao] BIT NOT NULL,
    [DataCriacao] DATETIME NOT NULL,
    [DataAlteracao] DATETIME NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL,
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL
);

CREATE TABLE [SAS].[TB_Grupo_Cliente_Cliente] (
    [ID] BIGINT NOT NULL,
    [ClienteGrupoID] BIGINT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL,
    [CodPessoaF] INT NOT NULL,
    [CodPessoaJ] INT NULL,
    [CodSebrae] INT NOT NULL
);

CREATE TABLE [SAS].[TB_HistoricoCargaFOCO] (
    [CodSebrae] INT NULL,
    [DescSebrae] VARCHAR(40) NULL,
    [CodCliente] INT NULL,
    [CPF] NUMERIC(18,0) NULL,
    [NomeCliente] VARCHAR(120) NULL,
    [DataHoraInicioRealizacao] DATETIME NULL,
    [DataHoraFimRealizacao] DATETIME NULL,
    [CodEmpreedimento] INT NULL,
    [CNPJ] NUMERIC(18,0) NULL,
    [NomeEmpreendimento] VARCHAR(120) NULL,
    [NomeRealizacao] VARCHAR(255) NULL,
    [DescRealizacao] NVARCHAR(MAX) NULL,
    [CodResponsavel] INT NULL,
    [CodAplicacao] INT NULL,
    [CodRealizacao] BIGINT NULL,
    [TipoRealizacao] VARCHAR(3) NULL,
    [Instrumento] VARCHAR(50) NULL,
    [Abordagem] CHAR(1) NULL,
    [CodRealizacaoComp] BIGINT NULL,
    [rowguid] UNIQUEIDENTIFIER NULL,
    [Ano] INT NULL,
    [ProdutoID] BIGINT NULL,
    [ProdutoNome] VARCHAR(300) NULL,
    [CodProjeto] UNIQUEIDENTIFIER NULL,
    [NomeProjeto] VARCHAR(255) NULL,
    [CodAcao] UNIQUEIDENTIFIER NULL,
    [NomeAcao] VARCHAR(255) NULL,
    [TipoPessoa] CHAR(1) NULL,
    [CodMomentoVida] TINYINT NULL,
    [MesAnoCompetencia] DATETIME NULL,
    [CargaHoraria] DECIMAL(18,2) NULL,
    [Faturam] SMALLINT NULL,
    [CodEntidadeParceira] INT NULL,
    [CodConst] SMALLINT NULL,
    [CategoriaPessoa] SMALLINT NULL,
    [DataEntrada] DATETIME NULL,
    [DataETL] DATETIME NULL,
    [codcategoria] INT NULL,
    [CodSistemaOrigem] INT NULL,
    [InteracaoID] BIGINT NULL,
    [Protocolo] VARCHAR(255) NULL,
    [UnidadeOrganizacionalID] BIGINT NULL,
    [Atendente] VARCHAR(255) NULL,
    [TipoInteracao] VARCHAR(255) NULL,
    [MacroeventoID] BIGINT NULL,
    [CodMeioAtendimento] INT NULL,
    [DescMeioAtendimento] VARCHAR(255) NULL,
    [CodigoContratoSGF] VARCHAR(30) NULL,
    [EventoID] BIGINT NULL,
    [EventoNome] VARCHAR(255) NULL,
    [ConsultoriaID] BIGINT NULL,
    [ConsultoriaNome] VARCHAR(255) NULL,
    [CodTema] INT NULL,
    [DescTema] VARCHAR(255) NULL,
    [CodTemaSuperior] INT NULL,
    [DescTemaSuperior] VARCHAR(255) NULL,
    [TipoHistorico] VARCHAR(255) NULL,
    [data_carga] DATETIME NOT NULL
);

CREATE TABLE [SAS].[TB_HorasBackOffice] (
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [InteracaoDetalhePortfolioDisponibilizacaoParticipanteID] BIGINT NOT NULL,
    [CodPessoaF] INT NOT NULL,
    [Horas] VARCHAR(6) NOT NULL,
    [Observacao] VARCHAR(MAX) NULL,
    [Titulo] VARCHAR(80) NULL,
    [Anexo] VARBINARY NULL,
    [CodParceiro] INT NOT NULL,
    [Situacao] BIT NULL,
    [RowGuid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_HRC_Parceiro] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [CodPessoaF] INT NOT NULL,
    [CodPessoaJ] INT NOT NULL,
    [Tipo] CHAR(1) NOT NULL,
    [DataHoraInicio] DATETIME NOT NULL,
    [DataHoraFim] DATETIME NOT NULL,
    [CodAplicacao] INT NOT NULL,
    [MesAnoCompetencia] DATETIME NOT NULL,
    [CodProjeto] UNIQUEIDENTIFIER NULL,
    [CodCategoria] INT NULL,
    [TipoRealizacao] VARCHAR(3) NULL,
    [NomeRealizacao] VARCHAR(255) NULL,
    [DescRealizacao] VARCHAR(5000) NULL,
    [Abordagem] CHAR(1) NULL,
    [CargaHoraria] DECIMAL(18,2) NULL,
    [CodUsuarioRealizacao] INT NULL,
    [CodMeioAtendimento] INT NULL,
    [EventoID] BIGINT NULL,
    [InteracaoDetalheID] BIGINT NULL,
    [CodAcao] INT NULL,
    [InteracaoDetalheAgendamentoParticipanteID] BIGINT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL,
    [InteracaoDetalhePortfolioDisponibilizacaoParticipanteID] BIGINT NULL,
    [InteracaoDetalheDiagnosticoParticipantesID] BIGINT NULL,
    [InteracaoDetalheComboDisponibilizacaoID] BIGINT NULL,
    [PortfolioDisponibilizacaoID] BIGINT NULL
);

CREATE TABLE [SAS].[TB_Instrumento_Log] (
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NULL,
    [CodCategoria] INT NOT NULL,
    [Campo] VARCHAR(255) NOT NULL,
    [ValorAnterior] VARCHAR(MAX) NULL,
    [ValorAtual] VARCHAR(MAX) NULL,
    [Data] DATETIME NOT NULL,
    [Acao] CHAR(1) NOT NULL,
    [CodParceiro] INT NOT NULL
);

CREATE TABLE [SAS].[TB_Instrumento_Momento] (
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [InstrumentoID] INT NOT NULL,
    [MomentoID] INT NULL
);

CREATE TABLE [SAS].[TB_Instrumento_Momento_Backup] (
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [InstrumentoID] INT NOT NULL,
    [Descricao] VARCHAR(500) NOT NULL,
    [Contabiliza] BIT NULL
);

CREATE TABLE [SAS].[TB_Instrumento_TipoDisponibilizacao] (
    [ID] BIGINT NOT NULL,
    [Descricao] VARCHAR(100) NOT NULL,
    [Situacao] CHAR(1) NOT NULL
);

CREATE TABLE [SAS].[TB_Instrumento_Versao] (
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [Versao] INT NOT NULL,
    [CodCategoria] INT NOT NULL,
    [Nome] VARCHAR(250) NULL,
    [DescCategoria] VARCHAR(350) NULL,
    [Tipo] CHAR(2) NULL,
    [Modalidade] CHAR(1) NULL,
    [Individual] CHAR(1) NULL,
    [Coletivo] CHAR(1) NULL,
    [AssistidoAutosservico] VARCHAR(100) NULL,
    [DisponibilizadoSAS] BIT NULL,
    [AgrupadorID] BIGINT NULL,
    [ControleFrequencia] BIT NULL,
    [TipoDisponibilizacaoID] BIGINT NULL,
    [VinculoProduto] BIT NULL,
    [PossuiCargaHoraria] BIT NULL,
    [ExigeParticipantes] BIT NULL,
    [Situacao] BIT NULL
);

CREATE TABLE [SAS].[TB_Interacao] (
    [ID] BIGINT NOT NULL,
    [Protocolo] VARCHAR(255) NOT NULL,
    [TipoInteracaoID] BIGINT NOT NULL,
    [Atendente] INT NULL,
    [UsuarioID] INT NULL,
    [CodSebrae] INT NOT NULL,
    [UnidadeOrganizacionalID] BIGINT NULL,
    [Ausente] BIT NULL,
    [DataHoraInicio] DATETIME NOT NULL,
    [DataHoraFim] DATETIME NULL,
    [codAplicacao] INT NULL,
    [mesAnoCompetencia] DATETIME NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL,
    [DescRealizacao] TEXT NULL,
    [CodProjeto] UNIQUEIDENTIFIER NULL,
    [CodAcao] INT NULL,
    [codcategoria] INT NULL,
    [IndIntegracaoERP] BIT NOT NULL,
    [MacroeventoID] BIGINT NULL,
    [PortfolioDisponibilizacaoID] BIGINT NULL,
    [DataHoraInclusao] DATETIME NULL,
    [CodigoContratoSGF] VARCHAR(30) NULL,
    [OrientacaoCliente] VARCHAR(5000) NULL,
    [ProtocoloPai] VARCHAR(255) NULL,
    [CodUFOrigem] TINYINT NULL,
    [AtendenteUsuarioID] INT NULL,
    [ProtocoloExterno] VARCHAR(255) NULL
);

CREATE TABLE [SAS].[TB_Interacao_Anexo] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [InteracaoID] BIGINT NOT NULL,
    [TipoAnexo] CHAR(1) NOT NULL,
    [Link] VARCHAR(255) NULL,
    [IDAnexoProduto] BIGINT NULL,
    [IdAnexoBIA] BIGINT NULL,
    [IdAnexoEvento] BIGINT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Interacao_Anexo_UF] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [InteracaoID] BIGINT NOT NULL,
    [TipoAnexo] CHAR(1) NOT NULL,
    [Link] VARCHAR(255) NULL,
    [IDAnexoProduto] BIGINT NULL,
    [IdAnexoBIA] BIGINT NULL,
    [IdAnexoEvento] BIGINT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Interacao_Arquivo] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [InteracaoID] BIGINT NOT NULL,
    [Arquivo] VARBINARY NOT NULL,
    [NomeArquivo] VARCHAR(255) NOT NULL,
    [Tipo] CHAR(1) NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Interacao_BIA] (
    [ID] BIGINT NOT NULL,
    [InteracaoID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [CodConteudo] INT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Interacao_Detalhe] (
    [ID] BIGINT NOT NULL,
    [InteracaoID] BIGINT NOT NULL,
    [ProtocoloFilho] VARCHAR(255) NOT NULL,
    [Tipo] CHAR(1) NOT NULL,
    [CodAtendimentoIntegrado] INT NULL,
    [CodSebraeAtendimentoIntegrado] INT NULL,
    [CodConsultor] INT NULL,
    [Data] SMALLDATETIME NULL,
    [Hora] DATETIME NULL,
    [SeqAgendamento] INT NULL,
    [CodSebraeAgendamento] INT NULL,
    [CodEvento] BIGINT NULL,
    [CodPessoaF] INT NULL,
    [CodPessoaJ] INT NULL,
    [codreseve] INT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL,
    [InteracaoParticipanteID] BIGINT NULL,
    [EntidadeParceira] BIT NULL,
    [EventoEsperaID] BIGINT NULL,
    [EventoReservaID] BIGINT NULL,
    [EventoParticipanteID] BIGINT NULL,
    [EventoID] BIGINT NULL,
    [CodSebrae] INT NOT NULL
);

CREATE TABLE [SAS].[TB_Interacao_Detalhe_Agendamento] (
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [InteracaoDetalheID] BIGINT NOT NULL,
    [AssuntoID] BIGINT NOT NULL,
    [HoraInicio] DATETIME NOT NULL,
    [HoraFim] DATETIME NOT NULL,
    [NaoCompareceu] BIT NULL,
    [UnidadeOrganizacionalID] BIGINT NULL,
    [AtendenteAgendamentoAgendaHorarioID] BIGINT NOT NULL,
    [Observacao] VARCHAR(MAX) NULL,
    [MotivoCancelamentoAtendimentoID] BIGINT NULL,
    [DescricaoMotivoCancelamento] VARCHAR(MAX) NULL,
    [Situacao] TINYINT NULL,
    [TipoAgenda] CHAR(1) NOT NULL,
    [Valor] NUMERIC(18,2) NOT NULL,
    [ValorDesconto] NUMERIC(18,2) NULL,
    [Tipo] CHAR(1) NOT NULL,
    [InteracaoDetalheComboDisponibilizacaoID] BIGINT NULL,
    [InteracaoDetalhePortfolioDisponibilizacaoID] BIGINT NULL,
    [CodCid] INT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Interacao_Detalhe_Agendamento_Participante] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [InteracaoDetalheAgendamentoID] BIGINT NOT NULL,
    [CodPessoaF] INT NOT NULL,
    [CodPessoaJ] INT NULL,
    [EntidadeParceira] BIT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL,
    [Contrato] VARBINARY NULL
);

CREATE TABLE [SAS].[TB_Interacao_Detalhe_Agendamento_Participante_UF] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [InteracaoDetalheAgendamentoID] BIGINT NOT NULL,
    [CodPessoaF] INT NOT NULL,
    [CodPessoaJ] INT NULL,
    [EntidadeParceira] BIT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL,
    [Contrato] VARBINARY NULL
);

CREATE TABLE [SAS].[TB_Interacao_Detalhe_Agendamento_REL_Interacao] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [InteracaoID] BIGINT NOT NULL,
    [InteracaoDetalheAgendamentoID] BIGINT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Interacao_Detalhe_Agendamento_REL_Interacao_UF] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [InteracaoID] BIGINT NOT NULL,
    [InteracaoDetalheAgendamentoID] BIGINT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Interacao_Detalhe_Agendamento_UF] (
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [InteracaoDetalheID] BIGINT NOT NULL,
    [AssuntoID] BIGINT NOT NULL,
    [HoraInicio] DATETIME NOT NULL,
    [HoraFim] DATETIME NOT NULL,
    [NaoCompareceu] BIT NULL,
    [UnidadeOrganizacionalID] BIGINT NOT NULL,
    [AtendenteAgendamentoAgendaHorarioID] BIGINT NOT NULL,
    [Observacao] VARCHAR(MAX) NULL,
    [MotivoCancelamentoAtendimentoID] BIGINT NULL,
    [DescricaoMotivoCancelamento] VARCHAR(MAX) NULL,
    [Situacao] TINYINT NULL,
    [TipoAgenda] CHAR(1) NOT NULL,
    [Valor] NUMERIC(18,2) NOT NULL,
    [ValorDesconto] NUMERIC(18,2) NULL,
    [Tipo] CHAR(1) NOT NULL,
    [InteracaoDetalheComboDisponibilizacaoID] BIGINT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL,
    [InteracaoDetalhePortfolioDisponibilizacaoID] BIGINT NULL,
    [CodCid] INT NULL
);

CREATE TABLE [SAS].[TB_Interacao_Detalhe_Atividade] (
    [CodSebrae] INT NOT NULL,
    [ID] BIGINT NOT NULL,
    [InteracaoDetalheID] BIGINT NOT NULL,
    [CodMeioAtendimento] INT NOT NULL
);

CREATE TABLE [SAS].[TB_Interacao_Detalhe_Atividade_Tema] (
    [CodSebrae] INT NOT NULL,
    [ID] BIGINT NOT NULL,
    [InteracaoDetalheAtividadeID] BIGINT NOT NULL,
    [CodAreaTematica] INT NOT NULL
);

CREATE TABLE [SAS].[TB_Interacao_Detalhe_Combo_Disponibilizacao] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [ComboDisponibilizacaoID] BIGINT NOT NULL,
    [Valor] NUMERIC(18,2) NOT NULL,
    [ValorDesconto] NUMERIC(18,2) NULL,
    [Observacao] VARCHAR(MAX) NULL,
    [InteracaoDetalheID] BIGINT NOT NULL,
    [CodPessoaF] INT NOT NULL,
    [CodPessoaJ] INT NULL,
    [Tipo] CHAR(1) NOT NULL,
    [Situacao] CHAR(1) NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL,
    [Contrato] VARBINARY NULL
);

CREATE TABLE [SAS].[TB_Interacao_Detalhe_Combo_Disponibilizacao_UF] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [ComboDisponibilizacaoID] BIGINT NOT NULL,
    [Valor] NUMERIC(18,2) NOT NULL,
    [ValorDesconto] NUMERIC(18,2) NULL,
    [Observacao] VARCHAR(MAX) NULL,
    [InteracaoDetalheID] BIGINT NOT NULL,
    [CodPessoaF] INT NOT NULL,
    [CodPessoaJ] INT NULL,
    [Tipo] CHAR(1) NOT NULL,
    [Situacao] CHAR(1) NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL,
    [Contrato] VARBINARY NULL
);

CREATE TABLE [SAS].[TB_Interacao_Detalhe_Diagnostico] (
    [CodUFOrigem] TINYINT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [InteracaoDetalheID] BIGINT NOT NULL,
    [DiagnosticoID] BIGINT NOT NULL,
    [EnviarEmail] BIT NOT NULL,
    [EmailEnviado] BIT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL,
    [OrientacaoCliente] VARCHAR(MAX) NULL
);

CREATE TABLE [SAS].[TB_Interacao_Detalhe_Diagnostico_Participantes] (
    [CodUFOrigem] TINYINT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [InteracaoDetalheDiagnosticoID] BIGINT NOT NULL,
    [CodPessoaF] INT NOT NULL,
    [CodPessoaJ] INT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Interacao_Detalhe_Portfolio_Disponibilizacao] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [PortfolioDisponibilizacaoID] BIGINT NOT NULL,
    [InteracaoAtendimentoID] BIGINT NULL,
    [InteracaoDetalheID] BIGINT NOT NULL,
    [Quantidade] INT NULL,
    [Horas] VARCHAR(6) NULL,
    [Valor] NUMERIC(18,2) NOT NULL,
    [ValorDesconto] NUMERIC(18,2) NULL,
    [Observacao] VARCHAR(MAX) NULL,
    [Tipo] CHAR(1) NOT NULL,
    [InteracaoDetalheComboDisponibilizacaoID] BIGINT NULL,
    [Ativo] BIT NOT NULL,
    [CodCid] INT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Interacao_Detalhe_Portfolio_Disponibilizacao_Atendente_Agendamento] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [InteracaoDetalhePortfolioDisponibilizacaoID] BIGINT NOT NULL,
    [AtendenteAgendamentoID] BIGINT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Interacao_Detalhe_Portfolio_Disponibilizacao_Atendente_Agendamento_UF] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [InteracaoDetalhePortfolioDisponibilizacaoID] BIGINT NOT NULL,
    [AtendenteAgendamentoID] BIGINT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Interacao_Detalhe_Portfolio_Disponibilizacao_Interacao_Agenda_Atividade] (
    [ID] BIGINT NOT NULL,
    [InteracaoDetalhePortfolioDisponibilizacaoRELInteracao] BIGINT NOT NULL,
    [InteracaoDetalhePortfolioDisponibilizacaoParticipanteAtividadeID] BIGINT NULL,
    [InteracaoDetalheAgendamentoRELAtividadeID] BIGINT NULL
);

CREATE TABLE [SAS].[TB_Interacao_Detalhe_Portfolio_Disponibilizacao_Participante] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [InteracaoDetalhePortfolioDisponibilizacaoID] BIGINT NOT NULL,
    [CodPessoaF] INT NOT NULL,
    [CodPessoaJ] INT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL,
    [Contrato] VARBINARY NULL,
    [Situacao] CHAR(1) NOT NULL,
    [Observacao] VARCHAR(500) NULL
);

CREATE TABLE [SAS].[TB_Interacao_Detalhe_Portfolio_Disponibilizacao_Participante_Atividade] (
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [InteracaoDetalhePortfolioDisponibilizacaoParticipanteId] BIGINT NOT NULL,
    [Tipo] TINYINT NOT NULL,
    [Descricao] VARCHAR(500) NOT NULL,
    [InteracaoDetalhePortfolioDisponibilizacaoParticipanteAtividadeId] BIGINT NULL
);

CREATE TABLE [SAS].[TB_Interacao_Detalhe_Portfolio_Disponibilizacao_Participante_Saldo] (
    [ID] BIGINT NOT NULL,
    [Codsebrae] INT NOT NULL,
    [InteracaoDetalhePortfolioDisponibilizacaoParticipanteId] BIGINT NOT NULL,
    [Saldo] FLOAT NOT NULL,
    [DataInclusao] DATETIME NOT NULL
);

CREATE TABLE [SAS].[TB_Interacao_Detalhe_Portfolio_Disponibilizacao_Participante_UF] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [InteracaoDetalhePortfolioDisponibilizacaoID] BIGINT NOT NULL,
    [CodPessoaF] INT NOT NULL,
    [CodPessoaJ] INT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL,
    [Contrato] VARBINARY NULL,
    [Situacao] CHAR(1) NOT NULL,
    [Observacao] VARCHAR(500) NULL
);

CREATE TABLE [SAS].[TB_Interacao_Detalhe_Portfolio_Disponibilizacao_REL_Interacao] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [InteracaoID] BIGINT NOT NULL,
    [InteracaoDetalhePortfolioDisponibilizacaoID] BIGINT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Interacao_Detalhe_Portfolio_Disponibilizacao_REL_Interacao_UF] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [InteracaoID] BIGINT NOT NULL,
    [InteracaoDetalhePortfolioDisponibilizacaoID] BIGINT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Interacao_Detalhe_Portfolio_Disponibilizacao_UF] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [PortfolioDisponibilizacaoID] BIGINT NOT NULL,
    [InteracaoAtendimentoID] BIGINT NULL,
    [InteracaoDetalheID] BIGINT NOT NULL,
    [Quantidade] INT NULL,
    [Horas] VARCHAR(6) NULL,
    [Valor] NUMERIC(18,2) NOT NULL,
    [ValorDesconto] NUMERIC(18,2) NULL,
    [Observacao] VARCHAR(MAX) NULL,
    [Tipo] CHAR(1) NOT NULL,
    [InteracaoDetalheComboDisponibilizacaoID] BIGINT NULL,
    [Ativo] BIT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL,
    [CodCid] INT NULL
);

CREATE TABLE [SAS].[TB_Interacao_Ferramenta_Momento] (
    [ID] INT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [InteracaoID] BIGINT NOT NULL,
    [MomentoID] INT NULL,
    [Descricao] VARCHAR(255) NULL,
    [Contabiliza] BIT NULL
);

CREATE TABLE [SAS].[TB_Interacao_Ferramenta_Momento_Backup] (
    [ID] INT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [InteracaoID] BIGINT NOT NULL,
    [PortfolioMomentoID] BIGINT NULL
);

CREATE TABLE [SAS].[TB_Interacao_Momento_Contabiliza] (
    [ID] BIGINT NOT NULL,
    [MomentoID] INT NULL,
    [PortfolioDisponibilizacaoID] BIGINT NOT NULL,
    [DataHoraInicio] DATETIME NOT NULL,
    [DataHoraFim] DATETIME NOT NULL,
    [CodParceiro] INT NOT NULL,
    [Descricao] VARCHAR(255) NULL,
    [Contabiliza] BIT NULL
);

CREATE TABLE [SAS].[TB_Interacao_Momento_Contabiliza_Backup] (
    [ID] BIGINT NOT NULL,
    [MomentoID] BIGINT NOT NULL,
    [PortfolioDisponibilizacaoID] BIGINT NOT NULL,
    [DataHoraInicio] DATETIME NOT NULL,
    [DataHoraFim] DATETIME NOT NULL,
    [CodParceiro] INT NOT NULL
);

CREATE TABLE [SAS].[TB_Interacao_Participantes] (
    [ID] BIGINT NOT NULL,
    [InteracaoID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [CodPessoaF] INT NOT NULL,
    [CodPessoaJ] INT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL,
    [Faturam] SMALLINT NULL,
    [CodConst] SMALLINT NULL
);

CREATE TABLE [SAS].[TB_Interacao_Pendencia] (
    [ID] BIGINT NOT NULL,
    [InteracaoID] BIGINT NULL,
    [CodUsuarioOrigem] INT NOT NULL,
    [DtInclusao] DATETIME NULL,
    [CodUsuarioResponsavel] INT NOT NULL,
    [DtHoraAcaoInicio] DATETIME NULL,
    [DtHoraAcaoFim] DATETIME NULL,
    [Descricao] VARCHAR(500) NULL,
    [TipoPendencia] CHAR(1) NOT NULL,
    [Status] CHAR(1) NOT NULL,
    [Exigencia] CHAR(1) NOT NULL,
    [DtConclusao] DATETIME NULL,
    [CodCampanha] VARCHAR(50) NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL,
    [CodSebrae] INT NOT NULL
);

CREATE TABLE [SAS].[TB_Interacao_Pendencia_UF] (
    [ID] BIGINT NOT NULL,
    [InteracaoID] BIGINT NULL,
    [CodUsuarioOrigem] INT NOT NULL,
    [DtInclusao] DATETIME NULL,
    [CodUsuarioResponsavel] INT NOT NULL,
    [DtHoraAcaoInicio] DATETIME NULL,
    [DtHoraAcaoFim] DATETIME NULL,
    [Descricao] VARCHAR(500) NULL,
    [TipoPendencia] CHAR(1) NOT NULL,
    [Status] CHAR(1) NOT NULL,
    [Exigencia] CHAR(1) NOT NULL,
    [DtConclusao] DATETIME NULL,
    [CodCampanha] VARCHAR(50) NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL,
    [CodSebrae] INT NOT NULL
);

CREATE TABLE [SAS].[TB_Interacao_Solucao] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [InteracaoID] BIGINT NOT NULL,
    [CodPessoaF] INT NOT NULL,
    [CodPessoaJ] INT NULL,
    [PortfolioID] BIGINT NOT NULL,
    [DataSolucao] DATETIME NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Interacao_Solucao_UF] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [InteracaoID] BIGINT NOT NULL,
    [CodPessoaF] INT NOT NULL,
    [CodPessoaJ] INT NULL,
    [PortfolioID] BIGINT NOT NULL,
    [DataSolucao] DATETIME NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_InteracaoDetalheAgendamento_REL_Atividade] (
    [ID] BIGINT NOT NULL,
    [InteracaoDetalhePortfolioDisponibilizacaoParticipanteAtividadeID] BIGINT NOT NULL,
    [InteracaoDetalheAgendamento] BIGINT NOT NULL
);

CREATE TABLE [SAS].[TB_InteracaoDetalhePortfolioDisponibilizacaoParticipante_REL_HRC] (
    [ID] BIGINT NOT NULL,
    [InteracaoDetalhePortfolioDisponibilizacaoParticipanteID] BIGINT NOT NULL,
    [CodSebrae] INT NULL,
    [CodCliente] INT NULL,
    [DataHoraInicioRealizacao] DATETIME NULL,
    [HRCParceiroID] BIGINT NULL
);

CREATE TABLE [SAS].[TB_InteracaoDetalhePortfolioDisponibilizacaoParticipante_REL_HRC_AnoAnteriores] (
    [ID] BIGINT NOT NULL,
    [InteracaoDetalhePortfolioDisponibilizacaoParticipanteID] BIGINT NOT NULL,
    [CodSebrae] INT NULL,
    [CodCliente] INT NULL,
    [DataHoraInicioRealizacao] DATETIME NULL,
    [HRCParceiroID] BIGINT NULL
);

CREATE TABLE [SAS].[TB_Interesse_Necessidade] (
    [ID] BIGINT NOT NULL,
    [Descricao] VARCHAR(255) NOT NULL,
    [DataCriacao] DATETIME NOT NULL,
    [DataAlteracao] DATETIME NULL,
    [Situacao] BIT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Justificativa_Coleta] (
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [NomeCampo] VARCHAR(255) NOT NULL,
    [Justificativa] VARCHAR(2500) NULL,
    [Painel] TINYINT NOT NULL,
    [Ativo] BIT NOT NULL
);

CREATE TABLE [SAS].[TB_Justificativa_Coleta_Log] (
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [JustificativaColetaID] BIGINT NOT NULL,
    [ValorAnterior] VARCHAR(MAX) NULL,
    [ValorAtual] VARCHAR(MAX) NULL,
    [Data] DATETIME NOT NULL,
    [CodParceiro] INT NOT NULL,
    [Acao] CHAR(1) NOT NULL
);

CREATE TABLE [SAS].[TB_Log_Carga] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [CodParceiro] INT NOT NULL,
    [Data] DATETIME NOT NULL,
    [Filtro] VARCHAR(MAX) NOT NULL,
    [DataExpira] DATE NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Log_Carga_UF] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [CodParceiro] INT NOT NULL,
    [Data] DATETIME NOT NULL,
    [Filtro] VARCHAR(MAX) NOT NULL,
    [DataExpira] DATE NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Log_ERP] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [CodParceiro] INT NOT NULL,
    [Data] DATETIME NOT NULL,
    [Metodo] VARCHAR(70) NOT NULL,
    [Erro] VARCHAR(MAX) NOT NULL,
    [Status] CHAR(1) NOT NULL,
    [MotivoEncerramento] VARCHAR(500) NULL,
    [UsuarioAcao] INT NULL,
    [EventoMovimentoID] BIGINT NULL,
    [EventoID] BIGINT NULL,
    [InteracaoID] BIGINT NULL,
    [FontePagadora] INT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Log_ERP_UF] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [CodParceiro] INT NOT NULL,
    [Data] DATETIME NOT NULL,
    [Metodo] VARCHAR(70) NOT NULL,
    [Erro] VARCHAR(MAX) NOT NULL,
    [Status] CHAR(1) NOT NULL,
    [MotivoEncerramento] VARCHAR(500) NULL,
    [UsuarioAcao] INT NULL,
    [EventoMovimentoID] BIGINT NULL,
    [EventoID] BIGINT NULL,
    [InteracaoID] BIGINT NULL,
    [FontePagadora] INT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Log_Parametro] (
    [ID] BIGINT NOT NULL,
    [DataHora] DATETIME NOT NULL,
    [CodParceiro] INT NOT NULL,
    [ValorAnterior] VARCHAR(MAX) NULL,
    [ValorAtual] VARCHAR(MAX) NULL,
    [ParametroSebraeID] INT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Log_Parametro_UF] (
    [ID] BIGINT NOT NULL,
    [ParametroID] BIGINT NOT NULL,
    [DataHora] DATETIME NOT NULL,
    [CodParceiro] INT NOT NULL,
    [ValorAnterior] VARCHAR(MAX) NULL,
    [ValorAtual] VARCHAR(MAX) NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL,
    [ParametroSebraeID] INT NOT NULL
);

CREATE TABLE [SAS].[TB_Log_Recepcao] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [RecepcaoID] BIGINT NOT NULL,
    [AtendenteRecepcaoID_Antes] BIGINT NULL,
    [AtendenteRecepcaoID_Depois] BIGINT NULL,
    [AssuntoID_Antes] BIGINT NULL,
    [AssuntoID_Depois] BIGINT NULL,
    [Tipo_Antes] CHAR(1) NULL,
    [Tipo_Depois] CHAR(1) NOT NULL,
    [DataHora] DATETIME NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Log_Recepcao_UF] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [RecepcaoID] BIGINT NOT NULL,
    [AtendenteRecepcaoID_Antes] BIGINT NULL,
    [AtendenteRecepcaoID_Depois] BIGINT NULL,
    [AssuntoID_Antes] BIGINT NULL,
    [AssuntoID_Depois] BIGINT NULL,
    [Tipo_Antes] CHAR(1) NULL,
    [Tipo_Depois] CHAR(1) NOT NULL,
    [DataHora] DATETIME NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Log_Sincronizacao] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [CodParceiro] INT NOT NULL,
    [Data] DATETIME NOT NULL,
    [Lote] VARCHAR(100) NOT NULL,
    [VersaoOffline] VARCHAR(10) NOT NULL,
    [TipoPacote] CHAR(1) NOT NULL,
    [Status] CHAR(1) NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Log_Sincronizacao_Detalhe] (
    [ID] BIGINT NOT NULL,
    [LogSincronizacaoID] BIGINT NOT NULL,
    [Registro] VARCHAR(MAX) NOT NULL,
    [Processo] VARCHAR(70) NOT NULL,
    [Status] CHAR(1) NOT NULL,
    [Erro] VARCHAR(MAX) NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Log_Sincronizacao_Detalhe_UF] (
    [ID] BIGINT NOT NULL,
    [LogSincronizacaoID] BIGINT NOT NULL,
    [Registro] VARCHAR(MAX) NOT NULL,
    [Processo] VARCHAR(70) NOT NULL,
    [Status] CHAR(1) NOT NULL,
    [Erro] VARCHAR(MAX) NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Log_Sincronizacao_UF] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [CodParceiro] INT NOT NULL,
    [Data] DATETIME NOT NULL,
    [Lote] VARCHAR(100) NOT NULL,
    [VersaoOffline] VARCHAR(10) NOT NULL,
    [TipoPacote] CHAR(1) NOT NULL,
    [Status] CHAR(1) NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_LogAcesso] (
    [ID] BIGINT NOT NULL,
    [IP] VARCHAR(50) NULL,
    [UsuarioID] INT NOT NULL,
    [Descricao] VARCHAR(100) NULL,
    [Data] DATETIME NULL,
    [UserAgent] VARCHAR(MAX) NULL,
    [Browser] VARCHAR(MAX) NULL,
    [CodSebrae] INT NOT NULL
);

CREATE TABLE [SAS].[TB_LogErro] (
    [ID] BIGINT NOT NULL,
    [TipoExcecao] VARCHAR(500) NOT NULL,
    [Mensagem] VARCHAR(1000) NOT NULL,
    [PilhaChamada] VARCHAR(MAX) NOT NULL,
    [Metodo] VARCHAR(50) NOT NULL,
    [Data] SMALLDATETIME NOT NULL
);

CREATE TABLE [SAS].[TB_LogSenha] (
    [ID] BIGINT NOT NULL,
    [UsuarioID] INT NOT NULL,
    [Senha] VARCHAR(MAX) NULL,
    [IP] VARCHAR(50) NULL,
    [DataHoraExpiracao] DATETIME NOT NULL,
    [DataCriacao] DATETIME NOT NULL,
    [BloqueioPorTentativa] BIT NOT NULL,
    [QuantidadeTentativas] TINYINT NULL,
    [CodSebrae] INT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_LogSenha_UF] (
    [ID] BIGINT NOT NULL,
    [UsuarioID] INT NOT NULL,
    [Senha] VARCHAR(MAX) NULL,
    [IP] VARCHAR(50) NULL,
    [DataHoraExpiracao] DATETIME NOT NULL,
    [DataCriacao] DATETIME NOT NULL,
    [BloqueioPorTentativa] BIT NOT NULL,
    [QuantidadeTentativas] TINYINT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL,
    [CodSebrae] INT NOT NULL
);

CREATE TABLE [SAS].[TB_Macroevento] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [Nome] VARCHAR(255) NOT NULL,
    [Descricao] VARCHAR(1000) NOT NULL,
    [ModalidadeID] BIGINT NULL,
    [DataInicial] DATETIME NOT NULL,
    [DataFinal] DATETIME NOT NULL,
    [CodParceiroCadastro] INT NOT NULL,
    [UnidadeOrganizacionalID] BIGINT NOT NULL,
    [DataCadastro] DATETIME NOT NULL,
    [Status] BIT NOT NULL,
    [NomeParceiroCadastro] VARCHAR(255) NOT NULL,
    [NomeUnidadeOrganizacional] VARCHAR(255) NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL,
    [UsuarioID] INT NULL
);

CREATE TABLE [SAS].[TB_Macroevento_Cesta] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [MacroeventoID] BIGINT NOT NULL,
    [Ativo] BIT NOT NULL,
    [DataInicial] DATETIME NOT NULL,
    [DataFinal] DATETIME NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Macroevento_Log] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [MacroeventoID] BIGINT NOT NULL,
    [Campo] VARCHAR(255) NOT NULL,
    [ValorAnterior] VARCHAR(MAX) NULL,
    [ValorAtual] VARCHAR(MAX) NULL,
    [Data] DATETIME NOT NULL,
    [CodParceiro] INT NOT NULL,
    [Acao] CHAR(1) NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Macroevento_Log_UF] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [MacroeventoID] BIGINT NOT NULL,
    [Campo] VARCHAR(255) NOT NULL,
    [ValorAnterior] VARCHAR(MAX) NULL,
    [ValorAtual] VARCHAR(MAX) NULL,
    [Data] DATETIME NOT NULL,
    [CodParceiro] INT NOT NULL,
    [Acao] CHAR(1) NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Macroevento_Publico] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [MacroeventoID] BIGINT NOT NULL,
    [CodPublicoAlvo] INT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Macroevento_Sebrae] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [MacroeventoID] BIGINT NOT NULL,
    [CodSebraeAssociado] INT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Macromomento] (
    [ID] BIGINT NOT NULL,
    [Nome] VARCHAR(50) NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Manutencao_Tipo_Ativo] (
    [ID] BIGINT NOT NULL,
    [TipoAtivoID] BIGINT NOT NULL,
    [DiasAntecedencia] SMALLINT NULL,
    [TempoMedioOperacao] SMALLINT NULL,
    [QuantidadeTentativas] SMALLINT NULL,
    [CodSebrae] INT NOT NULL
);

CREATE TABLE [SAS].[TB_MarketingCloud_Request_Log] (
    [ID] BIGINT NOT NULL,
    [Data] DATETIME NOT NULL,
    [CodSebrae] INT NOT NULL,
    [RequestContent] VARCHAR(MAX) NOT NULL,
    [RequestID] UNIQUEIDENTIFIER NULL,
    [URL] VARCHAR(2083) NOT NULL
);

CREATE TABLE [SAS].[TB_MarketingCloud_Request_Log_Erro] (
    [ID] BIGINT NOT NULL,
    [MarketingCloudRequestLogID] BIGINT NOT NULL,
    [DetalhesResposta] VARCHAR(MAX) NOT NULL
);

CREATE TABLE [SAS].[TB_MeioAtendimento_Log] (
    [ID] BIGINT NOT NULL,
    [CodMeioAtendimento] INT NOT NULL,
    [Campo] VARCHAR(255) NOT NULL,
    [ValorAnterior] VARCHAR(2500) NULL,
    [ValorAtual] VARCHAR(2500) NULL,
    [Data] DATETIME NOT NULL,
    [CodParceiro] INT NOT NULL,
    [Acao] CHAR(1) NOT NULL
);

CREATE TABLE [SAS].[TB_Micromomento] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [Nome] VARCHAR(255) NOT NULL,
    [Status] BIT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Modulo] (
    [ID] BIGINT NOT NULL,
    [ModuloSuperiorID] BIGINT NULL,
    [Nome] VARCHAR(100) NOT NULL,
    [Descricao] VARCHAR(500) NOT NULL,
    [Controller] VARCHAR(200) NULL,
    [OrdemMenu] SMALLINT NOT NULL,
    [Icone] VARCHAR(100) NULL,
    [Ativo] BIT NOT NULL,
    [ExibeMenu] BIT NOT NULL
);

CREATE TABLE [SAS].[TB_Momento] (
    [ID] INT NOT NULL,
    [Descricao] VARCHAR(255) NOT NULL,
    [Contabiliza] BIT NOT NULL,
    [Situacao] BIT NOT NULL
);

CREATE TABLE [SAS].[TB_Momento_Backup] (
    [ID] INT NOT NULL,
    [Descricao] VARCHAR(255) NOT NULL,
    [Contabiliza] BIT NOT NULL,
    [Situacao] BIT NOT NULL
);

CREATE TABLE [SAS].[TB_Momento_Log] (
    [ID] BIGINT NOT NULL,
    [MomentoID] INT NOT NULL,
    [Campo] VARCHAR(255) NOT NULL,
    [ValorAnterior] VARCHAR(MAX) NULL,
    [ValorAtual] VARCHAR(MAX) NULL,
    [Data] DATETIME NOT NULL,
    [CodParceiro] INT NOT NULL,
    [Acao] CHAR(1) NOT NULL
);

CREATE TABLE [SAS].[TB_Momento_Log_Backup] (
    [ID] BIGINT NOT NULL,
    [MomentoID] INT NOT NULL,
    [Campo] VARCHAR(255) NOT NULL,
    [ValorAnterior] VARCHAR(MAX) NULL,
    [ValorAtual] VARCHAR(MAX) NULL,
    [Data] DATETIME NOT NULL,
    [CodParceiro] INT NOT NULL,
    [Acao] CHAR(1) NOT NULL
);

CREATE TABLE [SAS].[TB_Motivo_Cancelamento_Atendimento] (
    [ID] BIGINT NOT NULL,
    [Nome] VARCHAR(255) NOT NULL,
    [Ativo] BIT NOT NULL,
    [DataSituacao] DATETIME NOT NULL,
    [Tipo] CHAR(1) NOT NULL
);

CREATE TABLE [SAS].[TB_Motivo_Cancelamento_Ativo] (
    [ID] BIGINT NOT NULL,
    [Nome] VARCHAR(255) NOT NULL,
    [Ativo] BIT NOT NULL,
    [DataSituacao] DATETIME NOT NULL
);

CREATE TABLE [SAS].[TB_Motivo_Cancelamento_Evento] (
    [ID] BIGINT NOT NULL,
    [Descricao] VARCHAR(255) NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Motivo_Cancelamento_Inscricao] (
    [ID] BIGINT NOT NULL,
    [Descricao] VARCHAR(70) NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_NaturezaJuridica] (
    [ID] INT NOT NULL,
    [DescNat] VARCHAR(255) NOT NULL,
    [CodConst] SMALLINT NOT NULL,
    [Situacao] BIT NOT NULL
);

CREATE TABLE [SAS].[TB_Nivel] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [Nome] VARCHAR(255) NOT NULL,
    [Situacao] BIT NOT NULL,
    [Valor] SMALLINT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Nivel_UF] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [Nome] VARCHAR(255) NOT NULL,
    [Situacao] BIT NOT NULL,
    [Valor] SMALLINT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Notificacao] (
    [ID] UNIQUEIDENTIFIER NOT NULL,
    [CriadoPorUsuarioID] INT NOT NULL,
    [DataCriacao] DATETIME NOT NULL,
    [UnidadeOrganizacionalID] BIGINT NULL,
    [TipoConteudo] INT NOT NULL,
    [Conteudo] VARCHAR(MAX) NOT NULL,
    [EnviadoParaUsuarioID] INT NOT NULL,
    [CorrelacaoID] UNIQUEIDENTIFIER NULL,
    [ObjetoJson] VARCHAR(MAX) NULL,
    [Situacao] INT NOT NULL,
    [DataSituacao] DATETIME NOT NULL,
    [CodSebrae] INT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Notificacao_Enviada] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [Data] DATETIME NOT NULL,
    [NotificacaoPendenteID] BIGINT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Notificacao_Enviada_UF] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [Data] DATETIME NOT NULL,
    [NotificacaoPendenteID] BIGINT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Notificacao_Pendente] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [Data] DATETIME NOT NULL,
    [PortfolioID] BIGINT NULL,
    [Titulo] VARCHAR(255) NOT NULL,
    [Conteudo] VARCHAR(MAX) NOT NULL,
    [Funcionalidade] VARCHAR(50) NOT NULL,
    [TodasFuncionalidades] BIT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Notificacao_UF] (
    [ID] UNIQUEIDENTIFIER NOT NULL,
    [CriadoPorUsuarioID] INT NOT NULL,
    [DataCriacao] DATETIME NOT NULL,
    [UnidadeOrganizacionalID] BIGINT NULL,
    [TipoConteudo] INT NOT NULL,
    [Conteudo] VARCHAR(MAX) NOT NULL,
    [EnviadoParaUsuarioID] INT NOT NULL,
    [CorrelacaoID] UNIQUEIDENTIFIER NULL,
    [ObjetoJson] VARCHAR(MAX) NULL,
    [Situacao] INT NOT NULL,
    [DataSituacao] DATETIME NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL,
    [CodSebrae] INT NOT NULL
);

CREATE TABLE [SAS].[TB_Pacote] (
    [ID] BIGINT NOT NULL,
    [Descricao] VARCHAR(50) NOT NULL,
    [Ativo] BIT NOT NULL
);

CREATE TABLE [SAS].[TB_Parametro] (
    [ID] INT NOT NULL,
    [Nome] VARCHAR(30) NULL,
    [Descricao] VARCHAR(250) NULL,
    [Tipo] CHAR(1) NOT NULL,
    [Requerido] BIT NOT NULL,
    [Ordenacao] INT NOT NULL,
    [GrupoID] INT NOT NULL,
    [SubGrupoID] INT NOT NULL,
    [ValorInicial] VARCHAR(MAX) NULL
);

CREATE TABLE [SAS].[TB_Parametro_Classificacao] (
    [ID] INT NOT NULL,
    [Descricao] VARCHAR(500) NOT NULL,
    [Tipo] CHAR(1) NULL,
    [Ordenacao] TINYINT NOT NULL
);

CREATE TABLE [SAS].[TB_Parametro_Sebrae] (
    [ID] INT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [ParametroID] INT NOT NULL,
    [Valor] VARCHAR(MAX) NULL
);

CREATE TABLE [SAS].[TB_Parametro_UF] (
    [CodUFOrigem] TINYINT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [Nome] VARCHAR(30) NULL,
    [Descricao] VARCHAR(250) NULL,
    [Valor] VARCHAR(MAX) NULL,
    [Tipo] CHAR(1) NOT NULL,
    [Requerido] BIT NOT NULL,
    [Ordenacao] INT NOT NULL,
    [GrupoID] INT NOT NULL,
    [SubGrupoID] INT NOT NULL,
    [ValorInicial] VARCHAR(MAX) NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Parceiro_AMEI] (
    [ID] BIGINT NOT NULL,
    [CodParceiro] INT NOT NULL,
    [DataHora] DATETIME NOT NULL
);

CREATE TABLE [SAS].[TB_Parceiro_Deficiencia] (
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [DeficienciaID] BIGINT NOT NULL,
    [CodPessoaF] INT NOT NULL
);

CREATE TABLE [SAS].[TB_Parceiro_LGPD] (
    [CodParceiro] INT NOT NULL,
    [CPF] NUMERIC(15,0) NOT NULL,
    [TermoAceiteLGPD] BIT NOT NULL,
    [DataInclusaoTermoAceiteLGPD] DATETIME NOT NULL,
    [CodSebraeTermoAceiteLGPD] INT NOT NULL,
    [CodParceiroTermoAceiteLGPD] INT NOT NULL,
    [NomeParceiroTermoAceiteLGPD] VARCHAR(120) NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL,
    [CodAplicacao] INT NOT NULL
);

CREATE TABLE [SAS].[TB_Parceiro_SAS_ERP] (
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [CodParceiro] INT NOT NULL,
    [CodERP] INT NOT NULL,
    [TipoParceiro] INT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Parceiro_SAS_ERP_UF] (
    [CodParceiro] INT NOT NULL,
    [CodERP] INT NOT NULL,
    [TipoParceiro] INT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL,
    [CodSebrae] INT NOT NULL
);

CREATE TABLE [SAS].[TB_Parceiro_Situacao_Cadastral] (
    [CodParceiro] INT NOT NULL,
    [CgcCpf] DECIMAL(15,0) NULL,
    [sit_cadastral] VARCHAR(2) NULL,
    [Desc_sit_Cadastral] VARCHAR(50) NULL,
    [dt_sit_cadastral] SMALLDATETIME NULL,
    [DataHoraInclusao] DATETIME NULL,
    [DataHoraAlteracao] DATETIME NULL,
    [LoginResp] VARCHAR(30) NULL
);

CREATE TABLE [SAS].[TB_ParceiroAMEI_Log] (
    [ID] BIGINT NOT NULL,
    [CodParceiro] INT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [DataHora] DATETIME NOT NULL,
    [Mensagem] VARCHAR(MAX) NOT NULL,
    [Tipo] CHAR(1) NOT NULL,
    [Sucesso] BIT NOT NULL,
    [Erro] VARCHAR(MAX) NULL,
    [CodResponsavel] INT NOT NULL
);

CREATE TABLE [SAS].[TB_Perfil] (
    [ID] BIGINT NOT NULL,
    [Nome] VARCHAR(255) NOT NULL,
    [Descricao] VARCHAR(255) NOT NULL,
    [CodSebrae] INT NOT NULL,
    [DataCriacao] DATETIME NOT NULL,
    [DataAlteracao] DATETIME NULL,
    [Ativo] BIT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Perfil_Funcionalidade] (
    [ID] BIGINT NOT NULL,
    [FuncionalidadeID] BIGINT NOT NULL,
    [PerfilID] BIGINT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Porte_Log] (
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [CodPorte] SMALLINT NOT NULL,
    [Campo] VARCHAR(255) NOT NULL,
    [ValorAnterior] VARCHAR(MAX) NULL,
    [ValorAtual] VARCHAR(MAX) NULL,
    [Data] DATETIME NOT NULL,
    [CodParceiro] INT NOT NULL,
    [Acao] CHAR(1) NOT NULL
);

CREATE TABLE [SAS].[TB_Portfolio] (
    [CodSebraeOrigem] INT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [CodSebraeResponsavel] INT NULL,
    [UnidadeOrganizacionalOrigemID] BIGINT NULL,
    [UnidadeOrganizacionalOrigemNome] VARCHAR(255) NULL,
    [GestorProdutoOrigemID] INT NULL,
    [GestorProdutoOrigemNome] VARCHAR(255) NULL,
    [DataProximaRevisao] DATETIME NULL,
    [CustoDesenvolvimento] NUMERIC(18,2) NULL,
    [Tag] VARCHAR(255) NULL,
    [FrequenciaMinima] INT NULL,
    [NotaMinima] INT NULL,
    [Certificado] BIT NULL,
    [RegistroIsbnIssn] VARCHAR(20) NULL,
    [PrecoSugerido] NUMERIC(18,2) NULL,
    [ArgumentoVenda] VARCHAR(2000) NULL,
    [CodigoRegistroMarca] VARCHAR(50) NULL,
    [ClasseSubClasseMarca] VARCHAR(255) NULL,
    [DataValidadeRegistroMarca] DATETIME NULL,
    [DataVigencia] DATETIME NULL,
    [PortfolioOrigemID] BIGINT NULL,
    [Ativo] BIT NOT NULL,
    [SituacaoID] BIGINT NULL,
    [ParceiroOrigem] BIT NOT NULL,
    [NomeParceiro] VARCHAR(255) NULL,
    [ProdutoInstantaneo] BIT NOT NULL,
    [MinimoParticipante] INT NULL,
    [MaximoParticipante] INT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL,
    [DataUltimaAlteracao] DATE NULL,
    [ControleAproveitamento] BIT NULL,
    [CargaReferencia] FLOAT NULL,
    [ConteudoProgramatico] VARCHAR(2000) NULL,
    [FamiliaID] BIGINT NULL,
    [PortfolioProdutoID] TINYINT NULL,
    [IDProdutoExterno] VARCHAR(255) NULL
);

CREATE TABLE [SAS].[TB_Portfolio_Alvo] (
    [ID] BIGINT NOT NULL,
    [Nome] VARCHAR(50) NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Portfolio_Anexo] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [PortfolioID] BIGINT NOT NULL,
    [Arquivo] VARBINARY NOT NULL,
    [Titulo] VARCHAR(255) NOT NULL,
    [NomeArquivo] VARCHAR(255) NOT NULL,
    [Tamanho] NUMERIC(10,1) NOT NULL,
    [DataInclusao] DATETIME NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Portfolio_AnexoTipo] (
    [ID] BIGINT NOT NULL,
    [Nome] VARCHAR(50) NOT NULL,
    [Dominio] TINYINT NOT NULL
);

CREATE TABLE [SAS].[TB_Portfolio_Categoria_Servico] (
    [ID] BIGINT NOT NULL,
    [Nome] VARCHAR(50) NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Portfolio_Cesta] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [PortfolioID] BIGINT NOT NULL,
    [Ativo] BIT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Portfolio_Complemento] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [PortfolioID] BIGINT NOT NULL,
    [UnidadeOrganizacionalID] BIGINT NULL,
    [UnidadeOrganizacionalNome] VARCHAR(255) NULL,
    [GestorProdutoID] INT NULL,
    [GestorProdutoNome] VARCHAR(255) NULL,
    [CustoOperacionalizacao] NUMERIC(18,2) NULL,
    [Preco] NUMERIC(18,2) NULL,
    [Observacao] VARCHAR(1000) NULL,
    [Ativo] BIT NOT NULL,
    [DataHabilitacao] DATETIME NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL,
    [CertificadoID] BIGINT NULL,
    [PossuiAtividade] BIT NULL,
    [PossuiMomento] BIT NULL
);

CREATE TABLE [SAS].[TB_Portfolio_Complemento_Etapa_Atividade] (
    [CodUFOrigem] TINYINT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [PortfolioComplementoID] BIGINT NOT NULL,
    [Tipo] TINYINT NOT NULL,
    [Descricao] VARCHAR(500) NOT NULL,
    [PortfolioComplementoEtapaAtividadeID] BIGINT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Portfolio_Complexibilidade_Metodologia] (
    [ID] BIGINT NOT NULL,
    [Nome] VARCHAR(50) NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Portfolio_Complexidade_Produto] (
    [ID] BIGINT NOT NULL,
    [Nome] VARCHAR(50) NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Portfolio_Direito_Uso] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [PortfolioID] BIGINT NOT NULL,
    [CodSebraeDireito] INT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Portfolio_Disponibilizacao] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [PortfolioID] BIGINT NOT NULL,
    [UnidadeOrganizacionalID] BIGINT NOT NULL,
    [Nome] VARCHAR(255) NOT NULL,
    [Ativo] BIT NOT NULL,
    [PortfolioTipoServicoID] BIGINT NOT NULL,
    [PortfolioModalidadeID] BIGINT NOT NULL,
    [InstrumentoID] INT NOT NULL,
    [Gratuito] BIT NOT NULL,
    [Valor] NUMERIC(18,2) NOT NULL,
    [PermiteDesconto] BIT NOT NULL,
    [ValorDesconto] NUMERIC(18,2) NULL,
    [ProjetoID] UNIQUEIDENTIFIER NULL,
    [AcaoID] INT NULL,
    [Combo] BIT NOT NULL,
    [ProjetoERP] VARCHAR(500) NULL,
    [AcaoERP] VARCHAR(500) NULL,
    [UnidadeERP] VARCHAR(500) NULL,
    [ProdutoERP] VARCHAR(500) NULL,
    [CodProjetoERP] VARCHAR(20) NULL,
    [CodAcaoERP] VARCHAR(20) NULL,
    [CodUnidadeERP] VARCHAR(20) NULL,
    [CodProdutoERP] VARCHAR(20) NULL,
    [CodigoTurma] INT NULL,
    [CodCidadeERP] INT NULL,
    [CidadeERP] VARCHAR(500) NULL,
    [CodCCustoERP] VARCHAR(50) NULL,
    [TbFat_1] VARCHAR(50) NULL,
    [TbFat_2] VARCHAR(50) NULL,
    [TbFat_3] VARCHAR(50) NULL,
    [TbFat_4] VARCHAR(50) NULL,
    [TbFat_5] VARCHAR(50) NULL,
    [TbFlx_1] VARCHAR(50) NULL,
    [TbFlx_2] VARCHAR(50) NULL,
    [TbFlx_3] VARCHAR(50) NULL,
    [TbFlx_4] VARCHAR(50) NULL,
    [TbFlx_5] VARCHAR(50) NULL,
    [CodDepartamento] VARCHAR(20) NULL,
    [ERPMovimentoFilialRMID] BIGINT NULL,
    [ContratoID] BIGINT NULL,
    [CargaHoraria] FLOAT NULL,
    [TipoCargaHoraria] TINYINT NULL,
    [ComAgendamento] BIT NOT NULL,
    [Responsavel] INT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL,
    [LinkAcesso] VARCHAR(500) NULL,
    [IDConsultoriaExterno] VARCHAR(255) NULL
);

CREATE TABLE [SAS].[TB_Portfolio_Disponibilizacao_Anexo] (
    [ID] BIGINT NOT NULL,
    [PortfolioDisponibilizacaoID] BIGINT NOT NULL,
    [CodParceiro] INT NOT NULL,
    [Titulo] VARCHAR(255) NOT NULL,
    [NomeArquivo] VARCHAR(255) NOT NULL,
    [Arquivo] VARBINARY NOT NULL,
    [Tamanho] DECIMAL(18,0) NOT NULL,
    [DataInclusao] DATETIME NOT NULL,
    [Descricao] VARCHAR(255) NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Portfolio_Disponibilizacao_Atividade] (
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [PortfolioDisponibilizacaoID] BIGINT NOT NULL,
    [Tipo] TINYINT NOT NULL,
    [Descricao] VARCHAR(500) NOT NULL,
    [PortfolioDisponibilizacaoAtividadeID] BIGINT NULL
);

CREATE TABLE [SAS].[TB_Portfolio_Disponibilizacao_Condicao_Pagamento] (
    [ID] BIGINT NOT NULL,
    [PortfolioDisponibilizacaoID] BIGINT NOT NULL,
    [CondicaoPagamentoID] VARCHAR(25) NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Portfolio_Disponibilizacao_Condicao_Pagamento_UF] (
    [ID] BIGINT NOT NULL,
    [PortfolioDisponibilizacaoID] BIGINT NOT NULL,
    [CondicaoPagamentoID] VARCHAR(25) NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Portfolio_Disponibilizacao_Forma_Pagamento] (
    [ID] BIGINT NOT NULL,
    [PortfolioDisponibilizacaoID] BIGINT NOT NULL,
    [FormaPagamentoID] VARCHAR(25) NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Portfolio_Disponibilizacao_Forma_Pagamento_UF] (
    [ID] BIGINT NOT NULL,
    [PortfolioDisponibilizacaoID] BIGINT NOT NULL,
    [FormaPagamentoID] VARCHAR(25) NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Portfolio_Disponibilizacao_LinkAcessoConteudo] (
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [PortfolioDisponibilizacaoID] BIGINT NOT NULL,
    [LinkAcessoConteudo] VARCHAR(500) NULL,
    [Nome] VARCHAR(200) NULL
);

CREATE TABLE [SAS].[TB_Portfolio_Disponibilizacao_LinkProduto] (
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [PortfolioDisponibilizacaoID] BIGINT NOT NULL,
    [LinkProduto] VARCHAR(500) NOT NULL
);

CREATE TABLE [SAS].[TB_Portfolio_Disponibilizacao_Log] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [PortfolioDisponibilizacaoID] BIGINT NOT NULL,
    [Campo] VARCHAR(255) NOT NULL,
    [ValorAnterior] VARCHAR(MAX) NULL,
    [ValorAtual] VARCHAR(MAX) NULL,
    [Data] DATETIME NOT NULL,
    [CodPessoaF] INT NOT NULL,
    [Acao] CHAR(1) NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Portfolio_Disponibilizacao_Log_Inscricao] (
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [PortfolioDisponibilizacaoID] BIGINT NOT NULL,
    [DataHora] DATETIME NOT NULL,
    [Operacao] CHAR(1) NOT NULL,
    [UsuarioID] INT NOT NULL,
    [CodCliente] INT NOT NULL,
    [CodClienteNovo] INT NULL
);

CREATE TABLE [SAS].[TB_Portfolio_Disponibilizacao_Log_UF] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [PortfolioDisponibilizacaoID] BIGINT NOT NULL,
    [Campo] VARCHAR(255) NOT NULL,
    [ValorAnterior] VARCHAR(MAX) NULL,
    [ValorAtual] VARCHAR(MAX) NULL,
    [Data] DATETIME NOT NULL,
    [CodPessoaF] INT NOT NULL,
    [Acao] CHAR(1) NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Portfolio_Disponibilizacao_Momento] (
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [PortfolioDisponibilizacaoID] BIGINT NOT NULL,
    [Descricao] VARCHAR(500) NOT NULL
);

CREATE TABLE [SAS].[TB_Portfolio_Disponibilizacao_UF] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [PortfolioID] BIGINT NOT NULL,
    [UnidadeOrganizacionalID] BIGINT NOT NULL,
    [Nome] VARCHAR(255) NOT NULL,
    [Ativo] BIT NOT NULL,
    [PortfolioTipoServicoID] BIGINT NOT NULL,
    [PortfolioModalidadeID] BIGINT NOT NULL,
    [InstrumentoID] INT NOT NULL,
    [Gratuito] BIT NOT NULL,
    [Valor] NUMERIC(18,2) NOT NULL,
    [PermiteDesconto] BIT NOT NULL,
    [ValorDesconto] NUMERIC(18,2) NULL,
    [ProjetoID] UNIQUEIDENTIFIER NULL,
    [AcaoID] INT NULL,
    [Combo] BIT NOT NULL,
    [ProjetoERP] VARCHAR(500) NULL,
    [AcaoERP] VARCHAR(500) NULL,
    [UnidadeERP] VARCHAR(500) NULL,
    [ProdutoERP] VARCHAR(500) NULL,
    [CodProjetoERP] VARCHAR(20) NULL,
    [CodAcaoERP] VARCHAR(20) NULL,
    [CodUnidadeERP] VARCHAR(20) NULL,
    [CodProdutoERP] VARCHAR(20) NULL,
    [CodigoTurma] INT NULL,
    [CodCidadeERP] INT NULL,
    [CidadeERP] VARCHAR(500) NULL,
    [CodCCustoERP] VARCHAR(50) NULL,
    [TbFat_1] VARCHAR(50) NULL,
    [TbFat_2] VARCHAR(50) NULL,
    [TbFat_3] VARCHAR(50) NULL,
    [TbFat_4] VARCHAR(50) NULL,
    [TbFat_5] VARCHAR(50) NULL,
    [TbFlx_1] VARCHAR(50) NULL,
    [TbFlx_2] VARCHAR(50) NULL,
    [TbFlx_3] VARCHAR(50) NULL,
    [TbFlx_4] VARCHAR(50) NULL,
    [TbFlx_5] VARCHAR(50) NULL,
    [CodDepartamento] VARCHAR(20) NULL,
    [ERPMovimentoFilialRMID] BIGINT NULL,
    [ContratoID] BIGINT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL,
    [CargaHoraria] FLOAT NULL,
    [TipoCargaHoraria] TINYINT NULL,
    [ComAgendamento] BIT NOT NULL,
    [Responsavel] INT NULL,
    [LinkAcesso] VARCHAR(500) NULL
);

CREATE TABLE [SAS].[TB_Portfolio_Estrutura_Fisica_Material] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [PortfolioID] BIGINT NOT NULL,
    [Material] VARCHAR(70) NOT NULL,
    [Quantidade] VARCHAR(20) NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Portfolio_GrupoServico] (
    [ID] BIGINT NOT NULL,
    [Nome] VARCHAR(50) NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Portfolio_LinkAcessoConteudo] (
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [PortfolioID] BIGINT NOT NULL,
    [LinkAcessoConteudo] VARCHAR(500) NULL,
    [Nome] VARCHAR(200) NULL
);

CREATE TABLE [SAS].[TB_Portfolio_LinkProduto] (
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [PortfolioID] BIGINT NOT NULL,
    [LinkProduto] VARCHAR(500) NOT NULL
);

CREATE TABLE [SAS].[TB_Portfolio_Log] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [PortfolioID] BIGINT NOT NULL,
    [Campo] VARCHAR(255) NOT NULL,
    [ValorAnterior] VARCHAR(MAX) NULL,
    [ValorAtual] VARCHAR(MAX) NULL,
    [Data] DATETIME NOT NULL,
    [CodParceiro] INT NOT NULL,
    [Acao] CHAR(1) NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Portfolio_Log_UF] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [PortfolioID] BIGINT NOT NULL,
    [Campo] VARCHAR(255) NOT NULL,
    [ValorAnterior] VARCHAR(MAX) NULL,
    [ValorAtual] VARCHAR(MAX) NULL,
    [Data] DATETIME NOT NULL,
    [CodParceiro] INT NOT NULL,
    [Acao] CHAR(1) NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Portfolio_Macrossegmento] (
    [ID] BIGINT NOT NULL,
    [Nome] VARCHAR(50) NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Portfolio_Material] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [PortfolioID] BIGINT NOT NULL,
    [Material] VARCHAR(70) NOT NULL,
    [Quantidade] VARCHAR(20) NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Portfolio_Metodologia] (
    [ID] BIGINT NOT NULL,
    [Nome] VARCHAR(50) NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Portfolio_Modalidade] (
    [ID] BIGINT NOT NULL,
    [Nome] VARCHAR(50) NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Portfolio_Novidade] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [PortfolioID] BIGINT NOT NULL,
    [Data] DATETIME NOT NULL,
    [Acao] CHAR(1) NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Portfolio_Novidade_Lida] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [PortfolioNovidadeID] BIGINT NOT NULL,
    [Data] DATETIME NOT NULL,
    [UsuarioID] INT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Portfolio_Novidade_Lida_UF] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [PortfolioNovidadeID] BIGINT NOT NULL,
    [Data] DATETIME NOT NULL,
    [UsuarioID] INT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Portfolio_Orientacao_Campo_Log] (
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [PortfolioOrientacaoCampoID] BIGINT NOT NULL,
    [ValorAnterior] VARCHAR(2500) NULL,
    [ValorAtual] VARCHAR(2500) NULL,
    [Data] DATETIME NOT NULL,
    [CodParceiro] BIGINT NOT NULL,
    [Acao] CHAR(1) NOT NULL
);

CREATE TABLE [SAS].[TB_Portfolio_Orientacao_Campos] (
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [NomeCampo] VARCHAR(255) NOT NULL,
    [Orientacao] VARCHAR(2500) NULL,
    [Painel] INT NOT NULL,
    [Ativo] BIT NOT NULL
);

CREATE TABLE [SAS].[TB_Portfolio_Produto] (
    [ID] TINYINT NOT NULL,
    [Produto] VARCHAR(50) NOT NULL
);

CREATE TABLE [SAS].[TB_Portfolio_REL_Anexo_AnexoTipo] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [PortfolioAnexoID] BIGINT NOT NULL,
    [AnexoTipoID] BIGINT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Portfolio_Rel_Momento] (
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [PortfolioComplementoID] BIGINT NOT NULL,
    [InstrumentoID] INT NULL,
    [InstrumentoMomentoID] BIGINT NULL,
    [MomentoID] INT NULL
);

CREATE TABLE [SAS].[TB_Portfolio_REL_Portfolio_GrupoServico] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [PortfolioID] BIGINT NOT NULL,
    [GrupoServicoID] BIGINT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Portfolio_REL_Versao_Instrumento] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [PortfolioVersaoID] BIGINT NOT NULL,
    [CodCategoria] INT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Portfolio_REL_Versao_Macrossegmento] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [PortfolioVersaoID] BIGINT NOT NULL,
    [MacrossegmentoID] BIGINT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Portfolio_REL_Versao_Micromomento] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [PortfolioVersaoID] BIGINT NOT NULL,
    [MicromomentoID] BIGINT NOT NULL,
    [MacromomentoID] BIGINT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Portfolio_REL_Versao_Publico] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [PortfolioVersaoID] BIGINT NOT NULL,
    [CodPublicoAlvo] INT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Portfolio_REL_Versao_Setor] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [PortfolioVersaoID] BIGINT NOT NULL,
    [CodSetor] SMALLINT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Portfolio_REL_Versao_Tema] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [PortfolioVersaoID] BIGINT NOT NULL,
    [CodAreaTematica] INT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Portfolio_REL_Versao_TipoServico] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [PortfolioVersaoID] BIGINT NOT NULL,
    [TipoServicoID] BIGINT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Portfolio_Sebrae_Origem] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [PortfolioID] BIGINT NOT NULL,
    [Sebrae] INT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Portfolio_Sebrae_Piloto] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [PortfolioID] BIGINT NOT NULL,
    [CodSebraePiloto] INT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Portfolio_Situacao] (
    [ID] BIGINT NOT NULL,
    [Nome] VARCHAR(50) NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Portfolio_TipoServico] (
    [ID] BIGINT NOT NULL,
    [Nome] VARCHAR(50) NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL,
    [CargaHoraria] INT NOT NULL,
    [DisponibilizadoSAS] BIT NOT NULL,
    [Tipo] CHAR(2) NULL,
    [Grupo] CHAR(1) NULL
);

CREATE TABLE [SAS].[TB_Portfolio_Versao] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [Versao] INT NOT NULL,
    [PortfolioID] BIGINT NOT NULL,
    [Nome] VARCHAR(300) NOT NULL,
    [CategoriaServicoID] BIGINT NULL,
    [ModalidadeID] BIGINT NULL,
    [Descricao] VARCHAR(MAX) NULL,
    [AlvoID] BIGINT NULL,
    [ComplexidadeProdutoID] BIGINT NULL,
    [MetodologiaID] BIGINT NULL,
    [ComplexidadeMetodologiaID] BIGINT NULL,
    [CargaHoraria] FLOAT NULL,
    [Ativo] BIT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL,
    [TipoCargaHoraria] TINYINT NULL
);

CREATE TABLE [SAS].[TB_PortfolioDisponibilizacao_REL_Cidade] (
    [ID] BIGINT NOT NULL,
    [PortfolioDisponibilizacaoID] BIGINT NOT NULL,
    [CodCid] INT NOT NULL
);

CREATE TABLE [SAS].[TB_PortfolioDisponibilizacao_REL_UnidadeOrganizacional] (
    [CodUFOrigem] TINYINT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [PortfolioDisponibilizacaoID] BIGINT NOT NULL,
    [UnidadeOrganizacionalID] BIGINT NOT NULL
);

CREATE TABLE [SAS].[TB_PortfolioDisponibilizacaoAnexo_REL_PortfolioAnexoTipo] (
    [ID] BIGINT NOT NULL,
    [PortfolioDisponibilizacaoAnexoID] BIGINT NOT NULL,
    [PortfolioAnexoTipoID] BIGINT NOT NULL
);

CREATE TABLE [SAS].[TB_PublicoAlvoProduto_Log] (
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [CodPublicoAlvo] INT NOT NULL,
    [Campo] VARCHAR(255) NOT NULL,
    [ValorAnterior] VARCHAR(MAX) NULL,
    [ValorAtual] VARCHAR(MAX) NULL,
    [Data] DATETIME NOT NULL,
    [CodPessoaF] INT NOT NULL,
    [Acao] CHAR(1) NOT NULL
);

CREATE TABLE [SAS].[TB_Qualificacao_Cadastro] (
    [ID] BIGINT NOT NULL,
    [Descricao] VARCHAR(255) NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Recebe_Contato] (
    [ID] BIGINT NOT NULL,
    [numseqcom] SMALLINT NOT NULL,
    [codParceiro] INT NOT NULL,
    [RecebeContato] BIT NULL,
    [RecebeSMS] BIT NULL,
    [Principal] BIT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Recepcao] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [UnidadeOrganizacionalID] BIGINT NOT NULL,
    [AtendenteRecepcaoID] BIGINT NULL,
    [AssuntoID] BIGINT NULL,
    [RecepcionistaID] BIGINT NOT NULL,
    [Tipo] CHAR(1) NOT NULL,
    [Observacao] VARCHAR(MAX) NULL,
    [Situacao] TINYINT NOT NULL,
    [DataHoraInicio] DATETIME NOT NULL,
    [HoraInicioAtendimento] DATETIME NULL,
    [InteracaoDetalheAgendamentoIDEnc] BIGINT NULL,
    [RecepcaoPrioridadeID] BIGINT NULL,
    [MotivoCancelamentoAtendimentoID] BIGINT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Recepcao_Agendamento_Confirmado] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [InteracaoDetalheAgendamentoID] BIGINT NULL,
    [SITUACAO] TINYINT NOT NULL,
    [DataHoraConfirmacao] DATETIME NULL,
    [HoraInicioAtendimento] DATETIME NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Recepcao_Agendamento_Confirmado_UF] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [InteracaoDetalheAgendamentoID] BIGINT NULL,
    [SITUACAO] TINYINT NOT NULL,
    [DataHoraConfirmacao] DATETIME NULL,
    [HoraInicioAtendimento] DATETIME NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Recepcao_Interacao] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [RecepcaoID] BIGINT NULL,
    [InteracaoID] BIGINT NOT NULL,
    [RecepcaoAgendamentoConfirmadoID] BIGINT NULL,
    [Origem] CHAR(1) NOT NULL,
    [AtendimentoFinalizado] BIT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Recepcao_Interacao_UF] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [RecepcaoID] BIGINT NULL,
    [InteracaoID] BIGINT NOT NULL,
    [RecepcaoAgendamentoConfirmadoID] BIGINT NULL,
    [Origem] CHAR(1) NOT NULL,
    [AtendimentoFinalizado] BIT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Recepcao_Participante] (
    [ID] BIGINT NOT NULL,
    [RecepcaoID] BIGINT NOT NULL,
    [PessoaFisicaClienteID] INT NOT NULL,
    [PessoaJuridicaClienteID] INT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Recepcao_Participante_UF] (
    [RecepcaoID] BIGINT NOT NULL,
    [PessoaFisicaClienteID] INT NOT NULL,
    [PessoaJuridicaClienteID] INT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Recepcao_Prioridade] (
    [ID] BIGINT NOT NULL,
    [Nome] VARCHAR(50) NOT NULL,
    [Icone] VARCHAR(100) NULL
);

CREATE TABLE [SAS].[TB_Recepcao_Temporaria] (
    [ID] BIGINT NOT NULL,
    [SessaoID] VARCHAR(100) NOT NULL,
    [Clientes] VARCHAR(1000) NULL,
    [Interacoes] VARCHAR(500) NULL,
    [DadosRecepcao] VARCHAR(1000) NULL
);

CREATE TABLE [SAS].[TB_Recepcao_UF] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [UnidadeOrganizacionalID] BIGINT NOT NULL,
    [AtendenteRecepcaoID] BIGINT NULL,
    [AssuntoID] BIGINT NULL,
    [RecepcionistaID] BIGINT NOT NULL,
    [Tipo] CHAR(1) NOT NULL,
    [Observacao] VARCHAR(MAX) NULL,
    [Situacao] TINYINT NOT NULL,
    [DataHoraInicio] DATETIME NOT NULL,
    [HoraInicioAtendimento] DATETIME NULL,
    [InteracaoDetalheAgendamentoIDEnc] BIGINT NULL,
    [RecepcaoPrioridadeID] BIGINT NULL,
    [MotivoCancelamentoAtendimentoID] BIGINT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_REL_Micromomento_Macromomento] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [MicromomentoID] BIGINT NOT NULL,
    [MacromomentoID] BIGINT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_REL_Sala_Formato] (
    [CodUFOrigem] TINYINT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [FormatoID] BIGINT NOT NULL,
    [SalaID] BIGINT NOT NULL,
    [Capacidade] INT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_REL_Sala_Tipo] (
    [CodUFOrigem] TINYINT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [TipoID] BIGINT NOT NULL,
    [SalaID] BIGINT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_REL_Sala_Unidade_Organizacional] (
    [CodUFOrigem] TINYINT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [UnidadeOrganizacionalID] BIGINT NOT NULL,
    [SalaID] BIGINT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Reserva_Sala] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [Responsavel] INT NOT NULL,
    [Finalidade] VARCHAR(255) NOT NULL,
    [DataInicio] DATETIME NOT NULL,
    [DataFim] DATETIME NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL,
    [LinkAcesso] VARCHAR(500) NULL,
    [TipoData] CHAR(1) NOT NULL
);

CREATE TABLE [SAS].[TB_Reserva_Sala_Detalhe] (
    [CodUFOrigem] TINYINT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [ReservaSalaID] BIGINT NOT NULL,
    [SalaID] BIGINT NOT NULL,
    [EventoID] BIGINT NULL,
    [DataInicio] DATETIME NOT NULL,
    [DataFim] DATETIME NOT NULL,
    [FormatoID] BIGINT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Sala] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [Tipo] CHAR(1) NOT NULL,
    [Nome] VARCHAR(255) NOT NULL,
    [Descricao] VARCHAR(500) NULL,
    [Contato] VARCHAR(100) NULL,
    [Telefone] VARCHAR(11) NULL,
    [Acessibilidade] BIT NOT NULL,
    [Logradouro] VARCHAR(150) NULL,
    [Complemento] VARCHAR(70) NULL,
    [CodBairro] INT NULL,
    [CodCidade] INT NULL,
    [CodEstado] SMALLINT NULL,
    [CodPais] SMALLINT NULL,
    [CEP] INT NULL,
    [Ativo] BIT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL,
    [Email] VARCHAR(255) NULL,
    [Notificacoes] BIT NOT NULL,
    [DescInternacional] VARCHAR(100) NULL
);

CREATE TABLE [SAS].[TB_Sala_Horario] (
    [CodUFOrigem] TINYINT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [SalaID] BIGINT NOT NULL,
    [DiaSemana] CHAR(3) NOT NULL,
    [HoraInicial] SMALLDATETIME NOT NULL,
    [HoraFinal] SMALLDATETIME NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Sebrae_Log] (
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [CodSebraeLogado] INT NOT NULL,
    [Campo] VARCHAR(255) NOT NULL,
    [ValorAnterior] VARCHAR(MAX) NULL,
    [ValorAtual] VARCHAR(MAX) NULL,
    [Data] DATETIME NOT NULL,
    [CodParceiro] INT NOT NULL,
    [Acao] CHAR(1) NOT NULL
);

CREATE TABLE [SAS].[TB_Setor_Log] (
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [CodSetor] SMALLINT NOT NULL,
    [Campo] VARCHAR(255) NOT NULL,
    [ValorAnterior] VARCHAR(MAX) NULL,
    [ValorAtual] VARCHAR(MAX) NULL,
    [Data] DATETIME NOT NULL,
    [CodParceiro] INT NOT NULL,
    [Acao] CHAR(1) NOT NULL
);

CREATE TABLE [SAS].[TB_Sistema_Externo_Log] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [Conteudo] XML NOT NULL,
    [CodParceiro] INT NOT NULL,
    [DataInicioTrigger] DATETIME NULL,
    [DataFimTrigger] DATETIME NULL,
    [Movimento] CHAR(3) NOT NULL,
    [Acao] CHAR(1) NOT NULL,
    [CodTurma] INT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL,
    [IDRegistro] BIGINT NULL,
    [TabelaOperacao] CHAR(150) NULL
);

CREATE TABLE [SAS].[TB_Sistema_Externo_Log_UF] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [Conteudo] XML NOT NULL,
    [CodParceiro] INT NOT NULL,
    [DataInicioTrigger] DATETIME NULL,
    [DataFimTrigger] DATETIME NULL,
    [Movimento] CHAR(3) NOT NULL,
    [Acao] CHAR(1) NOT NULL,
    [CodTurma] INT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL,
    [IDRegistro] BIGINT NULL,
    [TabelaOperacao] CHAR(150) NULL
);

CREATE TABLE [SAS].[TB_Situacao_Atual] (
    [ID] BIGINT NOT NULL,
    [Descricao] VARCHAR(255) NOT NULL,
    [Ordem] INT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Situacao_PJ] (
    [CodSituacao_PJ] CHAR(2) NOT NULL,
    [Descricao] VARCHAR(100) NOT NULL,
    [Situacao] CHAR(1) NOT NULL
);

CREATE TABLE [SAS].[TB_Tipo_Ativo] (
    [ID] BIGINT NOT NULL,
    [Nome] VARCHAR(255) NOT NULL,
    [VinculaEventos] BIT NULL,
    [DataSituacao] DATETIME NULL,
    [Ativo] BIT NOT NULL
);

CREATE TABLE [SAS].[TB_Tipo_Interacao] (
    [ID] BIGINT NOT NULL,
    [Descricao] VARCHAR(255) NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL,
    [Tipo] CHAR(1) NULL,
    [Sigla] CHAR(3) NULL
);

CREATE TABLE [SAS].[TB_Tipo_Participante_Log] (
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [CodTipoPartic] INT NOT NULL,
    [Campo] VARCHAR(255) NOT NULL,
    [ValorAnterior] VARCHAR(MAX) NULL,
    [ValorAtual] VARCHAR(MAX) NULL,
    [Data] DATETIME NOT NULL,
    [CodParceiro] INT NOT NULL,
    [Acao] CHAR(1) NOT NULL
);

CREATE TABLE [SAS].[TB_Tipo_Sala] (
    [Descricao] VARCHAR(255) NOT NULL,
    [DataCriacao] DATETIME NOT NULL,
    [DataAlteracao] DATETIME NULL,
    [Ativo] BIT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL,
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL
);

CREATE TABLE [SAS].[TB_Tipo_Unidade_Organizacional] (
    [ID] BIGINT NOT NULL,
    [Nome] VARCHAR(255) NOT NULL,
    [Descricao] VARCHAR(255) NOT NULL,
    [TipoUF] BIT NOT NULL,
    [DataCriacao] DATETIME NOT NULL,
    [DataAlteracao] DATETIME NULL,
    [Ativo] BIT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL,
    [Atendimento] TINYINT NULL,
    [Parceiro] BIT NOT NULL
);

CREATE TABLE [SAS].[TB_Tipo_Usuario] (
    [ID] BIGINT NOT NULL,
    [Descricao] VARCHAR(255) NOT NULL,
    [DataCriacao] DATETIME NOT NULL,
    [DataAlteracao] DATETIME NULL,
    [Ativo] BIT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_TipoComunic_Log] (
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NULL,
    [TipoComunicID] SMALLINT NOT NULL,
    [Campo] VARCHAR(255) NOT NULL,
    [ValorAnterior] VARCHAR(MAX) NULL,
    [ValorAtual] VARCHAR(MAX) NULL,
    [Data] DATETIME NOT NULL,
    [CodParceiro] INT NOT NULL,
    [Acao] CHAR(1) NOT NULL
);

CREATE TABLE [SAS].[TB_TipoDisponibilizacao_TipoServico] (
    [ID] BIGINT NOT NULL,
    [TipoDisponibilizacaoID] BIGINT NULL,
    [TipoServicoId] BIGINT NOT NULL,
    [Situacao] CHAR(1) NOT NULL
);

CREATE TABLE [SAS].[TB_TipoInstrumento] (
    [CodTipoInstrumento] CHAR(2) NOT NULL,
    [Descricao] VARCHAR(100) NOT NULL,
    [Situacao] CHAR(1) NOT NULL
);

CREATE TABLE [SAS].[TB_TipoRealizacao_Log] (
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [CodTipoRealizacao] VARCHAR(3) NOT NULL,
    [Campo] VARCHAR(255) NOT NULL,
    [ValorAnterior] VARCHAR(MAX) NULL,
    [ValorAtual] VARCHAR(MAX) NULL,
    [Data] DATETIME NOT NULL,
    [CodParceiro] INT NOT NULL,
    [Acao] CHAR(1) NOT NULL
);

CREATE TABLE [SAS].[TB_Unidade_Medida] (
    [ID] BIGINT NOT NULL,
    [UnidadeMedida] CHAR(10) NOT NULL,
    [Descricao] VARCHAR(100) NOT NULL,
    [Ativo] BIT NOT NULL
);

CREATE TABLE [SAS].[TB_Unidade_Organizacional] (
    [ID] BIGINT NOT NULL,
    [UnidadeOrganizacionalSuperiorID] BIGINT NULL,
    [Descricao] VARCHAR(255) NOT NULL,
    [Sigla] VARCHAR(10) NULL,
    [TipoUnidadeOrganizacionalID] BIGINT NOT NULL,
    [DominioAD] VARCHAR(50) NULL,
    [CodSebrae] INT NOT NULL,
    [DataCriacao] DATETIME NOT NULL,
    [DataAlteracao] DATETIME NULL,
    [Ativo] BIT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL,
    [Logradouro] VARCHAR(150) NULL,
    [Complemento] VARCHAR(70) NULL,
    [CodBairro] INT NULL,
    [CodCid] INT NULL,
    [CodEst] SMALLINT NULL,
    [CodPais] SMALLINT NULL,
    [Cep] INT NULL,
    [CodPessoaJ] INT NULL,
    [DescricaoServicosPrestados] VARCHAR(MAX) NULL
);

CREATE TABLE [SAS].[TB_Unidade_Organizacional_Horario] (
    [CodUFOrigem] TINYINT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [UnidadeOrganizacionalID] BIGINT NOT NULL,
    [DiaSemana] CHAR(3) NOT NULL,
    [HoraInicial] TIME NOT NULL,
    [HoraFinal] TIME NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Unidade_Organizacional_REL_CidadeCobertura] (
    [ID] BIGINT NOT NULL,
    [Unidade_OrganizacionalID] BIGINT NOT NULL,
    [CodCidadeID] INT NOT NULL
);

CREATE TABLE [SAS].[TB_Usuario] (
    [ID] INT NOT NULL,
    [TipoUsuarioID] BIGINT NULL,
    [ClienteID] INT NOT NULL,
    [Nome] VARCHAR(255) NOT NULL,
    [Login] VARCHAR(255) NOT NULL,
    [SenhaInicial] VARCHAR(MAX) NULL,
    [Email] VARCHAR(255) NOT NULL,
    [ClienteID_EntidadeParceira] INT NULL,
    [Telefone] VARCHAR(255) NOT NULL,
    [UsuarioAD] BIT NOT NULL,
    [UfID] SMALLINT NULL,
    [AcessoBloqueado] BIT NOT NULL,
    [DataInicioBloqueio] DATE NULL,
    [DataSituacao] DATE NULL,
    [Nivel] TINYINT NOT NULL,
    [Parceiro] BIT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [DataCriacao] DATETIME NOT NULL,
    [DataAlteracao] DATETIME NULL,
    [Ativo] BIT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL,
    [SenhaOff] VARCHAR(255) NULL,
    [ResponsavelStatus] VARCHAR(3) NULL,
    [UsuarioDatasul] VARCHAR(12) NULL,
    [DataFimBloqueio] DATE NULL,
    [CodContatoPJ] INT NULL,
    [DataInicioAtivacao] DATE NULL,
    [DataFimAtivacao] DATE NULL,
    [AcessoBloqueadoAd] BIT NOT NULL,
    [RealizaInteracoesUfs] BIT NULL,
    [DataInicioUFDadosNA] DATE NULL
);

CREATE TABLE [SAS].[TB_Usuario_Grupo] (
    [ID] BIGINT NOT NULL,
    [GrupoID] BIGINT NOT NULL,
    [UsuarioID] INT NOT NULL,
    [Administrador] BIT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Usuario_Log] (
    [ID] BIGINT NOT NULL,
    [UsuarioID] INT NOT NULL,
    [Campo] VARCHAR(255) NOT NULL,
    [ValorAnterior] VARCHAR(MAX) NULL,
    [ValorAtual] VARCHAR(MAX) NULL,
    [Data] DATETIME NOT NULL,
    [CodParceiro] INT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [Acao] CHAR(1) NOT NULL
);

CREATE TABLE [SAS].[TB_Usuario_Modulo_Favorito] (
    [ModuloID] BIGINT NOT NULL,
    [UsuarioID] INT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Usuario_Perfil] (
    [ID] BIGINT NOT NULL,
    [PerfilID] BIGINT NOT NULL,
    [UsuarioID] INT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_Usuario_UF] (
    [ID] BIGINT NOT NULL,
    [UsuarioID] INT NOT NULL,
    [CodSebrae] INT NOT NULL
);

CREATE TABLE [SAS].[TB_Usuario_Unidade_Organizacional] (
    [ID] BIGINT NOT NULL,
    [UnidadeOrganizacionalID] BIGINT NOT NULL,
    [UsuarioID] INT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_UsuarioUF_ProjetoAcao] (
    [ID] BIGINT NOT NULL,
    [UsuarioUFID] BIGINT NOT NULL,
    [CodProjeto] UNIQUEIDENTIFIER NOT NULL,
    [CodAcao] INT NOT NULL
);

CREATE TABLE [SAS].[TB_UsuarioUF_UnidadeOrganizacional] (
    [ID] BIGINT NOT NULL,
    [UsuarioUFID] BIGINT NOT NULL,
    [UnidadeOrganizacionalID] BIGINT NOT NULL
);

CREATE TABLE [SAS].[TB_WebService] (
    [ID] BIGINT NOT NULL,
    [Nome] VARCHAR(250) NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL,
    [Visao] CHAR(2) NOT NULL,
    [Ativo] BIT NOT NULL
);

CREATE TABLE [SAS].[TB_Webservice_Log] (
    [ID] BIGINT NOT NULL,
    [CodPessoaF] INT NULL,
    [WebServiceID] BIGINT NULL,
    [WebServiceMetodoID] BIGINT NULL,
    [Data] DATETIME NOT NULL,
    [Acao] BIT NOT NULL,
    [Observacao] VARCHAR(255) NULL,
    [CodSebrae] INT NOT NULL
);

CREATE TABLE [SAS].[TB_WebService_Metodo] (
    [ID] BIGINT NOT NULL,
    [Nome] VARCHAR(250) NOT NULL,
    [WebServiceID] BIGINT NOT NULL,
    [Rota] VARCHAR(500) NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL,
    [Ativo] BIT NOT NULL
);

CREATE TABLE [SAS].[TB_WebService_REL_Usuario_Metodo] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [WebServiceUsuarioID] BIGINT NOT NULL,
    [WebServiceMetodoID] BIGINT NOT NULL,
    [DataValidade] DATETIME NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_WebService_REL_Usuario_Metodo_UF] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [WebServiceUsuarioID] BIGINT NOT NULL,
    [WebServiceMetodoID] BIGINT NOT NULL,
    [DataValidade] DATETIME NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [SAS].[TB_WebService_REL_Usuario_TipoRealizacao] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [WebServiceUsuarioID] BIGINT NOT NULL,
    [TipoRealizacaoID] VARCHAR(3) NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL,
    [AutoAtendimento] BIT NOT NULL
);

CREATE TABLE [SAS].[TB_WebService_REL_Usuario_TipoRealizacao_UF] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [WebServiceUsuarioID] BIGINT NOT NULL,
    [TipoRealizacaoID] VARCHAR(3) NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL,
    [AutoAtendimento] BIT NOT NULL
);

CREATE TABLE [SAS].[TB_WebService_Usuario] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [UsuarioID] INT NOT NULL,
    [DataValidade] DATETIME NOT NULL,
    [Chave] VARCHAR(1000) NOT NULL,
    [Nome] VARCHAR(255) NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL,
    [TipoRealizacaoPadraoSAS] BIT NOT NULL,
    [PermiteExcluirInteracao] BIT NOT NULL
);

CREATE TABLE [SAS].[TB_WebService_Usuario_UF] (
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [UsuarioID] INT NOT NULL,
    [DataValidade] DATETIME NOT NULL,
    [Chave] VARCHAR(1000) NOT NULL,
    [Nome] VARCHAR(255) NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL,
    [TipoRealizacaoPadraoSAS] BIT NOT NULL
);

CREATE TABLE [SAS].[TB_Windows_Service] (
    [ID] BIGINT NOT NULL,
    [Nome] VARCHAR(100) NOT NULL,
    [Descricao] VARCHAR(200) NULL,
    [Metodo] VARCHAR(50) NOT NULL,
    [Ativo] BIT NOT NULL
);

CREATE TABLE [SAS].[TB_Windows_Service_Sebrae] (
    [ID] BIGINT NOT NULL,
    [WindowsServiceID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [Periodicidade] TINYINT NOT NULL,
    [MinutosExecucaoPadrao] INT NULL,
    [HoraExecucaoPadrao] VARCHAR(5) NULL,
    [DiaExecucaoPadrao] SMALLINT NULL,
    [MesExecucaoPadrao] SMALLINT NULL,
    [DataHoraExecucaoManual] DATETIME NULL,
    [DataHoraUltimaExecucao] DATETIME NULL,
    [Ativo] BIT NOT NULL,
    [Situacao] TINYINT NOT NULL
);

CREATE TABLE [SAS].[TB_Windows_Service_Sebrae_Log] (
    [ID] BIGINT NOT NULL,
    [WindowsServiceSebraeID] BIGINT NOT NULL,
    [Tipo] TINYINT NOT NULL,
    [Data] DATETIME NOT NULL,
    [Mensagem] VARCHAR(MAX) NOT NULL
);

CREATE TABLE [SAS].[TB_Windows_Service_Sebrae_Log_SyncMensageriaClienteImportar] (
    [ID] BIGINT NOT NULL,
    [DataHora] DATETIME NOT NULL,
    [Mensagem] VARCHAR(MAX) NOT NULL,
    [DetalhesProcessamento] VARCHAR(MAX) NOT NULL
);

CREATE TABLE [SAS].[TB_Windows_Service_Sebrae_Log_SyncUsers] (
    [ID] BIGINT NOT NULL,
    [Codsebrae] INT NOT NULL,
    [UsuarioID] INT NOT NULL,
    [Login] VARCHAR(255) NOT NULL,
    [DataHoraProcessamento] DATETIME NOT NULL,
    [Acao] CHAR(1) NOT NULL
);

CREATE TABLE [stg_cdc].[bcp_control] (
    [id] NVARCHAR(256) NOT NULL,
    [execOrder] SMALLINT NOT NULL,
    [sourceQuery] VARCHAR(MAX) NOT NULL,
    [sourceTableFormat] NVARCHAR(128) NOT NULL,
    [sourceQueryOut] VARCHAR(1024) NULL,
    [sourcePreBcpSqlCommand] VARCHAR(MAX) NULL,
    [sourcePostBcpSqlCommand] VARCHAR(MAX) NULL,
    [sourceOnSuccessSqlCommand] VARCHAR(MAX) NULL,
    [sourceOnErrorSqlCommand] VARCHAR(MAX) NULL,
    [destIn] VARCHAR(1024) NULL,
    [destTrusted] BIT NOT NULL,
    [destServerInstance] VARCHAR(1024) NULL,
    [destDatabase] NVARCHAR(128) NULL,
    [destSqlLogin] VARCHAR(1024) NULL,
    [destSqlPassword] VARCHAR(1024) NULL,
    [mustEncryptCredentials] BIT NOT NULL,
    [encryptedBy] VARCHAR(128) NULL,
    [destPreBcpSqlCommand] VARCHAR(MAX) NULL,
    [destPostBcpSqlCommand] VARCHAR(MAX) NULL,
    [destOnSuccessSqlCommand] VARCHAR(MAX) NULL,
    [destOnErrorSqlCommand] VARCHAR(MAX) NULL,
    [active] BIT NOT NULL,
    [createdAt] DATETIME NOT NULL,
    [lastExecutionStartedAt] DATETIME NULL,
    [lastExecutionEndedAt] DATETIME NULL,
    [lastExecutionError] VARCHAR(MAX) NULL,
    [isRunning] BIT NOT NULL
);

CREATE TABLE [stg_cdc].[dbo_AtendimentoIntegrado] (
    [__CDC_STARTLSN] BINARY NULL,
    [__CDC_SEQVAL] BINARY NULL,
    [__CDC_OPERATION] VARCHAR(2) NULL,
    [CodAtendIntegrado] INT NULL,
    [CodSebrae] INT NULL,
    [DataHoraAtendimento] DATETIME NULL,
    [HoraFinal] DATETIME NULL,
    [CodPessoa] INT NULL,
    [CodEmpreendimento] INT NULL,
    [CodMeioAtendimento] INT NULL,
    [DescComentario] VARCHAR(MAX) NULL,
    [UsuarioResponsavel] INT NULL,
    [CodSol] UNIQUEIDENTIFIER NULL,
    [CodObj] INT NULL,
    [CodEntidade] INT NULL,
    [CodMomentoVida] TINYINT NULL,
    [CodUnidOp] INT NULL,
    [Diagnostico] VARCHAR(MAX) NULL,
    [rowguid] UNIQUEIDENTIFIER NULL
);

CREATE TABLE [stg_cdc].[dbo_AtendimentoIntegradoTema] (
    [__CDC_STARTLSN] BINARY NULL,
    [__CDC_SEQVAL] BINARY NULL,
    [__CDC_OPERATION] VARCHAR(2) NULL,
    [CodAtendIntegrado] INT NULL,
    [CodTema] INT NULL,
    [CodSebrae] INT NULL,
    [BIA] CHAR(1) NULL,
    [rowguid] UNIQUEIDENTIFIER NULL,
    [TipoRealizacao] VARCHAR(3) NULL,
    [AnoCompetencia] SMALLINT NULL,
    [CodAplicacao] INT NULL
);

CREATE TABLE [stg_cdc].[dbo_AtivEconPJ] (
    [__CDC_STARTLSN] BINARY NULL,
    [__CDC_SEQVAL] BINARY NULL,
    [__CDC_OPERATION] VARCHAR(2) NULL,
    [CodClass] SMALLINT NULL,
    [CodAtivEcon] VARCHAR(5) NULL,
    [CodParceiro] INT NULL,
    [AtivPrinc] VARCHAR(3) NULL,
    [IndAtivPrincipal] BIT NULL,
    [CodCnaeFiscal] VARCHAR(2) NULL,
    [rowguid] UNIQUEIDENTIFIER NULL
);

CREATE TABLE [stg_cdc].[dbo_bairro] (
    [__CDC_STARTLSN] BINARY NULL,
    [__CDC_SEQVAL] BINARY NULL,
    [__CDC_OPERATION] VARCHAR(2) NULL,
    [codbairro] INT NOT NULL,
    [descbairro] VARCHAR(150) NULL,
    [abrevbairro] VARCHAR(72) NULL,
    [codcid] INT NOT NULL,
    [indtipo] VARCHAR(1) NOT NULL,
    [indcadcorreio] INT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL,
    [SITUACAO] BIT NOT NULL
);

CREATE TABLE [stg_cdc].[dbo_CategoriaAtendimento] (
    [__CDC_STARTLSN] BINARY NULL,
    [__CDC_SEQVAL] BINARY NULL,
    [__CDC_OPERATION] VARCHAR(2) NULL,
    [CodCategoria] INT NOT NULL,
    [DescCategoria] VARCHAR(100) NOT NULL,
    [Situacao] CHAR(1) NOT NULL,
    [Tipo] CHAR(2) NULL,
    [Individual] CHAR(1) NOT NULL,
    [Grupal] CHAR(1) NOT NULL,
    [Universal] CHAR(1) NOT NULL,
    [Ativo] CHAR(1) NOT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL,
    [AssistidoAutosservico] VARCHAR(255) NULL,
    [AgrupadorID] BIGINT NULL,
    [VinculoProduto] BIT NULL,
    [DisponibilizadoSAS] BIT NULL,
    [TipoDisponibilizacaoID] BIGINT NULL,
    [PossuiCargaHoraria] BIT NULL,
    [ControleFrequencia] BIT NULL,
    [Descricao] VARCHAR(350) NULL,
    [ExigeParticipantes] BIT NULL
);

CREATE TABLE [stg_cdc].[dbo_cidade] (
    [__CDC_STARTLSN] BINARY NULL,
    [__CDC_SEQVAL] BINARY NULL,
    [__CDC_OPERATION] VARCHAR(2) NULL,
    [CodCid] INT NOT NULL,
    [DescCid] VARCHAR(150) NULL,
    [CodEst] SMALLINT NOT NULL,
    [CodMicro] SMALLINT NULL,
    [PopCid] INT NULL,
    [PopUrb] INT NULL,
    [PopRur] INT NULL,
    [AnoRefPop] SMALLINT NULL,
    [NumEmp] INT NULL,
    [NumIndust] INT NULL,
    [NumEmpCom] INT NULL,
    [NumEmpSer] INT NULL,
    [AnoRefTot] SMALLINT NULL,
    [NumFaculd] SMALLINT NULL,
    [NumEscolas] INT NULL,
    [Capital] VARCHAR(3) NOT NULL,
    [IndAtuCid] VARCHAR(3) NOT NULL,
    [Fonte] VARCHAR(50) NULL,
    [IndAtualizacao] BIT NOT NULL,
    [IndCapital] BIT NOT NULL,
    [Status] TINYINT NULL,
    [CodMeso] SMALLINT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL,
    [CODMUN] INT NULL,
    [TIPOLOCALIDADE] CHAR(1) NULL,
    [SITUACAO] BIT NOT NULL
);

CREATE TABLE [stg_cdc].[dbo_CNAEFiscal] (
    [__CDC_STARTLSN] BINARY NULL,
    [__CDC_SEQVAL] BINARY NULL,
    [__CDC_OPERATION] VARCHAR(2) NULL,
    [CodAtivEcon] VARCHAR(5) NULL,
    [CodCnaeFiscal] VARCHAR(2) NULL,
    [DescCnaeFiscal] VARCHAR(250) NULL,
    [rowguid] UNIQUEIDENTIFIER NULL,
    [Situacao] CHAR(1) NULL
);

CREATE TABLE [stg_cdc].[dbo_CNAEOperacional] (
    [__CDC_STARTLSN] BINARY NULL,
    [__CDC_SEQVAL] BINARY NULL,
    [__CDC_OPERATION] VARCHAR(2) NULL,
    [CodAtivEcon] VARCHAR(10) NULL,
    [CodCnaeFiscal] VARCHAR(4) NULL,
    [SeqOperacional] VARCHAR(6) NULL,
    [DescOperacional] VARCHAR(250) NULL,
    [rowguid] UNIQUEIDENTIFIER NULL
);

CREATE TABLE [stg_cdc].[dbo_comunicacao] (
    [__CDC_STARTLSN] BINARY NULL,
    [__CDC_SEQVAL] BINARY NULL,
    [__CDC_OPERATION] VARCHAR(2) NULL,
    [numseqcom] SMALLINT NOT NULL,
    [codparceiro] INT NOT NULL,
    [codcomunic] SMALLINT NOT NULL,
    [numero] VARCHAR(60) NULL,
    [IndInternet] TINYINT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL,
    [RecebeContato] BIT NULL,
    [RecebeSMS] BIT NULL,
    [Principal] BIT NULL
);

CREATE TABLE [stg_cdc].[dbo_Endereco] (
    [__CDC_STARTLSN] BINARY NULL,
    [__CDC_SEQVAL] BINARY NULL,
    [__CDC_OPERATION] VARCHAR(2) NULL,
    [CodParceiro] INT NOT NULL,
    [NumSeqEnd] INT NOT NULL,
    [EndCorresp] CHAR(3) NOT NULL,
    [CodLogr] SMALLINT NULL,
    [DescEndereco] VARCHAR(150) NULL,
    [Numero] VARCHAR(6) NULL,
    [Complemento] VARCHAR(70) NULL,
    [CodBairro] INT NULL,
    [CodCid] INT NULL,
    [CodEst] SMALLINT NULL,
    [CodPais] SMALLINT NULL,
    [Cep] INT NULL,
    [EndInternacional] VARCHAR(250) NULL,
    [IndCorrespond] BIT NOT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL,
    [principal] BIT NULL
);

CREATE TABLE [stg_cdc].[dbo_estado] (
    [__CDC_STARTLSN] BINARY NULL,
    [__CDC_SEQVAL] BINARY NULL,
    [__CDC_OPERATION] VARCHAR(2) NULL,
    [CodEst] SMALLINT NOT NULL,
    [DescEst] VARCHAR(30) NOT NULL,
    [AbrevEst] VARCHAR(3) NOT NULL,
    [CodPais] SMALLINT NOT NULL,
    [AreaOcup] INT NULL,
    [Populacao] INT NULL,
    [IndAtuEst] VARCHAR(3) NOT NULL,
    [DataAtualiz] SMALLDATETIME NULL,
    [Fonte] VARCHAR(50) NULL,
    [IndAtualizacao] BIT NOT NULL,
    [CodRegiao] INT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL,
    [SITUACAO] BIT NOT NULL
);

CREATE TABLE [stg_cdc].[dbo_HistoricoRealizacoesCliente] (
    [__CDC_STARTLSN] BINARY NULL,
    [__CDC_SEQVAL] BINARY NULL,
    [__CDC_OPERATION] VARCHAR(2) NULL,
    [CodSebrae] INT NULL,
    [CodCliente] INT NULL,
    [DataHoraInicioRealizacao] DATETIME NULL,
    [CodEmpreedimento] INT NULL,
    [DataHoraFimRealizacao] DATETIME NULL,
    [NomeRealizacao] VARCHAR(255) NULL,
    [DescRealizacao] VARCHAR(MAX) NULL,
    [CodResponsavel] INT NULL,
    [CodAplicacao] INT NULL,
    [CodRealizacao] BIGINT NULL,
    [TipoRealizacao] VARCHAR(3) NULL,
    [Instrumento] VARCHAR(50) NULL,
    [Abordagem] CHAR(1) NULL,
    [CodRealizacaoComp] BIGINT NULL,
    [rowguid] UNIQUEIDENTIFIER NULL,
    [Ano] INT NULL,
    [CodProjeto] UNIQUEIDENTIFIER NULL,
    [CodAcao] INT NULL,
    [TipoPessoa] CHAR(1) NULL,
    [CodMomentoVida] TINYINT NULL,
    [MesAnoCompetencia] DATETIME NULL,
    [CargaHoraria] DECIMAL(18,2) NULL,
    [Faturam] SMALLINT NULL,
    [CodEntidadeParceira] INT NULL,
    [CodConst] SMALLINT NULL,
    [CategoriaPessoa] SMALLINT NULL,
    [DataEntrada] DATETIME NULL,
    [DataETL] DATETIME NULL,
    [codcategoria] INT NULL,
    [CodSistemaOrigem] INT NULL
);

CREATE TABLE [stg_cdc].[dbo_HistoricoRealizacoesCliente_AnosAnteriores] (
    [__CDC_STARTLSN] BINARY NULL,
    [__CDC_SEQVAL] BINARY NULL,
    [__CDC_OPERATION] VARCHAR(2) NULL,
    [CodSebrae] INT NULL,
    [CodCliente] INT NULL,
    [DataHoraInicioRealizacao] DATETIME NULL,
    [CodEmpreedimento] INT NULL,
    [DataHoraFimRealizacao] DATETIME NULL,
    [NomeRealizacao] VARCHAR(255) NULL,
    [DescRealizacao] VARCHAR(MAX) NULL,
    [CodResponsavel] INT NULL,
    [CodAplicacao] INT NULL,
    [CodRealizacao] BIGINT NULL,
    [TipoRealizacao] VARCHAR(3) NULL,
    [Instrumento] VARCHAR(50) NULL,
    [Abordagem] CHAR(1) NULL,
    [CodRealizacaoComp] BIGINT NULL,
    [rowguid] UNIQUEIDENTIFIER NULL,
    [Ano] INT NULL,
    [CodProjeto] UNIQUEIDENTIFIER NULL,
    [CodAcao] INT NULL,
    [TipoPessoa] CHAR(1) NULL,
    [CodMomentoVida] TINYINT NULL,
    [MesAnoCompetencia] DATETIME NULL,
    [CargaHoraria] DECIMAL(18,2) NULL,
    [Faturam] SMALLINT NULL,
    [CodEntidadeParceira] INT NULL,
    [CodConst] SMALLINT NULL,
    [CategoriaPessoa] SMALLINT NULL,
    [DataEntrada] DATETIME NULL,
    [DataETL] DATETIME NULL,
    [codcategoria] INT NULL,
    [CodSistemaOrigem] INT NULL
);

CREATE TABLE [stg_cdc].[dbo_NaturezaAssunto] (
    [__CDC_STARTLSN] BINARY NULL,
    [__CDC_SEQVAL] BINARY NULL,
    [__CDC_OPERATION] VARCHAR(2) NULL,
    [CodNaturezaAssunto] INT NULL,
    [CodSebrae] INT NULL,
    [DescNaturezaAssunto] VARCHAR(60) NULL,
    [rowguid] UNIQUEIDENTIFIER NULL
);

CREATE TABLE [stg_cdc].[dbo_Pais] (
    [__CDC_STARTLSN] BINARY NULL,
    [__CDC_SEQVAL] BINARY NULL,
    [__CDC_OPERATION] VARCHAR(2) NULL,
    [CodPais] SMALLINT NOT NULL,
    [DescPais] VARCHAR(30) NOT NULL,
    [AbrevPais] VARCHAR(3) NOT NULL,
    [Area] INT NULL,
    [Percapita] FLOAT NULL,
    [Pib] FLOAT NULL,
    [Populacao] INT NULL,
    [IndAtuPais] VARCHAR(3) NOT NULL,
    [IndNacional] VARCHAR(3) NULL,
    [Nacionalidade] VARCHAR(20) NULL,
    [DataAtualiz] SMALLDATETIME NULL,
    [Fonte] VARCHAR(50) NULL,
    [IndAtualizacao] BIT NOT NULL,
    [IndNacaoPadrao] BIT NOT NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL,
    [SITUACAO] BIT NOT NULL
);

CREATE TABLE [stg_cdc].[dbo_Parceiro] (
    [__CDC_STARTLSN] BINARY NULL,
    [__CDC_SEQVAL] BINARY NULL,
    [__CDC_OPERATION] VARCHAR(2) NULL,
    [CodParceiro] INT NULL,
    [TipoParceiro] VARCHAR(1) NULL,
    [NomeRazaoSocial] VARCHAR(120) NULL,
    [NomeAbrevFantasia] VARCHAR(80) NULL,
    [CgcCpf] NUMERIC(15,0) NULL,
    [IndAtu] VARCHAR(3) NULL,
    [DataInc] SMALLDATETIME NULL,
    [DataAtu] SMALLDATETIME NULL,
    [CodUnidOperInc] INT NULL,
    [CodUnidOperAtu] INT NULL,
    [ControleRede] SMALLINT NULL,
    [Tipo] INT NULL,
    [IndAtualizacao] SMALLINT NULL,
    [CodSebrae] INT NULL,
    [CodResponsavel] INT NULL,
    [ReceberInfoSEBRAE] CHAR(1) NULL,
    [rowguid] UNIQUEIDENTIFIER NULL,
    [Situacao] INT NULL,
    [Deficiencia] CHAR(1) NULL
);

CREATE TABLE [stg_cdc].[dbo_Pessoaf] (
    [__CDC_STARTLSN] BINARY NULL,
    [__CDC_SEQVAL] BINARY NULL,
    [__CDC_OPERATION] VARCHAR(2) NULL,
    [CodParceiro] INT NULL,
    [Identidade] VARCHAR(15) NULL,
    [OrgEmis] VARCHAR(10) NULL,
    [DataNasc] SMALLDATETIME NULL,
    [CodProfis] INT NULL,
    [CodGrauEscol] SMALLINT NULL,
    [Autonomo] VARCHAR(3) NULL,
    [CodPais] SMALLINT NULL,
    [EstCivil] VARCHAR(10) NULL,
    [Sexo] TINYINT NULL,
    [EstadoCivil] TINYINT NULL,
    [IndAutonomo] BIT NULL,
    [ClassificacaoPessoa] SMALLINT NULL,
    [rowguid] UNIQUEIDENTIFIER NULL,
    [CodAtividadePF] INT NULL,
    [NomeMae] VARCHAR(120) NULL,
    [SituacaoAtualID] BIGINT NULL
);

CREATE TABLE [stg_cdc].[dbo_Pessoaj] (
    [__CDC_STARTLSN] BINARY NULL,
    [__CDC_SEQVAL] BINARY NULL,
    [__CDC_OPERATION] VARCHAR(2) NULL,
    [codparceiro] INT NULL,
    [inscest] VARCHAR(20) NULL,
    [inscmun] VARCHAR(20) NULL,
    [databert] SMALLDATETIME NULL,
    [datfech] SMALLDATETIME NULL,
    [codsetor] SMALLINT NULL,
    [codconst] SMALLINT NULL,
    [codgrupemp] SMALLINT NULL,
    [numfunc] SMALLINT NULL,
    [numfiliais] SMALLINT NULL,
    [capsocial] NUMERIC(16,2) NULL,
    [faturam] SMALLINT NULL,
    [porte] SMALLINT NULL,
    [codareaatu] INT NULL,
    [indLegalizado] SMALLINT NULL,
    [rowguid] UNIQUEIDENTIFIER NULL,
    [CodProdutorRural] VARCHAR(20) NULL,
    [CodDap] VARCHAR(40) NULL,
    [CodPescador] VARCHAR(40) NULL,
    [NIRF] NUMERIC(8,0) NULL,
    [tamanhoPropriedade] INT NULL,
    [OptanteSimplesNacional] BIT NULL,
    [CodSICAB] VARCHAR(20) NULL,
    [DataValidade] DATE NULL,
    [INEP] NUMERIC(8,0) NULL,
    [NaturezaJuridicaID] INT NULL,
    [CodCAF] VARCHAR(24) NULL,
    [CpfCAEPF] NUMERIC(11,0) NULL,
    [CodCAEPF] NUMERIC(14,0) NULL
);

CREATE TABLE [stg_cdc].[dbo_porte] (
    [__CDC_STARTLSN] BINARY NULL,
    [__CDC_SEQVAL] BINARY NULL,
    [__CDC_OPERATION] VARCHAR(2) NULL,
    [porte] VARCHAR(50) NOT NULL,
    [nummaxfunc] SMALLINT NOT NULL,
    [numminfunc] SMALLINT NOT NULL,
    [FaturamentoMIN] NUMERIC(16,2) NULL,
    [FaturamentoMAX] NUMERIC(16,2) NULL,
    [codPorte] SMALLINT NOT NULL,
    [Situacao] CHAR(1) NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL,
    [DescPorte] VARCHAR(255) NULL
);

CREATE TABLE [stg_cdc].[dbo_Regiao] (
    [__CDC_STARTLSN] BINARY NULL,
    [__CDC_SEQVAL] BINARY NULL,
    [__CDC_OPERATION] VARCHAR(2) NULL,
    [CodRegiao] INT NOT NULL,
    [DescricaoRegiao] VARCHAR(50) NULL
);

CREATE TABLE [stg_cdc].[dbo_Sebrae] (
    [__CDC_STARTLSN] BINARY NULL,
    [__CDC_SEQVAL] BINARY NULL,
    [__CDC_OPERATION] VARCHAR(2) NULL,
    [codsebrae] INT NOT NULL,
    [descsebrae] VARCHAR(40) NOT NULL,
    [nomeabrev] VARCHAR(10) NULL,
    [fone] VARCHAR(30) NULL,
    [cgc] NUMERIC(15,0) NOT NULL,
    [codlogr] INT NOT NULL,
    [descendereco] VARCHAR(60) NULL,
    [numero] VARCHAR(6) NULL,
    [complemento] VARCHAR(30) NULL,
    [codbairro] INT NULL,
    [codcid] INT NULL,
    [codest] SMALLINT NULL,
    [codpais] SMALLINT NULL,
    [cep] INT NULL,
    [SeqUF] INT NULL,
    [Situacao] CHAR(1) NULL,
    [codsebraeSGE] UNIQUEIDENTIFIER NULL,
    [rowguid] UNIQUEIDENTIFIER NOT NULL,
    [NIRF] BIT NULL,
    [CodResponsavel] INT NULL,
    [Centralizado] BIT NOT NULL
);

CREATE TABLE [stg_cdc].[dbo_TBPAIAcao] (
    [__CDC_STARTLSN] BINARY NULL,
    [__CDC_SEQVAL] BINARY NULL,
    [__CDC_OPERATION] VARCHAR(2) NULL,
    [CodPRATIF] UNIQUEIDENTIFIER NULL,
    [CodAcao] UNIQUEIDENTIFIER NULL,
    [NomeAcao] VARCHAR(100) NULL,
    [Ativo] CHAR(1) NULL,
    [CodAcao_Seq] INT NULL,
    [rowguid] UNIQUEIDENTIFIER NULL,
    [CodPrograma] UNIQUEIDENTIFIER NULL
);

CREATE TABLE [stg_cdc].[dbo_TBPAIPRATIF] (
    [__CDC_STARTLSN] BINARY NULL,
    [__CDC_SEQVAL] BINARY NULL,
    [__CDC_OPERATION] VARCHAR(2) NULL,
    [CodPRATIF] UNIQUEIDENTIFIER NULL,
    [CodSEBRAESGE] UNIQUEIDENTIFIER NULL,
    [Codtipologia] CHAR(2) NULL,
    [CodArtefato] CHAR(2) NULL,
    [CodFormaGestao] CHAR(1) NULL,
    [CodGrauGestao] CHAR(1) NULL,
    [NuPRATIFSeq] INT NULL,
    [NomePRATIF] VARCHAR(100) NULL,
    [CodSetorSEBRAE] SMALLINT NULL,
    [Ativo] CHAR(1) NULL,
    [rowguid] UNIQUEIDENTIFIER NULL,
    [indParceiro] VARCHAR(1) NULL,
    [nupratif] VARCHAR(12) NULL,
    [CNPJ] VARCHAR(14) NULL
);

CREATE TABLE [stg_cdc].[repl_control] (
    [configPrefix] NVARCHAR(128) NOT NULL,
    [captureInstance] NVARCHAR(128) NOT NULL,
    [fromLsn] BINARY NULL,
    [upToLsn] BINARY NULL,
    [previousFromLsn] BINARY NULL,
    [previousUpToLsn] BINARY NULL,
    [currentRowCount] BIGINT NULL,
    [isRunning] BIT NOT NULL
);

CREATE TABLE [stg_cdc].[sas_TB_Assunto] (
    [__CDC_STARTLSN] BINARY NULL,
    [__CDC_SEQVAL] BINARY NULL,
    [__CDC_OPERATION] VARCHAR(2) NULL,
    [CodSebrae] INT NULL,
    [RecNum] BIGINT NULL,
    [ID] BIGINT NULL,
    [Nome] VARCHAR(255) NULL,
    [Ativo] BIT NULL,
    [DataSituacao] DATETIME NULL,
    [DisponivelPara] TINYINT NULL,
    [NivelID] BIGINT NULL,
    [Rowguid] UNIQUEIDENTIFIER NULL
);

CREATE TABLE [stg_cdc].[sas_TB_Assunto_Unidade_Organizacional] (
    [__CDC_STARTLSN] BINARY NULL,
    [__CDC_SEQVAL] BINARY NULL,
    [__CDC_OPERATION] VARCHAR(2) NULL,
    [ID] BIGINT NULL,
    [AssuntoID] BIGINT NULL,
    [UnidadeOrganizacionalID] BIGINT NULL,
    [Rowguid] UNIQUEIDENTIFIER NULL
);

CREATE TABLE [stg_cdc].[sas_TB_Atendente_Agendamento] (
    [__CDC_STARTLSN] BINARY NULL,
    [__CDC_SEQVAL] BINARY NULL,
    [__CDC_OPERATION] VARCHAR(2) NULL,
    [CodSebrae] INT NULL,
    [RecNum] BIGINT NULL,
    [ID] BIGINT NULL,
    [UsuarioID] INT NULL,
    [ClienteIDPessoaJuridica] INT NULL,
    [Ativo] BIT NULL,
    [DataSituacao] DATETIME NULL,
    [Rowguid] UNIQUEIDENTIFIER NULL
);

CREATE TABLE [stg_cdc].[sas_TB_Atendente_Agendamento_Agenda] (
    [__CDC_STARTLSN] BINARY NULL,
    [__CDC_SEQVAL] BINARY NULL,
    [__CDC_OPERATION] VARCHAR(2) NULL,
    [CodSebrae] INT NULL,
    [RecNum] BIGINT NULL,
    [ID] BIGINT NULL,
    [UnidadeOrganizacionalID] BIGINT NULL,
    [Ativo] BIT NULL,
    [DataSituacao] DATETIME NULL,
    [AtendenteAgendamentoID] BIGINT NULL,
    [ParametroIntervaloHoraAgendamento] INT NULL,
    [TipoAgenda] CHAR(2) NULL,
    [PortfolioDisponibilizacaoID] BIGINT NULL,
    [ConsultoriaSebrae] BIT NULL,
    [Rowguid] UNIQUEIDENTIFIER NULL,
    [LinkAcesso] VARCHAR(500) NULL
);

CREATE TABLE [stg_cdc].[sas_TB_Atendente_Agendamento_Agenda_Assunto] (
    [__CDC_STARTLSN] BINARY NULL,
    [__CDC_SEQVAL] BINARY NULL,
    [__CDC_OPERATION] VARCHAR(2) NULL,
    [ID] BIGINT NULL,
    [AssuntoID] BIGINT NULL,
    [AtendenteAgendamentoAgendaID] BIGINT NULL,
    [Rowguid] UNIQUEIDENTIFIER NULL
);

CREATE TABLE [stg_cdc].[sas_TB_Atendente_Agendamento_Agenda_Horario] (
    [__CDC_STARTLSN] BINARY NULL,
    [__CDC_SEQVAL] BINARY NULL,
    [__CDC_OPERATION] VARCHAR(2) NULL,
    [CodSebrae] INT NULL,
    [RecNum] BIGINT NULL,
    [ID] BIGINT NULL,
    [Data] DATETIME NULL,
    [HoraInicial] DATETIME NULL,
    [HoraFinal] DATETIME NULL,
    [AtendenteAgendamentoAgendaID] BIGINT NULL,
    [Ativo] BIT NULL,
    [Combo] BIT NULL,
    [Valor] NUMERIC(18,2) NULL,
    [PermiteDesconto] BIT NULL,
    [ValorDesconto] NUMERIC(18,2) NULL,
    [AgendamentoNovo] BIT NULL,
    [Rowguid] UNIQUEIDENTIFIER NULL
);

CREATE TABLE [stg_cdc].[sas_TB_Atendente_Recepcao] (
    [__CDC_STARTLSN] BINARY NULL,
    [__CDC_SEQVAL] BINARY NULL,
    [__CDC_OPERATION] VARCHAR(2) NULL,
    [CodSebrae] INT NULL,
    [RecNum] BIGINT NULL,
    [ID] BIGINT NULL,
    [UsuarioID] INT NULL,
    [UnidadeOrganizacionalID] BIGINT NULL,
    [Tipo] TINYINT NULL,
    [Ativo] BIT NULL,
    [DataHoraInicioDisponibilidade] DATETIME NULL,
    [DataHoraFimDisponibilidade] DATETIME NULL,
    [Posicao] VARCHAR(MAX) NULL,
    [Rowguid] UNIQUEIDENTIFIER NULL
);

CREATE TABLE [stg_cdc].[sas_TB_Atendente_Recepcao_Assunto] (
    [__CDC_STARTLSN] BINARY NULL,
    [__CDC_SEQVAL] BINARY NULL,
    [__CDC_OPERATION] VARCHAR(2) NULL,
    [ID] BIGINT NULL,
    [AssuntoID] BIGINT NULL,
    [UsuarioID] INT NULL,
    [Rowguid] UNIQUEIDENTIFIER NULL
);

CREATE TABLE [stg_cdc].[SAS_TB_Classificacao_Parceiro] (
    [__CDC_STARTLSN] BINARY NULL,
    [__CDC_SEQVAL] BINARY NULL,
    [__CDC_OPERATION] VARCHAR(2) NULL,
    [ID] BIGINT NOT NULL,
    [Descricao] VARCHAR(100) NOT NULL
);

CREATE TABLE [stg_cdc].[SAS_TB_ClassificacaoParceiro_REL_EntidadeParceira] (
    [__CDC_STARTLSN] BINARY NULL,
    [__CDC_SEQVAL] BINARY NULL,
    [__CDC_OPERATION] VARCHAR(2) NULL,
    [ID] BIGINT NOT NULL,
    [ClassificacaoParceiroID] BIGINT NOT NULL,
    [EntidadeParceiraID] BIGINT NOT NULL
);

CREATE TABLE [stg_cdc].[sas_TB_Cliente_Interesse_Necessidade] (
    [__CDC_STARTLSN] BINARY NULL,
    [__CDC_SEQVAL] BINARY NULL,
    [__CDC_OPERATION] VARCHAR(2) NULL,
    [ID] BIGINT NULL,
    [ClienteID] INT NULL,
    [InteresseNecessidadeID] BIGINT NULL,
    [Data] DATETIME NULL,
    [CodParceiro] INT NULL,
    [UnidadeOrganizacionalID] BIGINT NULL,
    [Rowguid] UNIQUEIDENTIFIER NULL
);

CREATE TABLE [stg_cdc].[sas_TB_Cliente_Observacao] (
    [__CDC_STARTLSN] BINARY NULL,
    [__CDC_SEQVAL] BINARY NULL,
    [__CDC_OPERATION] VARCHAR(2) NULL,
    [ClienteID] INT NULL,
    [Texto] VARCHAR(1000) NULL,
    [Rowguid] UNIQUEIDENTIFIER NULL,
    [CodSebrae] INT NULL,
    [RecNum] BIGINT NULL,
    [ID] BIGINT NULL,
    [UsuarioID] INT NULL,
    [Data] DATETIME NULL
);

CREATE TABLE [stg_cdc].[sas_TB_Combo] (
    [__CDC_STARTLSN] BINARY NULL,
    [__CDC_SEQVAL] BINARY NULL,
    [__CDC_OPERATION] VARCHAR(2) NULL,
    [CodSebrae] INT NULL,
    [RecNum] BIGINT NULL,
    [ID] BIGINT NULL,
    [Nome] VARCHAR(255) NULL,
    [Situacao] BIT NULL,
    [Rowguid] UNIQUEIDENTIFIER NULL
);

CREATE TABLE [stg_cdc].[sas_TB_Combo_Detalhe] (
    [__CDC_STARTLSN] BINARY NULL,
    [__CDC_SEQVAL] BINARY NULL,
    [__CDC_OPERATION] VARCHAR(2) NULL,
    [CodSebrae] INT NULL,
    [RecNum] BIGINT NULL,
    [ID] BIGINT NULL,
    [ComboID] BIGINT NULL,
    [PortfolioID] BIGINT NULL,
    [TipoServicoID] BIGINT NULL,
    [TipoDisponibilizacao] CHAR(1) NULL,
    [Rowguid] UNIQUEIDENTIFIER NULL
);

CREATE TABLE [stg_cdc].[SAS_TB_Combo_Disponibilizacao] (
    [__CDC_STARTLSN] BINARY NULL,
    [__CDC_SEQVAL] BINARY NULL,
    [__CDC_OPERATION] VARCHAR(2) NULL,
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [Nome] VARCHAR(255) NOT NULL,
    [ComboID] BIGINT NOT NULL,
    [Situacao] BIT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL,
    [ContratoID] BIGINT NULL,
    [CertificadoID] BIGINT NULL
);

CREATE TABLE [stg_cdc].[SAS_TB_Combo_Disponibilizacao_Detalhe] (
    [__CDC_STARTLSN] BINARY NULL,
    [__CDC_SEQVAL] BINARY NULL,
    [__CDC_OPERATION] VARCHAR(2) NULL,
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [ComboDisponibilizacaoID] BIGINT NOT NULL,
    [ComboDetalheID] BIGINT NOT NULL,
    [EventoID] BIGINT NULL,
    [PortfolioDisponibilizacaoID] BIGINT NULL,
    [AtendenteAgendamentoAgendaHorarioID] BIGINT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [stg_cdc].[SAS_TB_Comercializacao_Atendimento] (
    [__CDC_STARTLSN] BINARY NULL,
    [__CDC_SEQVAL] BINARY NULL,
    [__CDC_OPERATION] VARCHAR(2) NULL,
    [CodUFOrigem] TINYINT NULL,
    [RecNum] BIGINT NULL,
    [ID] BIGINT NULL,
    [CodSebrae] INT NULL,
    [EventoID] BIGINT NULL,
    [PortfolioDisponibilizacaoID] BIGINT NULL,
    [CodMeioAtendimento] INT NULL,
    [Rowguid] UNIQUEIDENTIFIER NULL
);

CREATE TABLE [stg_cdc].[sas_TB_Diagnostico] (
    [__CDC_STARTLSN] BINARY NULL,
    [__CDC_SEQVAL] BINARY NULL,
    [__CDC_OPERATION] VARCHAR(2) NULL,
    [CodUFOrigem] TINYINT NULL,
    [RecNum] BIGINT NULL,
    [ID] BIGINT NULL,
    [CodSebrae] INT NULL,
    [Nome] VARCHAR(100) NULL,
    [Ativo] BIT NULL,
    [QtdeTemasDevolutiva] INT NULL,
    [QtdeSubtemasDevolutiva] INT NULL,
    [DescricaoDevolutiva] VARCHAR(MAX) NULL,
    [Rowguid] UNIQUEIDENTIFIER NULL,
    [AplicabilidadeFinalidade] VARCHAR(MAX) NULL
);

CREATE TABLE [stg_cdc].[sas_TB_Diagnostico_Descricao_Tema] (
    [__CDC_STARTLSN] BINARY NULL,
    [__CDC_SEQVAL] BINARY NULL,
    [__CDC_OPERATION] VARCHAR(2) NULL,
    [CodUFOrigem] TINYINT NULL,
    [RecNum] BIGINT NULL,
    [ID] BIGINT NULL,
    [CodSebrae] INT NULL,
    [CodAreaTematica] INT NULL,
    [Descricao] VARCHAR(MAX) NULL,
    [Rowguid] UNIQUEIDENTIFIER NULL
);

CREATE TABLE [stg_cdc].[sas_TB_Diagnostico_Devolutiva_Tema] (
    [__CDC_STARTLSN] BINARY NULL,
    [__CDC_SEQVAL] BINARY NULL,
    [__CDC_OPERATION] VARCHAR(2) NULL,
    [CodUFOrigem] TINYINT NULL,
    [RecNum] BIGINT NULL,
    [ID] BIGINT NULL,
    [CodSebrae] INT NULL,
    [InteracaoDetalheDiagnosticoID] BIGINT NULL,
    [CodAreaTematica] INT NULL,
    [Desempenho] NUMERIC(6,5) NULL,
    [Rowguid] UNIQUEIDENTIFIER NULL,
    [MostrarDevolutiva] BIT NULL
);

CREATE TABLE [stg_cdc].[sas_TB_Diagnostico_Interacao_Resposta] (
    [__CDC_STARTLSN] BINARY NULL,
    [__CDC_SEQVAL] BINARY NULL,
    [__CDC_OPERATION] VARCHAR(2) NULL,
    [CodUFOrigem] TINYINT NULL,
    [RecNum] BIGINT NULL,
    [ID] BIGINT NULL,
    [CodSebrae] INT NULL,
    [DiagnosticoRelDiagnosticoPerguntaID] BIGINT NULL,
    [InteracaoDetalheDiagnosticoID] BIGINT NULL,
    [DiagnosticoPerguntaRespostaID] BIGINT NULL,
    [RespostaLivre] VARCHAR(MAX) NULL,
    [NaoSeAplica] BIT NULL,
    [Rowguid] UNIQUEIDENTIFIER NULL
);

CREATE TABLE [stg_cdc].[sas_TB_Diagnostico_Pergunta] (
    [__CDC_STARTLSN] BINARY NULL,
    [__CDC_SEQVAL] BINARY NULL,
    [__CDC_OPERATION] VARCHAR(2) NULL,
    [CodUFOrigem] TINYINT NULL,
    [RecNum] BIGINT NULL,
    [ID] BIGINT NULL,
    [CodSebrae] INT NULL,
    [Descricao] VARCHAR(255) NULL,
    [Ativo] BIT NULL,
    [IncluirOpcaoNaoSeAplica] BIT NULL,
    [Tipo] CHAR(1) NULL,
    [RespostaLivre] BIT NULL,
    [CodAreaTematica] INT NULL,
    [DescricaoCliente] VARCHAR(MAX) NULL,
    [Rowguid] UNIQUEIDENTIFIER NULL
);

CREATE TABLE [stg_cdc].[sas_TB_Diagnostico_Pergunta_CNAE] (
    [__CDC_STARTLSN] BINARY NULL,
    [__CDC_SEQVAL] BINARY NULL,
    [__CDC_OPERATION] VARCHAR(2) NULL,
    [CodUFOrigem] TINYINT NULL,
    [RecNum] BIGINT NULL,
    [ID] BIGINT NULL,
    [CodSebrae] INT NULL,
    [CodAtivEcon] VARCHAR(5) NULL,
    [CodCnaeFiscal] VARCHAR(2) NULL,
    [DiagnosticoPerguntaID] BIGINT NULL,
    [Rowguid] UNIQUEIDENTIFIER NULL
);

CREATE TABLE [stg_cdc].[sas_TB_Diagnostico_Pergunta_Resposta] (
    [__CDC_STARTLSN] BINARY NULL,
    [__CDC_SEQVAL] BINARY NULL,
    [__CDC_OPERATION] VARCHAR(2) NULL,
    [CodUFOrigem] TINYINT NULL,
    [RecNum] BIGINT NULL,
    [ID] BIGINT NULL,
    [CodSebrae] INT NULL,
    [DiagnosticoPerguntaID] BIGINT NULL,
    [Descricao] VARCHAR(255) NULL,
    [Ordenacao] INT NULL,
    [Valor] NUMERIC(6,5) NULL,
    [Rowguid] UNIQUEIDENTIFIER NULL
);

CREATE TABLE [stg_cdc].[sas_TB_Diagnostico_Publico] (
    [__CDC_STARTLSN] BINARY NULL,
    [__CDC_SEQVAL] BINARY NULL,
    [__CDC_OPERATION] VARCHAR(2) NULL,
    [ID] BIGINT NULL,
    [Nome] VARCHAR(100) NULL
);

CREATE TABLE [stg_cdc].[sas_TB_Diagnostico_REL_Devolutiva_Solucao_Indicada] (
    [__CDC_STARTLSN] BINARY NULL,
    [__CDC_SEQVAL] BINARY NULL,
    [__CDC_OPERATION] VARCHAR(2) NULL,
    [CodUFOrigem] TINYINT NULL,
    [RecNum] BIGINT NULL,
    [ID] BIGINT NULL,
    [CodSebrae] INT NULL,
    [InteracaoDetalheDiagnosticoID] BIGINT NULL,
    [Titulo] VARCHAR(100) NULL,
    [Descricao] VARCHAR(255) NULL,
    [URL] VARCHAR(255) NULL,
    [PortfolioID] BIGINT NULL,
    [Rowguid] UNIQUEIDENTIFIER NULL
);

CREATE TABLE [stg_cdc].[sas_TB_Diagnostico_REL_Devolutiva_Tema_Portfolio] (
    [__CDC_STARTLSN] BINARY NULL,
    [__CDC_SEQVAL] BINARY NULL,
    [__CDC_OPERATION] VARCHAR(2) NULL,
    [CodUFOrigem] TINYINT NULL,
    [RecNum] BIGINT NULL,
    [ID] BIGINT NULL,
    [CodSebrae] INT NULL,
    [DiagnosticoDevolutivaTemaID] BIGINT NULL,
    [PortfolioID] BIGINT NULL,
    [Rowguid] UNIQUEIDENTIFIER NULL
);

CREATE TABLE [stg_cdc].[sas_TB_Diagnostico_REL_Diagnostico_Pergunta] (
    [__CDC_STARTLSN] BINARY NULL,
    [__CDC_SEQVAL] BINARY NULL,
    [__CDC_OPERATION] VARCHAR(2) NULL,
    [CodUFOrigem] TINYINT NULL,
    [RecNum] BIGINT NULL,
    [ID] BIGINT NULL,
    [CodSebrae] INT NULL,
    [DiagnosticoPerguntaID] BIGINT NULL,
    [Ordenacao] INT NULL,
    [Ativo] BIT NULL,
    [DiagnosticoID] BIGINT NULL,
    [Rowguid] UNIQUEIDENTIFIER NULL
);

CREATE TABLE [stg_cdc].[sas_TB_Diagnostico_REL_Diagnostico_Publico] (
    [__CDC_STARTLSN] BINARY NULL,
    [__CDC_SEQVAL] BINARY NULL,
    [__CDC_OPERATION] VARCHAR(2) NULL,
    [CodUFOrigem] TINYINT NULL,
    [RecNum] BIGINT NULL,
    [ID] BIGINT NULL,
    [CodSebrae] INT NULL,
    [DiagnosticoPublicoID] BIGINT NULL,
    [DiagnosticoID] BIGINT NULL,
    [Rowguid] UNIQUEIDENTIFIER NULL
);

CREATE TABLE [stg_cdc].[sas_TB_Diagnostico_REL_Diagnostico_Tema] (
    [__CDC_STARTLSN] BINARY NULL,
    [__CDC_SEQVAL] BINARY NULL,
    [__CDC_OPERATION] VARCHAR(2) NULL,
    [CodUFOrigem] TINYINT NULL,
    [RecNum] BIGINT NULL,
    [ID] BIGINT NULL,
    [CodSebrae] INT NULL,
    [CodAreaTematica] INT NULL,
    [Ordenacao] INT NULL,
    [DiagnosticoID] BIGINT NULL,
    [Rowguid] UNIQUEIDENTIFIER NULL,
    [Descricao] VARCHAR(MAX) NULL
);

CREATE TABLE [stg_cdc].[sas_TB_Diagnostico_REL_Setor] (
    [__CDC_STARTLSN] BINARY NULL,
    [__CDC_SEQVAL] BINARY NULL,
    [__CDC_OPERATION] VARCHAR(2) NULL,
    [ID] BIGINT NULL,
    [CodSetor] SMALLINT NULL,
    [DiagnosticoID] BIGINT NULL
);

CREATE TABLE [stg_cdc].[sas_TB_ERP_Acao] (
    [__CDC_STARTLSN] BINARY NULL,
    [__CDC_SEQVAL] BINARY NULL,
    [__CDC_OPERATION] VARCHAR(2) NULL,
    [ID] BIGINT NULL,
    [CodSebrae] INT NULL,
    [CodCCusto] VARCHAR(255) NULL,
    [CodAcao] VARCHAR(255) NULL,
    [Nome] VARCHAR(500) NULL,
    [GUID] UNIQUEIDENTIFIER NULL,
    [Rowguid] UNIQUEIDENTIFIER NULL
);

CREATE TABLE [stg_cdc].[sas_TB_Evento] (
    [__CDC_STARTLSN] BINARY NULL,
    [__CDC_SEQVAL] BINARY NULL,
    [__CDC_OPERATION] VARCHAR(2) NULL,
    [CodSebrae] INT NULL,
    [RecNum] BIGINT NULL,
    [ID] BIGINT NULL,
    [UnidadeOrganizacionalID] BIGINT NULL,
    [CodAgrupamento] INT NULL,
    [CodProduto] BIGINT NULL,
    [Nome] VARCHAR(255) NULL,
    [TipoPublico] CHAR(1) NULL,
    [PublicoEvento] CHAR(1) NULL,
    [PubCanaisDigitais] BIT NULL,
    [EventoGratuito] BIT NULL,
    [MinimoParticipantes] INT NULL,
    [MaximoParticipantes] INT NULL,
    [MinimoPagantes] INT NULL,
    [CargaHoraria] FLOAT NULL,
    [Preco] NUMERIC(18,2) NULL,
    [DiasReserva] INT NULL,
    [DiasEmitirAviso] INT NULL,
    [PermiteDesconto] BIT NULL,
    [DescontoMaximo] NUMERIC(18,2) NULL,
    [URL] VARCHAR(255) NULL,
    [CodProjeto] UNIQUEIDENTIFIER NULL,
    [CodAcao] INT NULL,
    [Responsavel] INT NULL,
    [GestorProjeto] INT NULL,
    [MesAnoComp] DATETIME NULL,
    [Situacao] CHAR(1) NULL,
    [CodProjetoERP] VARCHAR(20) NULL,
    [CodAcaoERP] VARCHAR(20) NULL,
    [CodUnidadeERP] VARCHAR(20) NULL,
    [CodProdutoERP] VARCHAR(20) NULL,
    [CodCCustoERP] VARCHAR(50) NULL,
    [MotivoCancelamentoID] BIGINT NULL,
    [DescCancelamento] VARCHAR(255) NULL,
    [ProjetoERP] VARCHAR(500) NULL,
    [AcaoERP] VARCHAR(500) NULL,
    [UnidadeERP] VARCHAR(500) NULL,
    [ProdutoERP] VARCHAR(500) NULL,
    [TipoEventoID] INT NULL,
    [CodEmpreendimentoPublicoFechado] INT NULL,
    [CodFilial] INT NULL,
    [FrequenciaMinima] INT NULL,
    [Aproveitamento] BIT NULL,
    [TbFat_1] VARCHAR(50) NULL,
    [TbFat_2] VARCHAR(50) NULL,
    [TbFat_3] VARCHAR(50) NULL,
    [TbFat_4] VARCHAR(50) NULL,
    [TbFat_5] VARCHAR(50) NULL,
    [TbFlx_1] VARCHAR(50) NULL,
    [TbFlx_2] VARCHAR(50) NULL,
    [TbFlx_3] VARCHAR(50) NULL,
    [TbFlx_4] VARCHAR(50) NULL,
    [TbFlx_5] VARCHAR(50) NULL,
    [Rowguid] UNIQUEIDENTIFIER NULL,
    [EmailAviso] VARCHAR(255) NULL,
    [AvisoEnviado] BIT NULL,
    [Conteudo] VARCHAR(500) NULL,
    [UsuarioCadastro] INT NULL,
    [DataCadastro] DATETIME NULL,
    [DataUltimaAlteracao] DATETIME NULL,
    [TipoServicoID] BIGINT NULL,
    [ModalidadeID] BIGINT NULL,
    [InstrumentoID] INT NULL,
    [DiasEnvioAnexo] INT NULL,
    [MacroeventoID] BIGINT NULL,
    [AnexoEnviado] BIT NULL,
    [ObservacaoLogistica] VARCHAR(500) NULL,
    [EmailLogistica] VARCHAR(250) NULL,
    [CodigoTurma] INT NULL,
    [CodCidadeERP] INT NULL,
    [CidadeERP] VARCHAR(500) NULL,
    [Combo] BIT NULL,
    [CodDepartamento] VARCHAR(20) NULL,
    [ERPMovimentoFilialRMID] BIGINT NULL,
    [ContratoID] BIGINT NULL,
    [Observacao] VARCHAR(500) NULL,
    [TipoEvento] CHAR(1) NULL,
    [CategoriaPublico] CHAR(1) NULL,
    [EtapaEducacao] CHAR(1) NULL,
    [QuantidadeInscricoes] INT NULL,
    [NotaMinima] INT NULL,
    [NumeroVisitanteFeira] INT NULL,
    [StandConsolidado] CHAR(1) NULL
);

CREATE TABLE [stg_cdc].[sas_TB_Evento_Condicao_Pagamento] (
    [__CDC_STARTLSN] BINARY NULL,
    [__CDC_SEQVAL] BINARY NULL,
    [__CDC_OPERATION] VARCHAR(2) NULL,
    [ID] BIGINT NULL,
    [EventoID] BIGINT NULL,
    [CondicaoPagamentoID] VARCHAR(5) NULL,
    [Rowguid] UNIQUEIDENTIFIER NULL
);

CREATE TABLE [stg_cdc].[sas_TB_Evento_Espera] (
    [__CDC_STARTLSN] BINARY NULL,
    [__CDC_SEQVAL] BINARY NULL,
    [__CDC_OPERATION] VARCHAR(2) NULL,
    [CodUFOrigem] TINYINT NULL,
    [RecNum] BIGINT NULL,
    [ID] BIGINT NULL,
    [CodSebrae] INT NULL,
    [EventoID] BIGINT NULL,
    [CodPessoaF] INT NULL,
    [CodPessoaJ] INT NULL,
    [Observacao] VARCHAR(500) NULL,
    [Ativo] BIT NULL,
    [Rowguid] UNIQUEIDENTIFIER NULL,
    [TipoParticipanteFeira] CHAR(1) NULL
);

CREATE TABLE [stg_cdc].[sas_TB_Evento_Instituicao] (
    [__CDC_STARTLSN] BINARY NULL,
    [__CDC_SEQVAL] BINARY NULL,
    [__CDC_OPERATION] VARCHAR(2) NULL,
    [ID] BIGINT NULL,
    [CodSebrae] INT NULL,
    [EventoID] BIGINT NULL,
    [Instituicao] VARCHAR(500) NULL
);

CREATE TABLE [stg_cdc].[sas_TB_Evento_Instrutor] (
    [__CDC_STARTLSN] BINARY NULL,
    [__CDC_SEQVAL] BINARY NULL,
    [__CDC_OPERATION] VARCHAR(2) NULL,
    [CodSebrae] INT NULL,
    [RecNum] BIGINT NULL,
    [ID] BIGINT NULL,
    [EventoID] BIGINT NULL,
    [TipoInstrutor] CHAR(1) NULL,
    [FuncionarioCredenciadoID] BIGINT NULL,
    [CodPessoaJ] INT NULL,
    [NomeInstrutor] VARCHAR(255) NULL,
    [CodigoContratoSGF] VARCHAR(30) NULL,
    [Rowguid] UNIQUEIDENTIFIER NULL,
    [TipoInstituicaoPromotora] CHAR(1) NULL,
    [UnidadeOrganizacionalID] BIGINT NULL,
    [CodSebraeInstituicao] INT NULL
);

CREATE TABLE [stg_cdc].[sas_TB_Evento_Intencao] (
    [__CDC_STARTLSN] BINARY NULL,
    [__CDC_SEQVAL] BINARY NULL,
    [__CDC_OPERATION] VARCHAR(2) NULL,
    [CodSebrae] INT NULL,
    [RecNum] BIGINT NULL,
    [ID] BIGINT NULL,
    [CodProduto] BIGINT NULL,
    [CodPessoaF] INT NULL,
    [CodPessoaJ] INT NULL,
    [Horario] CHAR(3) NULL,
    [DataInicio] DATETIME NULL,
    [DataFinal] DATETIME NULL,
    [CidadeID] INT NULL,
    [UnidadeOrganizacionalID] BIGINT NULL,
    [Ativo] BIT NULL,
    [Rowguid] UNIQUEIDENTIFIER NULL,
    [TipoParticipanteFeira] CHAR(1) NULL
);

CREATE TABLE [stg_cdc].[sas_TB_Evento_LinkAcessoConteudo] (
    [__CDC_STARTLSN] BINARY NULL,
    [__CDC_SEQVAL] BINARY NULL,
    [__CDC_OPERATION] VARCHAR(2) NULL,
    [ID] BIGINT NULL,
    [CodSebrae] INT NULL,
    [EventoID] BIGINT NULL,
    [LinkAcessoConteudo] VARCHAR(500) NULL,
    [Nome] VARCHAR(200) NULL
);

CREATE TABLE [stg_cdc].[sas_TB_Evento_LinkProduto] (
    [__CDC_STARTLSN] BINARY NULL,
    [__CDC_SEQVAL] BINARY NULL,
    [__CDC_OPERATION] VARCHAR(2) NULL,
    [ID] BIGINT NULL,
    [CodSebrae] INT NULL,
    [EventoID] BIGINT NULL,
    [LinkProduto] VARCHAR(500) NULL
);

CREATE TABLE [stg_cdc].[SAS_TB_Evento_Log_Operacao] (
    [__CDC_STARTLSN] BINARY NULL,
    [__CDC_SEQVAL] BINARY NULL,
    [__CDC_OPERATION] VARCHAR(2) NULL,
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [EventoID] BIGINT NOT NULL,
    [DataHora] DATETIME NOT NULL,
    [Operacao] CHAR(1) NOT NULL,
    [CodParceiroResp] INT NOT NULL,
    [Campo] VARCHAR(255) NULL,
    [ValorAtual] VARCHAR(MAX) NULL,
    [ValorAnterior] VARCHAR(MAX) NULL,
    [MotivoCancEventoID] BIGINT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [stg_cdc].[SAS_TB_Evento_Log_Operacao_Inscricao] (
    [__CDC_STARTLSN] BINARY NULL,
    [__CDC_SEQVAL] BINARY NULL,
    [__CDC_OPERATION] VARCHAR(2) NULL,
    [CodUFOrigem] TINYINT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [EventoID] BIGINT NOT NULL,
    [DataHora] DATETIME NOT NULL,
    [Operacao] CHAR(1) NOT NULL,
    [CodParceiroResp] INT NOT NULL,
    [CodNovoParticipante] INT NULL,
    [CodCliente] INT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [stg_cdc].[sas_TB_Evento_Material] (
    [__CDC_STARTLSN] BINARY NULL,
    [__CDC_SEQVAL] BINARY NULL,
    [__CDC_OPERATION] VARCHAR(2) NULL,
    [CodSebrae] INT NULL,
    [RecNum] BIGINT NULL,
    [ID] BIGINT NULL,
    [EventoID] BIGINT NULL,
    [Material] VARCHAR(70) NULL,
    [Quantidade] VARCHAR(20) NULL,
    [Tipo] CHAR(1) NULL,
    [Rowguid] UNIQUEIDENTIFIER NULL
);

CREATE TABLE [stg_cdc].[SAS_TB_Evento_Pacote] (
    [__CDC_STARTLSN] BINARY NULL,
    [__CDC_SEQVAL] BINARY NULL,
    [__CDC_OPERATION] VARCHAR(2) NULL,
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [EventoID] BIGINT NOT NULL,
    [PacoteID] BIGINT NOT NULL
);

CREATE TABLE [stg_cdc].[sas_TB_Evento_Participante] (
    [__CDC_STARTLSN] BINARY NULL,
    [__CDC_SEQVAL] BINARY NULL,
    [__CDC_OPERATION] VARCHAR(2) NULL,
    [CodUFOrigem] TINYINT NULL,
    [RecNum] BIGINT NULL,
    [ID] BIGINT NULL,
    [CodSebrae] INT NULL,
    [EventoID] BIGINT NULL,
    [CodPessoaF] INT NULL,
    [CodPessoaJ] INT NULL,
    [Desconto] DECIMAL(18,2) NULL,
    [TipoParticipante] INT NULL,
    [Valor] DECIMAL(18,2) NULL,
    [Observacao] VARCHAR(500) NULL,
    [DataInscricao] DATETIME NULL,
    [Situacao] CHAR(1) NULL,
    [UsuarioResp] INT NULL,
    [DataDesistencia] DATETIME NULL,
    [DiasAusencia] INT NULL,
    [MotivoCancelamentoInscricaoID] BIGINT NULL,
    [DescCancelamento] VARCHAR(255) NULL,
    [ObsCancelamento] VARCHAR(255) NULL,
    [InteracaoID] BIGINT NULL,
    [EventoMovimentoID] BIGINT NULL,
    [Frequencia] INT NULL,
    [Aproveitamento] BIT NULL,
    [Aprovado] BIT NULL,
    [Rowguid] UNIQUEIDENTIFIER NULL,
    [InteracaoDetalheComboDisponibilizacaoID] BIGINT NULL,
    [Contrato] VARBINARY NULL,
    [DataConfirmacao] DATE NULL,
    [CodigoPedido] VARCHAR(100) NULL,
    [CodigoOrdem] VARCHAR(100) NULL,
    [CodigoBaixa] VARCHAR(100) NULL,
    [CodigoRetornoPagamento] VARCHAR(100) NULL,
    [DataUltimaAlteracao] DATETIME NULL,
    [TipoParticipanteFeira] CHAR(1) NULL
);

CREATE TABLE [stg_cdc].[sas_TB_Evento_Participante_Stand] (
    [__CDC_STARTLSN] BINARY NULL,
    [__CDC_SEQVAL] BINARY NULL,
    [__CDC_OPERATION] VARCHAR(2) NULL,
    [ID] BIGINT NULL,
    [CodSebrae] INT NULL,
    [CodPessoaF] INT NULL,
    [CodPessoaJ] INT NULL,
    [EventoID] BIGINT NULL,
    [EventoStandID] BIGINT NULL,
    [TipoStand] VARCHAR(100) NULL,
    [DescricaoStand] VARCHAR(500) NULL,
    [QuantidadeStandAdquirida] INT NULL,
    [PrecoUnStandAdquirido] NUMERIC(18,2) NULL,
    [PrecoTotalStandAdquirido] NUMERIC(18,2) NULL,
    [DescontoStand] NUMERIC(18,2) NULL,
    [TipoParticipanteID] INT NULL
);

CREATE TABLE [stg_cdc].[sas_TB_Evento_ParticipanteRodada] (
    [__CDC_STARTLSN] BINARY NULL,
    [__CDC_SEQVAL] BINARY NULL,
    [__CDC_OPERATION] VARCHAR(2) NULL,
    [ID] BIGINT NULL,
    [CodSebrae] INT NULL,
    [EventoID] BIGINT NULL,
    [TipoEmpresa] CHAR(1) NULL,
    [CodPessoaF] INT NULL,
    [CodPessoaJ] INT NULL,
    [NomeProduto] VARCHAR(300) NULL,
    [Descricao] VARCHAR(255) NULL,
    [UnidadeMedidaID] BIGINT NULL,
    [Quantidade] INT NULL,
    [PrecoUnitario] NUMERIC(18,2) NULL,
    [PrecoTotal] NUMERIC(18,2) NULL,
    [LinkAcesso] VARCHAR(500) NULL,
    [EventoParticipanteRodadaID] BIGINT NULL
);

CREATE TABLE [stg_cdc].[sas_TB_Evento_PartidaDestino] (
    [__CDC_STARTLSN] BINARY NULL,
    [__CDC_SEQVAL] BINARY NULL,
    [__CDC_OPERATION] VARCHAR(2) NULL,
    [ID] BIGINT NULL,
    [CodSebrae] INT NULL,
    [EventoID] BIGINT NULL,
    [TipoEndereco] CHAR(1) NULL,
    [Logradouro] VARCHAR(150) NULL,
    [Complemento] VARCHAR(70) NULL,
    [CodBairro] INT NULL,
    [CodCidade] INT NULL,
    [CodEstado] SMALLINT NULL,
    [CodPais] SMALLINT NULL,
    [CEP] INT NULL,
    [DescInternacional] VARCHAR(100) NULL
);

CREATE TABLE [stg_cdc].[sas_TB_Evento_Permissao_Inscricao] (
    [__CDC_STARTLSN] BINARY NULL,
    [__CDC_SEQVAL] BINARY NULL,
    [__CDC_OPERATION] VARCHAR(2) NULL,
    [CodUFOrigem] TINYINT NULL,
    [RecNum] BIGINT NULL,
    [ID] BIGINT NULL,
    [CodSebrae] INT NULL,
    [EventoID] BIGINT NULL,
    [UsuarioID] INT NULL,
    [Rowguid] UNIQUEIDENTIFIER NULL
);

CREATE TABLE [stg_cdc].[SAS_TB_Evento_Publico_Definido] (
    [__CDC_STARTLSN] BINARY NULL,
    [__CDC_SEQVAL] BINARY NULL,
    [__CDC_OPERATION] VARCHAR(2) NULL,
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [EventoID] BIGINT NOT NULL,
    [CodPessoaF] INT NOT NULL,
    [CodPessoaJ] INT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [stg_cdc].[sas_TB_Evento_Reserva] (
    [__CDC_STARTLSN] BINARY NULL,
    [__CDC_SEQVAL] BINARY NULL,
    [__CDC_OPERATION] VARCHAR(2) NULL,
    [CodUFOrigem] TINYINT NULL,
    [RecNum] BIGINT NULL,
    [ID] BIGINT NULL,
    [CodSebrae] INT NULL,
    [EventoID] BIGINT NULL,
    [CodPessoaF] INT NULL,
    [CodPessoaJ] INT NULL,
    [Situacao] CHAR(1) NULL,
    [Observacao] VARCHAR(500) NULL,
    [Desconto] DECIMAL(18,2) NULL,
    [TipoParticipante] INT NULL,
    [Valor] DECIMAL(18,2) NULL,
    [InteracaoID] BIGINT NULL,
    [EventoMovimentoID] BIGINT NULL,
    [DataReserva] DATETIME NULL,
    [InteracaoDetalheComboDisponibilizacaoID] BIGINT NULL,
    [Rowguid] UNIQUEIDENTIFIER NULL,
    [TipoParticipanteFeira] CHAR(1) NULL
);

CREATE TABLE [stg_cdc].[SAS_TB_Evento_Stand] (
    [__CDC_STARTLSN] BINARY NULL,
    [__CDC_SEQVAL] BINARY NULL,
    [__CDC_OPERATION] VARCHAR(2) NULL,
    [ID] BIGINT NOT NULL,
    [EventoID] BIGINT NOT NULL,
    [Descricao] VARCHAR(500) NOT NULL,
    [Tipo] VARCHAR(100) NOT NULL,
    [Quantidade] INT NOT NULL,
    [PrecoIndividual] NUMERIC(18,2) NOT NULL,
    [MinimoExpositor] INT NOT NULL,
    [MaximoExpositor] INT NOT NULL,
    [StandGratuito] BIT NOT NULL,
    [PermiteDesconto] BIT NOT NULL,
    [DescontoMaximo] NUMERIC(18,2) NULL,
    [DiasReserva] INT NOT NULL
);

CREATE TABLE [stg_cdc].[sas_TB_Formato_Sala] (
    [__CDC_STARTLSN] BINARY NULL,
    [__CDC_SEQVAL] BINARY NULL,
    [__CDC_OPERATION] VARCHAR(2) NULL,
    [CodUFOrigem] TINYINT NULL,
    [RecNum] BIGINT NULL,
    [ID] BIGINT NULL,
    [CodSebrae] INT NULL,
    [Descricao] VARCHAR(255) NULL,
    [DataCriacao] DATETIME NULL,
    [DataAlteracao] DATETIME NULL,
    [Ativo] BIT NULL,
    [Rowguid] UNIQUEIDENTIFIER NULL
);

CREATE TABLE [stg_cdc].[sas_TB_Interacao] (
    [__CDC_STARTLSN] BINARY NULL,
    [__CDC_SEQVAL] BINARY NULL,
    [__CDC_OPERATION] VARCHAR(2) NULL,
    [ID] BIGINT NULL,
    [Protocolo] VARCHAR(255) NULL,
    [TipoInteracaoID] BIGINT NULL,
    [Atendente] INT NULL,
    [UsuarioID] INT NULL,
    [CodSebrae] INT NULL,
    [UnidadeOrganizacionalID] BIGINT NULL,
    [Ausente] BIT NULL,
    [DataHoraInicio] DATETIME NULL,
    [DataHoraFim] DATETIME NULL,
    [codAplicacao] INT NULL,
    [mesAnoCompetencia] DATETIME NULL,
    [Rowguid] UNIQUEIDENTIFIER NULL,
    [DescRealizacao] VARCHAR(MAX) NULL,
    [CodProjeto] UNIQUEIDENTIFIER NULL,
    [CodAcao] INT NULL,
    [codcategoria] INT NULL,
    [IndIntegracaoERP] BIT NULL,
    [MacroeventoID] BIGINT NULL,
    [PortfolioDisponibilizacaoID] BIGINT NULL,
    [DataHoraInclusao] DATETIME NULL,
    [CodigoContratoSGF] VARCHAR(30) NULL,
    [OrientacaoCliente] VARCHAR(5000) NULL,
    [ProtocoloPai] VARCHAR(255) NULL,
    [CodUFOrigem] TINYINT NULL,
    [AtendenteUsuarioID] INT NULL
);

CREATE TABLE [stg_cdc].[SAS_TB_Interacao_Anexo] (
    [__CDC_STARTLSN] BINARY NULL,
    [__CDC_SEQVAL] BINARY NULL,
    [__CDC_OPERATION] VARCHAR(2) NULL,
    [CodSebrae] INT NULL,
    [RecNum] BIGINT NULL,
    [ID] BIGINT NULL,
    [InteracaoID] BIGINT NULL,
    [TipoAnexo] CHAR(1) NULL,
    [Link] VARCHAR(255) NULL,
    [IDAnexoProduto] BIGINT NULL,
    [IdAnexoBIA] BIGINT NULL,
    [IdAnexoEvento] BIGINT NULL,
    [Rowguid] UNIQUEIDENTIFIER NULL
);

CREATE TABLE [stg_cdc].[SAS_TB_Interacao_Detalhe] (
    [__CDC_STARTLSN] BINARY NULL,
    [__CDC_SEQVAL] BINARY NULL,
    [__CDC_OPERATION] VARCHAR(2) NULL,
    [ID] BIGINT NOT NULL,
    [InteracaoID] BIGINT NOT NULL,
    [ProtocoloFilho] VARCHAR(255) NOT NULL,
    [Tipo] CHAR(1) NOT NULL,
    [CodAtendimentoIntegrado] INT NULL,
    [CodSebraeAtendimentoIntegrado] INT NULL,
    [CodConsultor] INT NULL,
    [Data] SMALLDATETIME NULL,
    [Hora] DATETIME NULL,
    [SeqAgendamento] INT NULL,
    [CodSebraeAgendamento] INT NULL,
    [CodEvento] BIGINT NULL,
    [CodPessoaF] INT NULL,
    [CodPessoaJ] INT NULL,
    [codreseve] INT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL,
    [InteracaoParticipanteID] BIGINT NULL,
    [EntidadeParceira] BIT NULL,
    [EventoEsperaID] BIGINT NULL,
    [EventoReservaID] BIGINT NULL,
    [EventoParticipanteID] BIGINT NULL,
    [EventoID] BIGINT NULL,
    [CodSebrae] INT NOT NULL
);

CREATE TABLE [stg_cdc].[SAS_TB_Interacao_Detalhe_Agendamento] (
    [__CDC_STARTLSN] BINARY NULL,
    [__CDC_SEQVAL] BINARY NULL,
    [__CDC_OPERATION] VARCHAR(2) NULL,
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [InteracaoDetalheID] BIGINT NOT NULL,
    [AssuntoID] BIGINT NOT NULL,
    [HoraInicio] DATETIME NOT NULL,
    [HoraFim] DATETIME NOT NULL,
    [NaoCompareceu] BIT NULL,
    [UnidadeOrganizacionalID] BIGINT NULL,
    [AtendenteAgendamentoAgendaHorarioID] BIGINT NOT NULL,
    [Observacao] VARCHAR(MAX) NULL,
    [MotivoCancelamentoAtendimentoID] BIGINT NULL,
    [DescricaoMotivoCancelamento] VARCHAR(MAX) NULL,
    [Situacao] TINYINT NULL,
    [TipoAgenda] CHAR(1) NOT NULL,
    [Valor] NUMERIC(18,2) NOT NULL,
    [ValorDesconto] NUMERIC(18,2) NULL,
    [Tipo] CHAR(1) NOT NULL,
    [InteracaoDetalheComboDisponibilizacaoID] BIGINT NULL,
    [InteracaoDetalhePortfolioDisponibilizacaoID] BIGINT NULL,
    [CodCid] INT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [stg_cdc].[SAS_TB_Interacao_Detalhe_Agendamento_Participante] (
    [__CDC_STARTLSN] BINARY NULL,
    [__CDC_SEQVAL] BINARY NULL,
    [__CDC_OPERATION] VARCHAR(2) NULL,
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [InteracaoDetalheAgendamentoID] BIGINT NOT NULL,
    [CodPessoaF] INT NOT NULL,
    [CodPessoaJ] INT NULL,
    [EntidadeParceira] BIT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL,
    [Contrato] VARBINARY NULL
);

CREATE TABLE [stg_cdc].[SAS_TB_Interacao_Detalhe_Atividade] (
    [__CDC_STARTLSN] BINARY NULL,
    [__CDC_SEQVAL] BINARY NULL,
    [__CDC_OPERATION] VARCHAR(2) NULL,
    [CodSebrae] INT NOT NULL,
    [ID] BIGINT NOT NULL,
    [InteracaoDetalheID] BIGINT NOT NULL,
    [CodMeioAtendimento] INT NOT NULL
);

CREATE TABLE [stg_cdc].[SAS_TB_Interacao_Detalhe_Atividade_Tema] (
    [__CDC_STARTLSN] BINARY NULL,
    [__CDC_SEQVAL] BINARY NULL,
    [__CDC_OPERATION] VARCHAR(2) NULL,
    [CodSebrae] INT NOT NULL,
    [ID] BIGINT NOT NULL,
    [InteracaoDetalheAtividadeID] BIGINT NOT NULL,
    [CodAreaTematica] INT NOT NULL
);

CREATE TABLE [stg_cdc].[SAS_TB_Interacao_Solucao] (
    [__CDC_STARTLSN] BINARY NULL,
    [__CDC_SEQVAL] BINARY NULL,
    [__CDC_OPERATION] VARCHAR(2) NULL,
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [InteracaoID] BIGINT NOT NULL,
    [CodPessoaF] INT NOT NULL,
    [CodPessoaJ] INT NULL,
    [PortfolioID] BIGINT NOT NULL,
    [DataSolucao] DATETIME NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [stg_cdc].[SAS_TB_Interesse_Necessidade] (
    [__CDC_STARTLSN] BINARY NULL,
    [__CDC_SEQVAL] BINARY NULL,
    [__CDC_OPERATION] VARCHAR(2) NULL,
    [ID] BIGINT NOT NULL,
    [Descricao] VARCHAR(255) NOT NULL,
    [DataCriacao] DATETIME NOT NULL,
    [DataAlteracao] DATETIME NULL,
    [Situacao] BIT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [stg_cdc].[SAS_TB_Macroevento] (
    [__CDC_STARTLSN] BINARY NULL,
    [__CDC_SEQVAL] BINARY NULL,
    [__CDC_OPERATION] VARCHAR(2) NULL,
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [Nome] VARCHAR(255) NOT NULL,
    [Descricao] VARCHAR(1000) NOT NULL,
    [ModalidadeID] BIGINT NULL,
    [DataInicial] DATETIME NOT NULL,
    [DataFinal] DATETIME NOT NULL,
    [CodParceiroCadastro] INT NOT NULL,
    [UnidadeOrganizacionalID] BIGINT NOT NULL,
    [DataCadastro] DATETIME NOT NULL,
    [Status] BIT NOT NULL,
    [NomeParceiroCadastro] VARCHAR(255) NOT NULL,
    [NomeUnidadeOrganizacional] VARCHAR(255) NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL,
    [UsuarioID] INT NULL
);

CREATE TABLE [stg_cdc].[SAS_TB_Macroevento_Cesta] (
    [__CDC_STARTLSN] BINARY NULL,
    [__CDC_SEQVAL] BINARY NULL,
    [__CDC_OPERATION] VARCHAR(2) NULL,
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [MacroeventoID] BIGINT NOT NULL,
    [Ativo] BIT NOT NULL,
    [DataInicial] DATETIME NOT NULL,
    [DataFinal] DATETIME NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [stg_cdc].[SAS_TB_Macroevento_Publico] (
    [__CDC_STARTLSN] BINARY NULL,
    [__CDC_SEQVAL] BINARY NULL,
    [__CDC_OPERATION] VARCHAR(2) NULL,
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [MacroeventoID] BIGINT NOT NULL,
    [CodPublicoAlvo] INT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [stg_cdc].[SAS_TB_Macromomento] (
    [__CDC_STARTLSN] BINARY NULL,
    [__CDC_SEQVAL] BINARY NULL,
    [__CDC_OPERATION] VARCHAR(2) NULL,
    [ID] BIGINT NOT NULL,
    [Nome] VARCHAR(50) NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [stg_cdc].[SAS_TB_Micromomento] (
    [__CDC_STARTLSN] BINARY NULL,
    [__CDC_SEQVAL] BINARY NULL,
    [__CDC_OPERATION] VARCHAR(2) NULL,
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [Nome] VARCHAR(255) NOT NULL,
    [Status] BIT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [stg_cdc].[SAS_TB_Momento] (
    [__CDC_STARTLSN] BINARY NULL,
    [__CDC_SEQVAL] BINARY NULL,
    [__CDC_OPERATION] VARCHAR(2) NULL,
    [ID] INT NOT NULL,
    [Descricao] VARCHAR(255) NOT NULL,
    [Contabiliza] BIT NOT NULL,
    [Situacao] BIT NOT NULL
);

CREATE TABLE [stg_cdc].[SAS_TB_NaturezaJuridica] (
    [__CDC_STARTLSN] BINARY NULL,
    [__CDC_SEQVAL] BINARY NULL,
    [__CDC_OPERATION] VARCHAR(2) NULL,
    [ID] INT NOT NULL,
    [DescNat] VARCHAR(255) NOT NULL,
    [CodConst] SMALLINT NOT NULL,
    [Situacao] BIT NOT NULL
);

CREATE TABLE [stg_cdc].[SAS_TB_Portfolio] (
    [__CDC_STARTLSN] BINARY NULL,
    [__CDC_SEQVAL] BINARY NULL,
    [__CDC_OPERATION] VARCHAR(2) NULL,
    [CodSebraeOrigem] INT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [CodSebraeResponsavel] INT NULL,
    [UnidadeOrganizacionalOrigemID] BIGINT NULL,
    [UnidadeOrganizacionalOrigemNome] VARCHAR(255) NULL,
    [GestorProdutoOrigemID] INT NULL,
    [GestorProdutoOrigemNome] VARCHAR(255) NULL,
    [DataProximaRevisao] DATETIME NULL,
    [CustoDesenvolvimento] NUMERIC(18,2) NULL,
    [Tag] VARCHAR(255) NULL,
    [FrequenciaMinima] INT NULL,
    [NotaMinima] INT NULL,
    [Certificado] BIT NULL,
    [RegistroIsbnIssn] VARCHAR(20) NULL,
    [PrecoSugerido] NUMERIC(18,2) NULL,
    [ArgumentoVenda] VARCHAR(2000) NULL,
    [CodigoRegistroMarca] VARCHAR(50) NULL,
    [ClasseSubClasseMarca] VARCHAR(255) NULL,
    [DataValidadeRegistroMarca] DATETIME NULL,
    [DataVigencia] DATETIME NULL,
    [PortfolioOrigemID] BIGINT NULL,
    [Ativo] BIT NOT NULL,
    [SituacaoID] BIGINT NULL,
    [ParceiroOrigem] BIT NOT NULL,
    [NomeParceiro] VARCHAR(255) NULL,
    [ProdutoInstantaneo] BIT NOT NULL,
    [MinimoParticipante] INT NULL,
    [MaximoParticipante] INT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL,
    [DataUltimaAlteracao] DATE NULL,
    [ControleAproveitamento] BIT NULL,
    [CargaReferencia] FLOAT NULL,
    [ConteudoProgramatico] VARCHAR(2000) NULL,
    [FamiliaID] BIGINT NULL,
    [PortfolioProdutoID] TINYINT NULL
);

CREATE TABLE [stg_cdc].[SAS_TB_Portfolio_Alvo] (
    [__CDC_STARTLSN] BINARY NULL,
    [__CDC_SEQVAL] BINARY NULL,
    [__CDC_OPERATION] VARCHAR(2) NULL,
    [ID] BIGINT NOT NULL,
    [Nome] VARCHAR(50) NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [stg_cdc].[SAS_TB_Portfolio_Categoria_Servico] (
    [__CDC_STARTLSN] BINARY NULL,
    [__CDC_SEQVAL] BINARY NULL,
    [__CDC_OPERATION] VARCHAR(2) NULL,
    [ID] BIGINT NOT NULL,
    [Nome] VARCHAR(50) NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [stg_cdc].[SAS_TB_Portfolio_Cesta] (
    [__CDC_STARTLSN] BINARY NULL,
    [__CDC_SEQVAL] BINARY NULL,
    [__CDC_OPERATION] VARCHAR(2) NULL,
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [PortfolioID] BIGINT NOT NULL,
    [Ativo] BIT NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [stg_cdc].[SAS_TB_Portfolio_Complemento] (
    [__CDC_STARTLSN] BINARY NULL,
    [__CDC_SEQVAL] BINARY NULL,
    [__CDC_OPERATION] VARCHAR(2) NULL,
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [PortfolioID] BIGINT NOT NULL,
    [UnidadeOrganizacionalID] BIGINT NULL,
    [UnidadeOrganizacionalNome] VARCHAR(255) NULL,
    [GestorProdutoID] INT NULL,
    [GestorProdutoNome] VARCHAR(255) NULL,
    [CustoOperacionalizacao] NUMERIC(18,2) NULL,
    [Preco] NUMERIC(18,2) NULL,
    [Observacao] VARCHAR(1000) NULL,
    [Ativo] BIT NOT NULL,
    [DataHabilitacao] DATETIME NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL,
    [CertificadoID] BIGINT NULL,
    [PossuiAtividade] BIT NULL,
    [PossuiMomento] BIT NULL
);

CREATE TABLE [stg_cdc].[SAS_TB_Portfolio_Complemento_Etapa_Atividade] (
    [__CDC_STARTLSN] BINARY NULL,
    [__CDC_SEQVAL] BINARY NULL,
    [__CDC_OPERATION] VARCHAR(2) NULL,
    [CodUFOrigem] TINYINT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [PortfolioComplementoID] BIGINT NOT NULL,
    [Tipo] TINYINT NOT NULL,
    [Descricao] VARCHAR(500) NOT NULL,
    [PortfolioComplementoEtapaAtividadeID] BIGINT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [stg_cdc].[SAS_TB_Portfolio_Disponibilizacao] (
    [__CDC_STARTLSN] BINARY NULL,
    [__CDC_SEQVAL] BINARY NULL,
    [__CDC_OPERATION] VARCHAR(2) NULL,
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [PortfolioID] BIGINT NOT NULL,
    [UnidadeOrganizacionalID] BIGINT NOT NULL,
    [Nome] VARCHAR(255) NOT NULL,
    [Ativo] BIT NOT NULL,
    [PortfolioTipoServicoID] BIGINT NOT NULL,
    [PortfolioModalidadeID] BIGINT NOT NULL,
    [InstrumentoID] INT NOT NULL,
    [Gratuito] BIT NOT NULL,
    [Valor] NUMERIC(18,2) NOT NULL,
    [PermiteDesconto] BIT NOT NULL,
    [ValorDesconto] NUMERIC(18,2) NULL,
    [ProjetoID] UNIQUEIDENTIFIER NULL,
    [AcaoID] INT NULL,
    [Combo] BIT NOT NULL,
    [ProjetoERP] VARCHAR(500) NULL,
    [AcaoERP] VARCHAR(500) NULL,
    [UnidadeERP] VARCHAR(500) NULL,
    [ProdutoERP] VARCHAR(500) NULL,
    [CodProjetoERP] VARCHAR(20) NULL,
    [CodAcaoERP] VARCHAR(20) NULL,
    [CodUnidadeERP] VARCHAR(20) NULL,
    [CodProdutoERP] VARCHAR(20) NULL,
    [CodigoTurma] INT NULL,
    [CodCidadeERP] INT NULL,
    [CidadeERP] VARCHAR(500) NULL,
    [CodCCustoERP] VARCHAR(50) NULL,
    [TbFat_1] VARCHAR(50) NULL,
    [TbFat_2] VARCHAR(50) NULL,
    [TbFat_3] VARCHAR(50) NULL,
    [TbFat_4] VARCHAR(50) NULL,
    [TbFat_5] VARCHAR(50) NULL,
    [TbFlx_1] VARCHAR(50) NULL,
    [TbFlx_2] VARCHAR(50) NULL,
    [TbFlx_3] VARCHAR(50) NULL,
    [TbFlx_4] VARCHAR(50) NULL,
    [TbFlx_5] VARCHAR(50) NULL,
    [CodDepartamento] VARCHAR(20) NULL,
    [ERPMovimentoFilialRMID] BIGINT NULL,
    [ContratoID] BIGINT NULL,
    [CargaHoraria] FLOAT NULL,
    [TipoCargaHoraria] TINYINT NULL,
    [ComAgendamento] BIT NOT NULL,
    [Responsavel] INT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL,
    [LinkAcesso] VARCHAR(500) NULL
);

CREATE TABLE [stg_cdc].[SAS_TB_Portfolio_Disponibilizacao_Atividade] (
    [__CDC_STARTLSN] BINARY NULL,
    [__CDC_SEQVAL] BINARY NULL,
    [__CDC_OPERATION] VARCHAR(2) NULL,
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [PortfolioDisponibilizacaoID] BIGINT NOT NULL,
    [Tipo] TINYINT NOT NULL,
    [Descricao] VARCHAR(500) NOT NULL,
    [PortfolioDisponibilizacaoAtividadeID] BIGINT NULL
);

CREATE TABLE [stg_cdc].[SAS_TB_Portfolio_Material] (
    [__CDC_STARTLSN] BINARY NULL,
    [__CDC_SEQVAL] BINARY NULL,
    [__CDC_OPERATION] VARCHAR(2) NULL,
    [CodSebrae] INT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [PortfolioID] BIGINT NOT NULL,
    [Material] VARCHAR(70) NOT NULL,
    [Quantidade] VARCHAR(20) NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [stg_cdc].[SAS_TB_Portfolio_Metodologia] (
    [__CDC_STARTLSN] BINARY NULL,
    [__CDC_SEQVAL] BINARY NULL,
    [__CDC_OPERATION] VARCHAR(2) NULL,
    [ID] BIGINT NOT NULL,
    [Nome] VARCHAR(50) NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [stg_cdc].[SAS_TB_Portfolio_Modalidade] (
    [__CDC_STARTLSN] BINARY NULL,
    [__CDC_SEQVAL] BINARY NULL,
    [__CDC_OPERATION] VARCHAR(2) NULL,
    [ID] BIGINT NOT NULL,
    [Nome] VARCHAR(50) NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [stg_cdc].[SAS_TB_Portfolio_TipoServico] (
    [__CDC_STARTLSN] BINARY NULL,
    [__CDC_SEQVAL] BINARY NULL,
    [__CDC_OPERATION] VARCHAR(2) NULL,
    [ID] BIGINT NOT NULL,
    [Nome] VARCHAR(50) NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL,
    [CargaHoraria] INT NOT NULL,
    [DisponibilizadoSAS] BIT NOT NULL,
    [Tipo] CHAR(2) NULL,
    [Grupo] CHAR(1) NULL
);

CREATE TABLE [stg_cdc].[sas_TB_REL_Sala_Formato] (
    [__CDC_STARTLSN] BINARY NULL,
    [__CDC_SEQVAL] BINARY NULL,
    [__CDC_OPERATION] VARCHAR(2) NULL,
    [CodUFOrigem] TINYINT NULL,
    [RecNum] BIGINT NULL,
    [ID] BIGINT NULL,
    [CodSebrae] INT NULL,
    [FormatoID] BIGINT NULL,
    [SalaID] BIGINT NULL,
    [Capacidade] INT NULL,
    [Rowguid] UNIQUEIDENTIFIER NULL
);

CREATE TABLE [stg_cdc].[sas_TB_REL_Sala_Tipo] (
    [__CDC_STARTLSN] BINARY NULL,
    [__CDC_SEQVAL] BINARY NULL,
    [__CDC_OPERATION] VARCHAR(2) NULL,
    [CodUFOrigem] TINYINT NULL,
    [RecNum] BIGINT NULL,
    [ID] BIGINT NULL,
    [CodSebrae] INT NULL,
    [TipoID] BIGINT NULL,
    [SalaID] BIGINT NULL,
    [Rowguid] UNIQUEIDENTIFIER NULL
);

CREATE TABLE [stg_cdc].[sas_TB_REL_Sala_Unidade_Organizacional] (
    [__CDC_STARTLSN] BINARY NULL,
    [__CDC_SEQVAL] BINARY NULL,
    [__CDC_OPERATION] VARCHAR(2) NULL,
    [CodUFOrigem] TINYINT NULL,
    [RecNum] BIGINT NULL,
    [ID] BIGINT NULL,
    [CodSebrae] INT NULL,
    [UnidadeOrganizacionalID] BIGINT NULL,
    [SalaID] BIGINT NULL,
    [Rowguid] UNIQUEIDENTIFIER NULL
);

CREATE TABLE [stg_cdc].[sas_TB_Reserva_Sala] (
    [__CDC_STARTLSN] BINARY NULL,
    [__CDC_SEQVAL] BINARY NULL,
    [__CDC_OPERATION] VARCHAR(2) NULL,
    [CodSebrae] INT NULL,
    [RecNum] BIGINT NULL,
    [ID] BIGINT NULL,
    [Responsavel] INT NULL,
    [Finalidade] VARCHAR(255) NULL,
    [DataInicio] DATETIME NULL,
    [DataFim] DATETIME NULL,
    [Rowguid] UNIQUEIDENTIFIER NULL,
    [LinkAcesso] VARCHAR(500) NULL,
    [TipoData] CHAR(1) NULL
);

CREATE TABLE [stg_cdc].[sas_TB_Reserva_Sala_Detalhe] (
    [__CDC_STARTLSN] BINARY NULL,
    [__CDC_SEQVAL] BINARY NULL,
    [__CDC_OPERATION] VARCHAR(2) NULL,
    [CodUFOrigem] TINYINT NULL,
    [RecNum] BIGINT NULL,
    [ID] BIGINT NULL,
    [CodSebrae] INT NULL,
    [ReservaSalaID] BIGINT NULL,
    [SalaID] BIGINT NULL,
    [EventoID] BIGINT NULL,
    [DataInicio] DATETIME NULL,
    [DataFim] DATETIME NULL,
    [FormatoID] BIGINT NULL,
    [Rowguid] UNIQUEIDENTIFIER NULL
);

CREATE TABLE [stg_cdc].[sas_TB_Sala] (
    [__CDC_STARTLSN] BINARY NULL,
    [__CDC_SEQVAL] BINARY NULL,
    [__CDC_OPERATION] VARCHAR(2) NULL,
    [CodSebrae] INT NULL,
    [RecNum] BIGINT NULL,
    [ID] BIGINT NULL,
    [Tipo] CHAR(1) NULL,
    [Nome] VARCHAR(255) NULL,
    [Descricao] VARCHAR(500) NULL,
    [Contato] VARCHAR(100) NULL,
    [Telefone] VARCHAR(11) NULL,
    [Acessibilidade] BIT NULL,
    [Logradouro] VARCHAR(150) NULL,
    [Complemento] VARCHAR(70) NULL,
    [CodBairro] INT NULL,
    [CodCidade] INT NULL,
    [CodEstado] SMALLINT NULL,
    [CodPais] SMALLINT NULL,
    [CEP] INT NULL,
    [Ativo] BIT NULL,
    [Rowguid] UNIQUEIDENTIFIER NULL,
    [Email] VARCHAR(255) NULL,
    [Notificacoes] BIT NULL,
    [DescInternacional] VARCHAR(100) NULL
);

CREATE TABLE [stg_cdc].[sas_TB_Sala_Horario] (
    [__CDC_STARTLSN] BINARY NULL,
    [__CDC_SEQVAL] BINARY NULL,
    [__CDC_OPERATION] VARCHAR(2) NULL,
    [CodUFOrigem] TINYINT NULL,
    [RecNum] BIGINT NULL,
    [ID] BIGINT NULL,
    [CodSebrae] INT NULL,
    [SalaID] BIGINT NULL,
    [DiaSemana] CHAR(3) NULL,
    [HoraInicial] SMALLDATETIME NULL,
    [HoraFinal] SMALLDATETIME NULL,
    [Rowguid] UNIQUEIDENTIFIER NULL
);

CREATE TABLE [stg_cdc].[sas_TB_Tipo_Interacao] (
    [__CDC_STARTLSN] BINARY NULL,
    [__CDC_SEQVAL] BINARY NULL,
    [__CDC_OPERATION] VARCHAR(2) NULL,
    [ID] BIGINT NULL,
    [Descricao] VARCHAR(255) NULL,
    [Rowguid] UNIQUEIDENTIFIER NULL,
    [Tipo] CHAR(1) NULL,
    [Sigla] CHAR(3) NULL
);

CREATE TABLE [stg_cdc].[sas_TB_Tipo_Sala] (
    [__CDC_STARTLSN] BINARY NULL,
    [__CDC_SEQVAL] BINARY NULL,
    [__CDC_OPERATION] VARCHAR(2) NULL,
    [Descricao] VARCHAR(255) NULL,
    [DataCriacao] DATETIME NULL,
    [DataAlteracao] DATETIME NULL,
    [Ativo] BIT NULL,
    [Rowguid] UNIQUEIDENTIFIER NULL,
    [CodSebrae] INT NULL,
    [RecNum] BIGINT NULL,
    [ID] BIGINT NULL
);

CREATE TABLE [stg_cdc].[sas_TB_Tipo_Unidade_Organizacional] (
    [__CDC_STARTLSN] BINARY NULL,
    [__CDC_SEQVAL] BINARY NULL,
    [__CDC_OPERATION] VARCHAR(2) NULL,
    [ID] BIGINT NULL,
    [Nome] VARCHAR(255) NULL,
    [Descricao] VARCHAR(255) NULL,
    [TipoUF] BIT NULL,
    [DataCriacao] DATETIME NULL,
    [DataAlteracao] DATETIME NULL,
    [Ativo] BIT NULL,
    [Rowguid] UNIQUEIDENTIFIER NULL,
    [Atendimento] TINYINT NULL,
    [Parceiro] BIT NULL
);

CREATE TABLE [stg_cdc].[sas_TB_Unidade_Organizacional] (
    [__CDC_STARTLSN] BINARY NULL,
    [__CDC_SEQVAL] BINARY NULL,
    [__CDC_OPERATION] VARCHAR(2) NULL,
    [ID] BIGINT NULL,
    [UnidadeOrganizacionalSuperiorID] BIGINT NULL,
    [Descricao] VARCHAR(255) NULL,
    [Sigla] VARCHAR(10) NULL,
    [TipoUnidadeOrganizacionalID] BIGINT NULL,
    [DominioAD] VARCHAR(50) NULL,
    [CodSebrae] INT NULL,
    [DataCriacao] DATETIME NULL,
    [DataAlteracao] DATETIME NULL,
    [Ativo] BIT NULL,
    [Rowguid] UNIQUEIDENTIFIER NULL,
    [Logradouro] VARCHAR(150) NULL,
    [Complemento] VARCHAR(70) NULL,
    [CodBairro] INT NULL,
    [CodCid] INT NULL,
    [CodEst] SMALLINT NULL,
    [CodPais] SMALLINT NULL,
    [Cep] INT NULL,
    [CodPessoaJ] INT NULL,
    [DescricaoServicosPrestados] VARCHAR(MAX) NULL
);

CREATE TABLE [stg_cdc].[SAS_TB_Unidade_Organizacional_Horario] (
    [__CDC_STARTLSN] BINARY NULL,
    [__CDC_SEQVAL] BINARY NULL,
    [__CDC_OPERATION] VARCHAR(2) NULL,
    [CodUFOrigem] TINYINT NOT NULL,
    [RecNum] BIGINT NOT NULL,
    [ID] BIGINT NOT NULL,
    [CodSebrae] INT NOT NULL,
    [UnidadeOrganizacionalID] BIGINT NOT NULL,
    [DiaSemana] CHAR(3) NOT NULL,
    [HoraInicial] TIME NOT NULL,
    [HoraFinal] TIME NOT NULL,
    [Rowguid] UNIQUEIDENTIFIER NOT NULL
);

CREATE TABLE [suportegpnet].[Atendidos2018] (
    [CodParceiro] INT NOT NULL,
    [CgcCpf] NUMERIC(15,0) NULL,
    [NomeRazaoSocial] VARCHAR(120) NULL,
    [NomeAbrevFantasia] VARCHAR(80) NULL,
    [Responsavel] VARCHAR(120) NULL,
    [TELEFONE] VARCHAR(60) NULL,
    [EMAIL] VARCHAR(60) NULL
);

CREATE TABLE [suportegpnet].[FAMPE4221] (
    [ID] INT NULL,
    [CNPJ] NUMERIC(18,0) NULL,
    [CodParceiroPF] INT NULL,
    [Cpf] NUMERIC(18,0) NULL,
    [CodParceiroPJ] INT NULL
);

CREATE TABLE [suportegpnet].[GPNET_ProdutoSolucoes] (
    [UF] VARCHAR(2) NULL,
    [PortfolioID] BIGINT NULL,
    [Nome] VARCHAR(MAX) NULL,
    [Total] VARCHAR(MAX) NULL
);

CREATE TABLE [suportegpnet].[InteracoesDisponibilizacoesTipos] (
    [nomeAbrev] VARCHAR(2) NULL,
    [TipoRegistro] VARCHAR(MAX) NULL,
    [QuantidadeReservas] INT NULL,
    [QuantidadeInscricoes] INT NULL,
    [QtdDisponibilizacoes] INT NULL
);

CREATE TABLE [suportegpnet].[PJBNDES] (
    [IFOrigem] VARCHAR(MAX) NULL,
    [UF] VARCHAR(MAX) NULL,
    [PerfilCliente] VARCHAR(MAX) NULL,
    [CNPJ] NUMERIC(18,0) NULL,
    [Email] VARCHAR(MAX) NULL,
    [Data] VARCHAR(MAX) NULL,
    [Hora] VARCHAR(MAX) NULL,
    [Status] VARCHAR(MAX) NULL
);

CREATE TABLE [suportegpnet].[PJBNDES2] (
    [IFOrigem] VARCHAR(MAX) NULL,
    [UF] VARCHAR(MAX) NULL,
    [PerfilCliente] VARCHAR(MAX) NULL,
    [CNPJ] NUMERIC(18,0) NULL,
    [Email] VARCHAR(MAX) NULL,
    [Data] VARCHAR(MAX) NULL,
    [Hora] VARCHAR(MAX) NULL,
    [Status] VARCHAR(MAX) NULL
);

CREATE TABLE [suportegpnet].[Portfolio_Complementar] (
    [Código] TEXT NULL,
    [Nome] TEXT NULL,
    [Status] TEXT NULL,
    [Situação] TEXT NULL,
    [UF Responsável] TEXT NULL,
    [Categoria de Serviço] TEXT NULL,
    [Tipo de Serviço] TEXT NULL,
    [Alvo] TEXT NULL,
    [Público] TEXT NULL,
    [Modalidade] TEXT NULL,
    [CargaHoraria] TEXT NULL
);

CREATE TABLE [suportegpnet].[RelAtendimentos] (
    [nome] VARCHAR(MAX) NULL,
    [interacao] VARCHAR(MAX) NULL,
    [codSebrae] INT NULL,
    [descSebrae] VARCHAR(MAX) NULL,
    [quantidade] INT NULL
);

CREATE TABLE [suportegpnet].[RelatorioGEP_TotalUsuarios] (
    [SEBRAE] VARCHAR(MAX) NULL,
    [TotalUsuariosSAS] INT NULL,
    [TotalUsuariosWsSAS] INT NULL
);

CREATE TABLE [suportegpnet].[RelEventos2018] (
    [CodSebrae] INT NULL,
    [DescSebrae] VARCHAR(MAX) NULL,
    [CodProduto] BIGINT NOT NULL,
    [NomeProduto] VARCHAR(MAX) NULL,
    [CodEvento] BIGINT NULL,
    [NomeEvento] VARCHAR(MAX) NULL,
    [DataCadastro] DATETIME NULL,
    [DataInicio] DATETIME NULL,
    [DataFim] DATETIME NULL,
    [Situacao] VARCHAR(MAX) NULL,
    [EstadoEvento] VARCHAR(MAX) NULL,
    [TotalParticipantes] INT NULL
);

CREATE TABLE [suportegpnet].[RelProdutos] (
    [ID] BIGINT NOT NULL,
    [Nome] VARCHAR(MAX) NULL,
    [DataHabilitacao] DATETIME NULL,
    [DataCriacao] DATETIME NULL,
    [TipoServico] VARCHAR(MAX) NULL,
    [Status] VARCHAR(10) NULL,
    [Situacao] VARCHAR(MAX) NULL,
    [CodSebrae] INT NULL,
    [DescSebrae] VARCHAR(MAX) NULL
);

CREATE TABLE [suportegpnet].[Solucoes] (
    [PortfolioID] BIGINT NULL,
    [Nome] VARCHAR(MAX) NULL,
    [Total] INT NULL
);

CREATE TABLE [suportegpnet].[TempoEspera] (
    [ID] BIGINT NULL,
    [UF] VARCHAR(2) NULL,
    [UnidadeOrganizacionalID] BIGINT NULL,
    [UnidadeOrganizacional] VARCHAR(255) NULL,
    [TipoUnidadeOrganizacional] VARCHAR(255) NULL,
    [Logradouro] VARCHAR(150) NULL,
    [Complemento] VARCHAR(70) NULL,
    [Bairro] VARCHAR(150) NULL,
    [Cidade] VARCHAR(150) NULL,
    [Estado] VARCHAR(30) NULL,
    [Cep] BIGINT NULL,
    [Data] DATE NULL,
    [DataPrimeiraRecepcao] VARCHAR(100) NULL,
    [DataUltimaRecepcao] VARCHAR(100) NULL,
    [TempoEspera] BIGINT NULL
);

CREATE TABLE [suportegpnet].[tmp] (
    [cpf] NUMERIC(15,0) NULL,
    [cnpj] NUMERIC(15,0) NULL
);

CREATE TABLE [suportegpnet].[TmpHorariosUnidades] (
    [id] BIGINT NULL,
    [AbrevEst] VARCHAR(2000) NULL,
    [Descricao] VARCHAR(2000) NULL,
    [TipoUnidadeOrganizacionalID] INT NULL,
    [Sigla] VARCHAR(50) NULL,
    [HoraInicial] DATETIME NULL,
    [HoraFinal] DATETIME NULL,
    [DiaSemana] VARCHAR(200) NULL,
    [Logradouro] VARCHAR(1000) NULL,
    [descbairro] VARCHAR(1000) NULL,
    [DescCid] VARCHAR(1000) NULL,
    [DescEst] VARCHAR(1000) NULL,
    [DataCriacao] DATETIME NULL,
    [DataAlteracao] DATETIME NULL,
    [Nome] VARCHAR(1000) NULL
);

CREATE TABLE [suportegpnet].[TotalAgendamentos] (
    [UF] VARCHAR(2) NULL,
    [TipoUnidadeOrganizacional] VARCHAR(255) NULL,
    [Logradouro] VARCHAR(150) NULL,
    [Complemento] VARCHAR(70) NULL,
    [Cep] BIGINT NULL,
    [TotalAgendamentos] BIGINT NULL
);

