-- Adicionar pré-requisitos para Engenharia Elétrica
DO $$
DECLARE
  v_course_id uuid;
BEGIN
  -- Get course ID
  SELECT id INTO v_course_id FROM courses WHERE code = 'ELE' AND shift = 'diurno';

  -- Delete existing prerequisites and corequisites for this course's disciplines
  DELETE FROM prerequisites WHERE discipline_id IN (SELECT id FROM disciplines WHERE course_id = v_course_id);
  DELETE FROM corequisites WHERE discipline_id IN (SELECT id FROM disciplines WHERE course_id = v_course_id);

  -- PERÍODO 1: Co-requisitos
  -- QUI15928 -> QUI15926 (co-requisito)
  INSERT INTO corequisites (discipline_id, corequisite_id)
  SELECT d1.id, d2.id
  FROM disciplines d1, disciplines d2
  WHERE d1.code = 'QUI15928' AND d2.code = 'QUI15926' 
    AND d1.course_id = v_course_id AND d2.course_id = v_course_id;

  -- PERÍODO 2: Pré-requisitos
  -- FIS13696 -> MAT15925
  INSERT INTO prerequisites (discipline_id, prerequisite_id)
  SELECT d1.id, d2.id
  FROM disciplines d1, disciplines d2
  WHERE d1.code = 'FIS13696' AND d2.code = 'MAT15925' 
    AND d1.course_id = v_course_id AND d2.course_id = v_course_id;

  -- MAT15932 -> MAT15931 (co-requisito)
  INSERT INTO corequisites (discipline_id, corequisite_id)
  SELECT d1.id, d2.id
  FROM disciplines d1, disciplines d2
  WHERE d1.code = 'MAT15932' AND d2.code = 'MAT15931' 
    AND d1.course_id = v_course_id AND d2.course_id = v_course_id;

  -- PERÍODO 3: Pré-requisitos
  -- ELE15934 -> ELE15924
  INSERT INTO prerequisites (discipline_id, prerequisite_id)
  SELECT d1.id, d2.id
  FROM disciplines d1, disciplines d2
  WHERE d1.code = 'ELE15934' AND d2.code = 'ELE15924' 
    AND d1.course_id = v_course_id AND d2.course_id = v_course_id;

  -- ELE15934 -> MAT15932
  INSERT INTO prerequisites (discipline_id, prerequisite_id)
  SELECT d1.id, d2.id
  FROM disciplines d1, disciplines d2
  WHERE d1.code = 'ELE15934' AND d2.code = 'MAT15932' 
    AND d1.course_id = v_course_id AND d2.course_id = v_course_id;

  -- ELE15938 -> ELE15923
  INSERT INTO prerequisites (discipline_id, prerequisite_id)
  SELECT d1.id, d2.id
  FROM disciplines d1, disciplines d2
  WHERE d1.code = 'ELE15938' AND d2.code = 'ELE15923' 
    AND d1.course_id = v_course_id AND d2.course_id = v_course_id;

  -- FIS13735 -> FIS13696
  INSERT INTO prerequisites (discipline_id, prerequisite_id)
  SELECT d1.id, d2.id
  FROM disciplines d1, disciplines d2
  WHERE d1.code = 'FIS13735' AND d2.code = 'FIS13696' 
    AND d1.course_id = v_course_id AND d2.course_id = v_course_id;

  -- FIS13737 -> FIS13696
  INSERT INTO prerequisites (discipline_id, prerequisite_id)
  SELECT d1.id, d2.id
  FROM disciplines d1, disciplines d2
  WHERE d1.code = 'FIS13737' AND d2.code = 'FIS13696' 
    AND d1.course_id = v_course_id AND d2.course_id = v_course_id;

  -- MAT15936 -> MAT15931
  INSERT INTO prerequisites (discipline_id, prerequisite_id)
  SELECT d1.id, d2.id
  FROM disciplines d1, disciplines d2
  WHERE d1.code = 'MAT15936' AND d2.code = 'MAT15931' 
    AND d1.course_id = v_course_id AND d2.course_id = v_course_id;

  -- MAT15937 -> MAT15931
  INSERT INTO prerequisites (discipline_id, prerequisite_id)
  SELECT d1.id, d2.id
  FROM disciplines d1, disciplines d2
  WHERE d1.code = 'MAT15937' AND d2.code = 'MAT15931' 
    AND d1.course_id = v_course_id AND d2.course_id = v_course_id;

  -- PERÍODO 4: Pré-requisitos
  -- ELE15940 -> ELE15934
  INSERT INTO prerequisites (discipline_id, prerequisite_id)
  SELECT d1.id, d2.id
  FROM disciplines d1, disciplines d2
  WHERE d1.code = 'ELE15940' AND d2.code = 'ELE15934' 
    AND d1.course_id = v_course_id AND d2.course_id = v_course_id;

  -- ELE15940 -> MAT15937
  INSERT INTO prerequisites (discipline_id, prerequisite_id)
  SELECT d1.id, d2.id
  FROM disciplines d1, disciplines d2
  WHERE d1.code = 'ELE15940' AND d2.code = 'MAT15937' 
    AND d1.course_id = v_course_id AND d2.course_id = v_course_id;

  -- ELE15941 -> ELE15934
  INSERT INTO prerequisites (discipline_id, prerequisite_id)
  SELECT d1.id, d2.id
  FROM disciplines d1, disciplines d2
  WHERE d1.code = 'ELE15941' AND d2.code = 'ELE15934' 
    AND d1.course_id = v_course_id AND d2.course_id = v_course_id;

  -- ELE15941 -> MAT15936
  INSERT INTO prerequisites (discipline_id, prerequisite_id)
  SELECT d1.id, d2.id
  FROM disciplines d1, disciplines d2
  WHERE d1.code = 'ELE15941' AND d2.code = 'MAT15936' 
    AND d1.course_id = v_course_id AND d2.course_id = v_course_id;

  -- ELE15942 -> ELE15935
  INSERT INTO prerequisites (discipline_id, prerequisite_id)
  SELECT d1.id, d2.id
  FROM disciplines d1, disciplines d2
  WHERE d1.code = 'ELE15942' AND d2.code = 'ELE15935' 
    AND d1.course_id = v_course_id AND d2.course_id = v_course_id;

  -- FIS14461 -> ELE15941 (co-requisito)
  INSERT INTO corequisites (discipline_id, corequisite_id)
  SELECT d1.id, d2.id
  FROM disciplines d1, disciplines d2
  WHERE d1.code = 'FIS14461' AND d2.code = 'ELE15941' 
    AND d1.course_id = v_course_id AND d2.course_id = v_course_id;

  -- FIS14461 -> FIS13735
  INSERT INTO prerequisites (discipline_id, prerequisite_id)
  SELECT d1.id, d2.id
  FROM disciplines d1, disciplines d2
  WHERE d1.code = 'FIS14461' AND d2.code = 'FIS13735' 
    AND d1.course_id = v_course_id AND d2.course_id = v_course_id;

  -- INF15939 -> INF15933
  INSERT INTO prerequisites (discipline_id, prerequisite_id)
  SELECT d1.id, d2.id
  FROM disciplines d1, disciplines d2
  WHERE d1.code = 'INF15939' AND d2.code = 'INF15933' 
    AND d1.course_id = v_course_id AND d2.course_id = v_course_id;

  -- INF15939 -> MAT15932
  INSERT INTO prerequisites (discipline_id, prerequisite_id)
  SELECT d1.id, d2.id
  FROM disciplines d1, disciplines d2
  WHERE d1.code = 'INF15939' AND d2.code = 'MAT15932' 
    AND d1.course_id = v_course_id AND d2.course_id = v_course_id;

  -- INF15939 -> MAT15937
  INSERT INTO prerequisites (discipline_id, prerequisite_id)
  SELECT d1.id, d2.id
  FROM disciplines d1, disciplines d2
  WHERE d1.code = 'INF15939' AND d2.code = 'MAT15937' 
    AND d1.course_id = v_course_id AND d2.course_id = v_course_id;

  -- INF15939 -> MAT15936
  INSERT INTO prerequisites (discipline_id, prerequisite_id)
  SELECT d1.id, d2.id
  FROM disciplines d1, disciplines d2
  WHERE d1.code = 'INF15939' AND d2.code = 'MAT15936' 
    AND d1.course_id = v_course_id AND d2.course_id = v_course_id;

  -- PERÍODO 7: Pré-requisitos
  -- ELE15959 -> ELE15948
  INSERT INTO prerequisites (discipline_id, prerequisite_id)
  SELECT d1.id, d2.id
  FROM disciplines d1, disciplines d2
  WHERE d1.code = 'ELE15959' AND d2.code = 'ELE15948' 
    AND d1.course_id = v_course_id AND d2.course_id = v_course_id;

  -- PERÍODO 9: Pré-requisitos do TCC I
  -- ELE15966 -> ELE15938
  INSERT INTO prerequisites (discipline_id, prerequisite_id)
  SELECT d1.id, d2.id
  FROM disciplines d1, disciplines d2
  WHERE d1.code = 'ELE15966' AND d2.code = 'ELE15938' 
    AND d1.course_id = v_course_id AND d2.course_id = v_course_id;

  -- ELE15966 -> ELE15951
  INSERT INTO prerequisites (discipline_id, prerequisite_id)
  SELECT d1.id, d2.id
  FROM disciplines d1, disciplines d2
  WHERE d1.code = 'ELE15966' AND d2.code = 'ELE15951' 
    AND d1.course_id = v_course_id AND d2.course_id = v_course_id;

  -- ELE15966 -> ELE15954
  INSERT INTO prerequisites (discipline_id, prerequisite_id)
  SELECT d1.id, d2.id
  FROM disciplines d1, disciplines d2
  WHERE d1.code = 'ELE15966' AND d2.code = 'ELE15954' 
    AND d1.course_id = v_course_id AND d2.course_id = v_course_id;

  -- ELE15966 -> ELE15955
  INSERT INTO prerequisites (discipline_id, prerequisite_id)
  SELECT d1.id, d2.id
  FROM disciplines d1, disciplines d2
  WHERE d1.code = 'ELE15966' AND d2.code = 'ELE15955' 
    AND d1.course_id = v_course_id AND d2.course_id = v_course_id;

  -- ELE15966 -> ELE15958
  INSERT INTO prerequisites (discipline_id, prerequisite_id)
  SELECT d1.id, d2.id
  FROM disciplines d1, disciplines d2
  WHERE d1.code = 'ELE15966' AND d2.code = 'ELE15958' 
    AND d1.course_id = v_course_id AND d2.course_id = v_course_id;

  -- PERÍODO 10: Pré-requisitos do TCC II
  -- ELE15970 -> ELE15966
  INSERT INTO prerequisites (discipline_id, prerequisite_id)
  SELECT d1.id, d2.id
  FROM disciplines d1, disciplines d2
  WHERE d1.code = 'ELE15970' AND d2.code = 'ELE15966' 
    AND d1.course_id = v_course_id AND d2.course_id = v_course_id;

  -- OPTATIVAS: Pré-requisitos
  -- ELE15985 -> ELE15947
  INSERT INTO prerequisites (discipline_id, prerequisite_id)
  SELECT d1.id, d2.id
  FROM disciplines d1, disciplines d2
  WHERE d1.code = 'ELE15985' AND d2.code = 'ELE15947' 
    AND d1.course_id = v_course_id AND d2.course_id = v_course_id;

  -- ELE16003 -> ELE16005
  INSERT INTO prerequisites (discipline_id, prerequisite_id)
  SELECT d1.id, d2.id
  FROM disciplines d1, disciplines d2
  WHERE d1.code = 'ELE16003' AND d2.code = 'ELE16005' 
    AND d1.course_id = v_course_id AND d2.course_id = v_course_id;

  -- ELE16005 -> ELE15943
  INSERT INTO prerequisites (discipline_id, prerequisite_id)
  SELECT d1.id, d2.id
  FROM disciplines d1, disciplines d2
  WHERE d1.code = 'ELE16005' AND d2.code = 'ELE15943' 
    AND d1.course_id = v_course_id AND d2.course_id = v_course_id;

  -- ELE16008 -> ELE15947
  INSERT INTO prerequisites (discipline_id, prerequisite_id)
  SELECT d1.id, d2.id
  FROM disciplines d1, disciplines d2
  WHERE d1.code = 'ELE16008' AND d2.code = 'ELE15947' 
    AND d1.course_id = v_course_id AND d2.course_id = v_course_id;

  -- ELE15988 -> ELE15947
  INSERT INTO prerequisites (discipline_id, prerequisite_id)
  SELECT d1.id, d2.id
  FROM disciplines d1, disciplines d2
  WHERE d1.code = 'ELE15988' AND d2.code = 'ELE15947' 
    AND d1.course_id = v_course_id AND d2.course_id = v_course_id;

  -- ELE15988 -> INF15933
  INSERT INTO prerequisites (discipline_id, prerequisite_id)
  SELECT d1.id, d2.id
  FROM disciplines d1, disciplines d2
  WHERE d1.code = 'ELE15988' AND d2.code = 'INF15933' 
    AND d1.course_id = v_course_id AND d2.course_id = v_course_id;

  -- ELE15989 -> ELE15954
  INSERT INTO prerequisites (discipline_id, prerequisite_id)
  SELECT d1.id, d2.id
  FROM disciplines d1, disciplines d2
  WHERE d1.code = 'ELE15989' AND d2.code = 'ELE15954' 
    AND d1.course_id = v_course_id AND d2.course_id = v_course_id;

  -- ELE15990 -> ELE15960
  INSERT INTO prerequisites (discipline_id, prerequisite_id)
  SELECT d1.id, d2.id
  FROM disciplines d1, disciplines d2
  WHERE d1.code = 'ELE15990' AND d2.code = 'ELE15960' 
    AND d1.course_id = v_course_id AND d2.course_id = v_course_id;

  -- ELE15991 -> ELE15962
  INSERT INTO prerequisites (discipline_id, prerequisite_id)
  SELECT d1.id, d2.id
  FROM disciplines d1, disciplines d2
  WHERE d1.code = 'ELE15991' AND d2.code = 'ELE15962' 
    AND d1.course_id = v_course_id AND d2.course_id = v_course_id;

  -- ELE15993 -> ELE15955
  INSERT INTO prerequisites (discipline_id, prerequisite_id)
  SELECT d1.id, d2.id
  FROM disciplines d1, disciplines d2
  WHERE d1.code = 'ELE15993' AND d2.code = 'ELE15955' 
    AND d1.course_id = v_course_id AND d2.course_id = v_course_id;

  -- ELE15994 -> ELE15955
  INSERT INTO prerequisites (discipline_id, prerequisite_id)
  SELECT d1.id, d2.id
  FROM disciplines d1, disciplines d2
  WHERE d1.code = 'ELE15994' AND d2.code = 'ELE15955' 
    AND d1.course_id = v_course_id AND d2.course_id = v_course_id;

  -- ELE15994 -> ELE15967
  INSERT INTO prerequisites (discipline_id, prerequisite_id)
  SELECT d1.id, d2.id
  FROM disciplines d1, disciplines d2
  WHERE d1.code = 'ELE15994' AND d2.code = 'ELE15967' 
    AND d1.course_id = v_course_id AND d2.course_id = v_course_id;

  -- ELE15995 -> ELE15962
  INSERT INTO prerequisites (discipline_id, prerequisite_id)
  SELECT d1.id, d2.id
  FROM disciplines d1, disciplines d2
  WHERE d1.code = 'ELE15995' AND d2.code = 'ELE15962' 
    AND d1.course_id = v_course_id AND d2.course_id = v_course_id;

  -- ELE15996 -> ELE15962
  INSERT INTO prerequisites (discipline_id, prerequisite_id)
  SELECT d1.id, d2.id
  FROM disciplines d1, disciplines d2
  WHERE d1.code = 'ELE15996' AND d2.code = 'ELE15962' 
    AND d1.course_id = v_course_id AND d2.course_id = v_course_id;

  -- ELE15997 -> ELE15960
  INSERT INTO prerequisites (discipline_id, prerequisite_id)
  SELECT d1.id, d2.id
  FROM disciplines d1, disciplines d2
  WHERE d1.code = 'ELE15997' AND d2.code = 'ELE15960' 
    AND d1.course_id = v_course_id AND d2.course_id = v_course_id;

  -- ELE15998 -> ELE15962
  INSERT INTO prerequisites (discipline_id, prerequisite_id)
  SELECT d1.id, d2.id
  FROM disciplines d1, disciplines d2
  WHERE d1.code = 'ELE15998' AND d2.code = 'ELE15962' 
    AND d1.course_id = v_course_id AND d2.course_id = v_course_id;

  -- ELE15999 -> ELE15990
  INSERT INTO prerequisites (discipline_id, prerequisite_id)
  SELECT d1.id, d2.id
  FROM disciplines d1, disciplines d2
  WHERE d1.code = 'ELE15999' AND d2.code = 'ELE15990' 
    AND d1.course_id = v_course_id AND d2.course_id = v_course_id;

  -- ELE16000 -> ELE15962
  INSERT INTO prerequisites (discipline_id, prerequisite_id)
  SELECT d1.id, d2.id
  FROM disciplines d1, disciplines d2
  WHERE d1.code = 'ELE16000' AND d2.code = 'ELE15962' 
    AND d1.course_id = v_course_id AND d2.course_id = v_course_id;

  -- ELE16001 -> ELE15955
  INSERT INTO prerequisites (discipline_id, prerequisite_id)
  SELECT d1.id, d2.id
  FROM disciplines d1, disciplines d2
  WHERE d1.code = 'ELE16001' AND d2.code = 'ELE15955' 
    AND d1.course_id = v_course_id AND d2.course_id = v_course_id;

  -- ELE16002 -> ELE15965
  INSERT INTO prerequisites (discipline_id, prerequisite_id)
  SELECT d1.id, d2.id
  FROM disciplines d1, disciplines d2
  WHERE d1.code = 'ELE16002' AND d2.code = 'ELE15965' 
    AND d1.course_id = v_course_id AND d2.course_id = v_course_id;

  -- ELE16010 -> ELE15942
  INSERT INTO prerequisites (discipline_id, prerequisite_id)
  SELECT d1.id, d2.id
  FROM disciplines d1, disciplines d2
  WHERE d1.code = 'ELE16010' AND d2.code = 'ELE15942' 
    AND d1.course_id = v_course_id AND d2.course_id = v_course_id;

  -- ELE16011 -> ELE15942
  INSERT INTO prerequisites (discipline_id, prerequisite_id)
  SELECT d1.id, d2.id
  FROM disciplines d1, disciplines d2
  WHERE d1.code = 'ELE16011' AND d2.code = 'ELE15942' 
    AND d1.course_id = v_course_id AND d2.course_id = v_course_id;

  -- ELE16012 -> ELE15942
  INSERT INTO prerequisites (discipline_id, prerequisite_id)
  SELECT d1.id, d2.id
  FROM disciplines d1, disciplines d2
  WHERE d1.code = 'ELE16012' AND d2.code = 'ELE15942' 
    AND d1.course_id = v_course_id AND d2.course_id = v_course_id;

  -- INF optativas
  -- INF15974 -> INF15933
  INSERT INTO prerequisites (discipline_id, prerequisite_id)
  SELECT d1.id, d2.id
  FROM disciplines d1, disciplines d2
  WHERE d1.code = 'INF15974' AND d2.code = 'INF15933' 
    AND d1.course_id = v_course_id AND d2.course_id = v_course_id;

  -- INF15975 -> INF15974
  INSERT INTO prerequisites (discipline_id, prerequisite_id)
  SELECT d1.id, d2.id
  FROM disciplines d1, disciplines d2
  WHERE d1.code = 'INF15975' AND d2.code = 'INF15974' 
    AND d1.course_id = v_course_id AND d2.course_id = v_course_id;

  -- INF15976 -> INF15933
  INSERT INTO prerequisites (discipline_id, prerequisite_id)
  SELECT d1.id, d2.id
  FROM disciplines d1, disciplines d2
  WHERE d1.code = 'INF15976' AND d2.code = 'INF15933' 
    AND d1.course_id = v_course_id AND d2.course_id = v_course_id;

  -- INF15977 -> INF15976
  INSERT INTO prerequisites (discipline_id, prerequisite_id)
  SELECT d1.id, d2.id
  FROM disciplines d1, disciplines d2
  WHERE d1.code = 'INF15977' AND d2.code = 'INF15976' 
    AND d1.course_id = v_course_id AND d2.course_id = v_course_id;

  -- INF15978 -> INF15933
  INSERT INTO prerequisites (discipline_id, prerequisite_id)
  SELECT d1.id, d2.id
  FROM disciplines d1, disciplines d2
  WHERE d1.code = 'INF15978' AND d2.code = 'INF15933' 
    AND d1.course_id = v_course_id AND d2.course_id = v_course_id;

  -- INF15979 -> INF15975
  INSERT INTO prerequisites (discipline_id, prerequisite_id)
  SELECT d1.id, d2.id
  FROM disciplines d1, disciplines d2
  WHERE d1.code = 'INF15979' AND d2.code = 'INF15975' 
    AND d1.course_id = v_course_id AND d2.course_id = v_course_id;

  -- INF15979 -> INF15978
  INSERT INTO prerequisites (discipline_id, prerequisite_id)
  SELECT d1.id, d2.id
  FROM disciplines d1, disciplines d2
  WHERE d1.code = 'INF15979' AND d2.code = 'INF15978' 
    AND d1.course_id = v_course_id AND d2.course_id = v_course_id;

  -- INF15980 -> ELE16011
  INSERT INTO prerequisites (discipline_id, prerequisite_id)
  SELECT d1.id, d2.id
  FROM disciplines d1, disciplines d2
  WHERE d1.code = 'INF15980' AND d2.code = 'ELE16011' 
    AND d1.course_id = v_course_id AND d2.course_id = v_course_id;

  -- INF15980 -> INF15974
  INSERT INTO prerequisites (discipline_id, prerequisite_id)
  SELECT d1.id, d2.id
  FROM disciplines d1, disciplines d2
  WHERE d1.code = 'INF15980' AND d2.code = 'INF15974' 
    AND d1.course_id = v_course_id AND d2.course_id = v_course_id;

  -- INF15981 -> INF15933
  INSERT INTO prerequisites (discipline_id, prerequisite_id)
  SELECT d1.id, d2.id
  FROM disciplines d1, disciplines d2
  WHERE d1.code = 'INF15981' AND d2.code = 'INF15933' 
    AND d1.course_id = v_course_id AND d2.course_id = v_course_id;

  -- INF15981 -> STA15932
  INSERT INTO prerequisites (discipline_id, prerequisite_id)
  SELECT d1.id, d2.id
  FROM disciplines d1, disciplines d2
  WHERE d1.code = 'INF15981' AND d2.code = 'STA15932' 
    AND d1.course_id = v_course_id AND d2.course_id = v_course_id;

  -- INF15984 -> INF15933
  INSERT INTO prerequisites (discipline_id, prerequisite_id)
  SELECT d1.id, d2.id
  FROM disciplines d1, disciplines d2
  WHERE d1.code = 'INF15984' AND d2.code = 'INF15933' 
    AND d1.course_id = v_course_id AND d2.course_id = v_course_id;

  -- INF15984 -> MAT15931
  INSERT INTO prerequisites (discipline_id, prerequisite_id)
  SELECT d1.id, d2.id
  FROM disciplines d1, disciplines d2
  WHERE d1.code = 'INF15984' AND d2.code = 'MAT15931' 
    AND d1.course_id = v_course_id AND d2.course_id = v_course_id;

  -- INF15984 -> MAT15932
  INSERT INTO prerequisites (discipline_id, prerequisite_id)
  SELECT d1.id, d2.id
  FROM disciplines d1, disciplines d2
  WHERE d1.code = 'INF15984' AND d2.code = 'MAT15932' 
    AND d1.course_id = v_course_id AND d2.course_id = v_course_id;

  -- INF16013 -> INF15973
  INSERT INTO prerequisites (discipline_id, prerequisite_id)
  SELECT d1.id, d2.id
  FROM disciplines d1, disciplines d2
  WHERE d1.code = 'INF16013' AND d2.code = 'INF15973' 
    AND d1.course_id = v_course_id AND d2.course_id = v_course_id;

  -- INF16014 -> INF15933
  INSERT INTO prerequisites (discipline_id, prerequisite_id)
  SELECT d1.id, d2.id
  FROM disciplines d1, disciplines d2
  WHERE d1.code = 'INF16014' AND d2.code = 'INF15933' 
    AND d1.course_id = v_course_id AND d2.course_id = v_course_id;

  -- INF16014 -> MAT15932
  INSERT INTO prerequisites (discipline_id, prerequisite_id)
  SELECT d1.id, d2.id
  FROM disciplines d1, disciplines d2
  WHERE d1.code = 'INF16014' AND d2.code = 'MAT15932' 
    AND d1.course_id = v_course_id AND d2.course_id = v_course_id;

  -- INF16016 -> INF16013
  INSERT INTO prerequisites (discipline_id, prerequisite_id)
  SELECT d1.id, d2.id
  FROM disciplines d1, disciplines d2
  WHERE d1.code = 'INF16016' AND d2.code = 'INF16013' 
    AND d1.course_id = v_course_id AND d2.course_id = v_course_id;

  -- INF16016 -> STA15932
  INSERT INTO prerequisites (discipline_id, prerequisite_id)
  SELECT d1.id, d2.id
  FROM disciplines d1, disciplines d2
  WHERE d1.code = 'INF16016' AND d2.code = 'STA15932' 
    AND d1.course_id = v_course_id AND d2.course_id = v_course_id;

  -- INF16021 -> INF15980
  INSERT INTO prerequisites (discipline_id, prerequisite_id)
  SELECT d1.id, d2.id
  FROM disciplines d1, disciplines d2
  WHERE d1.code = 'INF16021' AND d2.code = 'INF15980' 
    AND d1.course_id = v_course_id AND d2.course_id = v_course_id;

  -- INF16022 -> ELE15971
  INSERT INTO prerequisites (discipline_id, prerequisite_id)
  SELECT d1.id, d2.id
  FROM disciplines d1, disciplines d2
  WHERE d1.code = 'INF16022' AND d2.code = 'ELE15971' 
    AND d1.course_id = v_course_id AND d2.course_id = v_course_id;

  -- INF16022 -> INF15980
  INSERT INTO prerequisites (discipline_id, prerequisite_id)
  SELECT d1.id, d2.id
  FROM disciplines d1, disciplines d2
  WHERE d1.code = 'INF16022' AND d2.code = 'INF15980' 
    AND d1.course_id = v_course_id AND d2.course_id = v_course_id;

  -- INF16023 -> INF15933
  INSERT INTO prerequisites (discipline_id, prerequisite_id)
  SELECT d1.id, d2.id
  FROM disciplines d1, disciplines d2
  WHERE d1.code = 'INF16023' AND d2.code = 'INF15933' 
    AND d1.course_id = v_course_id AND d2.course_id = v_course_id;

  -- INF16024 -> INF15975
  INSERT INTO prerequisites (discipline_id, prerequisite_id)
  SELECT d1.id, d2.id
  FROM disciplines d1, disciplines d2
  WHERE d1.code = 'INF16024' AND d2.code = 'INF15975' 
    AND d1.course_id = v_course_id AND d2.course_id = v_course_id;

  -- INF16025 -> ELE15971
  INSERT INTO prerequisites (discipline_id, prerequisite_id)
  SELECT d1.id, d2.id
  FROM disciplines d1, disciplines d2
  WHERE d1.code = 'INF16025' AND d2.code = 'ELE15971' 
    AND d1.course_id = v_course_id AND d2.course_id = v_course_id;

  -- INF16025 -> INF15980
  INSERT INTO prerequisites (discipline_id, prerequisite_id)
  SELECT d1.id, d2.id
  FROM disciplines d1, disciplines d2
  WHERE d1.code = 'INF16025' AND d2.code = 'INF15980' 
    AND d1.course_id = v_course_id AND d2.course_id = v_course_id;

  -- INF16026 -> INF15978
  INSERT INTO prerequisites (discipline_id, prerequisite_id)
  SELECT d1.id, d2.id
  FROM disciplines d1, disciplines d2
  WHERE d1.code = 'INF16026' AND d2.code = 'INF15978' 
    AND d1.course_id = v_course_id AND d2.course_id = v_course_id;

  -- INF16027 -> INF15980
  INSERT INTO prerequisites (discipline_id, prerequisite_id)
  SELECT d1.id, d2.id
  FROM disciplines d1, disciplines d2
  WHERE d1.code = 'INF16027' AND d2.code = 'INF15980' 
    AND d1.course_id = v_course_id AND d2.course_id = v_course_id;

  -- INF16028 -> INF15974
  INSERT INTO prerequisites (discipline_id, prerequisite_id)
  SELECT d1.id, d2.id
  FROM disciplines d1, disciplines d2
  WHERE d1.code = 'INF16028' AND d2.code = 'INF15974' 
    AND d1.course_id = v_course_id AND d2.course_id = v_course_id;

END $$;