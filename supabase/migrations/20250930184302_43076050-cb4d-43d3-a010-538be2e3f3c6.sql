-- Inserir disciplinas de Engenharia de Produção Vespertino
DO $$
DECLARE
  v_course_id uuid;
BEGIN
  SELECT id INTO v_course_id FROM public.courses WHERE code = 'ENG_PROD_VESP';

  -- 1º Período
  INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id) VALUES
  ('PROD-VESP-001', 'Cálculo Diferencial e Integral I', 4, 60, 1, false, v_course_id),
  ('PROD-VESP-002', 'Álgebra Linear', 4, 60, 1, false, v_course_id),
  ('PROD-VESP-003', 'Introdução à Engenharia de Produção', 2, 30, 1, false, v_course_id),
  ('PROD-VESP-004', 'Administração Geral', 4, 60, 1, false, v_course_id),
  ('PROD-VESP-005', 'Desenho Técnico', 2, 30, 1, false, v_course_id),
  ('PROD-VESP-006', 'Química Geral', 4, 60, 1, false, v_course_id);

  -- 2º Período
  INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id) VALUES
  ('PROD-VESP-007', 'Cálculo Diferencial e Integral II', 4, 60, 2, false, v_course_id),
  ('PROD-VESP-008', 'Física I', 4, 60, 2, false, v_course_id),
  ('PROD-VESP-009', 'Probabilidade e Estatística', 4, 60, 2, false, v_course_id),
  ('PROD-VESP-010', 'Economia', 4, 60, 2, false, v_course_id),
  ('PROD-VESP-011', 'Algoritmos e Programação', 4, 60, 2, false, v_course_id);

  -- 3º Período
  INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id) VALUES
  ('PROD-VESP-012', 'Cálculo Numérico', 4, 60, 3, false, v_course_id),
  ('PROD-VESP-013', 'Física II', 4, 60, 3, false, v_course_id),
  ('PROD-VESP-014', 'Estatística Aplicada', 4, 60, 3, false, v_course_id),
  ('PROD-VESP-015', 'Gestão de Custos', 4, 60, 3, false, v_course_id),
  ('PROD-VESP-016', 'Ciência dos Materiais', 4, 60, 3, false, v_course_id);

  -- 4º Período
  INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id) VALUES
  ('PROD-VESP-017', 'Resistência dos Materiais', 4, 60, 4, false, v_course_id),
  ('PROD-VESP-018', 'Processos de Fabricação I', 4, 60, 4, false, v_course_id),
  ('PROD-VESP-019', 'Pesquisa Operacional I', 4, 60, 4, false, v_course_id),
  ('PROD-VESP-020', 'Gestão da Qualidade', 4, 60, 4, false, v_course_id),
  ('PROD-VESP-021', 'Contabilidade Gerencial', 4, 60, 4, false, v_course_id);

  -- 5º Período
  INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id) VALUES
  ('PROD-VESP-022', 'Processos de Fabricação II', 4, 60, 5, false, v_course_id),
  ('PROD-VESP-023', 'Pesquisa Operacional II', 4, 60, 5, false, v_course_id),
  ('PROD-VESP-024', 'Planejamento e Controle da Produção I', 4, 60, 5, false, v_course_id),
  ('PROD-VESP-025', 'Ergonomia', 4, 60, 5, false, v_course_id),
  ('PROD-VESP-026', 'Gestão de Projetos', 4, 60, 5, false, v_course_id);

  -- 6º Período
  INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id) VALUES
  ('PROD-VESP-027', 'Planejamento e Controle da Produção II', 4, 60, 6, false, v_course_id),
  ('PROD-VESP-028', 'Logística Empresarial', 4, 60, 6, false, v_course_id),
  ('PROD-VESP-029', 'Engenharia Econômica', 4, 60, 6, false, v_course_id),
  ('PROD-VESP-030', 'Gestão de Operações', 4, 60, 6, false, v_course_id),
  ('PROD-VESP-031', 'Sistemas de Informação', 4, 60, 6, false, v_course_id);

  -- 7º Período
  INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id) VALUES
  ('PROD-VESP-032', 'Engenharia do Produto', 4, 60, 7, false, v_course_id),
  ('PROD-VESP-033', 'Gestão da Cadeia de Suprimentos', 4, 60, 7, false, v_course_id),
  ('PROD-VESP-034', 'Simulação de Sistemas', 4, 60, 7, false, v_course_id),
  ('PROD-VESP-035', 'Gestão Estratégica', 4, 60, 7, false, v_course_id),
  ('PROD-VESP-036', 'Gestão Ambiental', 2, 30, 7, false, v_course_id);

  -- 8º Período
  INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id) VALUES
  ('PROD-VESP-037', 'Gestão da Inovação', 4, 60, 8, false, v_course_id),
  ('PROD-VESP-038', 'Planejamento Estratégico', 4, 60, 8, false, v_course_id),
  ('PROD-VESP-039', 'Segurança do Trabalho', 2, 30, 8, false, v_course_id),
  ('PROD-VESP-040', 'Empreendedorismo', 4, 60, 8, false, v_course_id),
  ('PROD-VESP-041', 'Trabalho de Conclusão de Curso I', 2, 30, 8, false, v_course_id);

  -- 9º Período
  INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id) VALUES
  ('PROD-VESP-042', 'Trabalho de Conclusão de Curso II', 4, 60, 9, false, v_course_id),
  ('PROD-VESP-043', 'Estágio Supervisionado', 10, 300, 9, false, v_course_id);

  -- Disciplinas Optativas
  INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id) VALUES
  ('PROD-VESP-OPT01', 'Gestão de Marketing', 4, 60, NULL, true, v_course_id),
  ('PROD-VESP-OPT02', 'Sistemas de Gestão Integrados', 4, 60, NULL, true, v_course_id),
  ('PROD-VESP-OPT03', 'Gestão de Manutenção', 4, 60, NULL, true, v_course_id),
  ('PROD-VESP-OPT04', 'Gestão de Pessoas', 4, 60, NULL, true, v_course_id),
  ('PROD-VESP-OPT05', 'Lean Manufacturing', 4, 60, NULL, true, v_course_id);

  -- Inserir pré-requisitos
  INSERT INTO public.prerequisites (discipline_id, prerequisite_id)
  SELECT 
    d.id,
    p.id
  FROM public.disciplines d
  CROSS JOIN public.disciplines p
  WHERE d.course_id = v_course_id AND p.course_id = v_course_id
  AND (
    (d.code = 'PROD-VESP-007' AND p.code = 'PROD-VESP-001') OR
    (d.code = 'PROD-VESP-008' AND p.code = 'PROD-VESP-001') OR
    (d.code = 'PROD-VESP-010' AND p.code = 'PROD-VESP-004') OR
    (d.code = 'PROD-VESP-012' AND p.code = 'PROD-VESP-007') OR
    (d.code = 'PROD-VESP-013' AND p.code = 'PROD-VESP-008') OR
    (d.code = 'PROD-VESP-014' AND p.code = 'PROD-VESP-009') OR
    (d.code = 'PROD-VESP-015' AND p.code = 'PROD-VESP-010') OR
    (d.code = 'PROD-VESP-017' AND p.code = 'PROD-VESP-013') OR
    (d.code = 'PROD-VESP-018' AND p.code = 'PROD-VESP-016') OR
    (d.code = 'PROD-VESP-019' AND p.code = 'PROD-VESP-014') OR
    (d.code = 'PROD-VESP-020' AND p.code = 'PROD-VESP-014') OR
    (d.code = 'PROD-VESP-022' AND p.code = 'PROD-VESP-018') OR
    (d.code = 'PROD-VESP-023' AND p.code = 'PROD-VESP-019') OR
    (d.code = 'PROD-VESP-024' AND p.code = 'PROD-VESP-019') OR
    (d.code = 'PROD-VESP-027' AND p.code = 'PROD-VESP-024') OR
    (d.code = 'PROD-VESP-028' AND p.code = 'PROD-VESP-024') OR
    (d.code = 'PROD-VESP-029' AND p.code = 'PROD-VESP-015') OR
    (d.code = 'PROD-VESP-030' AND p.code = 'PROD-VESP-024') OR
    (d.code = 'PROD-VESP-033' AND p.code = 'PROD-VESP-028') OR
    (d.code = 'PROD-VESP-034' AND p.code = 'PROD-VESP-023') OR
    (d.code = 'PROD-VESP-042' AND p.code = 'PROD-VESP-041')
  );

END $$;