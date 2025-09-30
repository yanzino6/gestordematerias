-- Insert all disciplines and prerequisites
-- Período 1
INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional) VALUES
('ELE15924', 'Práticas de Laboratório', 1, 30, 1, false),
('INF15927', 'Programação I', 3, 60, 1, false),
('INF15973', 'Lógica para Computação I', 4, 60, 1, false),
('INF16189', 'Introdução à Engenharia de Computação', 3, 60, 1, false),
('MAT15925', 'Cálculo I', 6, 90, 1, false),

-- Período 2
('ELE15929', 'Desenho Assistido por Computador', 2, 30, 2, false),
('FIS13696', 'Física I', 4, 60, 2, false),
('HID15930', 'Fundamentos de Engenharia Ambiental', 2, 45, 2, false),
('INF16153', 'Programação II', 3, 60, 2, false),
('MAT15931', 'Cálculo II', 4, 60, 2, false),
('MAT15932', 'Álgebra Linear', 4, 60, 2, false),
('INF15975', 'Técnicas de Busca e Ordenação', 3, 60, 2, false),

-- Período 3
('ELE15934', 'Circuitos Elétricos I', 4, 75, 3, false),
('ELE15935', 'Circuitos Lógicos', 3, 60, 3, false),
('FIS13735', 'Física II', 4, 60, 3, false),
('INF15974', 'Estruturas de Dados', 3, 60, 3, false),
('MAT15936', 'Cálculo III', 4, 60, 3, false),
('MAT15937', 'Cálculo IV', 4, 60, 3, false),

-- Período 4
('ELE15940', 'Circuitos Elétricos II', 4, 75, 4, false),
('ELE15941', 'Eletromagnetismo I', 4, 60, 4, false),
('FIS13737', 'Física Experimental I', 1, 30, 4, false),
('INF15933', 'Programação Orientada a Objetos', 3, 60, 4, false),
('INF16154', 'Arquitetura e Organização de Computadores', 3, 60, 4, false),
('STA15932', 'Probabilidade e Estatística', 4, 60, 4, false),

-- Período 5
('ELE15943', 'Eletrônica Básica I', 5, 90, 5, false),
('ELE15944', 'Eletromagnetismo II', 4, 60, 5, false),
('ELE16191', 'Sinais e Sistemas', 4, 60, 5, false),
('INF15980', 'Sistemas Operacionais', 3, 60, 5, false),
('INF16190', 'Projeto Integrado de Computação I', 3, 60, 5, false),

-- Período 6
('ELE15942', 'Sistemas Embarcados I', 5, 90, 6, false),
('ELE15951', 'Análise e Modelagem de Sistemas Dinâmicos', 4, 60, 6, false),
('INF15978', 'Engenharia de Software I', 4, 60, 6, false),
('INF16158', 'Redes de Computadores', 3, 60, 6, false),
('INF16192', 'Computabilidade e Complexidade', 4, 60, 6, false),

-- Período 7
('ELE15956', 'Sistemas Realimentados', 4, 60, 7, false),
('ELE16194', 'Projeto Integrado de Computação II - Hardware', 2, 60, 7, false),
('EPR12990', 'Engenharia Econômica', 4, 60, 7, false),
('INF16161', 'Paradigmas de Programação', 3, 60, 7, false),
('INF16165', 'Metodologia de Pesquisa Científica', 3, 60, 7, false),
('INF16193', 'Projeto Integrado de Computação II - Software', 2, 60, 7, false),

-- Período 8
('ELE16195', 'Instalações Elétricas e de Comunicações', 4, 60, 8, false),
('EPR15963', 'Gestão Empresarial', 4, 60, 8, false),
('HID16196', 'Higiene e Segurança do Trabalho', 3, 45, 8, false),
('INF15979', 'Banco de Dados I', 4, 60, 8, false),

-- Período 9
('EPR15969', 'Aspectos Legais em Computação', 4, 60, 9, false),
('INF16197', 'Estágio Supervisionado Obrigatório', 6, 200, 9, false),
('INF16198', 'Trabalho de Conclusão de Curso I', 4, 60, 9, false),

-- Período 10
('INF16159', 'Tópicos em Computação e Sociedade', 2, 60, 10, false),
('INF16199', 'Trabalho de Conclusão de Curso II', 4, 60, 10, false),

-- Optativas
('ELE15983', 'Visão Computacional', 4, 60, null, true),
('INF15976', 'Programação Web', 3, 60, null, true),
('INF15977', 'Programação para Dispositivos Móveis', 3, 60, null, true),
('INF15981', 'Introdução à Ciência de Dados', 4, 60, null, true),
('INF16014', 'Computação Gráfica', 3, 60, null, true),
('INF16016', 'Inteligência Artificial', 3, 60, null, true),
('INF16022', 'Segurança em Computação', 3, 60, null, true),
('INF16160', 'Engenharia de Software II', 4, 60, null, true),
('INF16172', 'Banco de Dados II', 3, 60, null, true);

-- Insert prerequisites
-- Prog II << Prog I
INSERT INTO public.prerequisites (discipline_id, prerequisite_id)
SELECT d.id, p.id FROM public.disciplines d, public.disciplines p WHERE d.code = 'INF16153' AND p.code = 'INF15927';

-- Calc II << Calc I
INSERT INTO public.prerequisites (discipline_id, prerequisite_id)
SELECT d.id, p.id FROM public.disciplines d, public.disciplines p WHERE d.code = 'MAT15931' AND p.code = 'MAT15925';

-- Fis I << Calc I
INSERT INTO public.prerequisites (discipline_id, prerequisite_id)
SELECT d.id, p.id FROM public.disciplines d, public.disciplines p WHERE d.code = 'FIS13696' AND p.code = 'MAT15925';

-- ED << Prog II
INSERT INTO public.prerequisites (discipline_id, prerequisite_id)
SELECT d.id, p.id FROM public.disciplines d, public.disciplines p WHERE d.code = 'INF15974' AND p.code = 'INF16153';

-- Calc III << Calc II
INSERT INTO public.prerequisites (discipline_id, prerequisite_id)
SELECT d.id, p.id FROM public.disciplines d, public.disciplines p WHERE d.code = 'MAT15936' AND p.code = 'MAT15931';

-- Calc IV << Calc II
INSERT INTO public.prerequisites (discipline_id, prerequisite_id)
SELECT d.id, p.id FROM public.disciplines d, public.disciplines p WHERE d.code = 'MAT15937' AND p.code = 'MAT15931';

-- Fis II << Fis I
INSERT INTO public.prerequisites (discipline_id, prerequisite_id)
SELECT d.id, p.id FROM public.disciplines d, public.disciplines p WHERE d.code = 'FIS13735' AND p.code = 'FIS13696';

-- Circ Elet I << Fis I
INSERT INTO public.prerequisites (discipline_id, prerequisite_id)
SELECT d.id, p.id FROM public.disciplines d, public.disciplines p WHERE d.code = 'ELE15934' AND p.code = 'FIS13696';

-- POO << ED
INSERT INTO public.prerequisites (discipline_id, prerequisite_id)
SELECT d.id, p.id FROM public.disciplines d, public.disciplines p WHERE d.code = 'INF15933' AND p.code = 'INF15974';

-- Circ Elet II << Circ Elet I
INSERT INTO public.prerequisites (discipline_id, prerequisite_id)
SELECT d.id, p.id FROM public.disciplines d, public.disciplines p WHERE d.code = 'ELE15940' AND p.code = 'ELE15934';

-- Fis Exp I << Fis II
INSERT INTO public.prerequisites (discipline_id, prerequisite_id)
SELECT d.id, p.id FROM public.disciplines d, public.disciplines p WHERE d.code = 'FIS13737' AND p.code = 'FIS13735';

-- SO << AOC
INSERT INTO public.prerequisites (discipline_id, prerequisite_id)
SELECT d.id, p.id FROM public.disciplines d, public.disciplines p WHERE d.code = 'INF15980' AND p.code = 'INF16154';

-- Sinais << Calc III
INSERT INTO public.prerequisites (discipline_id, prerequisite_id)
SELECT d.id, p.id FROM public.disciplines d, public.disciplines p WHERE d.code = 'ELE16191' AND p.code = 'MAT15936';

-- ES I << POO
INSERT INTO public.prerequisites (discipline_id, prerequisite_id)
SELECT d.id, p.id FROM public.disciplines d, public.disciplines p WHERE d.code = 'INF15978' AND p.code = 'INF15933';

-- Redes << SO
INSERT INTO public.prerequisites (discipline_id, prerequisite_id)
SELECT d.id, p.id FROM public.disciplines d, public.disciplines p WHERE d.code = 'INF16158' AND p.code = 'INF15980';

-- Comp/Complex << Log I
INSERT INTO public.prerequisites (discipline_id, prerequisite_id)
SELECT d.id, p.id FROM public.disciplines d, public.disciplines p WHERE d.code = 'INF16192' AND p.code = 'INF15973';

-- BD I << TBO
INSERT INTO public.prerequisites (discipline_id, prerequisite_id)
SELECT d.id, p.id FROM public.disciplines d, public.disciplines p WHERE d.code = 'INF15979' AND p.code = 'INF15975';

-- TCC I << Metod Pesquisa
INSERT INTO public.prerequisites (discipline_id, prerequisite_id)
SELECT d.id, p.id FROM public.disciplines d, public.disciplines p WHERE d.code = 'INF16198' AND p.code = 'INF16165';

-- TCC II << TCC I
INSERT INTO public.prerequisites (discipline_id, prerequisite_id)
SELECT d.id, p.id FROM public.disciplines d, public.disciplines p WHERE d.code = 'INF16199' AND p.code = 'INF16198';

-- Prog Web << POO
INSERT INTO public.prerequisites (discipline_id, prerequisite_id)
SELECT d.id, p.id FROM public.disciplines d, public.disciplines p WHERE d.code = 'INF15976' AND p.code = 'INF15933';

-- Prog Móvel << POO
INSERT INTO public.prerequisites (discipline_id, prerequisite_id)
SELECT d.id, p.id FROM public.disciplines d, public.disciplines p WHERE d.code = 'INF15977' AND p.code = 'INF15933';

-- Ciência Dados << ED
INSERT INTO public.prerequisites (discipline_id, prerequisite_id)
SELECT d.id, p.id FROM public.disciplines d, public.disciplines p WHERE d.code = 'INF15981' AND p.code = 'INF15974';

-- ES II << ES I
INSERT INTO public.prerequisites (discipline_id, prerequisite_id)
SELECT d.id, p.id FROM public.disciplines d, public.disciplines p WHERE d.code = 'INF16160' AND p.code = 'INF15978';

-- BD II << BD I
INSERT INTO public.prerequisites (discipline_id, prerequisite_id)
SELECT d.id, p.id FROM public.disciplines d, public.disciplines p WHERE d.code = 'INF16172' AND p.code = 'INF15979';