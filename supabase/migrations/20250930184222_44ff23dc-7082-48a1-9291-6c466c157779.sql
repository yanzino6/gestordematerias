-- Inserir disciplinas de Engenharia de Produção Noturno
DO $$
DECLARE
  v_course_id uuid;
BEGIN
  SELECT id INTO v_course_id FROM public.courses WHERE code = 'ENG_PROD_NOT';

  -- 1º Período
  INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id) VALUES
  ('PROD-NOT-001', 'Cálculo Diferencial e Integral I', 4, 60, 1, false, v_course_id),
  ('PROD-NOT-002', 'Álgebra Linear', 4, 60, 1, false, v_course_id),
  ('PROD-NOT-003', 'Introdução à Engenharia de Produção', 2, 30, 1, false, v_course_id),
  ('PROD-NOT-004', 'Administração Geral', 4, 60, 1, false, v_course_id),
  ('PROD-NOT-005', 'Desenho Técnico', 2, 30, 1, false, v_course_id),
  ('PROD-NOT-006', 'Química Geral', 4, 60, 1, false, v_course_id);

  -- 2º Período
  INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id) VALUES
  ('PROD-NOT-007', 'Cálculo Diferencial e Integral II', 4, 60, 2, false, v_course_id),
  ('PROD-NOT-008', 'Física I', 4, 60, 2, false, v_course_id),
  ('PROD-NOT-009', 'Probabilidade e Estatística', 4, 60, 2, false, v_course_id),
  ('PROD-NOT-010', 'Economia', 4, 60, 2, false, v_course_id),
  ('PROD-NOT-011', 'Algoritmos e Programação', 4, 60, 2, false, v_course_id);

  -- 3º Período
  INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id) VALUES
  ('PROD-NOT-012', 'Cálculo Numérico', 4, 60, 3, false, v_course_id),
  ('PROD-NOT-013', 'Física II', 4, 60, 3, false, v_course_id),
  ('PROD-NOT-014', 'Estatística Aplicada', 4, 60, 3, false, v_course_id),
  ('PROD-NOT-015', 'Gestão de Custos', 4, 60, 3, false, v_course_id),
  ('PROD-NOT-016', 'Ciência dos Materiais', 4, 60, 3, false, v_course_id);

  -- 4º Período
  INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id) VALUES
  ('PROD-NOT-017', 'Resistência dos Materiais', 4, 60, 4, false, v_course_id),
  ('PROD-NOT-018', 'Processos de Fabricação I', 4, 60, 4, false, v_course_id),
  ('PROD-NOT-019', 'Pesquisa Operacional I', 4, 60, 4, false, v_course_id),
  ('PROD-NOT-020', 'Gestão da Qualidade', 4, 60, 4, false, v_course_id),
  ('PROD-NOT-021', 'Contabilidade Gerencial', 4, 60, 4, false, v_course_id);

  -- 5º Período
  INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id) VALUES
  ('PROD-NOT-022', 'Processos de Fabricação II', 4, 60, 5, false, v_course_id),
  ('PROD-NOT-023', 'Pesquisa Operacional II', 4, 60, 5, false, v_course_id),
  ('PROD-NOT-024', 'Planejamento e Controle da Produção I', 4, 60, 5, false, v_course_id),
  ('PROD-NOT-025', 'Ergonomia', 4, 60, 5, false, v_course_id),
  ('PROD-NOT-026', 'Gestão de Projetos', 4, 60, 5, false, v_course_id);

  -- 6º Período
  INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id) VALUES
  ('PROD-NOT-027', 'Planejamento e Controle da Produção II', 4, 60, 6, false, v_course_id),
  ('PROD-NOT-028', 'Logística Empresarial', 4, 60, 6, false, v_course_id),
  ('PROD-NOT-029', 'Engenharia Econômica', 4, 60, 6, false, v_course_id),
  ('PROD-NOT-030', 'Gestão de Operações', 4, 60, 6, false, v_course_id),
  ('PROD-NOT-031', 'Sistemas de Informação', 4, 60, 6, false, v_course_id);

  -- 7º Período
  INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id) VALUES
  ('PROD-NOT-032', 'Engenharia do Produto', 4, 60, 7, false, v_course_id),
  ('PROD-NOT-033', 'Gestão da Cadeia de Suprimentos', 4, 60, 7, false, v_course_id),
  ('PROD-NOT-034', 'Simulação de Sistemas', 4, 60, 7, false, v_course_id),
  ('PROD-NOT-035', 'Gestão Estratégica', 4, 60, 7, false, v_course_id),
  ('PROD-NOT-036', 'Gestão Ambiental', 2, 30, 7, false, v_course_id);

  -- 8º Período
  INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id) VALUES
  ('PROD-NOT-037', 'Gestão da Inovação', 4, 60, 8, false, v_course_id),
  ('PROD-NOT-038', 'Planejamento Estratégico', 4, 60, 8, false, v_course_id),
  ('PROD-NOT-039', 'Segurança do Trabalho', 2, 30, 8, false, v_course_id),
  ('PROD-NOT-040', 'Empreendedorismo', 4, 60, 8, false, v_course_id),
  ('PROD-NOT-041', 'Trabalho de Conclusão de Curso I', 2, 30, 8, false, v_course_id);

  -- 9º Período
  INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id) VALUES
  ('PROD-NOT-042', 'Trabalho de Conclusão de Curso II', 4, 60, 9, false, v_course_id),
  ('PROD-NOT-043', 'Estágio Supervisionado', 10, 300, 9, false, v_course_id);

  -- Disciplinas Optativas
  INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id) VALUES
  ('PROD-NOT-OPT01', 'Gestão de Marketing', 4, 60, NULL, true, v_course_id),
  ('PROD-NOT-OPT02', 'Sistemas de Gestão Integrados', 4, 60, NULL, true, v_course_id),
  ('PROD-NOT-OPT03', 'Gestão de Manutenção', 4, 60, NULL, true, v_course_id),
  ('PROD-NOT-OPT04', 'Gestão de Pessoas', 4, 60, NULL, true, v_course_id),
  ('PROD-NOT-OPT05', 'Lean Manufacturing', 4, 60, NULL, true, v_course_id);

  -- Inserir pré-requisitos
  INSERT INTO public.prerequisites (discipline_id, prerequisite_id)
  SELECT 
    d.id,
    p.id
  FROM public.disciplines d
  CROSS JOIN public.disciplines p
  WHERE d.course_id = v_course_id AND p.course_id = v_course_id
  AND (
    (d.code = 'PROD-NOT-007' AND p.code = 'PROD-NOT-001') OR
    (d.code = 'PROD-NOT-008' AND p.code = 'PROD-NOT-001') OR
    (d.code = 'PROD-NOT-010' AND p.code = 'PROD-NOT-004') OR
    (d.code = 'PROD-NOT-012' AND p.code = 'PROD-NOT-007') OR
    (d.code = 'PROD-NOT-013' AND p.code = 'PROD-NOT-008') OR
    (d.code = 'PROD-NOT-014' AND p.code = 'PROD-NOT-009') OR
    (d.code = 'PROD-NOT-015' AND p.code = 'PROD-NOT-010') OR
    (d.code = 'PROD-NOT-017' AND p.code = 'PROD-NOT-013') OR
    (d.code = 'PROD-NOT-018' AND p.code = 'PROD-NOT-016') OR
    (d.code = 'PROD-NOT-019' AND p.code = 'PROD-NOT-014') OR
    (d.code = 'PROD-NOT-020' AND p.code = 'PROD-NOT-014') OR
    (d.code = 'PROD-NOT-022' AND p.code = 'PROD-NOT-018') OR
    (d.code = 'PROD-NOT-023' AND p.code = 'PROD-NOT-019') OR
    (d.code = 'PROD-NOT-024' AND p.code = 'PROD-NOT-019') OR
    (d.code = 'PROD-NOT-027' AND p.code = 'PROD-NOT-024') OR
    (d.code = 'PROD-NOT-028' AND p.code = 'PROD-NOT-024') OR
    (d.code = 'PROD-NOT-029' AND p.code = 'PROD-NOT-015') OR
    (d.code = 'PROD-NOT-030' AND p.code = 'PROD-NOT-024') OR
    (d.code = 'PROD-NOT-033' AND p.code = 'PROD-NOT-028') OR
    (d.code = 'PROD-NOT-034' AND p.code = 'PROD-NOT-023') OR
    (d.code = 'PROD-NOT-042' AND p.code = 'PROD-NOT-041')
  );

END $$;