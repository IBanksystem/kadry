create or replace function ok_latcyr(v_Str varchar2) return varchar
AUTHID CURRENT_USER
is
i  number;
y  number;
z  number;
s1 VARCHAR2(4000);
lat number;
cyr number;
lat_ VARCHAR2(1);
cyr_ VARCHAR2(1);
znak number;
bad number;
begin
  lat :=0;
  cyr :=0;
  s1 := convert(v_Str,'CL8MSWIN1251');
  z:=Length(s1);
  if z >1 then 
    FOR i IN 1 .. z
      LOOP
--
         y := ascii(substr(s1,i,1));
--         
         if (y>=0)  and (y<=31)  then BAD:=BAD+1;   end if;
         if (y>=32) and (y<=64)  then znak:=znak+1; end if;
         if (y>=65) and (y<=90)  then lat:=lat+1; lat_:=substr(s1,i,1);  end if;
         if (y>=91) and (y<=96)  then znak:=znak+1; end if;
         if (y>=97) and (y<=122) then lat:=lat+1; lat_:=substr(s1,i,1);  end if;
         --
         if (y>=123) and (y<=191) and (y<>161) and (y<>162) and (y<>168) and (y<>184)
         then BAD:=BAD+1;
         end if;
         --
         if ((y>=192) and (y<=255)) or ((y=161) or (y=162) or (y=168) or (y=184))
         then cyr:=cyr+1; cyr_:=substr(s1,i,1);
         end if;
         --
      END LOOP;
  end if;  
    if ((lat>0) and (cyr>0)) or (bad>0)
    then return ' ����='||bad||' ���('||lat_||')='||lat||' ���('||cyr_||')='||cyr||' �����='||v_str;
--    raise_application_error(-20000,' ����='||bad||' ���='||lat||' ���='||cyr||' �����='||v_str);
    else return '1';
    end if;
  
--exception  when others then
--return -1;
end;
/
