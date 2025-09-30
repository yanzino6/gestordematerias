-- Inserir disciplinas de Engenharia Elétrica com códigos únicos
DO $$
DECLARE
  v_course_id uuid;
BEGIN
  SELECT id INTO v_course_id FROM public.courses WHERE code = 'ENG_ELET';

  -- 1º Período
  INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id) VALUES
  ('ELET-001', 'Cálculo I', 6, 90, 1, false, v_course_id),
  ('ELET-002', 'Física Geral I', 4, 60, 1, false, v_course_id),
  ('ELET-003', 'Química Geral', 4, 60, 1, false, v_course_id),
  ('ELET-004', 'Geometria Analítica e Álgebra Vetorial', 4, 60, 1, false, v_course_id),
  ('ELET-005', 'Introdução à Engenharia Elétrica', 2, 30, 1, false, v_course_id),
  ('ELET-006', 'Desenho Técnico', 2, 30, 1, false, v_course_id);

  -- 2º Período
  INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id) VALUES
  ('ELET-007', 'Cálculo II', 6, 90, 2, false, v_course_id),
  ('ELET-008', 'Física Geral II', 4, 60, 2, false, v_course_id),
  ('ELET-009', 'Álgebra Linear', 4, 60, 2, false, v_course_id),
  ('ELET-010', 'Algoritmos e Programação', 4, 60, 2, false, v_course_id),
  ('ELET-011', 'Circuitos Elétricos I', 4, 60, 2, false, v_course_id);

  -- 3º Período
  INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id) VALUES
  ('ELET-012', 'Cálculo III', 4, 60, 3, false, v_course_id),
  ('ELET-013', 'Física Geral III', 4, 60, 3, false, v_course_id),
  ('ELET-014', 'Equações Diferenciais', 4, 60, 3, false, v_course_id),
  ('ELET-015', 'Circuitos Elétricos II', 4, 60, 3, false, v_course_id),
  ('ELET-016', 'Elementos de Eletrônica', 4, 60, 3, false, v_course_id);

  -- 4º Período
  INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id) VALUES
  ('ELET-017', 'Cálculo Numérico', 4, 60, 4, false, v_course_id),
  ('ELET-018', 'Probabilidade e Estatística', 4, 60, 4, false, v_course_id),
  ('ELET-019', 'Eletrônica Analógica I', 4, 60, 4, false, v_course_id),
  ('ELET-020', 'Sinais e Sistemas', 4, 60, 4, false, v_course_id),
  ('ELET-021', 'Materiais Elétricos', 4, 60, 4, false, v_course_id);

  -- 5º Período
  INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id) VALUES
  ('ELET-022', 'Eletrônica Analógica II', 4, 60, 5, false, v_course_id),
  ('ELET-023', 'Eletrônica Digital I', 4, 60, 5, false, v_course_id),
  ('ELET-024', 'Conversão Eletromecânica de Energia I', 4, 60, 5, false, v_course_id),
  ('ELET-025', 'Sistemas de Controle I', 4, 60, 5, false, v_course_id),
  ('ELET-026', 'Eletromagnetismo', 4, 60, 5, false, v_course_id);

  -- 6º Período
  INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id) VALUES
  ('ELET-027', 'Eletrônica Digital II', 4, 60, 6, false, v_course_id),
  ('ELET-028', 'Conversão Eletromecânica de Energia II', 4, 60, 6, false, v_course_id),
  ('ELET-029', 'Sistemas de Controle II', 4, 60, 6, false, v_course_id),
  ('ELET-030', 'Microprocessadores e Microcontroladores', 4, 60, 6, false, v_course_id),
  ('ELET-031', 'Princípios de Comunicações', 4, 60, 6, false, v_course_id),
  ('ELET-032', 'Instalações Elétricas', 2, 30, 6, false, v_course_id);

  -- 7º Período
  INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id) VALUES
  ('ELET-033', 'Eletrônica de Potência', 4, 60, 7, false, v_course_id),
  ('ELET-034', 'Máquinas Elétricas I', 4, 60, 7, false, v_course_id),
  ('ELET-035', 'Sistemas de Potência I', 4, 60, 7, false, v_course_id),
  ('ELET-036', 'Sistemas de Comunicações', 4, 60, 7, false, v_course_id),
  ('ELET-037', 'Medidas Elétricas', 4, 60, 7, false, v_course_id),
  ('ELET-038', 'Administração e Economia', 2, 30, 7, false, v_course_id);

  -- 8º Período
  INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id) VALUES
  ('ELET-039', 'Máquinas Elétricas II', 4, 60, 8, false, v_course_id),
  ('ELET-040', 'Sistemas de Potência II', 4, 60, 8, false, v_course_id),
  ('ELET-041', 'Acionamentos Elétricos', 4, 60, 8, false, v_course_id),
  ('ELET-042', 'Eficiência Energética', 4, 60, 8, false, v_course_id),
  ('ELET-043', 'Proteção de Sistemas Elétricos', 4, 60, 8, false, v_course_id),
  ('ELET-044', 'Trabalho de Conclusão de Curso I', 2, 30, 8, false, v_course_id);

  -- 9º Período
  INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id) VALUES
  ('ELET-045', 'Trabalho de Conclusão de Curso II', 4, 60, 9, false, v_course_id),
  ('ELET-046', 'Estágio Supervisionado', 10, 300, 9, false, v_course_id);

  -- Disciplinas Optativas
  INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id) VALUES
  ('ELET-OPT01', 'Automação Industrial', 4, 60, NULL, true, v_course_id),
  ('ELET-OPT02', 'Fontes Alternativas de Energia', 4, 60, NULL, true, v_course_id),
  ('ELET-OPT03', 'Qualidade de Energia', 4, 60, NULL, true, v_course_id),
  ('ELET-OPT04', 'Sistemas Embarcados', 4, 60, NULL, true, v_course_id),
  ('ELET-OPT05', 'Redes de Computadores', 4, 60, NULL, true, v_course_id),
  ('ELET-OPT06', 'Instrumentação Eletrônica', 4, 60, NULL, true, v_course_id);

  -- Inserir pré-requisitos
  INSERT INTO public.prerequisites (discipline_id, prerequisite_id)
  SELECT 
    d.id,
    p.id
  FROM public.disciplines d
  CROSS JOIN public.disciplines p
  WHERE d.course_id = v_course_id AND p.course_id = v_course_id
  AND (
    (d.code = 'ELET-007' AND p.code = 'ELET-001') OR
    (d.code = 'ELET-008' AND p.code = 'ELET-002') OR
    (d.code = 'ELET-009' AND p.code = 'ELET-004') OR
    (d.code = 'ELET-011' AND p.code = 'ELET-002') OR
    (d.code = 'ELET-012' AND p.code = 'ELET-007') OR
    (d.code = 'ELET-013' AND p.code = 'ELET-008') OR
    (d.code = 'ELET-014' AND p.code = 'ELET-007') OR
    (d.code = 'ELET-015' AND p.code = 'ELET-011') OR
    (d.code = 'ELET-016' AND p.code = 'ELET-011') OR
    (d.code = 'ELET-017' AND p.code = 'ELET-012') OR
    (d.code = 'ELET-019' AND p.code = 'ELET-016') OR
    (d.code = 'ELET-020' AND p.code = 'ELET-014') OR
    (d.code = 'ELET-022' AND p.code = 'ELET-019') OR
    (d.code = 'ELET-023' AND p.code = 'ELET-016') OR
    (d.code = 'ELET-024' AND p.code = 'ELET-015') OR
    (d.code = 'ELET-025' AND p.code = 'ELET-020') OR
    (d.code = 'ELET-026' AND p.code = 'ELET-013') OR
    (d.code = 'ELET-027' AND p.code = 'ELET-023') OR
    (d.code = 'ELET-028' AND p.code = 'ELET-024') OR
    (d.code = 'ELET-029' AND p.code = 'ELET-025') OR
    (d.code = 'ELET-030' AND p.code = 'ELET-023') OR
    (d.code = 'ELET-031' AND p.code = 'ELET-020') OR
    (d.code = 'ELET-033' AND p.code = 'ELET-022') OR
    (d.code = 'ELET-034' AND p.code = 'ELET-028') OR
    (d.code = 'ELET-035' AND p.code = 'ELET-028') OR
    (d.code = 'ELET-036' AND p.code = 'ELET-031') OR
    (d.code = 'ELET-039' AND p.code = 'ELET-034') OR
    (d.code = 'ELET-040' AND p.code = 'ELET-035') OR
    (d.code = 'ELET-041' AND p.code = 'ELET-034') OR
    (d.code = 'ELET-043' AND p.code = 'ELET-035') OR
    (d.code = 'ELET-045' AND p.code = 'ELET-044')
  );

END $$;