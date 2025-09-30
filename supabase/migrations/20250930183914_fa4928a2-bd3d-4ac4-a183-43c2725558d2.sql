-- Inserir disciplinas de Engenharia de Produção Noturno
DO $$
DECLARE
  v_course_id uuid;
BEGIN
  SELECT id INTO v_course_id FROM public.courses WHERE code = 'ENG_PROD_NOT';

  -- 1º Período
  INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id) VALUES
  ('PRD-N-MAT001', 'Cálculo I', 4, 80, 1, false, v_course_id),
  ('PRD-N-FIS001', 'Física I', 4, 80, 1, false, v_course_id),
  ('PRD-N-QUI001', 'Química Geral', 4, 80, 1, false, v_course_id),
  ('PRD-N-DES001', 'Desenho Técnico', 2, 40, 1, false, v_course_id),
  ('PRD-N-INT001', 'Introdução à Engenharia de Produção', 2, 40, 1, false, v_course_id);

  -- 2º Período
  INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id) VALUES
  ('PRD-N-MAT002', 'Cálculo II', 4, 80, 2, false, v_course_id),
  ('PRD-N-FIS002', 'Física II', 4, 80, 2, false, v_course_id),
  ('PRD-N-ALG001', 'Álgebra Linear', 4, 80, 2, false, v_course_id),
  ('PRD-N-PRO001', 'Programação de Computadores', 4, 80, 2, false, v_course_id),
  ('PRD-N-ADM001', 'Introdução à Administração', 2, 40, 2, false, v_course_id);

  -- 3º Período
  INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id) VALUES
  ('PRD-N-MAT003', 'Cálculo III', 4, 80, 3, false, v_course_id),
  ('PRD-N-MAT004', 'Probabilidade e Estatística', 4, 80, 3, false, v_course_id),
  ('PRD-N-MEC001', 'Mecânica dos Sólidos', 4, 80, 3, false, v_course_id),
  ('PRD-N-ECO001', 'Economia', 4, 80, 3, false, v_course_id),
  ('PRD-N-COM001', 'Comportamento Organizacional', 2, 40, 3, false, v_course_id);

  -- 4º Período
  INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id) VALUES
  ('PRD-N-EST001', 'Estatística Aplicada', 4, 80, 4, false, v_course_id),
  ('PRD-N-FEN001', 'Fenômenos de Transporte', 4, 80, 4, false, v_course_id),
  ('PRD-N-MAT005', 'Materiais de Construção Mecânica', 4, 80, 4, false, v_course_id),
  ('PRD-N-PES001', 'Pesquisa Operacional I', 4, 80, 4, false, v_course_id),
  ('PRD-N-CON001', 'Contabilidade e Custos', 2, 40, 4, false, v_course_id);

  -- 5º Período
  INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id) VALUES
  ('PRD-N-PES002', 'Pesquisa Operacional II', 4, 80, 5, false, v_course_id),
  ('PRD-N-PRO002', 'Processos de Fabricação', 4, 80, 5, false, v_course_id),
  ('PRD-N-ENG001', 'Engenharia de Métodos', 4, 80, 5, false, v_course_id),
  ('PRD-N-GES001', 'Gestão de Pessoas', 4, 80, 5, false, v_course_id),
  ('PRD-N-ELE001', 'Eletrotécnica Geral', 2, 40, 5, false, v_course_id);

  -- 6º Período
  INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id) VALUES
  ('PRD-N-PRO003', 'Planejamento e Controle da Produção I', 4, 80, 6, false, v_course_id),
  ('PRD-N-QUA001', 'Controle Estatístico de Qualidade', 4, 80, 6, false, v_course_id),
  ('PRD-N-ENG002', 'Engenharia do Produto', 4, 80, 6, false, v_course_id),
  ('PRD-N-LOG001', 'Logística', 4, 80, 6, false, v_course_id),
  ('PRD-N-DIR001', 'Direito Empresarial', 2, 40, 6, false, v_course_id);

  -- 7º Período
  INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id) VALUES
  ('PRD-N-PRO004', 'Planejamento e Controle da Produção II', 4, 80, 7, false, v_course_id),
  ('PRD-N-GES002', 'Gestão da Qualidade', 4, 80, 7, false, v_course_id),
  ('PRD-N-PRO005', 'Projeto de Fábrica e Layout', 4, 80, 7, false, v_course_id),
  ('PRD-N-ENG003', 'Engenharia de Segurança do Trabalho', 4, 80, 7, false, v_course_id),
  ('PRD-N-MET001', 'Metrologia', 2, 40, 7, false, v_course_id);

  -- 8º Período
  INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id) VALUES
  ('PRD-N-GES003', 'Gestão Estratégica da Produção', 4, 80, 8, false, v_course_id),
  ('PRD-N-MAN001', 'Manutenção Industrial', 4, 80, 8, false, v_course_id),
  ('PRD-N-ENG004', 'Engenharia Econômica', 4, 80, 8, false, v_course_id),
  ('PRD-N-GES004', 'Gestão Ambiental', 4, 80, 8, false, v_course_id),
  ('PRD-N-TCC001', 'Trabalho de Conclusão de Curso I', 2, 40, 8, false, v_course_id);

  -- 9º Período
  INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id) VALUES
  ('PRD-N-PRO006', 'Gestão de Projetos', 4, 80, 9, false, v_course_id),
  ('PRD-N-SIM001', 'Simulação de Sistemas de Produção', 4, 80, 9, false, v_course_id),
  ('PRD-N-TCC002', 'Trabalho de Conclusão de Curso II', 4, 80, 9, false, v_course_id),
  ('PRD-N-EST002', 'Estágio Supervisionado', 8, 240, 9, false, v_course_id);

  -- Disciplinas Optativas
  INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id) VALUES
  ('PRD-N-OPT001', 'Marketing Industrial', 4, 80, NULL, true, v_course_id),
  ('PRD-N-OPT002', 'Gestão da Inovação', 4, 80, NULL, true, v_course_id),
  ('PRD-N-OPT003', 'Análise de Investimentos', 4, 80, NULL, true, v_course_id),
  ('PRD-N-OPT004', 'Gestão da Cadeia de Suprimentos', 4, 80, NULL, true, v_course_id),
  ('PRD-N-OPT005', 'Ergonomia', 4, 80, NULL, true, v_course_id);

  -- Inserir pré-requisitos
  INSERT INTO public.prerequisites (discipline_id, prerequisite_id)
  SELECT 
    d.id,
    p.id
  FROM public.disciplines d
  CROSS JOIN public.disciplines p
  WHERE d.course_id = v_course_id AND p.course_id = v_course_id
  AND (
    (d.code = 'PRD-N-MAT002' AND p.code = 'PRD-N-MAT001') OR
    (d.code = 'PRD-N-FIS002' AND p.code = 'PRD-N-FIS001') OR
    (d.code = 'PRD-N-PRO001' AND p.code = 'PRD-N-MAT001') OR
    (d.code = 'PRD-N-MAT003' AND p.code = 'PRD-N-MAT002') OR
    (d.code = 'PRD-N-MAT004' AND p.code = 'PRD-N-MAT001') OR
    (d.code = 'PRD-N-MEC001' AND p.code = 'PRD-N-FIS001') OR
    (d.code = 'PRD-N-EST001' AND p.code = 'PRD-N-MAT004') OR
    (d.code = 'PRD-N-FEN001' AND p.code = 'PRD-N-FIS002') OR
    (d.code = 'PRD-N-PES001' AND p.code = 'PRD-N-ALG001') OR
    (d.code = 'PRD-N-PES002' AND p.code = 'PRD-N-PES001') OR
    (d.code = 'PRD-N-PRO002' AND p.code = 'PRD-N-MAT005') OR
    (d.code = 'PRD-N-ENG001' AND p.code = 'PRD-N-EST001') OR
    (d.code = 'PRD-N-PRO003' AND p.code = 'PRD-N-PES002') OR
    (d.code = 'PRD-N-QUA001' AND p.code = 'PRD-N-EST001') OR
    (d.code = 'PRD-N-ENG002' AND p.code = 'PRD-N-PRO002') OR
    (d.code = 'PRD-N-PRO004' AND p.code = 'PRD-N-PRO003') OR
    (d.code = 'PRD-N-GES002' AND p.code = 'PRD-N-QUA001') OR
    (d.code = 'PRD-N-PRO005' AND p.code = 'PRD-N-ENG001') OR
    (d.code = 'PRD-N-GES003' AND p.code = 'PRD-N-PRO004') OR
    (d.code = 'PRD-N-ENG004' AND p.code = 'PRD-N-CON001') OR
    (d.code = 'PRD-N-PRO006' AND p.code = 'PRD-N-GES003') OR
    (d.code = 'PRD-N-SIM001' AND p.code = 'PRD-N-PRO003') OR
    (d.code = 'PRD-N-TCC002' AND p.code = 'PRD-N-TCC001')
  );

END $$;