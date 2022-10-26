/*    CREATE DATABASE    */
CREATE Database [dbTeste]

Drop TABLE [Cliente]

/*    CREATE TABLE CLIENTE    */
CREATE TABLE [Cliente] (
    [ClienteId] INT IDENTITY(1,1) NOT NULL,
    [Cliente] NVARCHAR(160) NOT NULL,
    [TipoCliente] NVARCHAR(160) NOT NULL,
    [NomeContato] NVARCHAR(160) NOT NULL,
    [TelefoneContato] BIGINT NOT NULL,
    [Cidade] NVARCHAR(160) NOT NULL,
    [Bairro] NVARCHAR(160) NOT NULL,
    [Logradouro] NVARCHAR(160) NOT NULL,
    [DataCadastro] DATETIME NULL,
    [DataAtualizacao] DATETIME NULL

    PRIMARY KEY([ClienteId])
)
/*    CREATE TABLE IMOVEL    */
CREATE TABLE [Imovel](
    [ImovelId] INT NOT NULL,
    [ClienteId] INT NOT NULL,
    [Finalidade] NVARCHAR(160) NOT NULL,
    [Valor] DECIMAL(18,2) NOT NULL,
    [DataCadastro] DATETIME NULL

    PRIMARY KEY([ImovelId])
    CONSTRAINT [FK_Cliente_Imovel] FOREIGN KEY([ClienteId])
        REFERENCES [Cliente](ClienteId)
)
 