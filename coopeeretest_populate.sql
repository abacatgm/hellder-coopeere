insert into tabemailconfig(id,email_remetente,servidor,porta,usuario,senha,tls) values (1,'noreply@coopeere.eco.br','mail.coopeere.eco.br',587,'noreply@coopeere.eco.br','n0r3ply2k21',true);
insert into tabsmsgatewayconfig(id,nome_servico, base_url, hash_integracao) values (1,'websms','https://app.websms.com.br/sms/shortcode/routes/sms.php','e32256a02b211708fdcb5b588437a6e3');
insert into tabfinanceiroconfig(id,nome_servico, base_url, api_key, dia_vencimento) values (1,'asaas','https://sandbox.asaas.com/api/v3','8cfca7549530b61ff116929238d5aec74e285ac16bea64bb0110e62cd9533230', 28);
insert into tabpixconfig(id, nome_banco, base_url, api_key, recebedor_pix) values (1,'Banco do Brasil','https://api.hm.bb.com.br','d27b17790bffab80136ee17d40050856b9d1a5b1', '7f6844d0-de89-47e5-9ef7-e0a35a681615');
#insert into tabpixconfig(id, nome_banco, base_url, api_key, recebedor_pix) values (1,'Banco do Brasil','https://api.hm.bb.com.br','d27b17790bffab80136ee17d40050856b9d1a5b1', '7f6844d0-de89-47e5-9ef7-e0a35a681615');
insert into tabusuario (id,email, nivel, senha, token_email, token_telefone, token_change_psw, cpf_cnpj, telefone, email_verificado_em, telefone_verificado_em,created_at,updated_at) values (1,'tulio@upwaynetwork.com.br','admin',md5('senha'),null,null,null,null,null,'11111111111','22998680582','2021-05-20 14:50:00','2021-05-15','2021-05-15');
insert into tabusuario (id,email, nivel, senha, token_email, token_telefone, token_change_psw, cpf_cnpj, telefone, email_verificado_em,telefone_verificado_em,created_at,updated_at) values (2,'tulioap@gmail.com','user',md5('senha'),null,null,null,null,null,'08796011750','22998698450','2021-05-20 14:54:57','2021-05-20 14:54:57','2021-05-15','2021-05-15');
insert into tabusuario (id,email, nivel, senha, token_email, token_telefone, token_change_psw, cpf_cnpj, telefone, email_verificado_em, telefone_verificado_em, created_at,updated_at) values (3,'adalberto.o.pereira@gmail.com','user',md5('senha'),null,null,null,null,null,'03071492774','22998615355','2021-05-21T14:14:53','2021-05-20 14:54:57',NULL,NULL);
insert into tabusuario (id,email, nivel, senha, token_email,token_telefone, token_change_psw, cpf_cnpj,telefone, email_verificado_em, telefone_verificado_em, created_at,updated_at) values (4,'adalberto.pereira@ucam-campos.br','user',md5('senha'),null,null,null,null,null,'22222222222','22988121154','2021-05-21 20:00:19','2021-05-20 14:54:57',NULL,NULL);
insert into tabusuario (id,email, nivel, senha, token_email, token_telefone, token_change_psw, cpf_cnpj, telefone, email_verificado_em,created_at,updated_at) values (5,'helrov@hotmail.com','user',md5('tara9317'),null,null,null,null,null,'00734445709','22998424346','2021-05-25 17:49:50','2021-05-25 17:49:50',NULL,NULL);
insert into taboperadora (id,nome,created_at,updated_at) values (1,'Sem-Operadora','2021-05-20','2021-05-15');
insert into taboperadora (id,nome,created_at,updated_at) values (2,'Enel-RJ','2021-05-20','2021-05-15');
insert into taboperadora (id,nome,created_at,updated_at) values (3,'Light','2021-05-20','2021-05-15');
insert into tabcooperado (id,tipo,nome,cep,endereco,numero,bairro,cidade,estado,cpf_cnpj,idoperadora,tipo_conta,sorteio,status,grupo_conta,token_convite,token_convidado,created_at,updated_at) values (1,'cadastrado','Túlio AP','28220-000','Rua Gregorio','SN','Barcelos','São João da Barra','RJ','08796011750',1,null,10,null,null,null,null,null,'2021-05-15','2021-05-15');
insert into tabcooperado (id,tipo,nome,cep,endereco,numero,bairro,cidade,estado,cpf_cnpj,idoperadora,tipo_conta,sorteio,status,grupo_conta,token_convite,token_convidado,created_at,updated_at) values (2,'cadastrado','Adalberto Pereira','28053622','Rua Dionísio Augusto de Oliveira','31','Parque Julião Nogueira','Campos dos Goytacazes','RJ','03071492774',1,null,10,null,null,null,null,null,'2021-05-15','2021-05-15');
insert into tabcooperado (id,tipo,nome,cep,endereco,numero,bairro,cidade,estado,cpf_cnpj,idoperadora,tipo_conta,sorteio,status,grupo_conta,token_convite,token_convidado,created_at,updated_at) values (3,'cadastrado','Adalberto Oliveira Pereira','28010-972','Praça Santíssimo Salvador','31','Centro','Campos dos Goytacazes','RJ','22222222222',1,null,10,null,null,null,null,null,'2021-05-15','2021-05-15');
insert into tabcooperado (id,tipo,nome,cep,endereco,numero,bairro,cidade,estado,cpf_cnpj,idoperadora,tipo_conta,sorteio,status,grupo_conta,token_convite,token_convidado,created_at,updated_at) values (4,'cadastrado','Hellder Benjamim','28013015','Rua Professora Agricolina de Freitas','23','Centro','Campos dos Goytacazes','RJ','00734445709',1,null,10,null,null,null,null,null,'2021-05-15','2021-05-15');

insert into tabtensaoatendimento (tensao_atendimento) values ('110');
insert into tabtensaoatendimento (tensao_atendimento) values ('220');

insert into tabtipoconexao (tipo) values ('monofásica');
insert into tabtipoconexao (tipo) values ('bifásica');
insert into tabtipoconexao (tipo) values ('trifásica');

insert into tabtiporamal (tipo) values ('aéreo');
insert into tabtiporamal (tipo) values ('subterraneo');

insert into tabtipofontegeracao (tipo) values ('hidráulica');
insert into tabtipofontegeracao (tipo) values ('solar');
insert into tabtipofontegeracao (tipo) values ('eólica');
insert into tabtipofontegeracao (tipo) values ('biomassa');
insert into tabtipofontegeracao (tipo) values ('coogeração qualificada');


insert into tabperiodicidade (periodicidade,valor) values ('mensal',3.50);
insert into tabperiodicidade (periodicidade,valor) values ('bimestral',7.00);
insert into tabperiodicidade (periodicidade,valor) values ('trimestral',10.00);
insert into tabperiodicidade (periodicidade,valor) values ('semestral',18.00);
insert into tabperiodicidade (periodicidade,valor) values ('anual',32.00);

insert into tabmeiopagamento (meio_pagamento) values ('pix');
insert into tabmeiopagamento (meio_pagamento) values ('boleto bancário');
insert into tabmeiopagamento (meio_pagamento) values ('depósito bancário');
insert into tabmeiopagamento (meio_pagamento) values ('cartão de crédito');
insert into tabmeiopagamento (meio_pagamento) values ('cartão de débito');

insert into tabperiodicidademeiodepagamento (periodicidade,meio_pagamento,valor) values ('mensal','pix',3.50);
insert into tabperiodicidademeiodepagamento (periodicidade,meio_pagamento,valor) values ('bimestral','pix',7.00);
insert into tabperiodicidademeiodepagamento (periodicidade,meio_pagamento,valor) values ('bimestral','cartão de crédito',7.00);
insert into tabperiodicidademeiodepagamento (periodicidade,meio_pagamento,valor) values ('bimestral','cartão de débito',7.00);
insert into tabperiodicidademeiodepagamento (periodicidade,meio_pagamento,valor) values ('bimestral','boleto bancário',7.00);
insert into tabperiodicidademeiodepagamento (periodicidade,meio_pagamento,valor) values ('trimestral','pix',10.00);
insert into tabperiodicidademeiodepagamento (periodicidade,meio_pagamento,valor) values ('trimestral','cartão de crédito',10.00);
insert into tabperiodicidademeiodepagamento (periodicidade,meio_pagamento,valor) values ('trimestral','cartão de débito',10.00);
insert into tabperiodicidademeiodepagamento (periodicidade,meio_pagamento,valor) values ('trimestral','boleto bancário',10.00);
insert into tabperiodicidademeiodepagamento (periodicidade,meio_pagamento,valor) values ('semestral','pix',18.00);
insert into tabperiodicidademeiodepagamento (periodicidade,meio_pagamento,valor) values ('semestral','cartão de crédito',18.00);
insert into tabperiodicidademeiodepagamento (periodicidade,meio_pagamento,valor) values ('semestral','cartão de débito',18.00);
insert into tabperiodicidademeiodepagamento (periodicidade,meio_pagamento,valor) values ('semestral','boleto bancário',18.00);
insert into tabperiodicidademeiodepagamento (periodicidade,meio_pagamento,valor) values ('anual','pix',32.00);
insert into tabperiodicidademeiodepagamento (periodicidade,meio_pagamento,valor) values ('anual','cartão de crédito',32.00);
insert into tabperiodicidademeiodepagamento (periodicidade,meio_pagamento,valor) values ('anual','cartão de débito',32.00);
insert into tabperiodicidademeiodepagamento (periodicidade,meio_pagamento,valor) values ('anual','boleto bancário',32.00);
insert into tabdiadevencimento (dia_vencimento) values (1);
insert into tabdiadevencimento (dia_vencimento) values (2);
insert into tabdiadevencimento (dia_vencimento) values (3);
insert into tabdiadevencimento (dia_vencimento) values (4);
insert into tabdiadevencimento (dia_vencimento) values (5);
insert into tabdiadevencimento (dia_vencimento) values (6);
insert into tabdiadevencimento (dia_vencimento) values (7);
insert into tabdiadevencimento (dia_vencimento) values (8);
insert into tabdiadevencimento (dia_vencimento) values (9);
insert into tabdiadevencimento (dia_vencimento) values (10);
insert into tabdiadevencimento (dia_vencimento) values (11);
insert into tabdiadevencimento (dia_vencimento) values (12);
insert into tabdiadevencimento (dia_vencimento) values (13);
insert into tabdiadevencimento (dia_vencimento) values (14);
insert into tabdiadevencimento (dia_vencimento) values (15);
insert into tabdiadevencimento (dia_vencimento) values (16);
insert into tabdiadevencimento (dia_vencimento) values (17);
insert into tabdiadevencimento (dia_vencimento) values (18);
insert into tabdiadevencimento (dia_vencimento) values (19);
insert into tabdiadevencimento (dia_vencimento) values (20);
insert into tabdiadevencimento (dia_vencimento) values (21);
insert into tabdiadevencimento (dia_vencimento) values (22);
insert into tabdiadevencimento (dia_vencimento) values (23);
insert into tabdiadevencimento (dia_vencimento) values (24);
insert into tabdiadevencimento (dia_vencimento) values (25);
insert into tabdiadevencimento (dia_vencimento) values (26);
insert into tabdiadevencimento (dia_vencimento) values (27);
insert into tabdiadevencimento (dia_vencimento) values (28);
