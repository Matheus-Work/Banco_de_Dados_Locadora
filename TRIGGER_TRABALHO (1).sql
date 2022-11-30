use work;
-- TRIGGER 1
create trigger trg_col_alt
before update on
tb_colaborador 
for each row
set
NEW.nm_nome="Colaborador alterado";
update tb_colaborador set CD_CODIGO=10 WHERE ID=1;

-- TRIGGER 2
create trigger trg_ger_alt
before update on
tb_gerencia
for each row
set
NEW.nm_metas="Metas alteradas";
update tb_gerencia set NM_TIPO_TREINAMENTO='APRENDER A VENDER' WHERE ID=1;

-- TRIGGER 3
create trigger trg_cont_alt
before insert on
tb_contato 
for each row
set
NEW.NM_EMAIL="Email alterado";
INSERT INTO TB_CONTATO(NM_TELEFONE,NM_EMAIL) VALUES ('	47456589	','	UMC@GMAIL.COM	');

-- TRIGGER 4
create trigger trg_vist_alt
before insert on
tb_vistoria 
for each row
set
NEW.NM_COMBUSTIVEL="Combustível cheio";
INSERT INTO TB_VISTORIA (NM_AR,NM_PNEUS,NM_COMBUSTIVEL,NM_QUILOMETRAGEM) VALUES ('	SIM	','	SIM	','	NÃO	','	NÃO	');