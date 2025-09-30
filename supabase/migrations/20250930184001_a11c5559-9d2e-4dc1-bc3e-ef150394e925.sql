-- Inserir disciplinas de Engenharia de Produção Vespertino
DO $$
DECLARE
  v_course_id uuid;
BEGIN
  SELECT id INTO v_course_id FROM public.courses WHERE code = 'ENG_PROD_VESP';

  -- 1º Período
  INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id) VALUES
  ('PRD-V-MAT001', 'Cálculo I', 4, 80, 1, false, v_course_id),
  ('PRD-V-FIS001', 'Física I', 4, 80, 1, false, v_course_id),
  ('PRD-V-QUI001', 'Química Geral', 4, 80, 1, false, v_course_id),
  ('PRD-V-DES001', 'Desenho Técnico', 2, 40, 1, false, v_course_id),
  ('PRD-V-INT001', 'Introdução à Engenharia de Produção', 2, 40, 1, false, v_course_id);

  -- 2º Período
  INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id) VALUES
  ('PRD-V-MAT002', 'Cálculo II', 4, 80, 2, false, v_course_id),
  ('PRD-V-FIS002', 'Física II', 4, 80, 2, false, v_course_id),
  ('PRD-V-ALG001', 'Álgebra Linear', 4, 80, 2, false, v_course_id),
  ('PRD-V-PRO001', 'Programação de Computadores', 4, 80, 2, false, v_course_id),
  ('PRD-V-ADM001', 'Introdução à Administração', 2, 40, 2, false, v_course_id);

  -- 3º Período
  INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id) VALUES
  ('PRD-V-MAT003', 'Cálculo III', 4, 80, 3, false, v_course_id),
  ('PRD-V-MAT004', 'Probabilidade e Estatística', 4, 80, 3, false, v_course_id),
  ('PRD-V-MEC001', 'Mecânica dos Sólidos', 4, 80, 3, false, v_course_id),
  ('PRD-V-ECO001', 'Economia', 4, 80, 3, false, v_course_id),
  ('PRD-V-COM001', 'Comportamento Organizacional', 2, 40, 3, false, v_course_id);

  -- 4º Período
  INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id) VALUES
  ('PRD-V-EST001', 'Estatística Aplicada', 4, 80, 4, false, v_course_id),
  ('PRD-V-FEN001', 'Fenômenos de Transporte', 4, 80, 4, false, v_course_id),
  ('PRD-V-MAT005', 'Materiais de Construção Mecânica', 4, 80, 4, false, v_course_id),
  ('PRD-V-PES001', 'Pesquisa Operacional I', 4, 80, 4, false, v_course_id),
  ('PRD-V-CON001', 'Contabilidade e Custos', 2, 40, 4, false, v_course_id);

  -- 5º Período
  INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id) VALUES
  ('PRD-V-PES002', 'Pesquisa Operacional II', 4, 80, 5, false, v_course_id),
  ('PRD-V-PRO002', 'Processos de Fabricação', 4, 80, 5, false, v_course_id),
  ('PRD-V-ENG001', 'Engenharia de Métodos', 4, 80, 5, false, v_course_id),
  ('PRD-V-GES001', 'Gestão de Pessoas', 4, 80, 5, false, v_course_id),
  ('PRD-V-ELE001', 'Eletrotécnica Geral', 2, 40, 5, false, v_course_id);

  -- 6º Período
  INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id) VALUES
  ('PRD-V-PRO003', 'Planejamento e Controle da Produção I', 4, 80, 6, false, v_course_id),
  ('PRD-V-QUA001', 'Controle Estatístico de Qualidade', 4, 80, 6, false, v_course_id),
  ('PRD-V-ENG002', 'Engenharia do Produto', 4, 80, 6, false, v_course_id),
  ('PRD-V-LOG001', 'Logística', 4, 80, 6, false, v_course_id),
  ('PRD-V-DIR001', 'Direito Empresarial', 2, 40, 6, false, v_course_id);

  -- 7º Período
  INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id) VALUES
  ('PRD-V-PRO004', 'Planejamento e Controle da Produção II', 4, 80, 7, false, v_course_id),
  ('PRD-V-GES002', 'Gestão da Qualidade', 4, 80, 7, false, v_course_id),
  ('PRD-V-PRO005', 'Projeto de Fábrica e Layout', 4, 80, 7, false, v_course_id),
  ('PRD-V-ENG003', 'Engenharia de Segurança do Trabalho', 4, 80, 7, false, v_course_id),
  ('PRD-V-MET001', 'Metrologia', 2, 40, 7, false, v_course_id);

  -- 8º Período
  INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id) VALUES
  ('PRD-V-GES003', 'Gestão Estratégica da Produção', 4, 80, 8, false, v_course_id),
  ('PRD-V-MAN001', 'Manutenção Industrial', 4, 80, 8, false, v_course_id),
  ('PRD-V-ENG004', 'Engenharia Econômica', 4, 80, 8, false, v_course_id),
  ('PRD-V-GES004', 'Gestão Ambiental', 4, 80, 8, false, v_course_id),
  ('PRD-V-TCC001', 'Trabalho de Conclusão de Curso I', 2, 40, 8, false, v_course_id);

  -- 9º Período
  INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id) VALUES
  ('PRD-V-PRO006', 'Gestão de Projetos', 4, 80, 9, false, v_course_id),
  ('PRD-V-SIM001', 'Simulação de Sistemas de Produção', 4, 80, 9, false, v_course_id),
  ('PRD-V-TCC002', 'Trabalho de Conclusão de Curso II', 4, 80, 9, false, v_course_id),
  ('PRD-V-EST002', 'Estágio Supervisionado', 8, 240, 9, false, v_course_id);

  -- Disciplinas Optativas
  INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id) VALUES
  ('PRD-V-OPT001', 'Marketing Industrial', 4, 80, NULL, true, v_course_id),
  ('PRD-V-OPT002', 'Gestão da Inovação', 4, 80, NULL, true, v_course_id),
  ('PRD-V-OPT003', 'Análise de Investimentos', 4, 80, NULL, true, v_course_id),
  ('PRD-V-OPT004', 'Gestão da Cadeia de Suprimentos', 4, 80, NULL, true, v_course_id),
  ('PRD-V-OPT005', 'Ergonomia', 4, 80, NULL, true, v_course_id),
  ('PRD-V-OPT006', 'Lean Manufacturing', 4, 80, NULL, true, v_course_id);

  -- Inserir pré-requisitos
  INSERT INTO public.prerequisites (discipline_id, prerequisite_id)
  SELECT 
    d.id,
    p.id
  FROM public.disciplines d
  CROSS JOIN public.disciplines p
  WHERE d.course_id = v_course_id AND p.course_id = v_course_id
  AND (
    (d.code = 'PRD-V-MAT002' AND p.code = 'PRD-V-MAT001') OR
    (d.code = 'PRD-V-FIS002' AND p.code = 'PRD-V-FIS001') OR
    (d.code = 'PRD-V-PRO001' AND p.code = 'PRD-V-MAT001') OR
    (d.code = 'PRD-V-MAT003' AND p.code = 'PRD-V-MAT002') OR
    (d.code = 'PRD-V-MAT004' AND p.code = 'PRD-V-MAT001') OR
    (d.code = 'PRD-V-MEC001' AND p.code = 'PRD-V-FIS001') OR
    (d.code = 'PRD-V-EST001' AND p.code = 'PRD-V-MAT004') OR
    (d.code = 'PRD-V-FEN001' AND p.code = 'PRD-V-FIS002') OR
    (d.code = 'PRD-V-PES001' AND p.code = 'PRD-V-ALG001') OR
    (d.code = 'PRD-V-PES002' AND p.code = 'PRD-V-PES001') OR
    (d.code = 'PRD-V-PRO002' AND p.code = 'PRD-V-MAT005') OR
    (d.code = 'PRD-V-ENG001' AND p.code = 'PRD-V-EST001') OR
    (d.code = 'PRD-V-PRO003' AND p.code = 'PRD-V-PES002') OR
    (d.code = 'PRD-V-QUA001' AND p.code = 'PRD-V-EST001') OR
    (d.code = 'PRD-V-ENG002' AND p.code = 'PRD-V-PRO002') OR
    (d.code = 'PRD-V-PRO004' AND p.code = 'PRD-V-PRO003') OR
    (d.code = 'PRD-V-GES002' AND p.code = 'PRD-V-QUA001') OR
    (d.code = 'PRD-V-PRO005' AND p.code = 'PRD-V-ENG001') OR
    (d.code = 'PRD-V-GES003' AND p.code = 'PRD-V-PRO004') OR
    (d.code = 'PRD-V-ENG004' AND p.code = 'PRD-V-CON001') OR
    (d.code = 'PRD-V-PRO006' AND p.code = 'PRD-V-GES003') OR
    (d.code = 'PRD-V-SIM001' AND p.code = 'PRD-V-PRO003') OR
    (d.code = 'PRD-V-TCC002' AND p.code = 'PRD-V-TCC001')
  );

END $$;