-- Inserir disciplinas de Engenharia Elétrica
DO $$
DECLARE
  v_course_id uuid;
BEGIN
  SELECT id INTO v_course_id FROM public.courses WHERE code = 'ENG_ELET';

  -- 1º Período
  INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id) VALUES
  ('ELE-MAT001', 'Cálculo I', 6, 90, 1, false, v_course_id),
  ('ELE-FIS001', 'Física Geral I', 4, 60, 1, false, v_course_id),
  ('ELE-QUI001', 'Química Geral', 4, 60, 1, false, v_course_id),
  ('ELE-ALG001', 'Geometria Analítica e Álgebra Vetorial', 4, 60, 1, false, v_course_id),
  ('ELE-INT001', 'Introdução à Engenharia Elétrica', 2, 30, 1, false, v_course_id),
  ('ELE-DES001', 'Desenho Técnico', 2, 30, 1, false, v_course_id);

  -- 2º Período
  INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id) VALUES
  ('ELE-MAT002', 'Cálculo II', 6, 90, 2, false, v_course_id),
  ('ELE-FIS002', 'Física Geral II', 4, 60, 2, false, v_course_id),
  ('ELE-ALG002', 'Álgebra Linear', 4, 60, 2, false, v_course_id),
  ('ELE-PRO001', 'Algoritmos e Programação', 4, 60, 2, false, v_course_id),
  ('ELE-CIR001', 'Circuitos Elétricos I', 4, 60, 2, false, v_course_id);

  -- 3º Período
  INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id) VALUES
  ('ELE-MAT003', 'Cálculo III', 4, 60, 3, false, v_course_id),
  ('ELE-FIS003', 'Física Geral III', 4, 60, 3, false, v_course_id),
  ('ELE-MAT004', 'Equações Diferenciais', 4, 60, 3, false, v_course_id),
  ('ELE-CIR002', 'Circuitos Elétricos II', 4, 60, 3, false, v_course_id),
  ('ELE-ELE001', 'Elementos de Eletrônica', 4, 60, 3, false, v_course_id);

  -- 4º Período
  INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id) VALUES
  ('ELE-MAT005', 'Cálculo Numérico', 4, 60, 4, false, v_course_id),
  ('ELE-MAT006', 'Probabilidade e Estatística', 4, 60, 4, false, v_course_id),
  ('ELE-ELE002', 'Eletrônica Analógica I', 4, 60, 4, false, v_course_id),
  ('ELE-SIN001', 'Sinais e Sistemas', 4, 60, 4, false, v_course_id),
  ('ELE-MAT007', 'Materiais Elétricos', 4, 60, 4, false, v_course_id);

  -- 5º Período
  INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id) VALUES
  ('ELE-ELE003', 'Eletrônica Analógica II', 4, 60, 5, false, v_course_id),
  ('ELE-ELE004', 'Eletrônica Digital I', 4, 60, 5, false, v_course_id),
  ('ELE-CON001', 'Conversão Eletromecânica de Energia I', 4, 60, 5, false, v_course_id),
  ('ELE-SIS001', 'Sistemas de Controle I', 4, 60, 5, false, v_course_id),
  ('ELE-ELM001', 'Eletromagnetismo', 4, 60, 5, false, v_course_id);

  -- 6º Período
  INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id) VALUES
  ('ELE-ELE005', 'Eletrônica Digital II', 4, 60, 6, false, v_course_id),
  ('ELE-CON002', 'Conversão Eletromecânica de Energia II', 4, 60, 6, false, v_course_id),
  ('ELE-SIS002', 'Sistemas de Controle II', 4, 60, 6, false, v_course_id),
  ('ELE-MIC001', 'Microprocessadores e Microcontroladores', 4, 60, 6, false, v_course_id),
  ('ELE-COM001', 'Princípios de Comunicações', 4, 60, 6, false, v_course_id),
  ('ELE-INS001', 'Instalações Elétricas', 2, 30, 6, false, v_course_id);

  -- 7º Período
  INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id) VALUES
  ('ELE-POT001', 'Eletrônica de Potência', 4, 60, 7, false, v_course_id),
  ('ELE-MAC001', 'Máquinas Elétricas I', 4, 60, 7, false, v_course_id),
  ('ELE-SIS003', 'Sistemas de Potência I', 4, 60, 7, false, v_course_id),
  ('ELE-COM002', 'Sistemas de Comunicações', 4, 60, 7, false, v_course_id),
  ('ELE-MED001', 'Medidas Elétricas', 4, 60, 7, false, v_course_id),
  ('ELE-ADM001', 'Administração e Economia', 2, 30, 7, false, v_course_id);

  -- 8º Período
  INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id) VALUES
  ('ELE-MAC002', 'Máquinas Elétricas II', 4, 60, 8, false, v_course_id),
  ('ELE-SIS004', 'Sistemas de Potência II', 4, 60, 8, false, v_course_id),
  ('ELE-ACI001', 'Acionamentos Elétricos', 4, 60, 8, false, v_course_id),
  ('ELE-EFI001', 'Eficiência Energética', 4, 60, 8, false, v_course_id),
  ('ELE-PRO002', 'Proteção de Sistemas Elétricos', 4, 60, 8, false, v_course_id),
  ('ELE-TCC001', 'Trabalho de Conclusão de Curso I', 2, 30, 8, false, v_course_id);

  -- 9º Período
  INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id) VALUES
  ('ELE-TCC002', 'Trabalho de Conclusão de Curso II', 4, 60, 9, false, v_course_id),
  ('ELE-EST001', 'Estágio Supervisionado', 10, 300, 9, false, v_course_id);

  -- Disciplinas Optativas
  INSERT INTO public.disciplines (code, name, credits, workload, period, is_optional, course_id) VALUES
  ('ELE-OPT001', 'Automação Industrial', 4, 60, NULL, true, v_course_id),
  ('ELE-OPT002', 'Fontes Alternativas de Energia', 4, 60, NULL, true, v_course_id),
  ('ELE-OPT003', 'Qualidade de Energia', 4, 60, NULL, true, v_course_id),
  ('ELE-OPT004', 'Sistemas Embarcados', 4, 60, NULL, true, v_course_id),
  ('ELE-OPT005', 'Redes de Computadores', 4, 60, NULL, true, v_course_id),
  ('ELE-OPT006', 'Instrumentação Eletrônica', 4, 60, NULL, true, v_course_id);

  -- Inserir pré-requisitos
  INSERT INTO public.prerequisites (discipline_id, prerequisite_id)
  SELECT 
    d.id,
    p.id
  FROM public.disciplines d
  CROSS JOIN public.disciplines p
  WHERE d.course_id = v_course_id AND p.course_id = v_course_id
  AND (
    (d.code = 'ELE-MAT002' AND p.code = 'ELE-MAT001') OR
    (d.code = 'ELE-FIS002' AND p.code = 'ELE-FIS001') OR
    (d.code = 'ELE-ALG002' AND p.code = 'ELE-ALG001') OR
    (d.code = 'ELE-CIR001' AND p.code = 'ELE-FIS001') OR
    (d.code = 'ELE-MAT003' AND p.code = 'ELE-MAT002') OR
    (d.code = 'ELE-FIS003' AND p.code = 'ELE-FIS002') OR
    (d.code = 'ELE-MAT004' AND p.code = 'ELE-MAT002') OR
    (d.code = 'ELE-CIR002' AND p.code = 'ELE-CIR001') OR
    (d.code = 'ELE-ELE001' AND p.code = 'ELE-CIR001') OR
    (d.code = 'ELE-MAT005' AND p.code = 'ELE-MAT003') OR
    (d.code = 'ELE-ELE002' AND p.code = 'ELE-ELE001') OR
    (d.code = 'ELE-SIN001' AND p.code = 'ELE-MAT004') OR
    (d.code = 'ELE-ELE003' AND p.code = 'ELE-ELE002') OR
    (d.code = 'ELE-ELE004' AND p.code = 'ELE-ELE001') OR
    (d.code = 'ELE-CON001' AND p.code = 'ELE-CIR002') OR
    (d.code = 'ELE-SIS001' AND p.code = 'ELE-SIN001') OR
    (d.code = 'ELE-ELM001' AND p.code = 'ELE-FIS003') OR
    (d.code = 'ELE-ELE005' AND p.code = 'ELE-ELE004') OR
    (d.code = 'ELE-CON002' AND p.code = 'ELE-CON001') OR
    (d.code = 'ELE-SIS002' AND p.code = 'ELE-SIS001') OR
    (d.code = 'ELE-MIC001' AND p.code = 'ELE-ELE004') OR
    (d.code = 'ELE-COM001' AND p.code = 'ELE-SIN001') OR
    (d.code = 'ELE-POT001' AND p.code = 'ELE-ELE003') OR
    (d.code = 'ELE-MAC001' AND p.code = 'ELE-CON002') OR
    (d.code = 'ELE-SIS003' AND p.code = 'ELE-CON002') OR
    (d.code = 'ELE-COM002' AND p.code = 'ELE-COM001') OR
    (d.code = 'ELE-MAC002' AND p.code = 'ELE-MAC001') OR
    (d.code = 'ELE-SIS004' AND p.code = 'ELE-SIS003') OR
    (d.code = 'ELE-ACI001' AND p.code = 'ELE-MAC001') OR
    (d.code = 'ELE-PRO002' AND p.code = 'ELE-SIS003') OR
    (d.code = 'ELE-TCC002' AND p.code = 'ELE-TCC001')
  );

END $$;