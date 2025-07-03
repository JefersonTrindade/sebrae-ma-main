with tid as (
    select 
        CodAtendimentoIntegrado
        , InteracaoID 
    from sas.TB_Interacao_Detalhe with (nolock)
    where 
        CodSebrae = 18
), ti as (
    select 
        UnidadeOrganizacionalID
        , ID
    from sas.TB_Interacao with (nolock)
    where 
        CodSebrae = 18
), eventos as (
    SELECT 
        id
        , UnidadeOrganizacionalID 
    FROM sas.tb_evento with (nolock)
    where
        CodSebrae = 18
), unidade as (
select distinct
    ai.CodAtendIntegrado as codrealizacao
    , ug.Descricao as unidade_organizacional
from AtendimentoIntegrado ai with (nolock)
left join tid on (tid.CodAtendimentoIntegrado = ai.CodAtendIntegrado)
left join ti on (ti.ID = tid.InteracaoID)
left join sas.TB_Unidade_Organizacional ug with (nolock) on (ug.ID = ti.UnidadeOrganizacionalID)
where 
    ai.CodSebrae = 18
    and ug.Descricao IS NOT NULL

UNION

SELECT distinct
    e.id as codrealizacao
    , ug.Descricao as unidade_organizacional
from eventos e
left join sas.TB_Unidade_Organizacional ug with (nolock) on (ug.ID = e.UnidadeOrganizacionalID)
WHERE
    ug.Descricao IS NOT NULL
)
select
	concat(hist.CodCliente, hist.CodRealizacao, hist.DataHoraInicioRealizacao) as id
	, COALESCE(pp.CodDap, 'N/I') as cod_dap
    , COALESCE(CAST(pp.NIRF AS varchar(100)), 'N/I') as nirf
    , COALESCE(nj.DescNat, 'N/I') as tipo_empreendimento
    , u.unidade_organizacional
from dbo.HistoricoRealizacoesCliente hist with (nolock)
left join dbo.Parceiro p with (nolock) on (p.CodParceiro = hist.CodEmpreedimento)
left join dbo.pessoaj pp with (nolock) on (p.CodParceiro = pp.codparceiro)
left join sas.TB_NaturezaJuridica nj with (nolock) on (pp.NaturezaJuridicaID = nj.ID)
left join unidade u on (hist.CodRealizacao = u.codrealizacao)
where
	hist.CodSebrae = 18