    PROCEDURE show_clob (
        clob_in IN CLOB
    ) IS
        lv_offset     NUMBER := 1;
        lv_chunk_size NUMBER := 10000;
    BEGIN
        LOOP
            EXIT WHEN lv_offset > dbms_lob.getlength(clob_in);
            dbms_output.put_line(dbms_lob.substr(p_clob, v_chunk_size, v_offset));
            lv_offset := lv_offset + lv_chunk_size;
        END LOOP;
    END show_clob;
