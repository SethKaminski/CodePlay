set serveroutput on;

DECLARE
  rand number(2);
  ct number(2);
  type prod is record(pid PRODUCT.PRODUCTID%type,
  pname PRODUCT.NAME%type,
  price PRODUCT.PRICE%type,
  image PRODUCT.IMAGE%type);
  rec prod;
begin 

    FOR i IN 1..4 LOOP 
            select max(PRODUCTID) into ct from PRODUCT;
            select dbms_random.value(1,ct) into rand from dual;
            
            select productid, name, price, image into rec.pid,rec.pname,rec.price,rec.image from PRODUCT where productid = rand;
            update promotions
              set productid = rec.pid, name=rec.pname, price=rec.price, image=rec.image
              where repeatnum = i;
    END LOOP;


end;
