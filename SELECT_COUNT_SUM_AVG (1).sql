use opa;
select count(1) as CD_QUANTIDADE_CLIENTES from tb_cliente;
select avg(VL_LUCRO) as VL_MEDIA_LUCROS from tb_financeiro;
select sum(VL_ALUGUEL) as VL_SOMA_ALUGUEIS from tb_imposto;

