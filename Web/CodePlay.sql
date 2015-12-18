--------------------------------------------------------
--  File created - Friday-December-18-2015   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence BB_IDBASKETITEM_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "COMP214F15_005_P_13"."BB_IDBASKETITEM_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 50 CACHE 20 NOORDER  NOCYCLE  NOPARTITION ;
--------------------------------------------------------
--  DDL for Sequence BB_IDBASKET_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "COMP214F15_005_P_13"."BB_IDBASKET_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 25 CACHE 20 NOORDER  NOCYCLE  NOPARTITION ;
--------------------------------------------------------
--  DDL for Sequence BB_POPTION_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "COMP214F15_005_P_13"."BB_POPTION_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 30 CACHE 20 NOORDER  NOCYCLE  NOPARTITION ;
--------------------------------------------------------
--  DDL for Sequence BB_PRODID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "COMP214F15_005_P_13"."BB_PRODID_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 15 CACHE 20 NOORDER  NOCYCLE  NOPARTITION ;
--------------------------------------------------------
--  DDL for Sequence BB_PRODREQ_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "COMP214F15_005_P_13"."BB_PRODREQ_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOPARTITION ;
--------------------------------------------------------
--  DDL for Sequence BB_SHOPPER_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "COMP214F15_005_P_13"."BB_SHOPPER_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 30 CACHE 20 NOORDER  NOCYCLE  NOPARTITION ;
--------------------------------------------------------
--  DDL for Sequence BB_STATUS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "COMP214F15_005_P_13"."BB_STATUS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 75 CACHE 20 NOORDER  NOCYCLE  NOPARTITION ;
--------------------------------------------------------
--  DDL for Sequence BYONE_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "COMP214F15_005_P_13"."BYONE_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 81 CACHE 20 NOORDER  NOCYCLE  NOPARTITION ;
--------------------------------------------------------
--  DDL for Sequence MM_RENTAL_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "COMP214F15_005_P_13"."MM_RENTAL_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 13 CACHE 20 NOORDER  NOCYCLE  NOPARTITION ;
--------------------------------------------------------
--  DDL for Table ATTRIBUTE
--------------------------------------------------------

  CREATE TABLE "COMP214F15_005_P_13"."ATTRIBUTE" 
   (	"ATTRIBUTEID" NUMBER(*,0), 
	"NAME" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table ATTRIBUTEVALUE
--------------------------------------------------------

  CREATE TABLE "COMP214F15_005_P_13"."ATTRIBUTEVALUE" 
   (	"ATTRIBUTEVALUEID" NUMBER(*,0), 
	"ATTRIBUTEID" NUMBER(*,0), 
	"VALUE" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table CATEGORY
--------------------------------------------------------

  CREATE TABLE "COMP214F15_005_P_13"."CATEGORY" 
   (	"CATEGORYID" NUMBER(*,0), 
	"DEPARTMENTID" NUMBER(*,0), 
	"NAME" VARCHAR2(50 BYTE), 
	"DESCRIPTION" VARCHAR2(1000 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table DEPARTMENT
--------------------------------------------------------

  CREATE TABLE "COMP214F15_005_P_13"."DEPARTMENT" 
   (	"DEPARTMENTID" NUMBER(*,0), 
	"NAME" VARCHAR2(50 BYTE), 
	"DESCRIPTION" VARCHAR2(1000 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table ORDERDETAIL
--------------------------------------------------------

  CREATE TABLE "COMP214F15_005_P_13"."ORDERDETAIL" 
   (	"ORDERID" NUMBER(*,0), 
	"PRODUCTID" NUMBER(*,0), 
	"PRODUCTNAME" VARCHAR2(50 BYTE), 
	"QUANTITY" NUMBER(*,0), 
	"UNITCOST" NUMBER(20,2), 
	"SUBTOTAL" NUMBER GENERATED ALWAYS AS ("QUANTITY"*"UNITCOST") VIRTUAL 
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table ORDERS
--------------------------------------------------------

  CREATE TABLE "COMP214F15_005_P_13"."ORDERS" 
   (	"ORDERID" NUMBER, 
	"DATECREATED" DATE DEFAULT sysdate, 
	"DATESHIPPED" DATE, 
	"VERIFIED" NUMBER DEFAULT 0, 
	"COMPLETED" NUMBER DEFAULT 0, 
	"CANCELED" NUMBER DEFAULT 0, 
	"COMMENTS" VARCHAR2(1000 BYTE), 
	"CUSTOMERNAME" VARCHAR2(50 BYTE), 
	"CUSTOMEREMAIL" VARCHAR2(50 BYTE), 
	"SHIPPINGADDRESS" VARCHAR2(500 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table ORDER_AUDIT
--------------------------------------------------------

  CREATE TABLE "COMP214F15_005_P_13"."ORDER_AUDIT" 
   (	"ORDERID" NUMBER(10,0), 
	"DATECREATED" DATE, 
	"DATESHIPPED" DATE, 
	"CUSTOMERNAME" VARCHAR2(50 BYTE), 
	"VERIFIED" NUMBER, 
	"COMPLETED" NUMBER, 
	"CANCELED" NUMBER
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PRODUCT
--------------------------------------------------------

  CREATE TABLE "COMP214F15_005_P_13"."PRODUCT" 
   (	"PRODUCTID" NUMBER(*,0), 
	"NAME" VARCHAR2(50 BYTE), 
	"DESCRIPTION" VARCHAR2(4000 BYTE), 
	"PRICE" NUMBER(10,4), 
	"THUMBNAIL" VARCHAR2(200 BYTE), 
	"IMAGE" VARCHAR2(200 BYTE), 
	"PROMOFRONT" NUMBER(3,0), 
	"PROMODEPT" NUMBER(3,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PRODUCTATTRIBUTEVALUE
--------------------------------------------------------

  CREATE TABLE "COMP214F15_005_P_13"."PRODUCTATTRIBUTEVALUE" 
   (	"PRODUCTID" NUMBER(*,0), 
	"ATTRIBUTEVALUEID" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PRODUCTCATEGORY
--------------------------------------------------------

  CREATE TABLE "COMP214F15_005_P_13"."PRODUCTCATEGORY" 
   (	"PRODUCTID" NUMBER(*,0), 
	"CATEGORYID" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PRODUCT_AUDIT
--------------------------------------------------------

  CREATE TABLE "COMP214F15_005_P_13"."PRODUCT_AUDIT" 
   (	"PRODUCTID" NUMBER(38,0), 
	"NAME" VARCHAR2(20 BYTE), 
	"DESCRIPTION" VARCHAR2(4000 BYTE), 
	"PRICE" NUMBER(10,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PROMOTIONS
--------------------------------------------------------

  CREATE TABLE "COMP214F15_005_P_13"."PROMOTIONS" 
   (	"PRODUCTID" NUMBER, 
	"NAME" VARCHAR2(100 BYTE), 
	"PRICE" NUMBER, 
	"IMAGE" VARCHAR2(20 BYTE), 
	"REPEATNUM" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table REVIEW
--------------------------------------------------------

  CREATE TABLE "COMP214F15_005_P_13"."REVIEW" 
   (	"REVIEWID" NUMBER(38,0), 
	"PRODUCTID" NUMBER(38,0), 
	"RATING" NUMBER(1,0), 
	"DESCRIPTION" VARCHAR2(1000 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table SHOPPINGCART
--------------------------------------------------------

  CREATE TABLE "COMP214F15_005_P_13"."SHOPPINGCART" 
   (	"CARTID" CHAR(36 BYTE), 
	"PRODUCTID" NUMBER(*,0), 
	"QUANTITY" NUMBER(*,0), 
	"ATTRIBUTES" VARCHAR2(1000 BYTE), 
	"DATEADDED" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for View BB_BASKETITEM_VU
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "COMP214F15_005_P_13"."BB_BASKETITEM_VU" ("IDBASKETITEM", "IDPRODUCT", "PRICE", "QUANTITY", "IDBASKET", "OPTION1", "OPTION2") AS 
  select "IDBASKETITEM","IDPRODUCT","PRICE","QUANTITY","IDBASKET","OPTION1","OPTION2" from bb_basketitem;
--------------------------------------------------------
--  DDL for View BB_SHIP_VU
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "COMP214F15_005_P_13"."BB_SHIP_VU" ("IDBASKET", "SHIPFLAG", "IDSTAGE", "DTSTAGE", "NOTES", "SHIPPER", "SHIPPINGNUM") AS 
  SELECT b.idbasket, b.shipflag, bs.idstage, bs.dtstage, bs.notes,
            bs.shipper, bs.shippingnum
      FROM bb_basket b, bb_basketstatus bs
      WHERE b.idBasket = bs.idBasket;
REM INSERTING into COMP214F15_005_P_13.ATTRIBUTE
SET DEFINE OFF;
Insert into COMP214F15_005_P_13.ATTRIBUTE (ATTRIBUTEID,NAME) values (1,'Availability');
REM INSERTING into COMP214F15_005_P_13.ATTRIBUTEVALUE
SET DEFINE OFF;
Insert into COMP214F15_005_P_13.ATTRIBUTEVALUE (ATTRIBUTEVALUEID,ATTRIBUTEID,VALUE) values (1,1,'Downloadable');
Insert into COMP214F15_005_P_13.ATTRIBUTEVALUE (ATTRIBUTEVALUEID,ATTRIBUTEID,VALUE) values (2,1,'DVD');
Insert into COMP214F15_005_P_13.ATTRIBUTEVALUE (ATTRIBUTEVALUEID,ATTRIBUTEID,VALUE) values (3,1,'Both');
REM INSERTING into COMP214F15_005_P_13.CATEGORY
SET DEFINE OFF;
Insert into COMP214F15_005_P_13.CATEGORY (CATEGORYID,DEPARTMENTID,NAME,DESCRIPTION) values (1,1,'Action','Those that have lighting quick reflexes, amazing hand-eye co-ordination, and enjoy hard physical challenges');
Insert into COMP214F15_005_P_13.CATEGORY (CATEGORYID,DEPARTMENTID,NAME,DESCRIPTION) values (2,1,'Sports','Self-explanatory isnt it?');
Insert into COMP214F15_005_P_13.CATEGORY (CATEGORYID,DEPARTMENTID,NAME,DESCRIPTION) values (3,1,'Strategy','Plan your way to victory!');
Insert into COMP214F15_005_P_13.CATEGORY (CATEGORYID,DEPARTMENTID,NAME,DESCRIPTION) values (4,1,'RPG','Role-Playing Game, Get yourself into character!');
Insert into COMP214F15_005_P_13.CATEGORY (CATEGORYID,DEPARTMENTID,NAME,DESCRIPTION) values (5,1,'Puzzle','Use your knowledge to "crack the code"');
Insert into COMP214F15_005_P_13.CATEGORY (CATEGORYID,DEPARTMENTID,NAME,DESCRIPTION) values (6,2,'Music & Party','Really? Just make your own party!');
REM INSERTING into COMP214F15_005_P_13.DEPARTMENT
SET DEFINE OFF;
Insert into COMP214F15_005_P_13.DEPARTMENT (DEPARTMENTID,NAME,DESCRIPTION) values (1,'Games','Thats what you want');
Insert into COMP214F15_005_P_13.DEPARTMENT (DEPARTMENTID,NAME,DESCRIPTION) values (2,'Other','Thats something you don''t want');
REM INSERTING into COMP214F15_005_P_13.ORDERDETAIL
SET DEFINE OFF;
REM INSERTING into COMP214F15_005_P_13.ORDERS
SET DEFINE OFF;
Insert into COMP214F15_005_P_13.ORDERS (ORDERID,DATECREATED,DATESHIPPED,VERIFIED,COMPLETED,CANCELED,COMMENTS,CUSTOMERNAME,CUSTOMEREMAIL,SHIPPINGADDRESS) values (64,to_date('24-AUG-15','DD-MON-RR'),null,0,0,0,null,null,null,null);
Insert into COMP214F15_005_P_13.ORDERS (ORDERID,DATECREATED,DATESHIPPED,VERIFIED,COMPLETED,CANCELED,COMMENTS,CUSTOMERNAME,CUSTOMEREMAIL,SHIPPINGADDRESS) values (61,to_date('24-AUG-15','DD-MON-RR'),null,0,0,0,null,null,null,null);
Insert into COMP214F15_005_P_13.ORDERS (ORDERID,DATECREATED,DATESHIPPED,VERIFIED,COMPLETED,CANCELED,COMMENTS,CUSTOMERNAME,CUSTOMEREMAIL,SHIPPINGADDRESS) values (62,to_date('24-AUG-15','DD-MON-RR'),null,0,0,0,null,null,null,null);
Insert into COMP214F15_005_P_13.ORDERS (ORDERID,DATECREATED,DATESHIPPED,VERIFIED,COMPLETED,CANCELED,COMMENTS,CUSTOMERNAME,CUSTOMEREMAIL,SHIPPINGADDRESS) values (63,to_date('24-AUG-15','DD-MON-RR'),null,0,0,0,null,null,null,null);
Insert into COMP214F15_005_P_13.ORDERS (ORDERID,DATECREATED,DATESHIPPED,VERIFIED,COMPLETED,CANCELED,COMMENTS,CUSTOMERNAME,CUSTOMEREMAIL,SHIPPINGADDRESS) values (65,to_date('24-AUG-15','DD-MON-RR'),null,0,0,0,null,null,null,null);
Insert into COMP214F15_005_P_13.ORDERS (ORDERID,DATECREATED,DATESHIPPED,VERIFIED,COMPLETED,CANCELED,COMMENTS,CUSTOMERNAME,CUSTOMEREMAIL,SHIPPINGADDRESS) values (66,to_date('24-AUG-15','DD-MON-RR'),null,0,0,0,null,null,null,null);
Insert into COMP214F15_005_P_13.ORDERS (ORDERID,DATECREATED,DATESHIPPED,VERIFIED,COMPLETED,CANCELED,COMMENTS,CUSTOMERNAME,CUSTOMEREMAIL,SHIPPINGADDRESS) values (67,to_date('24-AUG-15','DD-MON-RR'),null,0,0,0,null,null,null,null);
Insert into COMP214F15_005_P_13.ORDERS (ORDERID,DATECREATED,DATESHIPPED,VERIFIED,COMPLETED,CANCELED,COMMENTS,CUSTOMERNAME,CUSTOMEREMAIL,SHIPPINGADDRESS) values (68,to_date('24-AUG-15','DD-MON-RR'),null,0,0,0,null,null,null,null);
REM INSERTING into COMP214F15_005_P_13.ORDER_AUDIT
SET DEFINE OFF;
REM INSERTING into COMP214F15_005_P_13.PRODUCT
SET DEFINE OFF;
Insert into COMP214F15_005_P_13.PRODUCT (PRODUCTID,NAME,DESCRIPTION,PRICE,THUMBNAIL,IMAGE,PROMOFRONT,PROMODEPT) values (15,'Batman: Arkham Knight','the explosive finale to the Arkham series, Batman faces the ultimate threat against
the city he is sworn to protect',29.99,'arkham-knight.jpg','arkham-knight.jpg',0,0);
Insert into COMP214F15_005_P_13.PRODUCT (PRODUCTID,NAME,DESCRIPTION,PRICE,THUMBNAIL,IMAGE,PROMOFRONT,PROMODEPT) values (16,'NBA 2K15','Nominated for 70 ''Game of the Year'' Awards, the NBA 2K franchise returns with NBA 2K15, our most true-to-life NBA experience yet.',39.99,'official-nba-2k14-cover-635x700.jpg','official-nba-2k14-cover-635x700.jpg',0,0);
Insert into COMP214F15_005_P_13.PRODUCT (PRODUCTID,NAME,DESCRIPTION,PRICE,THUMBNAIL,IMAGE,PROMOFRONT,PROMODEPT) values (17,'MLB 15 The Show','For the first time ever, partnerships from various brands will bring accurate bats, gloves, cleats, and batting gloves to the game.',19.99,'mlbshow15box.jpg','mlbshow15box.jpg',0,0);
Insert into COMP214F15_005_P_13.PRODUCT (PRODUCTID,NAME,DESCRIPTION,PRICE,THUMBNAIL,IMAGE,PROMOFRONT,PROMODEPT) values (18,'FIFA Soccer 15','FIFA 15 on PS Vita delivers authentic soccer in the palm of your hands. Enjoy the award-winning FIFA console gameplay, HD graphics, and the largest feature set ever created by EA SPORTS for a handheld device.',39.99,'fifa15messi.jpg','fifa15messi.jpg',0,1);
Insert into COMP214F15_005_P_13.PRODUCT (PRODUCTID,NAME,DESCRIPTION,PRICE,THUMBNAIL,IMAGE,PROMOFRONT,PROMODEPT) values (19,'John Daly''s Prostroke Golf','Starring PGA golfer John ?Grip it and Rip it? Daly
Revolutionary ProStroke control system improved and developed by John Daly himself.',12.95,'154547_front.jpg','154547_front.jpg',0,0);
Insert into COMP214F15_005_P_13.PRODUCT (PRODUCTID,NAME,DESCRIPTION,PRICE,THUMBNAIL,IMAGE,PROMOFRONT,PROMODEPT) values (20,'Pro Evolution Soccer 2014','Motion Animation Stability System (M.A.S.S.): The physical combat between players is a vital part of a match, and the new M.A.S.S. component simulates the bodily contact between multiple players within tailored animations that segue seamlessly into each other',14.99,'pes-2014-pc-cover.jpg','pes-2014-pc-cover.jpg',0,0);
Insert into COMP214F15_005_P_13.PRODUCT (PRODUCTID,NAME,DESCRIPTION,PRICE,THUMBNAIL,IMAGE,PROMOFRONT,PROMODEPT) values (21,'Persona 4: Dancing All Night','Personna 4',64.99,'P4D-JP-Box-Art_03-25-15.jpg','P4D-JP-Box-Art_03-25-15.jpg',0,0);
Insert into COMP214F15_005_P_13.PRODUCT (PRODUCTID,NAME,DESCRIPTION,PRICE,THUMBNAIL,IMAGE,PROMOFRONT,PROMODEPT) values (22,'Just Dance 2014','World Dance Floor: Dance with anyone anywhere in the world in Just Dance?s first-ever online multiplayer mode! Players join a virtual crew ? made up of real-life friends or other Just Dance fans ? and compete based on different themes (?Boys Vs Girls?, ?Crew Vs Crew?). Players can also track their standing on global leader boards, check out fun stats about other players around the world, and see community updates.
On Stage Mode: Own the spotlight in this new mode where one player will dance, lead 2 back-up dancers, and even sing if they want! As the star of the show, the player can take it seriously and show off how talented they are, or just goof off with friends.',29.99,'cover_1large.jpg','cover_1large.jpg',1,1);
Insert into COMP214F15_005_P_13.PRODUCT (PRODUCTID,NAME,DESCRIPTION,PRICE,THUMBNAIL,IMAGE,PROMOFRONT,PROMODEPT) values (23,'DJ Hero 2','Up to 2 DJs can mix, scratch, and sample on the acclaimed DJ Hero turntable controller, while a vocalist grabs a microphone and sings or raps along with on-screen lyrics.
DON''T STOP THE PARTY Party Play mode turns DJ Hero 2 into the ultimate party accessory.',4.95,'81KVclgl3WL._SL1500_.jpg','81KVclgl3WL._SL1500_.jpg',0,0);
Insert into COMP214F15_005_P_13.PRODUCT (PRODUCTID,NAME,DESCRIPTION,PRICE,THUMBNAIL,IMAGE,PROMOFRONT,PROMODEPT) values (24,'Yoostar 2 In The Movies','Blockbuster Hits ? Including The Hangover, 300, The Godfather, Terminator, and more.
Diverse Gameplay ? Variety of game modes including Challenge and Quick Play.',14.95,'1712342-81jqoqjscal._aa1500_.jpg','1712342-81jqoqjscal._aa1500_.jpg',0,0);
Insert into COMP214F15_005_P_13.PRODUCT (PRODUCTID,NAME,DESCRIPTION,PRICE,THUMBNAIL,IMAGE,PROMOFRONT,PROMODEPT) values (25,'Get Up and Dance','Featuring everything from classic funky disco tracks to current chart hits, all complete with their official videos, there?s something for everyone to enjoy!
Get your friends round and get dancing together or have your very own dance off in Get Up And Dance?s Party Mode.',12.95,'cover_large (1).jpg','cover_large (1).jpg',0,0);
Insert into COMP214F15_005_P_13.PRODUCT (PRODUCTID,NAME,DESCRIPTION,PRICE,THUMBNAIL,IMAGE,PROMOFRONT,PROMODEPT) values (26,'X-COM Enemy Unknown','Only those who live at the edges of the world have a margin of freedom.
Here, a force gathers once again to stand up for humanity. Always on the run, the remnant
XCOM forces must find a way to rise from the ashes, expose the insidious truth behind the 
occupation, and eliminate the alien threat once and for all.
',29.99,'xcom_enemy_unknown_game_cover.jpg','xcom_enemy_unknown_game_cover.jpg',1,1);
Insert into COMP214F15_005_P_13.PRODUCT (PRODUCTID,NAME,DESCRIPTION,PRICE,THUMBNAIL,IMAGE,PROMOFRONT,PROMODEPT) values (27,'StarCraft 2: Legacy of the Void','Legacy of the Void™, the standalone conclusion to the StarCraft II trilogy, 
will arrive by winter.',59.99,'LegacyoftheVoid_SC2_Cover1.jpg','LegacyoftheVoid_SC2_Cover1.jpg',0,0);
Insert into COMP214F15_005_P_13.PRODUCT (PRODUCTID,NAME,DESCRIPTION,PRICE,THUMBNAIL,IMAGE,PROMOFRONT,PROMODEPT) values (28,'Sid Meier’s Civilization','Legacy of the Void™, the standalone conclusion to the StarCraft II trilogy, 
will arrive by winter.',9.99,'84188_front.jpg','84188_front.jpg',0,0);
Insert into COMP214F15_005_P_13.PRODUCT (PRODUCTID,NAME,DESCRIPTION,PRICE,THUMBNAIL,IMAGE,PROMOFRONT,PROMODEPT) values (29,'Valkyria Chronicle','Set in a fictitious continent reminiscent of the 1930s, Valkyria Chronicles depicts Europe divided in two and ruled by two super powers: the Empire and the Federation. The Empire has set its sights on invading a small neutral country called Gallia, situated in the middle of the two superpowers territories, in an attempt to secure invaluable natural resources. Within this struggle a hero named Welkin, and his fellow soldiers of the Federation''s 7th Platoon, are fighting back against the invasion and the Empires attempts to unify the continent under its power. ',14.99,'valkyria.jpg','valkyria.jpg',0,0);
Insert into COMP214F15_005_P_13.PRODUCT (PRODUCTID,NAME,DESCRIPTION,PRICE,THUMBNAIL,IMAGE,PROMOFRONT,PROMODEPT) values (30,'Metal Gear Solid 5: Ground Zero','Ground Zeroes showcases Kojima Productions'' stunning FOX Engine, a true 
next-generation game engine which revolutionizes the Metal Gear Solid experience.
The first Metal Gear Solid title to offer open world gameplay.',44.99,'Metal_Gear_Solid_V_Ground_Zeroes_main_promotional_art.jpg','Metal_Gear_Solid_V_Ground_Zeroes_main_promotional_art.jpg',1,1);
Insert into COMP214F15_005_P_13.PRODUCT (PRODUCTID,NAME,DESCRIPTION,PRICE,THUMBNAIL,IMAGE,PROMOFRONT,PROMODEPT) values (1,'Dragon Age Inquisition','Your New Adventure Begins.
The Dragon Age: Inquisition Digital Deluxe grants you an exclusive bundle of powerful items.',12.99,'2509813-daiart.jpg','2509813-daiart.jpg',0,1);
Insert into COMP214F15_005_P_13.PRODUCT (PRODUCTID,NAME,DESCRIPTION,PRICE,THUMBNAIL,IMAGE,PROMOFRONT,PROMODEPT) values (2,'FallOut 4','Bethesda Game Studios, the award-winning creators of Fallout 3 and The Elder Scrolls V: Skyrim, welcome you to the world of Fallout 4 – their most ambitious game ever, and the next generation of open-world gaming.',19.99,'cover_large.jpg','cover_large.jpg',0,0);
Insert into COMP214F15_005_P_13.PRODUCT (PRODUCTID,NAME,DESCRIPTION,PRICE,THUMBNAIL,IMAGE,PROMOFRONT,PROMODEPT) values (3,'Mass Effect','Plunge into an all-out galactic war against a nearly unstoppable foe. How will you save the galaxy?',11.99,'skyrim.jpg','skyrim.jpg',0,0);
Insert into COMP214F15_005_P_13.PRODUCT (PRODUCTID,NAME,DESCRIPTION,PRICE,THUMBNAIL,IMAGE,PROMOFRONT,PROMODEPT) values (4,'Skyrim','EPIC FANTASY REBORN The next chapter in the highly anticipated Elder Scrolls saga arrives from the makers of the 2006 and 2008 Games of the Year, Bethesda Game Studios. Skyrim reimagines and revolutionizes the open-world fantasy epic',11.99,'Skyrim_Cover.jpg','Skyrim_Cover.jpg',0,1);
Insert into COMP214F15_005_P_13.PRODUCT (PRODUCTID,NAME,DESCRIPTION,PRICE,THUMBNAIL,IMAGE,PROMOFRONT,PROMODEPT) values (5,'Witcher 3','The Witcher is a story-driven, next-generation open world role-playing game, set in a visually stunning fantasy universe, full of meaningful choices and impactful consequences. In The Witcher, you play as Geralt of Rivia, a monster hunter tasked with finding a child from an ancient prophecy.',11.99,'the-witcher-3-wild-hunt-cover.jpg','the-witcher-3-wild-hunt-cover.jpg',0,0);
Insert into COMP214F15_005_P_13.PRODUCT (PRODUCTID,NAME,DESCRIPTION,PRICE,THUMBNAIL,IMAGE,PROMOFRONT,PROMODEPT) values (6,'Hexcells Infinite','Hexcells Infinite is the third game in the series of ambient logic puzzle games.',7.99,'Box_Art.jpg','Box_Art.jpg',0,0);
Insert into COMP214F15_005_P_13.PRODUCT (PRODUCTID,NAME,DESCRIPTION,PRICE,THUMBNAIL,IMAGE,PROMOFRONT,PROMODEPT) values (7,'Lemmings','Lemmings, the real creatures, are little rodents that control their population by committing mass suicide. In Lemmings the computer game, every lemming is a valued member of the animal kingdom and must be protected at all costs.',8.99,'LemmingsGen.jpg','LemmingsGen.jpg',0,1);
Insert into COMP214F15_005_P_13.PRODUCT (PRODUCTID,NAME,DESCRIPTION,PRICE,THUMBNAIL,IMAGE,PROMOFRONT,PROMODEPT) values (8,'Portal','The "Perpetual Testing Initiative" has been expanded to allow you to design co-op puzzles for you and your friends!',10.99,'178414-portal.jpg','178414-portal.jpg',0,0);
Insert into COMP214F15_005_P_13.PRODUCT (PRODUCTID,NAME,DESCRIPTION,PRICE,THUMBNAIL,IMAGE,PROMOFRONT,PROMODEPT) values (9,'Puzzle Quest','PuzzleQuest: Challenge of the Warlords delivers, for the first time ever, classic puzzle-game action backed with an epic story of good vs. evil. Challenge your match 3 skills as you battle against computer opponents to save the Kingdom of Etheria from the evil Lord Bane.',11.99,'Puzzle_quest_PSP.jpg','Puzzle_quest_PSP.jpg',0,0);
Insert into COMP214F15_005_P_13.PRODUCT (PRODUCTID,NAME,DESCRIPTION,PRICE,THUMBNAIL,IMAGE,PROMOFRONT,PROMODEPT) values (10,'The legend of zelda','A young, elfin hero embarks on a perilous quest to save a captured princess in the Legend of Zelda from Nintendo. The evil Ganon has abducted Princess Zelda to plunge the land of Hyrule into chaos and despair. You control a sword-swinging character named Link in an effort to rescue Zelda and restore Hyrule''s glory.',10.99,'zelda.jpg','zelda.jpg',0,1);
Insert into COMP214F15_005_P_13.PRODUCT (PRODUCTID,NAME,DESCRIPTION,PRICE,THUMBNAIL,IMAGE,PROMOFRONT,PROMODEPT) values (11,'Star Wars BattleFront','Feeling the ominous thud of an AT-AT stomping down on the frozen tundra of Hoth. ',59.99,'Star-Wars-Battlefront-PS4-Cover.jpg','Star-Wars-Battlefront-PS4-Cover.jpg',0,0);
Insert into COMP214F15_005_P_13.PRODUCT (PRODUCTID,NAME,DESCRIPTION,PRICE,THUMBNAIL,IMAGE,PROMOFRONT,PROMODEPT) values (12,'ARK: Survival Evolved','Rebel forces firing blasters as Imperial speeder bikes zip through the lush forests of Endor. ',34.99,'ARK-SURVIVAL-EVOLVED-EARLY-ACCESS-3DM-FULL-GAME.jpg','ARK-SURVIVAL-EVOLVED-EARLY-ACCESS-3DM-FULL-GAME.jpg',0,0);
Insert into COMP214F15_005_P_13.PRODUCT (PRODUCTID,NAME,DESCRIPTION,PRICE,THUMBNAIL,IMAGE,PROMOFRONT,PROMODEPT) values (13,'Call of Duty Black Ops 3','Treyarch elevates the Call of Duty® social gaming experience by delivering a 
campaign with the ability to play cooperatively with up to four players online',39.99,'blackops3.jpg','blackops3.jpg',0,0);
Insert into COMP214F15_005_P_13.PRODUCT (PRODUCTID,NAME,DESCRIPTION,PRICE,THUMBNAIL,IMAGE,PROMOFRONT,PROMODEPT) values (14,'Pay Day 2','"PAYDAY 2 is an action-packed, four-player co-op shooter that once again lets
 gamers don the masks of the original PAYDAY crew - Dallas, Hoxton, Wolf and Chains - as they  descend on Washington DC for an epic crime spree"',19.99,'8b64efb121.jpg','8b64efb121.jpg',0,1);
REM INSERTING into COMP214F15_005_P_13.PRODUCTATTRIBUTEVALUE
SET DEFINE OFF;
REM INSERTING into COMP214F15_005_P_13.PRODUCTCATEGORY
SET DEFINE OFF;
Insert into COMP214F15_005_P_13.PRODUCTCATEGORY (PRODUCTID,CATEGORYID) values (1,4);
Insert into COMP214F15_005_P_13.PRODUCTCATEGORY (PRODUCTID,CATEGORYID) values (2,4);
Insert into COMP214F15_005_P_13.PRODUCTCATEGORY (PRODUCTID,CATEGORYID) values (3,4);
Insert into COMP214F15_005_P_13.PRODUCTCATEGORY (PRODUCTID,CATEGORYID) values (4,4);
Insert into COMP214F15_005_P_13.PRODUCTCATEGORY (PRODUCTID,CATEGORYID) values (5,4);
Insert into COMP214F15_005_P_13.PRODUCTCATEGORY (PRODUCTID,CATEGORYID) values (6,5);
Insert into COMP214F15_005_P_13.PRODUCTCATEGORY (PRODUCTID,CATEGORYID) values (7,5);
Insert into COMP214F15_005_P_13.PRODUCTCATEGORY (PRODUCTID,CATEGORYID) values (8,5);
Insert into COMP214F15_005_P_13.PRODUCTCATEGORY (PRODUCTID,CATEGORYID) values (9,5);
Insert into COMP214F15_005_P_13.PRODUCTCATEGORY (PRODUCTID,CATEGORYID) values (10,5);
Insert into COMP214F15_005_P_13.PRODUCTCATEGORY (PRODUCTID,CATEGORYID) values (11,1);
Insert into COMP214F15_005_P_13.PRODUCTCATEGORY (PRODUCTID,CATEGORYID) values (12,1);
Insert into COMP214F15_005_P_13.PRODUCTCATEGORY (PRODUCTID,CATEGORYID) values (13,1);
Insert into COMP214F15_005_P_13.PRODUCTCATEGORY (PRODUCTID,CATEGORYID) values (14,1);
Insert into COMP214F15_005_P_13.PRODUCTCATEGORY (PRODUCTID,CATEGORYID) values (15,1);
Insert into COMP214F15_005_P_13.PRODUCTCATEGORY (PRODUCTID,CATEGORYID) values (16,2);
Insert into COMP214F15_005_P_13.PRODUCTCATEGORY (PRODUCTID,CATEGORYID) values (17,2);
Insert into COMP214F15_005_P_13.PRODUCTCATEGORY (PRODUCTID,CATEGORYID) values (18,2);
Insert into COMP214F15_005_P_13.PRODUCTCATEGORY (PRODUCTID,CATEGORYID) values (19,2);
Insert into COMP214F15_005_P_13.PRODUCTCATEGORY (PRODUCTID,CATEGORYID) values (20,2);
Insert into COMP214F15_005_P_13.PRODUCTCATEGORY (PRODUCTID,CATEGORYID) values (21,6);
Insert into COMP214F15_005_P_13.PRODUCTCATEGORY (PRODUCTID,CATEGORYID) values (22,6);
Insert into COMP214F15_005_P_13.PRODUCTCATEGORY (PRODUCTID,CATEGORYID) values (23,6);
Insert into COMP214F15_005_P_13.PRODUCTCATEGORY (PRODUCTID,CATEGORYID) values (24,6);
Insert into COMP214F15_005_P_13.PRODUCTCATEGORY (PRODUCTID,CATEGORYID) values (25,6);
Insert into COMP214F15_005_P_13.PRODUCTCATEGORY (PRODUCTID,CATEGORYID) values (26,3);
Insert into COMP214F15_005_P_13.PRODUCTCATEGORY (PRODUCTID,CATEGORYID) values (27,3);
Insert into COMP214F15_005_P_13.PRODUCTCATEGORY (PRODUCTID,CATEGORYID) values (28,3);
Insert into COMP214F15_005_P_13.PRODUCTCATEGORY (PRODUCTID,CATEGORYID) values (29,3);
Insert into COMP214F15_005_P_13.PRODUCTCATEGORY (PRODUCTID,CATEGORYID) values (30,3);
REM INSERTING into COMP214F15_005_P_13.PRODUCT_AUDIT
SET DEFINE OFF;
REM INSERTING into COMP214F15_005_P_13.PROMOTIONS
SET DEFINE OFF;
Insert into COMP214F15_005_P_13.PROMOTIONS (PRODUCTID,NAME,PRICE,IMAGE,REPEATNUM) values (20,'Pro Evolution Soccer 2014',14.99,'pes.jpg','1');
Insert into COMP214F15_005_P_13.PROMOTIONS (PRODUCTID,NAME,PRICE,IMAGE,REPEATNUM) values (20,'Pro Evolution Soccer 2014',14.99,'pes.jpg','2');
Insert into COMP214F15_005_P_13.PROMOTIONS (PRODUCTID,NAME,PRICE,IMAGE,REPEATNUM) values (2,'FallOut 4',19.99,'fallout4.jpg','3');
Insert into COMP214F15_005_P_13.PROMOTIONS (PRODUCTID,NAME,PRICE,IMAGE,REPEATNUM) values (27,'StarCraft 2: Legacy of the Void',59.99,'SC2_LV.jpg','4');
REM INSERTING into COMP214F15_005_P_13.REVIEW
SET DEFINE OFF;
Insert into COMP214F15_005_P_13.REVIEW (REVIEWID,PRODUCTID,RATING,DESCRIPTION) values (1,11,3,'If the game had more content then I will give it a 5/5.');
Insert into COMP214F15_005_P_13.REVIEW (REVIEWID,PRODUCTID,RATING,DESCRIPTION) values (2,2,3,'The game was fun but it was kind of short.');
Insert into COMP214F15_005_P_13.REVIEW (REVIEWID,PRODUCTID,RATING,DESCRIPTION) values (3,3,3,'The game sucks.');
Insert into COMP214F15_005_P_13.REVIEW (REVIEWID,PRODUCTID,RATING,DESCRIPTION) values (4,4,4,'Awesome! Got the game during the sale and loving it so far.');
Insert into COMP214F15_005_P_13.REVIEW (REVIEWID,PRODUCTID,RATING,DESCRIPTION) values (5,5,4,'So much fun, this game works so well when you play with a bunch of friends.');
Insert into COMP214F15_005_P_13.REVIEW (REVIEWID,PRODUCTID,RATING,DESCRIPTION) values (6,6,5,'Best game ever. Everyone should play this game.');
Insert into COMP214F15_005_P_13.REVIEW (REVIEWID,PRODUCTID,RATING,DESCRIPTION) values (7,7,5,'Best game ever! Got the game super quick from CODEPLAY. THANK YOU!');
Insert into COMP214F15_005_P_13.REVIEW (REVIEWID,PRODUCTID,RATING,DESCRIPTION) values (8,8,5,'Love this game, can''t stop playing it.');
Insert into COMP214F15_005_P_13.REVIEW (REVIEWID,PRODUCTID,RATING,DESCRIPTION) values (9,9,5,'One word: AMAZING!');
Insert into COMP214F15_005_P_13.REVIEW (REVIEWID,PRODUCTID,RATING,DESCRIPTION) values (10,10,5,'A must get kind of game. ');
Insert into COMP214F15_005_P_13.REVIEW (REVIEWID,PRODUCTID,RATING,DESCRIPTION) values (11,13,5,'Thank you Codeplay for the awesome game.');
Insert into COMP214F15_005_P_13.REVIEW (REVIEWID,PRODUCTID,RATING,DESCRIPTION) values (12,12,5,'Two Thumbs up, a good idea for a gift for those who love to spend lots of time on a game.');
REM INSERTING into COMP214F15_005_P_13.SHOPPINGCART
SET DEFINE OFF;
Insert into COMP214F15_005_P_13.SHOPPINGCART (CARTID,PRODUCTID,QUANTITY,ATTRIBUTES,DATEADDED) values ('824f9982-0509-4708-85d0-184ddd593938',15,1,null,to_date('18-DEC-15','DD-MON-RR'));
Insert into COMP214F15_005_P_13.SHOPPINGCART (CARTID,PRODUCTID,QUANTITY,ATTRIBUTES,DATEADDED) values ('41                                  ',23,1,null,to_date('21-AUG-15','DD-MON-RR'));
Insert into COMP214F15_005_P_13.SHOPPINGCART (CARTID,PRODUCTID,QUANTITY,ATTRIBUTES,DATEADDED) values ('f2ba961b-3674-47fe-9886-636497bf2b00',26,2,null,to_date('21-AUG-15','DD-MON-RR'));
Insert into COMP214F15_005_P_13.SHOPPINGCART (CARTID,PRODUCTID,QUANTITY,ATTRIBUTES,DATEADDED) values ('f2ba961b-3674-47fe-9886-636497bf2b00',7,1,null,to_date('21-AUG-15','DD-MON-RR'));
--------------------------------------------------------
--  DDL for Index SYS_C0010093
--------------------------------------------------------

  CREATE UNIQUE INDEX "COMP214F15_005_P_13"."SYS_C0010093" ON "COMP214F15_005_P_13"."ATTRIBUTEVALUE" ("ATTRIBUTEVALUEID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C0010104
--------------------------------------------------------

  CREATE UNIQUE INDEX "COMP214F15_005_P_13"."SYS_C0010104" ON "COMP214F15_005_P_13"."ATTRIBUTE" ("ATTRIBUTEID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index REVIEW_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "COMP214F15_005_P_13"."REVIEW_PK" ON "COMP214F15_005_P_13"."REVIEW" ("REVIEWID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_SHOPPINGCART
--------------------------------------------------------

  CREATE UNIQUE INDEX "COMP214F15_005_P_13"."PK_SHOPPINGCART" ON "COMP214F15_005_P_13"."SHOPPINGCART" ("CARTID", "PRODUCTID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_PRODUCTCATEGORY
--------------------------------------------------------

  CREATE UNIQUE INDEX "COMP214F15_005_P_13"."PK_PRODUCTCATEGORY" ON "COMP214F15_005_P_13"."PRODUCTCATEGORY" ("PRODUCTID", "CATEGORYID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_PRODUCT
--------------------------------------------------------

  CREATE UNIQUE INDEX "COMP214F15_005_P_13"."PK_PRODUCT" ON "COMP214F15_005_P_13"."PRODUCT" ("PRODUCTID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_PRODATTVAL
--------------------------------------------------------

  CREATE UNIQUE INDEX "COMP214F15_005_P_13"."PK_PRODATTVAL" ON "COMP214F15_005_P_13"."PRODUCTATTRIBUTEVALUE" ("PRODUCTID", "ATTRIBUTEVALUEID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_ORDERDETAIL
--------------------------------------------------------

  CREATE UNIQUE INDEX "COMP214F15_005_P_13"."PK_ORDERDETAIL" ON "COMP214F15_005_P_13"."ORDERDETAIL" ("ORDERID", "PRODUCTID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_DEPARTMENT
--------------------------------------------------------

  CREATE UNIQUE INDEX "COMP214F15_005_P_13"."PK_DEPARTMENT" ON "COMP214F15_005_P_13"."DEPARTMENT" ("DEPARTMENTID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_CATEGORY_1
--------------------------------------------------------

  CREATE UNIQUE INDEX "COMP214F15_005_P_13"."PK_CATEGORY_1" ON "COMP214F15_005_P_13"."CATEGORY" ("CATEGORYID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index ORDERS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "COMP214F15_005_P_13"."ORDERS_PK" ON "COMP214F15_005_P_13"."ORDERS" ("ORDERID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index IDX_DESC
--------------------------------------------------------

  CREATE INDEX "COMP214F15_005_P_13"."IDX_DESC" ON "COMP214F15_005_P_13"."PRODUCT" (NLSSORT("DESCRIPTION",'nls_sort=''BINARY_CI''')) 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index REVIEWS
--------------------------------------------------------

  CREATE INDEX "COMP214F15_005_P_13"."REVIEWS" ON "COMP214F15_005_P_13"."REVIEW" ("PRODUCTID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PROMOTIONS
--------------------------------------------------------

  CREATE INDEX "COMP214F15_005_P_13"."PROMOTIONS" ON "COMP214F15_005_P_13"."PROMOTIONS" ("PRODUCTID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index NAMEDESC
--------------------------------------------------------

  CREATE INDEX "COMP214F15_005_P_13"."NAMEDESC" ON "COMP214F15_005_P_13"."PRODUCT" (NLSSORT("NAME",'nls_sort=''BINARY_CI''')) 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table SHOPPINGCART
--------------------------------------------------------

  ALTER TABLE "COMP214F15_005_P_13"."SHOPPINGCART" ADD CONSTRAINT "PK_SHOPPINGCART" PRIMARY KEY ("CARTID", "PRODUCTID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "COMP214F15_005_P_13"."SHOPPINGCART" MODIFY ("QUANTITY" NOT NULL ENABLE);
  ALTER TABLE "COMP214F15_005_P_13"."SHOPPINGCART" MODIFY ("PRODUCTID" NOT NULL ENABLE);
  ALTER TABLE "COMP214F15_005_P_13"."SHOPPINGCART" MODIFY ("CARTID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table REVIEW
--------------------------------------------------------

  ALTER TABLE "COMP214F15_005_P_13"."REVIEW" ADD CONSTRAINT "REVIEW_PK" PRIMARY KEY ("REVIEWID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "COMP214F15_005_P_13"."REVIEW" MODIFY ("REVIEWID" NOT NULL ENABLE);
  ALTER TABLE "COMP214F15_005_P_13"."REVIEW" MODIFY ("PRODUCTID" NOT NULL ENABLE);
  ALTER TABLE "COMP214F15_005_P_13"."REVIEW" MODIFY ("RATING" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CATEGORY
--------------------------------------------------------

  ALTER TABLE "COMP214F15_005_P_13"."CATEGORY" ADD CONSTRAINT "PK_CATEGORY_1" PRIMARY KEY ("CATEGORYID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "COMP214F15_005_P_13"."CATEGORY" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "COMP214F15_005_P_13"."CATEGORY" MODIFY ("DEPARTMENTID" NOT NULL ENABLE);
  ALTER TABLE "COMP214F15_005_P_13"."CATEGORY" MODIFY ("CATEGORYID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ATTRIBUTEVALUE
--------------------------------------------------------

  ALTER TABLE "COMP214F15_005_P_13"."ATTRIBUTEVALUE" ADD PRIMARY KEY ("ATTRIBUTEVALUEID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "COMP214F15_005_P_13"."ATTRIBUTEVALUE" MODIFY ("VALUE" NOT NULL ENABLE);
  ALTER TABLE "COMP214F15_005_P_13"."ATTRIBUTEVALUE" MODIFY ("ATTRIBUTEID" NOT NULL ENABLE);
  ALTER TABLE "COMP214F15_005_P_13"."ATTRIBUTEVALUE" MODIFY ("ATTRIBUTEVALUEID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table DEPARTMENT
--------------------------------------------------------

  ALTER TABLE "COMP214F15_005_P_13"."DEPARTMENT" ADD CONSTRAINT "PK_DEPARTMENT" PRIMARY KEY ("DEPARTMENTID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "COMP214F15_005_P_13"."DEPARTMENT" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "COMP214F15_005_P_13"."DEPARTMENT" MODIFY ("DEPARTMENTID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ORDERS
--------------------------------------------------------

  ALTER TABLE "COMP214F15_005_P_13"."ORDERS" ADD CONSTRAINT "ORDERS_PK" PRIMARY KEY ("ORDERID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "COMP214F15_005_P_13"."ORDERS" MODIFY ("CANCELED" NOT NULL ENABLE);
  ALTER TABLE "COMP214F15_005_P_13"."ORDERS" MODIFY ("COMPLETED" NOT NULL ENABLE);
  ALTER TABLE "COMP214F15_005_P_13"."ORDERS" MODIFY ("VERIFIED" NOT NULL ENABLE);
  ALTER TABLE "COMP214F15_005_P_13"."ORDERS" MODIFY ("DATECREATED" NOT NULL ENABLE);
  ALTER TABLE "COMP214F15_005_P_13"."ORDERS" MODIFY ("ORDERID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PRODUCTCATEGORY
--------------------------------------------------------

  ALTER TABLE "COMP214F15_005_P_13"."PRODUCTCATEGORY" ADD CONSTRAINT "PK_PRODUCTCATEGORY" PRIMARY KEY ("PRODUCTID", "CATEGORYID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "COMP214F15_005_P_13"."PRODUCTCATEGORY" MODIFY ("CATEGORYID" NOT NULL ENABLE);
  ALTER TABLE "COMP214F15_005_P_13"."PRODUCTCATEGORY" MODIFY ("PRODUCTID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ORDER_AUDIT
--------------------------------------------------------

  ALTER TABLE "COMP214F15_005_P_13"."ORDER_AUDIT" MODIFY ("ORDERID" NOT NULL ENABLE);
  ALTER TABLE "COMP214F15_005_P_13"."ORDER_AUDIT" MODIFY ("DATECREATED" NOT NULL ENABLE);
  ALTER TABLE "COMP214F15_005_P_13"."ORDER_AUDIT" MODIFY ("DATESHIPPED" NOT NULL ENABLE);
  ALTER TABLE "COMP214F15_005_P_13"."ORDER_AUDIT" MODIFY ("VERIFIED" NOT NULL ENABLE);
  ALTER TABLE "COMP214F15_005_P_13"."ORDER_AUDIT" MODIFY ("COMPLETED" NOT NULL ENABLE);
  ALTER TABLE "COMP214F15_005_P_13"."ORDER_AUDIT" MODIFY ("CANCELED" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ORDERDETAIL
--------------------------------------------------------

  ALTER TABLE "COMP214F15_005_P_13"."ORDERDETAIL" ADD CONSTRAINT "PK_ORDERDETAIL" PRIMARY KEY ("ORDERID", "PRODUCTID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "COMP214F15_005_P_13"."ORDERDETAIL" MODIFY ("UNITCOST" NOT NULL ENABLE);
  ALTER TABLE "COMP214F15_005_P_13"."ORDERDETAIL" MODIFY ("QUANTITY" NOT NULL ENABLE);
  ALTER TABLE "COMP214F15_005_P_13"."ORDERDETAIL" MODIFY ("PRODUCTNAME" NOT NULL ENABLE);
  ALTER TABLE "COMP214F15_005_P_13"."ORDERDETAIL" MODIFY ("PRODUCTID" NOT NULL ENABLE);
  ALTER TABLE "COMP214F15_005_P_13"."ORDERDETAIL" MODIFY ("ORDERID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ATTRIBUTE
--------------------------------------------------------

  ALTER TABLE "COMP214F15_005_P_13"."ATTRIBUTE" ADD PRIMARY KEY ("ATTRIBUTEID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "COMP214F15_005_P_13"."ATTRIBUTE" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "COMP214F15_005_P_13"."ATTRIBUTE" MODIFY ("ATTRIBUTEID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PRODUCT
--------------------------------------------------------

  ALTER TABLE "COMP214F15_005_P_13"."PRODUCT" ADD CONSTRAINT "PK_PRODUCT" PRIMARY KEY ("PRODUCTID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "COMP214F15_005_P_13"."PRODUCT" MODIFY ("PROMODEPT" NOT NULL ENABLE);
  ALTER TABLE "COMP214F15_005_P_13"."PRODUCT" MODIFY ("PROMOFRONT" NOT NULL ENABLE);
  ALTER TABLE "COMP214F15_005_P_13"."PRODUCT" MODIFY ("PRICE" NOT NULL ENABLE);
  ALTER TABLE "COMP214F15_005_P_13"."PRODUCT" MODIFY ("DESCRIPTION" NOT NULL ENABLE);
  ALTER TABLE "COMP214F15_005_P_13"."PRODUCT" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "COMP214F15_005_P_13"."PRODUCT" MODIFY ("PRODUCTID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PRODUCTATTRIBUTEVALUE
--------------------------------------------------------

  ALTER TABLE "COMP214F15_005_P_13"."PRODUCTATTRIBUTEVALUE" ADD CONSTRAINT "PK_PRODATTVAL" PRIMARY KEY ("PRODUCTID", "ATTRIBUTEVALUEID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "COMP214F15_005_P_13"."PRODUCTATTRIBUTEVALUE" MODIFY ("ATTRIBUTEVALUEID" NOT NULL ENABLE);
  ALTER TABLE "COMP214F15_005_P_13"."PRODUCTATTRIBUTEVALUE" MODIFY ("PRODUCTID" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table ATTRIBUTEVALUE
--------------------------------------------------------

  ALTER TABLE "COMP214F15_005_P_13"."ATTRIBUTEVALUE" ADD CONSTRAINT "FK_ATT_VAL" FOREIGN KEY ("ATTRIBUTEID")
	  REFERENCES "COMP214F15_005_P_13"."ATTRIBUTE" ("ATTRIBUTEID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CATEGORY
--------------------------------------------------------

  ALTER TABLE "COMP214F15_005_P_13"."CATEGORY" ADD CONSTRAINT "FK_CATEGORY_DEPARTMENT" FOREIGN KEY ("DEPARTMENTID")
	  REFERENCES "COMP214F15_005_P_13"."DEPARTMENT" ("DEPARTMENTID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ORDERDETAIL
--------------------------------------------------------

  ALTER TABLE "COMP214F15_005_P_13"."ORDERDETAIL" ADD CONSTRAINT "FK_ORDERDETAIL_ORDERS" FOREIGN KEY ("ORDERID")
	  REFERENCES "COMP214F15_005_P_13"."ORDERS" ("ORDERID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PRODUCTATTRIBUTEVALUE
--------------------------------------------------------

  ALTER TABLE "COMP214F15_005_P_13"."PRODUCTATTRIBUTEVALUE" ADD CONSTRAINT "FK_PRODATTRVALUE_ATTRIVALUE" FOREIGN KEY ("ATTRIBUTEVALUEID")
	  REFERENCES "COMP214F15_005_P_13"."ATTRIBUTEVALUE" ("ATTRIBUTEVALUEID") ENABLE;
  ALTER TABLE "COMP214F15_005_P_13"."PRODUCTATTRIBUTEVALUE" ADD CONSTRAINT "FK_PRODUCTATTRVALUE_PRODUCT" FOREIGN KEY ("PRODUCTID")
	  REFERENCES "COMP214F15_005_P_13"."PRODUCT" ("PRODUCTID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PRODUCTCATEGORY
--------------------------------------------------------

  ALTER TABLE "COMP214F15_005_P_13"."PRODUCTCATEGORY" ADD CONSTRAINT "FK_PRODUCTCATEGORY_CATEGORY" FOREIGN KEY ("CATEGORYID")
	  REFERENCES "COMP214F15_005_P_13"."CATEGORY" ("CATEGORYID") ENABLE;
  ALTER TABLE "COMP214F15_005_P_13"."PRODUCTCATEGORY" ADD CONSTRAINT "FK_PRODUCTCATEGORY_PRODUCT" FOREIGN KEY ("PRODUCTID")
	  REFERENCES "COMP214F15_005_P_13"."PRODUCT" ("PRODUCTID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SHOPPINGCART
--------------------------------------------------------

  ALTER TABLE "COMP214F15_005_P_13"."SHOPPINGCART" ADD CONSTRAINT "FK_SHOPPINGCART_PRODUCT" FOREIGN KEY ("PRODUCTID")
	  REFERENCES "COMP214F15_005_P_13"."PRODUCT" ("PRODUCTID") ENABLE;
--------------------------------------------------------
--  DDL for Trigger PRODUCT_AUDIT
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "COMP214F15_005_P_13"."PRODUCT_AUDIT" 
BEFORE INSERT ON PRODUCT 
FOR EACH ROW
BEGIN
  INSERT INTO PRODUCT_AUDIT
  ( PRODUCTID, NAME, DESCRIPTION, PRICE)
  VALUES
  ( :new.PRODUCTID, :new.NAME, :new.DESCRIPTION, :new.PRICE);
END;
/
ALTER TRIGGER "COMP214F15_005_P_13"."PRODUCT_AUDIT" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRIG_ORDER
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "COMP214F15_005_P_13"."TRIG_ORDER" 
AFTER INSERT ON ORDERS 
FOR EACH ROW

DECLARE
  u_username varchar2 (10);
BEGIN
  SELECT user INTO u_username
  FROM Orders;
  
  INSERT INTO ORDER_AUDIT
  (ORDERID,DATECREATED,DATESHIPPED,CUSTOMERNAME)
  VALUES
  (:new.ORDERID,:new.DATECREATED,:new.DATESHIPPED,u_username);
  
END;
/
ALTER TRIGGER "COMP214F15_005_P_13"."TRIG_ORDER" ENABLE;
--------------------------------------------------------
--  DDL for Procedure CATALOGADDDEPARTMENT
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "COMP214F15_005_P_13"."CATALOGADDDEPARTMENT" 
(DepartmentName in varchar,
DepartmentDescription in varchar)
AS
BEGIN
INSERT INTO Department (departmentid, Name, Description)
VALUES (byone_seq.nextval, DepartmentName, DepartmentDescription);
END CatalogAddDepartment;

/
--------------------------------------------------------
--  DDL for Procedure CATALOGASSIGNPRODUCTTOCATEGORY
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "COMP214F15_005_P_13"."CATALOGASSIGNPRODUCTTOCATEGORY" 
(v_ProductID in integer, v_CategoryID in integer)
AS
begin
INSERT INTO ProductCategory (ProductID, CategoryID)
VALUES (v_ProductID, v_CategoryID);
end;

/
--------------------------------------------------------
--  DDL for Procedure CATALOGCREATECATEGORY
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "COMP214F15_005_P_13"."CATALOGCREATECATEGORY" 
(v_DepartmentID in integer,
CategoryName in varchar,
CategoryDescription in varchar)
AS
BEGIN
INSERT INTO Category (categoryid, DepartmentID, Name, Description)
VALUES (byone_seq.nextval, v_DepartmentID, CategoryName, CategoryDescription);
END CatalogCreateCategory;

/
--------------------------------------------------------
--  DDL for Procedure CATALOGCREATEPRODUCT
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "COMP214F15_005_P_13"."CATALOGCREATEPRODUCT" 
(CategoryID in INTEGER,
 ProductName in VARCHAR,
 ProductDescription in VARCHAR,
 Price in number,
 Thumbnail in VARCHAR,
 Image iN VARCHAR,
 PromoFront in integer,
 PromoDept in integer)
AS
-- Declare a variable to hold the generated product ID

v_ProductID integer;
-- Create the new product entry
BEGIN
select byone_seq.nextval into v_productid from dual;

INSERT INTO Product 
    (productid,
     Name, 
     Description, 
     Price, 
     Thumbnail, 
     Image,
     PromoFront, 
     PromoDept)
VALUES 
    (v_productid,
    ProductName, 
     ProductDescription, 
     Price, 
     Thumbnail, 
     Image,
     PromoFront, 
     PromoDept);
-- Save the generated product ID to a variable

-- Associate the product with a category
INSERT INTO ProductCategory (ProductID, CategoryID)
VALUES (v_ProductID, CategoryID);

END CatalogCreateProduct;

/
--------------------------------------------------------
--  DDL for Procedure CATALOGDELETECATEGORY
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "COMP214F15_005_P_13"."CATALOGDELETECATEGORY" 
(v_CategoryID in integer)
AS
BEGIN
DELETE FROM Category
WHERE CategoryID = v_CategoryID;
END CatalogDeleteCategory;

/
--------------------------------------------------------
--  DDL for Procedure CATALOGDELETEDEPARTMENT
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "COMP214F15_005_P_13"."CATALOGDELETEDEPARTMENT" 
(v_DepartmentID in department.departmentid%type)

AS
BEGIN
DELETE From Department WHERE DepartmentID = v_DepartmentID;
end CatalogDeleteDepartment;

/
--------------------------------------------------------
--  DDL for Procedure CATALOGDELETEPRODUCT
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "COMP214F15_005_P_13"."CATALOGDELETEPRODUCT" 
(v_ProductID in INTeger)
AS
begin
DELETE FROM ProductCategory WHERE ProductID=v_ProductID;
DELETE FROM Product where ProductID=v_ProductID;
end;

/
--------------------------------------------------------
--  DDL for Procedure CATALOGGETALLPRODSINCATEGORY
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "COMP214F15_005_P_13"."CATALOGGETALLPRODSINCATEGORY" 
(v_CategoryID in INTeger,
all_out out sys_refcursor)
AS
BEGIN
open all_out for 
SELECT Product.ProductID, Name, Description, Price, Thumbnail, 
       Image, PromoDept, PromoFront
FROM Product INNER JOIN ProductCategory
  ON Product.ProductID = ProductCategory.ProductID
WHERE ProductCategory.CategoryID = v_CategoryID;

END CatalogGetAllProdsInCategory;

/
--------------------------------------------------------
--  DDL for Procedure CATALOGGETCARTRECOMMENDATIONS
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "COMP214F15_005_P_13"."CATALOGGETCARTRECOMMENDATIONS" 
(v_CartID in CHAR,
 DescriptionLength in INTeger,
 all_out out sys_refcursor)
AS
begin
--- Returns the product recommendations
open all_out for SELECT ProductID,
       Name,
       CASE WHEN LENgth(Description) <= DescriptionLength THEN Description 
            ELSE SUBSTR(Description, 1, DescriptionLength) || '...' END 
       AS Description
FROM Product
WHERE ProductID IN
   (
   -- Returns the products that exist in a list of orders
   SELECT ProductID
   FROM OrderDetail
   WHERE OrderID IN
      (
      -- Returns the orders that contain certain products
      SELECT DISTINCT OrderID 
      FROM OrderDetail 
      WHERE ProductID IN
         (
         -- Returns the products in the specified shopping cart
         SELECT ProductID 
         FROM ShoppingCart
         WHERE CartID = v_CartID
         )
      )
   -- Must not include products that already exist in the visitor's cart
   AND ProductID NOT IN
      (
      -- Returns the products in the specified shopping cart
      SELECT ProductID 
      FROM ShoppingCart
      WHERE CartID = v_CartID
      )
   -- Group the ProductID so we can calculate the rank
   GROUP BY ProductID);
   -- Order descending by rank
   --ORDER BY count(ProductID) desc);

end;

/
--------------------------------------------------------
--  DDL for Procedure CATALOGGETCATEGORIESWITHPROD
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "COMP214F15_005_P_13"."CATALOGGETCATEGORIESWITHPROD" 
(v_ProductID in integer,
all_out out sys_refcursor)
AS
BEGIN
open all_out for 
SELECT Category.CategoryID, Name
FROM Category INNER JOIN ProductCategory
ON Category.CategoryID = ProductCategory.CategoryID
WHERE ProductCategory.ProductID = v_ProductID;
end;

/
--------------------------------------------------------
--  DDL for Procedure CATALOGGETCATEGORYDETAILS
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "COMP214F15_005_P_13"."CATALOGGETCATEGORYDETAILS" 
(Cat_ID IN number, cat_out out sys_refcursor)
AS
BEGIN
open cat_out for 
SELECT DepartmentID, Name, Description
FROM Category
WHERE CategoryID = Cat_ID;
END cataloggetcategorydetails;

/
--------------------------------------------------------
--  DDL for Procedure CATALOGGETCATSWITHOUTPROD
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "COMP214F15_005_P_13"."CATALOGGETCATSWITHOUTPROD" 
(v_ProductID in integer,
all_out out sys_refcursor)
AS
BEGIN
open all_out for 
SELECT CategoryID, Name
FROM Category
WHERE CategoryID NOT IN
   (SELECT Category.CategoryID
    FROM Category INNER JOIN ProductCategory
    ON Category.CategoryID = ProductCategory.CategoryID
    WHERE ProductCategory.ProductID = v_ProductID);
end;

/
--------------------------------------------------------
--  DDL for Procedure CATALOGGETDEPARTMENTDETAILS
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "COMP214F15_005_P_13"."CATALOGGETDEPARTMENTDETAILS" 
(dept_id in integer, all_cats out sys_refcursor)
AS

BEGIN
open all_cats for SELECT Name, Description
FROM Department
WHERE DepartmentID = dept_id;
end cataloggetdepartmentdetails;

/
--------------------------------------------------------
--  DDL for Procedure CATALOGGETDEPARTMENTS
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "COMP214F15_005_P_13"."CATALOGGETDEPARTMENTS" (all_dept out sys_refcursor)
as

begin
open all_dept for 
select department.departmentid, department.name, department.description from department;


end cataloggetdepartments;

/
--------------------------------------------------------
--  DDL for Procedure CATALOGGETPRODATTRIVALUES
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "COMP214F15_005_P_13"."CATALOGGETPRODATTRIVALUES" 
(ProductId in INTeger,
prod_out out sys_refcursor)
AS
BEGIN
open prod_out for SELECT a.Name AS AttributeName,
       av.AttributeValueID, 
       av.Value AS AttributeValue
FROM AttributeValue av
INNER JOIN attribute a ON av.AttributeID = a.AttributeID
WHERE av.AttributeValueID IN
  (SELECT AttributeValueID
   FROM ProductAttributeValue
   WHERE ProductID = ProductID)
ORDER BY a.Name;

end CatalogGetProdAttriValues;

/
--------------------------------------------------------
--  DDL for Procedure CATALOGGETPRODUCTDETAILS
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "COMP214F15_005_P_13"."CATALOGGETPRODUCTDETAILS" 
(Prod_ID IN Integer, prod_out out sys_refcursor)
AS
BEGIN
open prod_out for 
SELECT Name, Description, Price, Thumbnail, Image, PromoFront, PromoDept
FROM Product
WHERE ProductID = Prod_ID;
END cataloggetproductdetails;

/
--------------------------------------------------------
--  DDL for Procedure CATALOGGETPRODUCTRECOMMEND
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "COMP214F15_005_P_13"."CATALOGGETPRODUCTRECOMMEND" 
(v_ProdiD in INTeger,
DescriptionLength in INTeger,
all_out out sys_refcursor)
AS
begin
open all_out for 
SELECT ProductID,
Name,
CASE WHEN LENgth(Description) <= DescriptionLength THEN Description
ELSE SUBSTR(Description, 1, DescriptionLength) || '...' END
AS Description
FROM Product
WHERE ProductID IN
(
SELECT od2.ProductID
FROM OrderDetail od1
JOIN OrderDetail od2 ON od1.OrderID = od2.OrderID
WHERE od1.ProductID = v_ProdID AND od2.ProductID != v_ProdID and rownum < 6
GROUP BY od2.ProductID);

end;

/
--------------------------------------------------------
--  DDL for Procedure CATALOGGETPRODUCTSINCATEGORY
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "COMP214F15_005_P_13"."CATALOGGETPRODUCTSINCATEGORY" 
(v_CategoryID in INTeger,
DescriptionLength in INTeger,
PageNumber in INTeger,
ProductsPerPage in INTeger,
HowManyProducts out integer,
all_out out sys_refcursor)

AS

-- declare a new TABLE variable

cursor prod_out is SELECT ROWNUM, Product.ProductID, Name,
       CASE WHEN LENgth(Description) < DescriptionLength THEN Description 
            ELSE SUBSTR(Description, 1, DescriptionLength) || '...' END 
       AS Description, Price, Thumbnail, Image, PromoFront, PromoDept 
FROM Product INNER JOIN ProductCategory
  ON Product.ProductID = ProductCategory.ProductID
WHERE ProductCategory.CategoryID = v_CategoryID;

v_prod prod_out%rowtype;

BEGIN

open prod_out;
loop
fetch prod_out into v_prod; 

exit when prod_out%NOTFOUND;
end loop;
-- return the total number of products using an OUTPUT variable
HowManyProducts := prod_out%ROWCOUNT;
close prod_out;

-- populate the table variable with the complete list of products
-- return the total number of products using an OUTPUT variable
open all_out for SELECT a2.ProductID, a2.Name, a2.Description, a2.Price, a2.Thumbnail,
       a2.Image, a2.PromoFront, a2.PromoDept from (SELECT ROWNUM rn, a1.ProductID, a1.Name,
       CASE WHEN LENgth(a1.Description) <= DescriptionLength THEN a1.Description 
            ELSE SUBSTR(a1.Description, 1, DescriptionLength) || '...' END 
       AS Description, a1.Price, a1.Thumbnail, a1.Image, a1.PromoFront, a1.PromoDept 
FROM product a1 INNER JOIN COMP214F15_005_P_13.PRODUCTCATEGORY
  ON a1.ProductID = COMP214F15_005_P_13.ProductCategory.ProductID
WHERE ProductCategory.CategoryID = v_CategoryID) 
a2 WHERE rn between ((PageNumber - 1) * ProductsPerPage)
  AND (PageNumber * ProductsPerPage);
  
END CatalogGetProductsInCategory;

/
--------------------------------------------------------
--  DDL for Procedure CATALOGGETPRODUCTSONCATPROMO
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "COMP214F15_005_P_13"."CATALOGGETPRODUCTSONCATPROMO" 
(DescriptionLength IN INTEGER,
PageNumber IN INTEGER,
ProductsPerPage IN INTEGER,
HowManyProducts OUT INTEGER,
all_out out sys_refcursor
)

AS

-- declare a new TABLE variable

cursor prod_out is SELECT ROWNUM, ProductID, Name,
CASE WHEN LENGTH(Description) < DescriptionLength
       THEN Description 
            ELSE SUBSTR(Description, 1, DescriptionLength) || '...' END 
       AS 
       Description, Price, Thumbnail, Image, PromoFront, PromoDept
FROM Product
WHERE PromoFront = 1;


v_prod prod_out%rowtype;

--DescriptionLength INT;
--PageNumber INT;
--ProductsPerPage INT;



BEGIN
-- populate the table variable with the complete list of products
open prod_out;
loop
fetch prod_out into v_prod; 
exit when prod_out%NOTFOUND;
end loop;
-- return the total number of products using an OUTPUT variable
HowManyProducts := prod_out%ROWCOUNT;
close prod_out;
-- extract the requested page of products
open all_out for SELECT  a2.productid, a2.name, a2.description, a2.price, a2.thumbnail, a2.image, a2.promofront, 
a2.promodept from (

select ROWNUM rn, ProductID, Name,
CASE WHEN LENGTH(Description) < DescriptionLength
       THEN Description 
            ELSE SUBSTR(Description, 1, DescriptionLength ) || '...' END 
       AS 
       Description, Price, Thumbnail, Image, PromoFront, PromoDept
FROM (

SELECT DISTINCT a2.ProductID, a2.Name,
       CASE WHEN LENGTH(a2.Description) < DescriptionLength 
            THEN a2.Description 
            ELSE SUBSTR(a2.Description, 1, DescriptionLength) || '...' END 
       AS Description, a2.Price, a2.Thumbnail, a2.Image, a2.PromoFront, a2.PromoDept 
  FROM Product a2 INNER JOIN ProductCategory
                      ON a2.ProductID = ProductCategory.ProductID
              INNER JOIN Category
                      ON ProductCategory.CategoryID = Category.CategoryID
  WHERE a2.PromoDept = 1 )
   
  ) a2  where rn between ((PageNumber - 1) * ProductsPerPage)
  AND (PageNumber * ProductsPerPage);

end CatalogGetProductsOnCatPromo;

/
--------------------------------------------------------
--  DDL for Procedure CATALOGGETPRODUCTSONDEPTPROMO
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "COMP214F15_005_P_13"."CATALOGGETPRODUCTSONDEPTPROMO" 
(v_DepartmentId IN INTEGER,
DescriptionLength IN INTEGER,
PageNumber IN INTEGER,
ProductsPerPage IN INTEGER,
HowManyProducts OUT INTEGER,
all_out out sys_refcursor
)

AS

-- declare a new TABLE variable

cursor prod_out is SELECT ROWNUM, ProductID, Name,
CASE WHEN LENGTH(Description) < DescriptionLength
       THEN Description 
            ELSE SUBSTR(Description, 1, DescriptionLength) || '...' END 
       AS 
       Description, Price, Thumbnail, Image, PromoFront, PromoDept
FROM Product
WHERE PromoFront = 1;


v_prod prod_out%rowtype;

--DescriptionLength INT;
--PageNumber INT;
--ProductsPerPage INT;



BEGIN
-- populate the table variable with the complete list of products
open prod_out;
loop
fetch prod_out into v_prod; 
exit when prod_out%NOTFOUND;
end loop;
-- return the total number of products using an OUTPUT variable
HowManyProducts := prod_out%ROWCOUNT;
close prod_out;
-- extract the requested page of products
open all_out for SELECT a2.productid, a2.name, a2.description, a2.price, a2.thumbnail, a2.image, a2.promofront, 
a2.promodept from (

select ROWNUM rn, ProductID, Name,
CASE WHEN LENGTH(Description) < DescriptionLength
       THEN Description 
            ELSE SUBSTR(Description, 1, DescriptionLength ) || '...' END 
       AS 
       Description, Price, Thumbnail, Image, PromoFront, PromoDept
FROM (

SELECT DISTINCT a2.ProductID, a2.Name,
       CASE WHEN LENGTH(a2.Description) < DescriptionLength 
            THEN a2.Description 
            ELSE SUBSTR(a2.Description, 1, DescriptionLength) || '...' END 
       AS Description, a2.Price, a2.Thumbnail, a2.Image, a2.PromoFront, a2.PromoDept 
  FROM Product a2 INNER JOIN ProductCategory
                      ON a2.ProductID = ProductCategory.ProductID
              INNER JOIN Category
                      ON ProductCategory.CategoryID = Category.CategoryID
  WHERE a2.PromoDept = 1
   AND Category.DepartmentID = v_DepartmentId)
   
   
  ) a2 where rn between ((PageNumber - 1) * ProductsPerPage) AND (PageNumber * ProductsPerPage);

end CatalogGetProductsOnDeptPromo;

/
--------------------------------------------------------
--  DDL for Procedure CATALOGGETPRODUCTSONFRONTPROMO
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "COMP214F15_005_P_13"."CATALOGGETPRODUCTSONFRONTPROMO" 
(DescriptionLength IN INTEGER,
PageNumber IN INTEGER,
ProductsPerPage IN INTEGER,
HowManyProducts OUT INTEGER,
all_out out sys_refcursor
)

AS

-- declare a new TABLE variable

cursor prod_out is SELECT ROWNUM, ProductID, Name,
CASE WHEN LENGTH(Description) < DescriptionLength
       THEN Description 
            ELSE SUBSTR(Description, 1, DescriptionLength) || '...' END 
       AS 
       Description, Price, Thumbnail, Image, PromoFront, PromoDept
FROM Product
WHERE PromoFront = 1;


v_prod prod_out%rowtype;

--DescriptionLength INT;
--PageNumber INT;
--ProductsPerPage INT;



BEGIN
-- populate the table variable with the complete list of products
open prod_out;
loop
fetch prod_out into v_prod; 
exit when prod_out%NOTFOUND;
end loop;
-- return the total number of products using an OUTPUT variable
HowManyProducts := prod_out%ROWCOUNT;
close prod_out;
-- extract the requested page of products
open all_out for SELECT a2.productid, a2.name, a2.description, a2.price, a2.thumbnail, a2.image, a2.promofront, 
a2.promodept from (select ROWNUM rn, a1.ProductID, a1.Name,
CASE WHEN LENGTH(a1.Description) < DescriptionLength
       THEN a1.Description 
            ELSE SUBSTR(a1.Description, 1, DescriptionLength) || '...' END 
       AS 
       Description, a1.Price, a1.Thumbnail, a1.Image, a1.PromoFront, a1.PromoDept
FROM Product a1
WHERE a1.PromoFront = 1) a2 where rn between ((PageNumber - 1) * ProductsPerPage) 
  AND (PageNumber * ProductsPerPage);


end CatalogGetProductsOnFrontPromo;

/
--------------------------------------------------------
--  DDL for Procedure CATALOGMOVEPRODUCTTOCATEGORY
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "COMP214F15_005_P_13"."CATALOGMOVEPRODUCTTOCATEGORY" 
(v_ProductID in integer, v_OldCategoryID in integer, v_NewCategoryID in integer)
AS
begin
UPDATE ProductCategory
SET CategoryID = v_NewCategoryID
WHERE CategoryID = v_OldCategoryID
  AND ProductID = v_ProductID;
end;

/
--------------------------------------------------------
--  DDL for Procedure CATALOGREMOVEPRODUCTFROMCAT
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "COMP214F15_005_P_13"."CATALOGREMOVEPRODUCTFROMCAT" 
(v_ProductID in integer, v_CategoryID in integer)
AS
begin
DELETE FROM ProductCategory
WHERE CategoryID = v_CategoryID AND ProductID = v_ProductID;
end;

/
--------------------------------------------------------
--  DDL for Procedure CATALOGUPDATECATEGORY
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "COMP214F15_005_P_13"."CATALOGUPDATECATEGORY" 
(v_CategoryID in integer,
CategoryName in varchar,
CategoryDescription varchar)
AS
BEGIN
UPDATE Category
SET Name = CategoryName, Description = CategoryDescription
WHERE CategoryID = v_CategoryID;
END CatalogUpdateCategory;

/
--------------------------------------------------------
--  DDL for Procedure CATALOGUPDATEDEPARTMENT
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "COMP214F15_005_P_13"."CATALOGUPDATEDEPARTMENT" 
(v_DepartmentID in integer,
DepartmentName in varchar,
DepartmentDescription in varchar)
AS
BEGIN
UPDATE Department
SET Name = DepartmentName, Description = DepartmentDescription
WHERE DepartmentID = v_DepartmentID;
END CatalogUpdateDepartment;

/
--------------------------------------------------------
--  DDL for Procedure CATALOGUPDATEPRODUCT
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "COMP214F15_005_P_13"."CATALOGUPDATEPRODUCT" 
(v_ProductID in INTeger,
 v_ProductName in VARCHAR,
 v_ProductDescription in VARCHAR,
 v_Price in number,
 v_Thumbnail in VARCHAR,
 v_Image in VARCHAR,
 v_PromoFront in integer,
 v_PromoDept in integer)
AS
BEGIN
UPDATE Product
SET Name = v_ProductName,
    Description = v_ProductDescription,
    Price = v_Price,
    Thumbnail = v_Thumbnail,
    Image = v_Image,
    PromoFront = v_PromoFront,
    PromoDept = v_PromoDept
WHERE ProductID = v_ProductID;
END;

/
--------------------------------------------------------
--  DDL for Procedure CREATEORDER
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "COMP214F15_005_P_13"."CREATEORDER" 
(v_CartID char,
v_orderid out integer)
AS

/* Insert a new record INTo Orders */

begin

select byone_seq.nextval into v_OrderID from dual;

INSERT INTO Orders VALUES (v_OrderID, sysdate, null, 0, 0, 0, null, null, null, null);
 /* Save the new Order ID */

/* Add the order details to OrderDetail */
INSERT INTO OrderDetail 
     (OrderID, ProductID, ProductName, Quantity, UnitCost)
SELECT 
     v_OrderID, Product.ProductID, Product.Name, 
     ShoppingCart.Quantity, Product.Price
FROM Product JOIN ShoppingCart
ON Product.ProductID = ShoppingCart.ProductID
WHERE ShoppingCart.CartID = v_CartID;
/* Clear the shopping cart */
DELETE FROM ShoppingCart
WHERE CartID = v_CartID;
/* Return the Order ID */
end;

/
--------------------------------------------------------
--  DDL for Procedure GETCATEGORIESINDEPARTMENT
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "COMP214F15_005_P_13"."GETCATEGORIESINDEPARTMENT" 
(Dept_ID IN integer, deptcat_out out sys_refcursor)
AS
BEGIN
open deptcat_out for 
SELECT CategoryID, Name, Description
FROM Category
WHERE DepartmentID = Dept_ID;
END GetCategoriesInDepartment;

/
--------------------------------------------------------
--  DDL for Procedure ORDERGETDETAILS
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "COMP214F15_005_P_13"."ORDERGETDETAILS" 
(v_OrderID in INTeger,
all_out out sys_refcursor)
AS
begin 
open all_out for 
SELECT Orders.OrderID, 
       ProductID, 
       ProductName, 
       Quantity, 
       UnitCost, 
       Subtotal
FROM OrderDetail JOIN Orders
ON Orders.OrderID = OrderDetail.OrderID
WHERE Orders.OrderID = v_OrderID;
end;

/
--------------------------------------------------------
--  DDL for Procedure ORDERGETINFO
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "COMP214F15_005_P_13"."ORDERGETINFO" 
(v_OrderID in INTeger,
all_out out sys_refcursor)
AS
begin
open all_out for
SELECT OrderID, 
      (SELECT nvl(SUM(Subtotal), 0) FROM OrderDetail WHERE OrderID = v_OrderID)        
       AS TotalAmount, 
       DateCreated, 
       DateShipped, 
       Verified, 
       Completed, 
       Canceled, 
       Comments, 
       CustomerName, 
       ShippingAddress, 
       CustomerEmail
FROM Orders
WHERE OrderID = v_OrderID;
end;

/
--------------------------------------------------------
--  DDL for Procedure ORDERMARKCANCELED
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "COMP214F15_005_P_13"."ORDERMARKCANCELED" 
(v_OrderID IN integer)
AS
begin
UPDATE Orders
SET Canceled = 1
WHERE OrderID = v_OrderID;
end;

/
--------------------------------------------------------
--  DDL for Procedure ORDERMARKCOMPLETED
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "COMP214F15_005_P_13"."ORDERMARKCOMPLETED" 
(v_OrderID INT)
AS
begin
UPDATE Orders
SET Completed = 1,
    DateShipped = sysdate
WHERE OrderID = v_OrderID;
end;

/
--------------------------------------------------------
--  DDL for Procedure ORDERMARKVERIFIED
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "COMP214F15_005_P_13"."ORDERMARKVERIFIED" 
(v_OrderID IN integer)
AS
begin
UPDATE Orders
SET Verified = 1
WHERE OrderID = v_OrderID;
end;

/
--------------------------------------------------------
--  DDL for Procedure ORDERSGETBYDATE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "COMP214F15_005_P_13"."ORDERSGETBYDATE" 
(StartDate in DATE,
 EndDate in DATE,
 all_out out sys_refcursor)
AS
begin
open all_out for
SELECT OrderID, DateCreated, DateShipped, 
       Verified, Completed, Canceled, CustomerName
FROM Orders
WHERE DateCreated BETWEEN StartDate AND EndDate
ORDER BY DateCreated DESC;
end;

/
--------------------------------------------------------
--  DDL for Procedure ORDERSGETBYRECENT
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "COMP214F15_005_P_13"."ORDERSGETBYRECENT" 
(all_out out sys_refcursor)
AS
-- Set the number of rows to be returned
begin
-- Get list of orders
open all_out for 
SELECT OrderID, DateCreated, DateShipped, 
       Verified, Completed, Canceled, CustomerName
FROM Orders
ORDER BY DateCreated DESC;
-- Reset rowcount value
end;

/
--------------------------------------------------------
--  DDL for Procedure ORDERSGETUNVERIFIEDUNCANCELED
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "COMP214F15_005_P_13"."ORDERSGETUNVERIFIEDUNCANCELED" 
(all_out out sys_refcursor)
AS
begin
open all_out for 
SELECT OrderID, DateCreated, DateShipped, 
       Verified, Completed, Canceled, CustomerName
FROM Orders
WHERE Verified=0 AND Canceled=0
ORDER BY DateCreated DESC;
end;

/
--------------------------------------------------------
--  DDL for Procedure ORDERSGETVERIFIEDUNCOMPLETED
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "COMP214F15_005_P_13"."ORDERSGETVERIFIEDUNCOMPLETED" 
(all_out out sys_refcursor)
AS
begin
open all_out for
SELECT OrderID, DateCreated, DateShipped, 
       Verified, Completed, Canceled, CustomerName
FROM Orders
WHERE Verified=1 AND Completed=0
ORDER BY DateCreated DESC;
end;

/
--------------------------------------------------------
--  DDL for Procedure ORDERUPDATE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "COMP214F15_005_P_13"."ORDERUPDATE" 
(v_OrderID in INTeger,
 v_DateCreated in DATE,
 v_DateShipped in DATE,
 v_Verified in integer,
 v_Completed in integer,
v_Canceled in integer,
 v_Comments VARCHAR,
 v_CustomerName VARCHAR,
 v_ShippingAddress VARCHAR,
 v_CustomerEmail VARCHAR)
AS
begin
UPDATE Orders
SET DateCreated=v_DateCreated,
    DateShipped=v_DateShipped,
    Verified=v_Verified,
    Completed=v_Completed,
    Canceled=v_Canceled,
    Comments=v_Comments,
    CustomerName=v_CustomerName,
    ShippingAddress=v_ShippingAddress,
    CustomerEmail=v_CustomerEmail
WHERE OrderID = v_OrderID;
end;

/
--------------------------------------------------------
--  DDL for Procedure RANDOMPROMOTIONS
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "COMP214F15_005_P_13"."RANDOMPROMOTIONS" AS 
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
end RANDOMPROMOTIONS;

/
--------------------------------------------------------
--  DDL for Procedure SEARCHCATALOG
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "COMP214F15_005_P_13"."SEARCHCATALOG" 
(DescriptionLength INT,
 AllWords in integer,
 PageNumber in INTEGER,
 ProductsPerPage in integer,
 HowManyResults out INTeger,
MY_STRING in varchar2,
all_out out sys_refcursor)
AS

/* @NecessaryMatches needs to be 1 for any-word searches and
   the number of words for all-words searches */
I INTEGER;
TYPE T_ARRAY_OF_VARCHAR IS TABLE OF VARCHAR2(2000) INDEX BY BINARY_INTEGER;
MY_ARRAY T_ARRAY_OF_VARCHAR;
bswitch varchar2(10);
word varchar2(1000);
searchstring varchar2(1000);
searchstring1 varchar2(1000);
prod_out sys_refcursor;
v_prod product%rowtype;
Begin
execute immediate 'alter session set NLS_COMP=LINGUISTIC'; 
execute immediate 'alter session set NLS_SORT=BINARY_CI'; 

IF AllWords = 1 then 
 bswitch := ' and ';
 else
 bswitch := ' or ';
end if;

/* Create the table variable that will contain the search results */
-- Save matches for the first word

-- return the total number of results using an OUTPUT variable
FOR CURRENT_ROW IN (
    with test as    
      (select MY_STRING from dual)
      select regexp_substr(MY_STRING, '[^ ]+', 1, rownum) SPLIT
      from test
    connect by level <= length (regexp_replace(MY_STRING, '[^ ]+'))  + 1)
  LOOP

 word := replace(CURRENT_ROW.SPLIT, CURrent_row.split, '(name like ''%' || current_row.split || '%'' or description like ''%' || current_row.split || '%'')');
  searchstring := searchstring || bswitch || word;
   --dbms_output.put_line(word);
   -- MY_ARRAY(MY_ARRAY.COUNT) := CURRENT_ROW.SPLIT;
  END LOOP;
if allwords = 1 then
  searchstring := substr(searchstring, 6);
  else
 searchstring := substr(searchstring, 5);
 end if;
--searchstring := 'SELECT ProductID, Name, CASE WHEN LENgth(Description) <= ' || DescriptionLength || ' THEN Description ELSE SUBSTR(Description, 1, ' || DescriptionLength || ') ''...'' END AS Description, Price, Thumbnail, Image, PromoFront, PromoDept FROM Product where ' || searchstring;
--searchstring1 := 'SELECT rownum, ProductID, Name,Description, Price, Thumbnail, Image, PromoFront, PromoDept FROM Product where ' || searchstring || ' and (rownum between ((' || PageNumber || '- 1) * ' || ProductsPerPage || ') AND (' || PageNumber || ' * ' || ProductsPerPage || '))';
searchstring := 'SELECT ProductID, Name,Description, Price, Thumbnail, Image, PromoFront, PromoDept FROM Product where ' || searchstring;
searchstring1 := 'select * from (select a.*, rownum rnum from (' || searchstring || ') a where rownum <= ' || PageNumber * ProductsPerPage || ' ) where rnum >= ' || (PageNumber - 1) * ProductsPerPage;
-- populate the table variable with the complete list of products
open prod_out for searchstring;
  LOOP
    FETCH prod_out
    INTO  v_prod;

    EXIT WHEN prod_out%NOTFOUND;
  
   
  END LOOP; 
howmanyresults := prod_out%ROWCOUNT;
 close prod_out;

 open all_out for searchstring1;
end;

/
--------------------------------------------------------
--  DDL for Procedure SHOPPINGCARTADDITEM
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "COMP214F15_005_P_13"."SHOPPINGCARTADDITEM" 
(v_CartID in varchar2,
 v_ProductID in integer)
AS
cnt integer;
cnt2 integer;
begin

        SELECT Count(*) into cnt
         FROM ShoppingCart
         WHERE ProductID = v_ProductID AND CartID = v_CartID;
         
         
if (cnt > 0) then
    UPDATE ShoppingCart
    SET Quantity = Quantity + 1
    WHERE ProductID = v_ProductID AND CartID = v_CartID;
    commit;
    
    else

    SELECT count(*) into cnt2 FROM Product WHERE ProductID=v_ProductID;

   if (cnt2 > 0) then
        INSERT INTO ShoppingCart (CartID, ProductID, Attributes, Quantity, DateAdded)
        VALUES (v_cartid, v_ProductID, null, 1, sysDATe);
        commit;
   end if;     
  end if;

end;

/
--------------------------------------------------------
--  DDL for Procedure SHOPPINGCARTCOUNTOLDCARTS
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "COMP214F15_005_P_13"."SHOPPINGCARTCOUNTOLDCARTS" 
(Days in integer,
cartcount out integer)
AS

begin
 
SELECT COUNT(CartID) into cartcount
FROM ShoppingCart
WHERE CartID IN
(SELECT CartID
FROM ShoppingCart
GROUP BY CartID
HAVING floor(sysdate - DateAdded) >= Days);

end;

/
--------------------------------------------------------
--  DDL for Procedure SHOPPINGCARTDELETEOLDCARTS
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "COMP214F15_005_P_13"."SHOPPINGCARTDELETEOLDCARTS" 
(Days in int)
AS
begin
DELETE FROM ShoppingCart
WHERE CartID IN
(SELECT CartID
FROM ShoppingCart
GROUP BY CartID
HAVING floor(sysdate - dateAdded) >= Days);
end;

/
--------------------------------------------------------
--  DDL for Procedure SHOPPINGCARTGETITEMS
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "COMP214F15_005_P_13"."SHOPPINGCARTGETITEMS" 
(v_CartID in char,
all_out out sys_refcursor)
AS
begin
open all_out for 
SELECT Product.ProductID, Product.Name, ShoppingCart.Attributes, Product.Price, ShoppingCart.Quantity, Product.Price * ShoppingCart.Quantity AS Subtotal
FROM ShoppingCart INNER JOIN Product
ON ShoppingCart.ProductID = Product.ProductID
WHERE ShoppingCart.CartID = v_CartID;
end;

/
--------------------------------------------------------
--  DDL for Procedure SHOPPINGCARTGETTOTALAMOUNT
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "COMP214F15_005_P_13"."SHOPPINGCARTGETTOTALAMOUNT" 
(v_CartID in char,
all_out out decimal)
AS

begin

SELECT nvl(SUM(Product.Price * ShoppingCart.Quantity), 0) into all_out
FROM ShoppingCart INNER JOIN Product
ON ShoppingCart.ProductID = Product.ProductID
WHERE ShoppingCart.CartID = v_CartID;

end;

/
--------------------------------------------------------
--  DDL for Procedure SHOPPINGCARTREMOVEITEM
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "COMP214F15_005_P_13"."SHOPPINGCARTREMOVEITEM" 
(v_CartID in char,
 v_ProductID in integer)
AS
begin
DELETE FROM ShoppingCart
WHERE CartID = v_CartID and ProductID = v_ProductID;
end;

/
--------------------------------------------------------
--  DDL for Procedure SHOPPINGCARTUPDATEITEM
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "COMP214F15_005_P_13"."SHOPPINGCARTUPDATEITEM" 
(v_CartID char,
 v_ProductID in int,
 v_Quantity in int)
AS
begin

IF v_Quantity <= 0 then
  ShoppingCartRemoveItem(v_CartID, v_ProductID);
ELSE
  UPDATE ShoppingCart
  SET Quantity = v_Quantity, DateAdded = sysDATE()
  WHERE ProductID = v_ProductID AND CartID = v_CartID;
  end if;
end;

/
