PROCEDURE elapsed_time (in_start_time IN VARCHAR2
                                        , in_end_time   IN VARCHAR2)
IS

   ln_start_time   NUMBER := in_start_time;
   ln_end_time     NUMBER := in_end_time;
   ln_elapsed_time NUMBER;

BEGIN

   ln_elapsed_time := ln_start_time - ln_end_time;

   dbms_output.put_line (ltrim (to_char (trunc (ln_elapsed_time * 24), '99900'))
      || ':'
      || ltrim (to_char (MOD (trunc (ln_elapsed_time * 1440), 60), '00'))
      || ':'
      || ltrim (to_char (MOD (trunc (ln_elapsed_time * 86400), 60), '00'))
      || 'HH:MM:SS') ;

END elapsed_time;
