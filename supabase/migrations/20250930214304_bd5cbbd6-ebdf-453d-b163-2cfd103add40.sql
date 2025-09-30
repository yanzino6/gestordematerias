-- Inserir o curso de Engenharia de Computação (código COMP, turno diurno/integral)
INSERT INTO public.courses (code, name, shift)
VALUES ('COMP', 'Engenharia de Computação', 'diurno')
ON CONFLICT DO NOTHING;

-- Inserir as disciplinas obrigatórias do curso de Engenharia de Computação
-- PERÍODO 1
INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'ELE15924', 'PRÁTICAS DE LABORATÓRIO', 1, 30, 1, false, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'INF15927', 'PROGRAMAÇÃO I', 3, 60, 1, false, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'INF15973', 'LÓGICA PARA COMPUTAÇÃO I', 4, 60, 1, false, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'INF16189', 'Introdução à Engenharia de Computação', 3, 60, 1, false, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'MAT15925', 'CÁLCULO I', 6, 90, 1, false, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

-- PERÍODO 2
INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'ELE15929', 'DESENHO ASSISTIDO POR COMPUTADOR', 2, 30, 2, false, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'FIS13696', 'FÍSICA I', 4, 60, 2, false, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'HID15930', 'FUNDAMENTOS DE ENGENHARIA AMBIENTAL', 2, 45, 2, false, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'INF16153', 'Programação II', 3, 60, 2, false, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'INF15975', 'TÉCNICAS DE BUSCA E ORDENAÇÃO', 4, 60, 2, false, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'MAT15931', 'CÁLCULO II', 6, 90, 2, false, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'MAT15932', 'ÁLGEBRA LINEAR', 4, 60, 2, false, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

-- PERÍODO 3
INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'ELE15934', 'CIRCUITOS ELÉTRICOS I', 4, 75, 3, false, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'ELE15935', 'CIRCUITOS LÓGICOS', 3, 60, 3, false, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'FIS13735', 'FÍSICA II', 4, 60, 3, false, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'INF15974', 'ESTRUTURAS DE DADOS', 3, 60, 3, false, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'MAT15936', 'CÁLCULO III', 4, 60, 3, false, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'MAT15937', 'CÁLCULO IV', 4, 60, 3, false, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

-- PERÍODO 4
INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'ELE15940', 'CIRCUITOS ELÉTRICOS II', 4, 75, 4, false, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'ELE15941', 'ELETROMAGNETISMO I', 4, 60, 4, false, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'FIS13737', 'FÍSICA EXPERIMENTAL I', 1, 30, 4, false, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'INF15933', 'PROGRAMAÇÃO ORIENTADA A OBJETOS', 3, 60, 4, false, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'INF16154', 'Arquitetura e Organização de Computadores', 3, 60, 4, false, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'STA15932', 'PROBABILIDADE E ESTATÍSTICA', 4, 60, 4, false, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

-- PERÍODO 5
INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'ELE15943', 'ELETRÔNICA BÁSICA I', 5, 90, 5, false, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'ELE15944', 'ELETROMAGNETISMO II', 4, 60, 5, false, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'ELE16191', 'Sinais e Sistemas', 4, 60, 5, false, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'INF15980', 'SISTEMAS OPERACIONAIS', 4, 60, 5, false, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'INF16190', 'Projeto Integrado de Computação I', 2, 60, 5, false, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

-- PERÍODO 6
INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'ELE15942', 'SISTEMAS EMBARCADOS I', 5, 90, 6, false, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'ELE15951', 'ANÁLISE E MODELAGEM DE SISTEMAS DINÂMICOS', 4, 60, 6, false, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'INF15978', 'ENGENHARIA DE SOFTWARE I', 4, 60, 6, false, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'INF16158', 'Redes de Computadores', 3, 60, 6, false, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'INF16192', 'Computabilidade e Complexidade', 4, 60, 6, false, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

-- PERÍODO 7
INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'ELE15956', 'SISTEMAS REALIMENTADOS', 4, 60, 7, false, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'ELE16194', 'Projeto Integrado de Computação II - Hardware', 2, 60, 7, false, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'EPR12990', 'Engenharia Econômica', 4, 60, 7, false, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'INF16161', 'Paradigmas de Programação', 3, 60, 7, false, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'INF16165', 'Metodologia de Pesquisa Científica', 3, 60, 7, false, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'INF16193', 'Projeto Integrado de Computação II - Software', 2, 60, 7, false, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

-- PERÍODO 8
INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'ELE16195', 'Instalações Elétricas e de Comunicações', 4, 60, 8, false, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'EPR15963', 'Gestão Empresarial', 4, 60, 8, false, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'HID16196', 'HIGIENE E SEGURANÇA DO TRABALHO', 3, 45, 8, false, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'INF15979', 'BANCO DE DADOS I', 4, 60, 8, false, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

-- PERÍODO 9
INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'EPR15969', 'ERGONOMIA', 4, 60, 9, false, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'INF16197', 'Estágio Supervisionado Obrigatório', 6, 200, 9, false, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'INF16198', 'Trabalho de Conclusão de Curso I', 4, 60, 9, false, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

-- PERÍODO 10
INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'INF16159', 'TRABALHO DE CONCLUSÃO DE CURSO', 2, 60, 10, false, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'INF16199', 'Trabalho de Conclusão de Curso II', 4, 60, 10, false, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

-- DISCIPLINAS OPTATIVAS
INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'ELE15945', 'LABORATÓRIO DE ELETROMAGNETISMO', 1, 30, NULL, true, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'ELE15946', 'CONVERSÃO ELETROMECÂNICA DE ENERGIA', 5, 90, NULL, true, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'ELE15949', 'ELETRÔNICA BÁSICA II', 5, 90, NULL, true, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'ELE15950', 'MÁQUINAS ELÉTRICAS', 5, 90, NULL, true, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'ELE15952', 'PRINCÍPIOS DE COMUNICAÇÕES', 4, 75, NULL, true, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'ELE15954', 'ELETRÔNICA DE POTÊNCIA', 3, 60, NULL, true, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'ELE15955', 'GERAÇÃO, TRANSMISSÃO E DISTRIBUIÇÃO', 4, 60, NULL, true, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'ELE15957', 'LABORATÓRIO DE CONTROLE', 1, 30, NULL, true, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'ELE15958', 'SISTEMAS DE COMUNICAÇÕES DIGITAIS', 4, 60, NULL, true, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'ELE15960', 'ACIONAMENTOS ELÉTRICOS', 3, 60, NULL, true, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'ELE15962', 'ANÁLISE DE SISTEMAS ELÉTRICOS DE POTÊNCIA I', 4, 60, NULL, true, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'ELE15965', 'ANÁLISE DE SISTEMAS ELÉTRICOS DE POTÊNCIA II', 4, 60, NULL, true, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'ELE15967', 'INSTALAÇÕES ELÉTRICAS INDUSTRIAIS', 4, 60, NULL, true, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'ELE15983', 'VISÃO COMPUTACIONAL', 4, 60, NULL, true, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'ELE15985', 'CONTROLE INTELIGENTE', 3, 60, NULL, true, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'ELE16004', 'INFORMÁTICA INDUSTRIAL', 3, 60, NULL, true, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'ELE16005', 'INSTRUMENTAÇÃO INDUSTRIAL', 4, 60, NULL, true, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'ELE16010', 'SISTEMAS EMBARCADOS II', 3, 60, NULL, true, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'ELE16011', 'SISTEMAS DIGITAIS', 3, 60, NULL, true, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'ELE16012', 'MICROELETRÔNICA', 3, 45, NULL, true, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'EPR12810', 'Gestão da Inovação e Empreendedorismo', 4, 60, NULL, true, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'EPR15953', 'PRINCÍPIOS DE ECONOMIA', 4, 60, NULL, true, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'FIS14461', 'FÍSICA IV', 4, 60, NULL, true, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'INF15976', 'PROGRAMAÇÃO WEB', 3, 60, NULL, true, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'INF15977', 'PROGRAMAÇÃO PARA DISPOSITIVOS MÓVEIS', 3, 60, NULL, true, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'INF15981', 'INTRODUÇÃO À CIÊNCIA DE DADOS', 4, 60, NULL, true, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'INF15984', 'PROGRAMAÇÃO LINEAR E INTRODUÇÃO À OTIMIZAÇÃO', 4, 60, NULL, true, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'INF16013', 'LÓGICA PARA COMPUTAÇÃO II', 4, 60, NULL, true, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'INF16014', 'COMPUTAÇÃO GRÁFICA', 3, 60, NULL, true, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'INF16016', 'INTELIGÊNCIA ARTIFICIAL', 3, 60, NULL, true, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'INF16021', 'PROCESSAMENTO PARALELO', 4, 60, NULL, true, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'INF16022', 'SEGURANÇA EM COMPUTAÇÃO', 3, 60, NULL, true, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'INF16023', 'TÓPICOS EM LINGUAGENS DE PROGRAMAÇÃO', 4, 60, NULL, true, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'INF16024', 'TÓPICOS EM OTIMIZAÇÃO', 4, 60, NULL, true, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'INF16025', 'TÓPICOS EM SISTEMAS COMPUTACIONAIS', 4, 60, NULL, true, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'INF16027', 'TÓPICOS EM TECNOLOGIA E INOVAÇÃO', 4, 60, NULL, true, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'INF16028', 'TEORIA DOS GRAFOS', 4, 60, NULL, true, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'INF16155', 'Linguagens Formais e Autômatos', 4, 60, NULL, true, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'INF16156', 'Algoritmos Numéricos', 3, 60, NULL, true, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'INF16157', 'Projeto Integrado I', 3, 60, NULL, true, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'INF16160', 'Engenharia de Software II', 4, 60, NULL, true, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'INF16162', 'Teoria da Computação', 4, 60, NULL, true, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'INF16163', 'Compiladores', 3, 60, NULL, true, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'INF16164', 'Projeto e Análise de Algoritmos', 4, 60, NULL, true, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'INF16169', 'Tópicos em Programação', 4, 60, NULL, true, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'INF16170', 'Tópicos em Inteligência Computacional', 4, 60, NULL, true, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'INF16171', 'Avaliação de Desempenho', 4, 60, NULL, true, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'INF16172', 'Banco de Dados II', 3, 60, NULL, true, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'INF16173', 'Computação Científica', 3, 60, NULL, true, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'INF16174', 'Elementos Finitos', 4, 60, NULL, true, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'INF16175', 'Gerência de Projetos de Software', 4, 60, NULL, true, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'INF16176', 'Gerência de Projetos', 4, 60, NULL, true, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'INF16177', 'Laboratório de Redes', 2, 60, NULL, true, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'INF16178', 'Multimídia', 3, 60, NULL, true, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'INF16179', 'Processamento de Imagens', 4, 60, NULL, true, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'INF16180', 'Programação para Web', 3, 60, NULL, true, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'INF16181', 'Mineração de Dados', 4, 60, NULL, true, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'INF16182', 'Processos Estocásticos', 4, 60, NULL, true, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'INF16183', 'Interação Humano-Computador', 3, 60, NULL, true, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'INF16184', 'Pesquisa Operacional', 4, 60, NULL, true, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'INF16185', 'Projeto e Desenvolvimento de Jogos', 2, 60, NULL, true, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'INF16186', 'Redes de Computadores Avançado', 2, 60, NULL, true, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'INF16187', 'Sistemas Colaborativos', 2, 60, NULL, true, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'INF16188', 'Tópicos em Informática', 3, 60, NULL, true, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'INF17412', 'Matemática para Ciência de Dados', 4, 60, NULL, true, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'INF17413', 'Otimização para Ciência de Dados', 4, 60, NULL, true, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'INF17414', 'Projeto de Inovação', 2, 60, NULL, true, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'INF17415', 'Programação Competitiva', 3, 60, NULL, true, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'INF17416', 'Generative Pre-Trained Transformers', 4, 60, NULL, true, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'INF17417', 'Ontologias e Grafos de Conhecimento', 4, 60, NULL, true, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'INF17418', 'Desenvolvimento Orientado a Modelos', 4, 60, NULL, true, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'INF17419', 'Tópicos em Modelagem Conceitual', 4, 60, NULL, true, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'INF17420', 'Tópicos em Sistemas de Informação', 4, 60, NULL, true, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'INF17421', 'Tópicos em Engenharia de Software', 4, 60, NULL, true, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'LET16015', 'FUNDAMENTOS DA LÍNGUA BRASILEIRA DE SINAIS', 4, 60, NULL, true, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;

INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id)
SELECT 'QUI15926', 'QUÍMICA PARA ENGENHARIA', 4, 60, NULL, true, c.id
FROM public.courses c WHERE c.code = 'COMP' AND c.shift = 'diurno' ON CONFLICT DO NOTHING;