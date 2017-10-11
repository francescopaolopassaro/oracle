declare
cursor c is SELECT DISTINCT b.OBJECT_NAME
  FROM ALL_OBJECTS b
 WHERE b.OBJECT_TYPE = 'TABLE'
   AND b.OWNER = 'OWNER_NAME'

cmd varchar2(200);
begin

for c1 in c loop
cmd := 'GRANT SELECT, INSERT, UPDATE, DELETE ON '|| c1.OBJECT_NAME|| ' TO TO_OWNER_NAME';
execute immediate cmd;
end loop;
end;


-- OBJECT_TYPE you can change this value
