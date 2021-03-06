SELECT descricao, solicitacoes FROM Tipo INNER JOIN (
    SELECT tipo, count(*) as solicitacoes FROM Solicitacao INNER JOIN Produto
    ON Solicitacao.produto = Produto.codigo
    INNER JOIN Tipo
    ON Tipo.codigo = tipo
    GROUP BY tipo
) ON Tipo.codigo = tipo;
