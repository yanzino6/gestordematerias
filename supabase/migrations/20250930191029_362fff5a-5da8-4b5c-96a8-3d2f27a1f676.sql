-- Insert course
INSERT INTO courses (code, name, shift) 
VALUES ('ELE', 'Engenharia Elétrica', 'diurno')
ON CONFLICT DO NOTHING;

-- Get course_id for use in discipline inserts
DO $$
DECLARE
  v_course_id uuid;
BEGIN
  SELECT id INTO v_course_id FROM courses WHERE code = 'ELE' AND shift = 'diurno';

  -- ============================================
  -- PERÍODO 1
  -- ============================================
  INSERT INTO disciplines (code, name, credits, workload, period, is_optional, course_id) VALUES
  ('ELE15923', 'Introdução à Engenharia Elétrica', 2, 30, 1, false, v_course_id),
  ('ELE15924', 'Práticas de Laboratório', 1, 30, 1, false, v_course_id),
  ('INF15927', 'Programação I', 3, 60, 1, false, v_course_id),
  ('MAT15925', 'Cálculo I', 6, 90, 1, false, v_course_id),
  ('QUI15926', 'Química para Engenharia', 4, 60, 1, false, v_course_id),
  ('QUI15928', 'Laboratório de Química para Engenharia', 1, 30, 1, false, v_course_id);

  -- ============================================
  -- PERÍODO 2
  -- ============================================
  INSERT INTO disciplines (code, name, credits, workload, period, is_optional, course_id) VALUES
  ('ELE15929', 'Desenho Assistido por Computador', 2, 30, 2, false, v_course_id),
  ('FIS13696', 'Física I', 4, 60, 2, false, v_course_id),
  ('INF15933', 'Programação Orientada a Objetos', 3, 60, 2, false, v_course_id),
  ('MAT15931', 'Cálculo II', 4, 60, 2, false, v_course_id),
  ('MAT15932', 'Álgebra Linear', 4, 60, 2, false, v_course_id),
  ('STA15932', 'Probabilidade e Estatística', 4, 60, 2, false, v_course_id);

  -- ============================================
  -- PERÍODO 3
  -- ============================================
  INSERT INTO disciplines (code, name, credits, workload, period, is_optional, course_id) VALUES
  ('ELE15934', 'Circuitos Elétricos I', 4, 75, 3, false, v_course_id),
  ('ELE15935', 'Circuitos Lógicos', 3, 60, 3, false, v_course_id),
  ('ELE15938', 'Metodologia da Pesquisa Científica', 2, 30, 3, false, v_course_id),
  ('FIS13735', 'Física II', 4, 60, 3, false, v_course_id),
  ('FIS13737', 'Física Experimental I', 1, 30, 3, false, v_course_id),
  ('MAT15936', 'Cálculo III', 4, 60, 3, false, v_course_id),
  ('MAT15937', 'Cálculo IV', 4, 60, 3, false, v_course_id);

  -- ============================================
  -- PERÍODO 4
  -- ============================================
  INSERT INTO disciplines (code, name, credits, workload, period, is_optional, course_id) VALUES
  ('ELE15940', 'Circuitos Elétricos II', 4, 75, 4, false, v_course_id),
  ('ELE15941', 'Eletromagnetismo I', 4, 60, 4, false, v_course_id),
  ('ELE15942', 'Sistemas Embarcados I', 5, 90, 4, false, v_course_id),
  ('FIS14461', 'Física IV', 4, 60, 4, false, v_course_id),
  ('INF15939', 'Algoritmos Numéricos', 3, 60, 4, false, v_course_id);

  -- ============================================
  -- PERÍODO 5
  -- ============================================
  INSERT INTO disciplines (code, name, credits, workload, period, is_optional, course_id) VALUES
  ('ELE15943', 'Eletrônica Básica I', 5, 90, 5, false, v_course_id),
  ('ELE15944', 'Eletromagnetismo II', 4, 60, 5, false, v_course_id),
  ('ELE15945', 'Laboratório de Eletromagnetismo', 1, 30, 5, false, v_course_id),
  ('ELE15946', 'Conversão Eletromecânica de Energia', 5, 90, 5, false, v_course_id),
  ('ELE15947', 'Sinais e Sistemas', 4, 60, 5, false, v_course_id),
  ('ELE15948', 'Projeto Extensionista Integrado I', 2, 60, 5, false, v_course_id);

  -- ============================================
  -- PERÍODO 6
  -- ============================================
  INSERT INTO disciplines (code, name, credits, workload, period, is_optional, course_id) VALUES
  ('ELE15949', 'Eletrônica Básica II', 5, 90, 6, false, v_course_id),
  ('ELE15950', 'Máquinas Elétricas', 5, 90, 6, false, v_course_id),
  ('ELE15951', 'Análise e Modelagem de Sistemas Dinâmicos', 4, 60, 6, false, v_course_id),
  ('ELE15952', 'Princípios de Comunicações', 4, 75, 6, false, v_course_id),
  ('EPR15953', 'Princípios de Economia', 4, 60, 6, false, v_course_id);

  -- ============================================
  -- PERÍODO 7
  -- ============================================
  INSERT INTO disciplines (code, name, credits, workload, period, is_optional, course_id) VALUES
  ('ELE15954', 'Filtros Analógicos e Digitais', 3, 60, 7, false, v_course_id),
  ('ELE15955', 'Geração, Transmissão e Distribuição', 4, 60, 7, false, v_course_id),
  ('ELE15956', 'Sistemas Realimentados', 4, 60, 7, false, v_course_id),
  ('ELE15957', 'Laboratório de Controle', 1, 30, 7, false, v_course_id),
  ('ELE15958', 'Sistemas e Redes de Comunicação', 4, 60, 7, false, v_course_id),
  ('ELE15959', 'Projeto Extensionista Integrado II', 2, 60, 7, false, v_course_id);

  -- ============================================
  -- PERÍODO 8
  -- ============================================
  INSERT INTO disciplines (code, name, credits, workload, period, is_optional, course_id) VALUES
  ('ELE15960', 'Eletrônica de Potência I', 3, 60, 8, false, v_course_id),
  ('ELE15961', 'Instalações Elétricas Prediais', 4, 75, 8, false, v_course_id),
  ('ELE15962', 'Análise de Sistemas Elétricos de Potência I', 4, 60, 8, false, v_course_id),
  ('EPR12990', 'Engenharia Econômica', 4, 60, 8, false, v_course_id),
  ('EPR15963', 'Gestão Empresarial', 4, 60, 8, false, v_course_id),
  ('HID15964', 'Higiene e Segurança do Trabalho', 3, 45, 8, false, v_course_id);

  -- ============================================
  -- PERÍODO 9
  -- ============================================
  INSERT INTO disciplines (code, name, credits, workload, period, is_optional, course_id) VALUES
  ('ELE15965', 'Gestão e Eficiência Energética', 4, 60, 9, false, v_course_id),
  ('ELE15966', 'Trabalho de Conclusão de Curso I', 2, 30, 9, false, v_course_id),
  ('ELE15967', 'Instalações Elétricas Industriais', 4, 60, 9, false, v_course_id),
  ('ELE15968', 'Projeto Extensionista Integrado III', 2, 60, 9, false, v_course_id),
  ('ELE16033', 'Estágio Supervisionado Obrigatório', 10, 300, 9, false, v_course_id);

  -- ============================================
  -- PERÍODO 10
  -- ============================================
  INSERT INTO disciplines (code, name, credits, workload, period, is_optional, course_id) VALUES
  ('ELE15970', 'Trabalho de Conclusão de Curso II', 2, 60, 10, false, v_course_id),
  ('EPR15969', 'Aspectos Legais e Éticos da Engenharia', 4, 60, 10, false, v_course_id);

  -- ============================================
  -- OPTATIVAS (período null)
  -- ============================================
  INSERT INTO disciplines (code, name, credits, workload, period, is_optional, course_id) VALUES
  -- Controle e Automação
  ('ELE15985', 'Controle Inteligente', 3, 60, null, true, v_course_id),
  ('ELE15986', 'Robótica Móvel', 4, 60, null, true, v_course_id),
  ('ELE16003', 'Projeto de Sistemas de Automação Industrial', 4, 60, null, true, v_course_id),
  ('ELE16005', 'Instrumentação Industrial', 4, 60, null, true, v_course_id),
  ('ELE16008', 'Otimização de Sistemas', 4, 60, null, true, v_course_id),
  ('ELE17121', 'Controle Discreto e Preditivo', 4, 60, null, true, v_course_id),
  ('ELE17122', 'Controle de Processos', 3, 60, null, true, v_course_id),
  ('ELE17123', 'Introdução ao Controle Ótimo e Robusto', 4, 60, null, true, v_course_id),
  ('ELE17124', 'Introdução a Drones Quadrimotores', 3, 60, null, true, v_course_id),
  ('ELE17125', 'Computadores Industriais', 3, 60, null, true, v_course_id),
  ('ELE17126', 'Princípios de Automação Industrial', 3, 60, null, true, v_course_id),
  ('ELE17127', 'Oficina de CLP', 2, 45, null, true, v_course_id),
  ('ELE17128', 'Modelagem e Projeto de Controladores Baseados em Dados', 4, 60, null, true, v_course_id),
  
  -- Sistemas de Energia
  ('ELE15990', 'Dinâmica de Máquinas Elétricas', 4, 60, null, true, v_course_id),
  ('ELE15991', 'Transmissão de Energia Elétrica', 4, 60, null, true, v_course_id),
  ('ELE15993', 'Fontes Renováveis de Energia', 4, 60, null, true, v_course_id),
  ('ELE15994', 'Subestações', 4, 60, null, true, v_course_id),
  ('ELE15995', 'Laboratório de Sistemas Elétricos de Potência', 1, 30, null, true, v_course_id),
  ('ELE15996', 'Proteção de Sistemas Elétricos de Potência', 4, 60, null, true, v_course_id),
  ('ELE15997', 'Eletrônica de Potência II', 4, 60, null, true, v_course_id),
  ('ELE15998', 'Otimização em Sistemas de Energia Elétrica', 3, 60, null, true, v_course_id),
  ('ELE15999', 'Acionamento Elétrico', 3, 45, null, true, v_course_id),
  ('ELE16000', 'Análise de Sistemas Elétricos de Potência II', 4, 60, null, true, v_course_id),
  ('ELE16001', 'Geração de Energia Elétrica', 4, 60, null, true, v_course_id),
  ('ELE16002', 'Regulação e Mercados de Energia Elétrica', 3, 45, null, true, v_course_id),
  ('ELE16031', 'Redes Elétricas Inteligentes', 3, 60, null, true, v_course_id),
  ('ELE17118', 'Distribuição de Energia Elétrica', 4, 60, null, true, v_course_id),
  ('ELE17129', 'Estatística Aplicada a Processos Industriais', 4, 60, null, true, v_course_id),
  
  -- Telecomunicações e Eletrônica
  ('ELE15971', 'Redes de Computadores e de Automação', 4, 60, null, true, v_course_id),
  ('ELE15972', 'Introdução à Fotônica', 4, 60, null, true, v_course_id),
  ('ELE16010', 'Sistemas Embarcados II', 3, 60, null, true, v_course_id),
  ('ELE16011', 'Sistemas Digitais', 3, 60, null, true, v_course_id),
  ('ELE16012', 'Microeletrônica', 3, 45, null, true, v_course_id),
  ('ELE16018', 'Antenas', 4, 60, null, true, v_course_id),
  ('ELE16019', 'Comunicação Digital', 4, 60, null, true, v_course_id),
  ('ELE16020', 'Comunicações Óticas', 4, 60, null, true, v_course_id),
  ('ELE16029', 'Sensores Ópticos', 2, 45, null, true, v_course_id),
  ('ELE17117', 'Ótica Não-Linear', 4, 60, null, true, v_course_id),
  
  -- Inteligência Artificial e Processamento
  ('ELE15983', 'Visão Computacional', 4, 60, null, true, v_course_id),
  ('ELE15987', 'Introdução a Redes Neurais Profundas', 4, 60, null, true, v_course_id),
  ('ELE15988', 'Mineração de Dados', 4, 60, null, true, v_course_id),
  ('ELE15989', 'Processamento Estatístico de Sinais', 4, 60, null, true, v_course_id),
  ('ELE16030', 'Ciência de Redes Aplicada à Engenharia Elétrica', 3, 60, null, true, v_course_id),
  ('ELE17119', 'Robôs Autônomos', 3, 60, null, true, v_course_id),
  ('ELE17120', 'Processamento Digital de Imagens', 3, 60, null, true, v_course_id),
  
  -- Computação (INF)
  ('INF15973', 'Lógica para Computação I', 4, 60, null, true, v_course_id),
  ('INF15974', 'Estruturas de Dados', 3, 60, null, true, v_course_id),
  ('INF15975', 'Técnicas de Busca e Ordenação', 3, 60, null, true, v_course_id),
  ('INF15976', 'Programação Web', 3, 60, null, true, v_course_id),
  ('INF15977', 'Programação para Dispositivos Móveis', 3, 60, null, true, v_course_id),
  ('INF15978', 'Engenharia de Software I', 4, 60, null, true, v_course_id),
  ('INF15979', 'Banco de Dados I', 4, 60, null, true, v_course_id),
  ('INF15980', 'Sistemas Operacionais', 3, 60, null, true, v_course_id),
  ('INF15981', 'Introdução à Ciência de Dados', 4, 60, null, true, v_course_id),
  ('INF15984', 'Programação Linear e Introdução à Otimização', 4, 60, null, true, v_course_id),
  ('INF16013', 'Lógica para Computação II', 4, 60, null, true, v_course_id),
  ('INF16014', 'Computação Gráfica', 3, 60, null, true, v_course_id),
  ('INF16016', 'Inteligência Artificial', 3, 60, null, true, v_course_id),
  ('INF16021', 'Processamento Paralelo', 4, 60, null, true, v_course_id),
  ('INF16022', 'Segurança em Computação', 3, 60, null, true, v_course_id),
  ('INF16023', 'Tópicos em Linguagens de Programação', 4, 60, null, true, v_course_id),
  ('INF16024', 'Tópicos em Otimização', 4, 60, null, true, v_course_id),
  ('INF16025', 'Tópicos em Sistemas Computacionais', 4, 60, null, true, v_course_id),
  ('INF16026', 'Tópicos em Sistemas de Informação', 3, 45, null, true, v_course_id),
  ('INF16027', 'Tópicos em Tecnologia e Inovação', 4, 60, null, true, v_course_id),
  ('INF16028', 'Teoria dos Grafos', 4, 60, null, true, v_course_id),
  
  -- Outras
  ('ELE16032', 'Tecnologia Assistiva: Estratégias e Práticas na Orientação e Mobilidade', 3, 45, null, true, v_course_id),
  ('LET16015', 'Fundamentos da Língua Brasileira de Sinais', 4, 60, null, true, v_course_id);

END $$;