USE projetodba;

--tabela funcionario
INSERT INTO funcionario
VALUES (funcionario_id_seq.NEXTVAL,'Silvana Castro', '71193398851', 'Rua José de Freitas Caetano, 101', '14811362',
 '(16)2806-6635', STR_TO_DATE('09-05-1975', '%d-%m-%Y'));
 
INSERT INTO funcionario
VALUES (funcionario_id_seq.NEXTVAL,'Breno Nogueira', '90476142830', 'Rua Paulo Ayres, 751', '14807118',
 '(16)3576-6479', STR_TO_DATE('17-05-1997', '%d-%m-%Y'));
 
INSERT INTO funcionario
VALUES (funcionario_id_seq.NEXTVAL,'Elza Costa', '47986798874', 'Rua Noemi Pinheiro, 165', '14811595',
 '(16)2838-2470', STR_TO_DATE('21-02-1999', '%d-%m-%Y'));
 
INSERT INTO funcionario
VALUES (funcionario_id_seq.NEXTVAL,'Marcela da Cunha', '50293647810', 'Rua Savério Ianelli, 419', '14806159',
 '(16)2747-4770', STR_TO_DATE('27-07-1995', '%d-%m-%Y'));
 
INSERT INTO funcionario
VALUES (funcionario_id_seq.NEXTVAL,'Melissa Costa', '18163557800', 'Av. Maria Adelaide Malara, 371', '14811444',
 '(16)99847-4111', STR_TO_DATE('05-07-2002', '%d-%m-%Y'));
 
INSERT INTO funcionario
VALUES (funcionario_id_seq.NEXTVAL,'Isabel Eloá da Silva', '81502653842', 'Rua Lívio Abramo, 545', '14802399',
 '(16)3777-7937', STR_TO_DATE('24-08-1978', '%d-%m-%Y'));
 

--tabela farmaceutico
INSERT INTO farmaceutico VALUES (1, '443996'), (4, '115588'), (6, '334856');

--tabela vendedor
INSERT INTO vendedor VALUES (2), (3), (5);

--tabela fornecedor
INSERT INTO fornecedor
VALUES (fornecedor_id_seq.NEXTVAL,'57766038000197', 'Giovana e Geraldo Medicamentos Ltda', '(11)3794-7363', 'presidencia@gegmedicamentosltda.com.br',
 '10225010', 'Rua Varnhagen, 425 - Centro');
 
INSERT INTO fornecedor
VALUES (fornecedor_id_seq.NEXTVAL,'19768273000109', 'Ana e Renata Medicamentos Ltda', '(17)3818-7385', 'rh@aermedicamentosltda.com.br',
 '14787040', 'Av Rio Dalva, 869 - Los Angeles');

INSERT INTO fornecedor
VALUES (fornecedor_id_seq.NEXTVAL,'76734364000167', 'Distribuidora José e Tatiane Ltda', '(16)3530-7589', 'fiscal@jetdistribuidorame.com.br',
 '14093642', 'Rua Dezesseis, 632 - Parque Flamboyans');
 
INSERT INTO fornecedor
VALUES (fornecedor_id_seq.NEXTVAL,'91290240000123', 'Thales e Iago Farmácia ME', '(11)3700-4436', 'rh@teifarmaciame.com.br',
 '35535070', 'Rua Majê, 542 - Cidade Patriarca');
 
INSERT INTO fornecedor
VALUES (fornecedor_id_seq.NEXTVAL,'49850486000146', 'Sebastiana e Mateus Medicamentos Ltda', '(11)2914-6263', 'compras@semmedicamentosltda.com.br',
 '14293000', 'Rua do Boqueirão, 693 - Saúde');
 

 --tabela produto
INSERT INTO produto				
VALUES (produto_id_seq.NEXTVAL,'BUDESONIDA 64MCG', STR_TO_DATE('20-06-2022', '%d-%m-%Y'), 25, '18.50', 1);

INSERT INTO produto				
VALUES (produto_id_seq.NEXTVAL,'DORFLEX c/10', STR_TO_DATE('15-06-2026', '%d-%m-%Y'), 30, '5.60', 1);

INSERT INTO produto				
VALUES (produto_id_seq.NEXTVAL,'Energético Monster 473ml', STR_TO_DATE('21-06-2022', '%d-%m-%Y'), 10, '6.80', 2);

INSERT INTO produto				
VALUES (produto_id_seq.NEXTVAL,'NEOSALDINA c/30', STR_TO_DATE('14-01-2023', '%d-%m-%Y'), 20, '24.70', 3);

INSERT INTO produto				
VALUES (produto_id_seq.NEXTVAL,'Fralda PomPom G c/42', null, 40, '45.90', 4);

INSERT INTO produto				
VALUES (produto_id_seq.NEXTVAL,'Rivotril 2,5mg/ml', STR_TO_DATE('25-06-2023', '%d-%m-%Y'), 12, '25.60', 4);

INSERT INTO produto				
VALUES (produto_id_seq.NEXTVAL,'Barra de Cereal Bio2 25g', STR_TO_DATE('21-04-2023', '%d-%m-%Y'), 50, '3.54', 5);
 
 

 --tabela medicamento
INSERT INTO medicamento				
VALUES (1,'Busonid, para o que é indicado e para o que serve?
Suspensão aquosa 32mcg e 64mcg
Busonid é indicado para pacientes com rinites não-alérgica e alérgica perenes e alérgica sazonal, tratamento de pólipo nasal e prevenção de pólipo nasal após polipectomia (extração do pólipo).
Quais as contraindicações do Busonid?
Busonid não deve ser usado por pacientes com alergia à budesonida ou a qualquer componente da fórmula.',
 '256 mcg /dia', 'Novartis');

INSERT INTO medicamento				
VALUES (2,'Dorflex, para o que é indicado e para o que serve?
Dorflex é indicado no alívio da dor associada a contraturas musculares, incluindo dor de cabeça tensional.
Quais as contraindicações do Dorflex?
Dorflex não deve ser utilizado nos seguintes casos:
Alergia ou intolerância a qualquer um dos componentes da fórmula ou a analgésicos semelhantes à dipirona – derivados de pirazolonas ou a pirazolidinas – incluindo, por exemplo, casos anteriores de agranulocitose  em relação a um destes medicamentos;
Glaucoma obstrução pilórica ou duodenal (estreitamento da passagem do conteúdo no estômago e intestino), problemas motores no esôfago, úlcera péptica estenosante, hipertrofia prostática, obstrução do colo da bexiga e miastenia grave;
Porfiria hepática aguda intermitente - doença metabólica que se manifesta através de problemas na pele e/ou com complicações neurológicas;
Deficiência congênita da glicose-6-fosfato-desidrogenase;
Função da medula óssea insuficiente ou doenças do sistema hematopoiético;
Desenvolvido broncoespasmo ou outras reações anafiláticas com medicamentos para dor, como: salicilatos, paracetamol, diclofenaco, ibuprofeno, indometacina, naproxeno;
Gravidez e amamentação.',
 '3/dia', 'Sanofi');

INSERT INTO medicamento				
VALUES (4,'Neosaldina, para o que é indicado e para o que serve?
Neosaldina® é um medicamento com atividade analgésica (diminui a dor) e antiespasmódica (diminui contração involuntária) indicado para o tratamento de diversos tipos de dor de cabeça, incluindo enxaquecas ou para o tratamento de cólicas.
Quais as contraindicações do Neosaldina?
Você não deve tomar Neosaldina® se tiver alergia ou intolerância a qualquer componente da fórmula.
Você também não deve tomar Neosaldina® nas crises de hipertensão arterial (pressão alta), na presença de alteração nas qualidades do sangue ou na proporção de seus elementos constituintes ou de determinadas doenças metabólicas, como porfiria ou a deficiência congênita da glicose-6-fosfato-desidrogenase.
Você só deve usar Neosaldina® em doses mais altas e por período prolongado se o médico recomendar.',
 '4/dia', 'Takeda');

INSERT INTO medicamento				
VALUES (6,'Rivotril, para o que é indicado e para o que serve?
Adulto e pediátrico: 
Distúrbio epiléptico
Adulto: 
Transtornos de ansiedade, Transtornos do humor, Síndromes psicóticas, Síndrome das pernas inquietas, Vertigem e distúrbios do equilíbrio e Síndrome da boca ardente

Quais as contraindicações do Rivotril?
Rivotril® é contraindicado a pacientes com hipersensibilidade conhecida a clonazepam ou a qualquer dos excipientes do medicamento, em pacientes com insuficiência respiratória grave ou comprometimento do fígado grave, pois os benzodiazepínicos podem levar à ocorrência de comprometimento do sistema nervoso, secundário ao problema no fígado.
Rivotril® comprimidos e Rivotril® gotas são contraindicados para o tratamento de transtornos do pânico em pacientes com histórico médico de apneia do sono.
Rivotril® é contraindicado a pacientes com glaucoma agudo de ângulo fechado. Rivotril® pode ser usado por pacientes com glaucoma de ângulo aberto, desde que estejam recebendo terapia apropriada.',
 '1,5 mg/dia em 3 doses', 'Roche');
 
 
  --tabela cliente					
INSERT INTO cliente					
VALUES ('71398382671', 'Elaine Luzia Dias', STR_TO_DATE('16-02-1991', '%d-%m-%Y'), 
 '(19)3566-0729', '13087129', 'Praça do Café, 800 - Parque Taquaral');
 
INSERT INTO cliente					
VALUES ('42773091060', 'Erick Ramos', STR_TO_DATE('27-04-1999', '%d-%m-%Y'), '(16)3513-6994', '14809224', 'Rua 05, 818 - Jardim Ipanema');
 
INSERT INTO cliente					
VALUES ('23724762895', 'Gustavo Gonçalves', STR_TO_DATE('24-09-1992', '%d-%m-%Y'), 
 '(16)3732-2086', '14811431', 'Av Domingos Francisco, 791 - Jardim Pinheiros');
 
INSERT INTO cliente					
VALUES ('32099032807', 'Stefany Figueiredo', STR_TO_DATE('23-01-2002', '%d-%m-%Y'),
 '(16)29319263', '14804070', 'Rua Moysés Mussi, 355 - Parque Vale do Sol');
 
INSERT INTO cliente					
VALUES ('69387859886', 'Fabiana Cardoso', STR_TO_DATE('17-03-1978', '%d-%m-%Y'), 
 '(16)35549394', '14802406', 'Rua Rogério Ferraz, 508 - Jardim Primavera');
 
 
   --tabela venda					
INSERT INTO venda					
VALUES (venda_id_seq.NEXTVAL, '32099032807', 4, 2, STR_TO_DATE('25-07-2021', '%d-%m-%Y'),
 STR_TO_DATE('15:47', '%H:%i'), 'S', '25.60');
 
 INSERT INTO venda					
VALUES (venda_id_seq.NEXTVAL, '71398382671', null, 5, STR_TO_DATE('25-07-2021', '%d-%m-%Y'),
 STR_TO_DATE('16:20', '%H:%i'), 'N', '35.90');
 
  INSERT INTO venda					
VALUES (venda_id_seq.NEXTVAL, '42773091060', 6, 3, STR_TO_DATE('26-07-2021', '%d-%m-%Y'),
 STR_TO_DATE('09:23', '%H:%i'), 'S', '35.30');
 
  INSERT INTO venda					
VALUES (venda_id_seq.NEXTVAL, '23724762895', null, 2, STR_TO_DATE('26-07-2021', '%d-%m-%Y'),
 STR_TO_DATE('12:43', '%H:%i'), 'N', '51.70');
 
  INSERT INTO venda					
VALUES (venda_id_seq.NEXTVAL, '69387859886', 1, 5, STR_TO_DATE('26-07-2021', '%d-%m-%Y'),
 STR_TO_DATE('19:03', '%H:%i'), 'S', '163.30');
 

 
--tabela item_venda					
INSERT INTO item_venda					
VALUES (6, 1, 1, '25.60');

INSERT INTO item_venda					
VALUES (2, 2, 2, '11.20'), (1, 2, 2, '24.70');

INSERT INTO item_venda					
VALUES (1, 3, 1, '18.50'), (2, 3, 3, '16.80');

INSERT INTO item_venda					
VALUES (3, 4, 5, '34.00'), (7, 4, 5, '17.70');

INSERT INTO item_venda					
VALUES (6, 5, 1, '25.60'), (5, 5, 3, '137.70');

 
 
 