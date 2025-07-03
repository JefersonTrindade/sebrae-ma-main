SELECT
	concat(atend.CodClienteSiac, atend.CodRealizacaoSiac, atend.DataHoraInicioRealizacaoSiac) as id
	, acao.nomeacao as acao
	, acao.nomeacao as categoria
	, ori.DescOrigem as descricao_origem
	, cnae.DescClasseCnae as cnae
	, pf.nucpf as cpf
	, loc_pf.DescMunicipio as municipio_cliente_pf
	, pf.DtNascimento as data_nascimento_pf
	, DATEDIFF(YEAR, pf.DtNascimento, GETDATE()) AS Idade
	, CASE
        WHEN DATEDIFF(YEAR, pf.DtNascimento, GETDATE()) <= 18 THEN '0 a 18 anos'
        WHEN DATEDIFF(YEAR, pf.DtNascimento, GETDATE()) <= 25 THEN '19 a 25 anos'
        WHEN DATEDIFF(YEAR, pf.DtNascimento, GETDATE()) <= 35 THEN '26 a 35 anos'
        WHEN DATEDIFF(YEAR, pf.DtNascimento, GETDATE()) <= 45 THEN '36 a 45 anos'
        WHEN DATEDIFF(YEAR, pf.DtNascimento, GETDATE()) <= 55 THEN '46 a 55 anos'
        WHEN DATEDIFF(YEAR, pf.DtNascimento, GETDATE()) <= 65 THEN '56 a 65 anos'
        ELSE '65 anos ou mais'
    END AS Classificacao_Idade
	, grau.DescGrauEscolaridade as escolaridade
	, ini.nomeiniciativa as iniciativa
	, inst.DescInstrumento as instrumento
	, cnae.DescSetor as setor
	, pf.Genero as sexo
	, pj.NuCNPJ as cnpj
	, pa.DescNaturezaPublicoAlvo as tipo_publico
	, t.DtCalendario as data_atendimento
	, s.NomeSebrae as sebrae
	, ta.DescGrupoTemaAtendimento as tema
	, ini.DescTipoIniciativa as tipo_iniciativa
	, loc_pj.DescMunicipio as municipio_cliente_pj
	, CASE 
		WHEN pf.NuCPF is not null then loc_pf.DescMunicipio
		WHEN pj.NuCNPJ is not null then loc_pj.DescMunicipio
		WHEN pf.NuCPF is not null and pj.NuCNPJ is null then loc_pf.DescMunicipio
	END AS municio_cliente_atendido
	, CASE 
		WHEN pf.NuCPF is not null then loc_pf.SiglaUF
		WHEN pj.NuCNPJ is not null then loc_pj.SiglaUF
		WHEN pf.NuCPF is not null and pj.NuCNPJ is null then loc_pf.SiglaUF
	END AS uf_cliente_atendido
	, loc_pf.codmunicipio AS cod_municipio_pf
	, loc_pj.codmunicipio AS cod_municipio_pj
	, cnae.CodCnaeFiscal as cnae_principal
	, pa.DescSegmentoPublicoAlvo as segmento_publico_alvo
	, atend.NuAtendimentosExecutado
    , p.DescTipoPrograma as programa
    , ai.DescAplicacaoInstrumento as aplicacao_instrumento
    , pp.DescProduto as produto
	, atend.SkClientePessoaFisicaAtendida
FROM dbo.TFExecucaoAtendimento atend
LEFT JOIN dbo.TDAcao acao with (nolock) on (atend.skacao = acao.skacao)
LEFT JOIN dbo.TDOrigem ori with (nolock) on (atend.skorigem = ori.skorigem)
LEFT JOIN dbo.TDCnaeFiscal cnae with (nolock) on (atend.SkCnaeFiscal = cnae.SkCnaeFiscal)
LEFT JOIN dbo.TDClientePessoaFisica pf with (nolock) on (atend.SkClientePessoaFisicaAtendida = pf.SkClientePessoaFisica)
LEFT JOIN dbo.TDLocalizacao loc_pf with (nolock) ON (atend.SkLocalizacaoPessoaFisica = loc_pf.SkLocalizacao)
LEFT JOIN dbo.TDGrauEscolaridade grau with (nolock) on (atend.SkGrauEscolaridade = grau.SkGrauEscolaridade)
LEFT JOIN dbo.TDIniciativa ini with (nolock) on (atend.SkIniciativa = ini.SkIniciativa)
LEFT JOIN dbo.TDInstrumento inst with (nolock) on (atend.SkInstrumento = inst.SkInstrumento)
LEFT JOIN dbo.TDPrograma p with (nolock) on (atend.SkPrograma = p.SkPrograma)
LEFT JOIN dbo.TDProduto pp with (nolock) on (atend.SkProduto = pp.SkProduto)
LEFT JOIN dbo.TDClientePessoaJuridica PJ with (nolock) on (atend.SkClientePessoaJuridica = pj.SkClientePessoaJuridica)
LEFT JOIN dbo.TDPublicoAlvo pa with (nolock) on (atend.SkPublicoAlvo = pa.SkPublicoAlvo)
LEFT JOIN dbo.TDTempo t with (nolock) on (atend.SkTempo = t.SkTempo)
LEFT JOIN dbo.TDSebrae s with (nolock) on (atend.SkSebrae = s.SkSebrae)
LEFT JOIN dbo.TDTemaAtendimento ta with (nolock) on (atend.SkTemaAtendimento = ta.SkTemaAtendimento)
LEFT JOIN dbo.TDLocalizacao loc_pj with (nolock) ON (atend.SkLocalizacaoPessoaJuridica = loc_pj.SkLocalizacao)
LEFT JOIN dbo.TDAplicacaoInstrumento ai with (nolock) on (atend.SkAplicacaoInstrumento = ai.SkAplicacaoInstrumento)
WHERE
	atend.SkSebrae = 10
	and SkPPA = '{ppa_param}'
	and SkAceitabilidadeAtendimento = 15
	and SkSituacaoInstrumento = 2
	and SkTipoPublicoAlvo = 1
	and SkClientePessoaFisicaAtendida > 0
	and atend.SkProgramaAcao in (1181,1182,1183, 1184)
	and atend.SkPrograma in (1096, 1348)

UNION

SELECT
	concat(atend.CodClienteSiac, atend.CodRealizacaoSiac, atend.DataHoraInicioRealizacaoSiac) as id
	, acao.nomeacao as acao
	, acao.nomeacao as categoria
	, ori.DescOrigem as descricao_origem
	, cnae.DescClasseCnae as cnae
	, pf.nucpf as cpf
	, loc_pf.DescMunicipio as municipio_cliente_pf
	, pf.DtNascimento as data_nascimento_pf
	, DATEDIFF(YEAR, pf.DtNascimento, GETDATE()) AS Idade
	, CASE
        WHEN DATEDIFF(YEAR, pf.DtNascimento, GETDATE()) <= 18 THEN '0 a 18 anos'
        WHEN DATEDIFF(YEAR, pf.DtNascimento, GETDATE()) <= 25 THEN '19 a 25 anos'
        WHEN DATEDIFF(YEAR, pf.DtNascimento, GETDATE()) <= 35 THEN '26 a 35 anos'
        WHEN DATEDIFF(YEAR, pf.DtNascimento, GETDATE()) <= 45 THEN '36 a 45 anos'
        WHEN DATEDIFF(YEAR, pf.DtNascimento, GETDATE()) <= 55 THEN '46 a 55 anos'
        WHEN DATEDIFF(YEAR, pf.DtNascimento, GETDATE()) <= 65 THEN '56 a 65 anos'
        ELSE '65 anos ou mais'
    END AS Classificacao_Idade
	, grau.DescGrauEscolaridade as escolaridade
	, ini.nomeiniciativa as iniciativa
	, inst.DescInstrumento as instrumento
	, cnae.DescSetor as setor
	, pf.Genero as sexo
	, pj.NuCNPJ as cnpj
	, pa.DescNaturezaPublicoAlvo as tipo_publico
	, t.DtCalendario as data_atendimento
	, s.NomeSebrae as sebrae
	, ta.DescGrupoTemaAtendimento as tema
	, ini.DescTipoIniciativa as tipo_iniciativa
	, loc_pj.DescMunicipio as municipio_cliente_pj
	, CASE 
		WHEN pf.NuCPF is not null then loc_pf.DescMunicipio
		WHEN pj.NuCNPJ is not null then loc_pj.DescMunicipio
		WHEN pf.NuCPF is not null and pj.NuCNPJ is null then loc_pf.DescMunicipio
	END AS municio_cliente_atendido
	, CASE 
		WHEN pf.NuCPF is not null then loc_pf.SiglaUF
		WHEN pj.NuCNPJ is not null then loc_pj.SiglaUF
		WHEN pf.NuCPF is not null and pj.NuCNPJ is null then loc_pf.SiglaUF
	END AS uf_cliente_atendido
	, loc_pf.codmunicipio AS cod_municipio_pf
	, loc_pj.codmunicipio AS cod_municipio_pj
	, cnae.CodCnaeFiscal as cnae_principal
	, pa.DescSegmentoPublicoAlvo as segmento_publico_alvo
	, atend.NuAtendimentosExecutado
    , p.DescTipoPrograma as programa
    , ai.DescAplicacaoInstrumento as aplicacao_instrumento
    , pp.DescProduto as produto
	, atend.SkClientePessoaFisicaAtendida
FROM dbo.TFExecucaoAtendimento atend
LEFT JOIN dbo.TDAcao acao with (nolock) on (atend.skacao = acao.skacao)
LEFT JOIN dbo.TDOrigem ori with (nolock) on (atend.skorigem = ori.skorigem)
LEFT JOIN dbo.TDCnaeFiscal cnae with (nolock) on (atend.SkCnaeFiscal = cnae.SkCnaeFiscal)
LEFT JOIN dbo.TDClientePessoaFisica pf with (nolock) on (atend.SkClientePessoaFisicaAtendida = pf.SkClientePessoaFisica)
LEFT JOIN dbo.TDLocalizacao loc_pf with (nolock) ON (atend.SkLocalizacaoPessoaFisica = loc_pf.SkLocalizacao)
LEFT JOIN dbo.TDGrauEscolaridade grau with (nolock) on (atend.SkGrauEscolaridade = grau.SkGrauEscolaridade)
LEFT JOIN dbo.TDIniciativa ini with (nolock) on (atend.SkIniciativa = ini.SkIniciativa)
LEFT JOIN dbo.TDInstrumento inst with (nolock) on (atend.SkInstrumento = inst.SkInstrumento)
LEFT JOIN dbo.TDPrograma p with (nolock) on (atend.SkPrograma = p.SkPrograma)
LEFT JOIN dbo.TDProduto pp with (nolock) on (atend.SkProduto = pp.SkProduto)
LEFT JOIN dbo.TDClientePessoaJuridica PJ with (nolock) on (atend.SkClientePessoaJuridica = pj.SkClientePessoaJuridica)
LEFT JOIN dbo.TDPublicoAlvo pa with (nolock) on (atend.SkPublicoAlvo = pa.SkPublicoAlvo)
LEFT JOIN dbo.TDTempo t with (nolock) on (atend.SkTempo = t.SkTempo)
LEFT JOIN dbo.TDSebrae s with (nolock) on (atend.SkSebrae = s.SkSebrae)
LEFT JOIN dbo.TDTemaAtendimento ta with (nolock) on (atend.SkTemaAtendimento = ta.SkTemaAtendimento)
LEFT JOIN dbo.TDLocalizacao loc_pj with (nolock) ON (atend.SkLocalizacaoPessoaJuridica = loc_pj.SkLocalizacao)
LEFT JOIN dbo.TDAplicacaoInstrumento ai with (nolock) on (atend.SkAplicacaoInstrumento = ai.SkAplicacaoInstrumento)
WHERE
	(
		atend.SkSebrae = 28
		and SkClientePessoaFisicaAtendida > 0 
		and loc_pf.SiglaUF = 'MA'
	)
	and SkPPA = '{ppa_param}'
	and SkAceitabilidadeAtendimento = 15
	and SkSituacaoInstrumento = 2
	and SkTipoPublicoAlvo = 1
	and SkClientePessoaFisicaAtendida > 0
	and atend.SkProgramaAcao in (1181,1182,1183, 1184)
	and atend.SkPrograma in (1096, 1348)