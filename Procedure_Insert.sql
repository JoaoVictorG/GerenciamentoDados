CREATE PROCEDURE [dbTeste].[Insert]
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

    if EXISTS(SELECT cliente FROM Cliente WHERE Cliente = @Cliente)
        SELECT "Cliente já Cadastrado"
    else
    INSERT INTO cliente(Cliente, TipoCliente, NomeContato, TelefoneContato, Cidade, Bairro, Logradouro, DataCadastro, DataAtualizacao) VALUES(@Cliente, @TipoCliente, @NomeContato, @TelefoneContato, @Cidade, @Bairro, @Logradouro, @DataCadastro, @DataAtualizacao)
    END