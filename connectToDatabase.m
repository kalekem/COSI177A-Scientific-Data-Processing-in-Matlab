conn = database('kensap_2016','','');

sqlquery = 'select * from kensap_2016';
curs = exec(conn,sqlquery, 'maxRows', 20);
curs = fetch(curs);
curs.Data


