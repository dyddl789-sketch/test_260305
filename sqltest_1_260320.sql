SELECT name
     , email
     , SUBSTR(
              email
            , INSTR(email,'@')+1
            , INSTR(email,'.') - INSTR(email,'@')-1
             )AS domain  
  FROM professor;
  
