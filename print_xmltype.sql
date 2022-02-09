    PROCEDURE print_xml (
        xml_in IN XMLTYPE
    ) IS
        lv_loops  NUMBER;
        lv_mod    NUMBER;
        lv_xml    CLOB;
        lv_length NUMBER DEFAULT 100;
    BEGIN
        lv_xml   := xml_in.getclobval();
        lv_loops := floor(length(lv_xml) / 50);
        lv_mod   := MOD(length(lv_xml), 50);
        FOR l_index IN 1..l_loops LOOP
            dbms_output.put_line(substr(lv_xml, 1 +((lv_index - 1) * lv_length), lv_length));
        END LOOP;

        dbms_output.put_line(substr(lv_xml, 1 +((lv_loops) * lv_length), l_mod));

    END print_xml;
