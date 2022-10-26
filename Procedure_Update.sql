CREATE PROCEDURE [dbTeste].[Update]

    @ClienteId int,
    @Cliente NVARCHAR(160) = null,
    @TipoCliente NVARCHAR(160) = null,
    @NomeContato NVARCHAR(160) = null,
    @TelefoneContato BIGINT,
    @Cidade NVARCHAR(160) = null,
    @Bairro NVARCHAR(160) = null,
    @Logradouro NVARCHAR(160) = null,
    @DataCadastro DATETIME = null,
    @DataAtualizacao DATETIME = null

    AS

    BEGIN 

    UPDATE cliente SET Cliente = @Cliente, TipoCliente = @TipoCliente, NomeContato = @NomeContato, TelefoneContato = TelefoneContato, Cidade = @Cidade, Bairro = @Bairro, Logradouro = @Logradouro, DataCadastro = @DataCadastro, DataAtualizacao = @DataAtualizacao WHERE ClienteId = @ClienteId
    END