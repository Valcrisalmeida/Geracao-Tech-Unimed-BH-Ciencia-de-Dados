-- Inserindo valores
USE ECOMMERCE;
INSERT INTO Cliente (Nome, CPF, Endereco, Identificacao) VALUES ('Roberta Close', '11835569921', 'Rua Quatro, 1447', 'PF');
INSERT INTO Cliente (Nome, CNPJ,Endereco, Identificacao) VALUES ('Vitoria Dev','8626945/0001-10', 'Rua Giocondo, 119', 'CNPJ');
INSERT INTO Cliente (Nome, CPF, Endereco, Identificacao) VALUES ('JCI Desenvolvimento', '25548936912', 'Rua Bacana, 380', 'PF');
INSERT INTO Cliente (Nome, CPF, Endereco, Identificacao) VALUES ('Larissa Vitoria', '12545647862', 'Rua Vinte Cinco, 54', 'PF');
INSERT INTO Cliente (Nome, CNPJ,Endereco, Identificacao) VALUES ('Vcell Bencao','9656945/0001-85', 'Av. Paulista, 55', 'CNPJ');
INSERT INTO Cliente (Nome, CPF, Endereco, Identificacao) VALUES ('Samuel Messias', '25874563219', 'Rua Manaca, 80', 'PF');

INSERT INTO Produto (Categoria, Descricao, Valor) VALUES ('Roupa', 'Camisa', 92.80);
INSERT INTO Produto (Categoria, Descricao, Valor) VALUES ('Eletronico', 'Celular', 12100.00);
INSERT INTO Produto (Categoria, Descricao, Valor) VALUES ('Eletronico', 'notebook', 6520.00);
INSERT INTO Produto (Categoria, Descricao, Valor) VALUES ('Eletronico', 'Tablet', 2300.00);
INSERT INTO Produto (Categoria, Descricao, Valor) VALUES ('Eletronico', 'Radio', 93.40);

INSERT INTO Pedido (StatusPedido, Descricao, Frete) VALUES ('Solicitado', 'Pedido solicitado', 12.90);
INSERT INTO Pedido (StatusPedido, Descricao, Frete) VALUES ('Andamento', 'Pedido em andamento', 19.60); 
INSERT INTO Pedido (StatusPedido, Descricao, Frete) VALUES ('Concluido', 'Pedido concluido', 29.99); 
INSERT INTO Pedido (StatusPedido, Descricao, Frete) VALUES ('Solicitado', 'Pedido solicitado', 12.90);
INSERT INTO Pedido (StatusPedido, Descricao, Frete) VALUES ('Andamento', 'Pedido em andamento', 19.60); 
INSERT INTO Pedido (StatusPedido, Descricao, Frete) VALUES ('Concluido', 'Pedido concluido', 29.99); 

INSERT INTO Pagamento_Boleto (Data_Vencimento, Valor) VALUES (10/02/2022, 93.40);
INSERT INTO Pagamento_Boleto (Data_Vencimento, Valor) VALUES (23/11/2022, 2151.58);
INSERT INTO Pagamento_Boleto (Data_Vencimento, Valor) VALUES (10/12/2022, 6249.99);
INSERT INTO Pagamento_Boleto (Data_Vencimento, Valor) VALUES (22/12/2022, 100.00);

INSERT INTO Pagamento_Cartao (Numero_Cartao, CVV_Cartao, Nome, Valor) VALUES ('35698523178', '963', 'Larissa Gomes', 92.00); 
INSERT INTO Pagamento_Cartao (Numero_Cartao, CVV_Cartao, Nome, Valor) VALUES ('56321487462', '159', 'Vcell Assistencia', 2150.00); 
INSERT INTO Pagamento_Cartao (Numero_Cartao, CVV_Cartao, Nome, Valor) VALUES ('85126485814', '751', 'Rita Lobo', 6230.00); 

INSERT INTO Entrega (Codigo_Rastreio, Status, Data_Entrega) VALUES ('OP255321BR', 'Aguardando', 10/02/2022); 
INSERT INTO Entrega (Codigo_Rastreio, Status, Data_Entrega) VALUES ('CE632541BR', 'A caminho', 23/11/2022);
INSERT INTO Entrega (Codigo_Rastreio, Status, Data_Entrega) VALUES ('VF854665BR', 'Entregue', 10/12/2022);

INSERT INTO Estoque (Localizacao, Quantidade) VALUES ('Corredor B', 125); 
INSERT INTO Estoque (Localizacao, Quantidade) VALUES ('Corredor E', 29); 
INSERT INTO Estoque (Localizacao, Quantidade) VALUES ('Corredor A', 10); 

INSERT INTO Fornecedor (CNPJ, Razao_Social) VALUES ('25369456000', 'Comercio de Roupas Ltda'); 
INSERT INTO Fornecedor (CNPJ, Razao_Social) VALUES ('95236845000', 'Unidos Celular SA');  
INSERT INTO Fornecedor (CNPJ, Razao_Social) VALUES ('54218763000', 'Eletronica Eireli'); 

INSERT INTO Terceiro_Vendedor (Localizacao, Razao_Social) VALUES ('Iracemapolis', 'Roupas Cut Ltda'); 
INSERT INTO Terceiro_Vendedor (Localizacao, Razao_Social) VALUES ('Sao Paulo', 'Brasco Celular Ltda');  
INSERT INTO Terceiro_Vendedor (Localizacao, Razao_Social) VALUES ('Rio de Janeiro', 'Rodolfo Rodrigues'); 




-- CRIANDO QUERIES

-- Recupera????es simples com SELECT Statement
select * from Cliente;

-- Filtros com WHERE Statement
select * from Cliente where Identificacao = 'CNPJ';

-- Crie express??es para gerar atributos derivados
select Descricao, AVG(Frete) from Pedido;

-- Defina ordena????es dos dados com ORDER BY
select Descricao, Valor from Produto order by Valor desc;

-- Condi????es de filtros aos grupos ??? HAVING Statement
select Categoria, Descricao, Valor from Produto group by Categoria having Valor > 50;

-- Crie jun????es entre tabelas para fornecer uma perspectiva mais complexa dos dados
select *
    from Produto AS p
    inner join Pagamento_Boleto AS b
    on p.Valor = b.Valor
