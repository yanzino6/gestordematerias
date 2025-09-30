-- Inserir disciplinas de Engenharia Civil
-- Primeiro, obter o course_id de Engenharia Civil
DO $$
DECLARE
  v_course_id uuid;
BEGIN
  SELECT id INTO v_course_id FROM public.courses WHERE code = 'ENG_CIVIL';

  -- 1º Período
  INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id) VALUES
  ('MAT001', 'Cálculo Diferencial e Integral I', 6, 90, 1, false, v_course_id),
  ('FIS001', 'Física I', 4, 60, 1, false, v_course_id),
  ('QUI001', 'Química Geral', 4, 60, 1, false, v_course_id),
  ('DES001', 'Desenho Técnico', 4, 60, 1, false, v_course_id),
  ('ALG001', 'Álgebra Linear e Geometria Analítica', 4, 60, 1, false, v_course_id),
  ('INT001', 'Introdução à Engenharia Civil', 2, 30, 1, false, v_course_id);

  -- 2º Período
  INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id) VALUES
  ('MAT002', 'Cálculo Diferencial e Integral II', 6, 90, 2, false, v_course_id),
  ('FIS002', 'Física II', 4, 60, 2, false, v_course_id),
  ('MEC001', 'Mecânica Geral', 4, 60, 2, false, v_course_id),
  ('TOP001', 'Topografia I', 4, 60, 2, false, v_course_id),
  ('MAT003', 'Probabilidade e Estatística', 4, 60, 2, false, v_course_id);

  -- 3º Período
  INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id) VALUES
  ('MAT004', 'Cálculo Diferencial e Integral III', 4, 60, 3, false, v_course_id),
  ('RES001', 'Resistência dos Materiais I', 4, 60, 3, false, v_course_id),
  ('MAT005', 'Materiais de Construção Civil I', 4, 60, 3, false, v_course_id),
  ('HID001', 'Hidráulica I', 4, 60, 3, false, v_course_id),
  ('TOP002', 'Topografia II', 4, 60, 3, false, v_course_id),
  ('GEO001', 'Geologia de Engenharia', 2, 30, 3, false, v_course_id);

  -- 4º Período
  INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id) VALUES
  ('RES002', 'Resistência dos Materiais II', 4, 60, 4, false, v_course_id),
  ('MAT006', 'Materiais de Construção Civil II', 4, 60, 4, false, v_course_id),
  ('MEC002', 'Mecânica dos Solos I', 4, 60, 4, false, v_course_id),
  ('HID002', 'Hidrologia', 4, 60, 4, false, v_course_id),
  ('EST001', 'Estruturas Isostáticas', 4, 60, 4, false, v_course_id),
  ('ADM001', 'Administração e Economia', 2, 30, 4, false, v_course_id);

  -- 5º Período
  INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id) VALUES
  ('EST002', 'Estruturas Hiperestáticas', 4, 60, 5, false, v_course_id),
  ('MEC003', 'Mecânica dos Solos II', 4, 60, 5, false, v_course_id),
  ('CON001', 'Construção Civil I', 4, 60, 5, false, v_course_id),
  ('SAN001', 'Saneamento Básico I', 4, 60, 5, false, v_course_id),
  ('EST003', 'Teoria das Estruturas I', 4, 60, 5, false, v_course_id),
  ('INS001', 'Instalações Hidrossanitárias', 2, 30, 5, false, v_course_id);

  -- 6º Período
  INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id) VALUES
  ('EST004', 'Estruturas de Concreto Armado I', 4, 60, 6, false, v_course_id),
  ('FUN001', 'Fundações', 4, 60, 6, false, v_course_id),
  ('CON002', 'Construção Civil II', 4, 60, 6, false, v_course_id),
  ('SAN002', 'Saneamento Básico II', 4, 60, 6, false, v_course_id),
  ('EST005', 'Teoria das Estruturas II', 4, 60, 6, false, v_course_id),
  ('INS002', 'Instalações Elétricas', 2, 30, 6, false, v_course_id);

  -- 7º Período
  INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id) VALUES
  ('EST006', 'Estruturas de Concreto Armado II', 4, 60, 7, false, v_course_id),
  ('EST007', 'Estruturas Metálicas', 4, 60, 7, false, v_course_id),
  ('EST008', 'Pontes', 4, 60, 7, false, v_course_id),
  ('TRA001', 'Transportes', 4, 60, 7, false, v_course_id),
  ('GER001', 'Gerenciamento de Obras', 4, 60, 7, false, v_course_id),
  ('PAT001', 'Patologia das Construções', 2, 30, 7, false, v_course_id);

  -- 8º Período
  INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id) VALUES
  ('EST009', 'Estruturas de Madeira', 4, 60, 8, false, v_course_id),
  ('PAV001', 'Pavimentação', 4, 60, 8, false, v_course_id),
  ('PLA001', 'Planejamento Urbano', 4, 60, 8, false, v_course_id),
  ('SEG001', 'Segurança do Trabalho', 2, 30, 8, false, v_course_id),
  ('ORC001', 'Orçamento e Custos', 4, 60, 8, false, v_course_id),
  ('TCC001', 'Trabalho de Conclusão de Curso I', 2, 30, 8, false, v_course_id);

  -- 9º Período
  INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id) VALUES
  ('TCC002', 'Trabalho de Conclusão de Curso II', 4, 60, 9, false, v_course_id),
  ('EST010', 'Estágio Supervisionado', 10, 300, 9, false, v_course_id);

  -- Disciplinas Optativas
  INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id) VALUES
  ('OPT001', 'Tópicos Especiais em Estruturas', 4, 60, NULL, true, v_course_id),
  ('OPT002', 'Tópicos Especiais em Geotecnia', 4, 60, NULL, true, v_course_id),
  ('OPT003', 'Tópicos Especiais em Construção Civil', 4, 60, NULL, true, v_course_id),
  ('OPT004', 'Tópicos Especiais em Saneamento', 4, 60, NULL, true, v_course_id),
  ('OPT005', 'Tópicos Especiais em Transportes', 4, 60, NULL, true, v_course_id);

  -- Inserir pré-requisitos
  INSERT INTO public.prerequisites (discipline_id, prerequisite_id)
  SELECT 
    d.id,
    p.id
  FROM public.disciplines d
  CROSS JOIN public.disciplines p
  WHERE d.course_id = v_course_id AND p.course_id = v_course_id
  AND (
    (d.code = 'MAT002' AND p.code = 'MAT001') OR
    (d.code = 'FIS002' AND p.code = 'FIS001') OR
    (d.code = 'MEC001' AND p.code = 'FIS001') OR
    (d.code = 'TOP002' AND p.code = 'TOP001') OR
    (d.code = 'MAT004' AND p.code = 'MAT002') OR
    (d.code = 'RES001' AND p.code = 'MEC001') OR
    (d.code = 'HID001' AND p.code = 'FIS002') OR
    (d.code = 'RES002' AND p.code = 'RES001') OR
    (d.code = 'MAT006' AND p.code = 'MAT005') OR
    (d.code = 'MEC002' AND p.code = 'GEO001') OR
    (d.code = 'EST001' AND p.code = 'RES001') OR
    (d.code = 'EST002' AND p.code = 'EST001') OR
    (d.code = 'MEC003' AND p.code = 'MEC002') OR
    (d.code = 'EST003' AND p.code = 'EST001') OR
    (d.code = 'SAN001' AND p.code = 'HID001') OR
    (d.code = 'EST004' AND p.code = 'EST002') OR
    (d.code = 'EST004' AND p.code = 'MAT006') OR
    (d.code = 'FUN001' AND p.code = 'MEC003') OR
    (d.code = 'CON002' AND p.code = 'CON001') OR
    (d.code = 'SAN002' AND p.code = 'SAN001') OR
    (d.code = 'EST005' AND p.code = 'EST003') OR
    (d.code = 'EST006' AND p.code = 'EST004') OR
    (d.code = 'EST007' AND p.code = 'EST002') OR
    (d.code = 'EST008' AND p.code = 'EST004') OR
    (d.code = 'TRA001' AND p.code = 'TOP002') OR
    (d.code = 'PAV001' AND p.code = 'MEC003') OR
    (d.code = 'TCC001' AND p.code = 'GER001') OR
    (d.code = 'TCC002' AND p.code = 'TCC001')
  );

END $$;