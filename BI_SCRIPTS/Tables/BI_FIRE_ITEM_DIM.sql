ALTER TABLE BIADMIN.BI_FIRE_ITEM_DIM
 DROP PRIMARY KEY CASCADE;

DROP TABLE BIADMIN.BI_FIRE_ITEM_DIM CASCADE CONSTRAINTS;

CREATE TABLE BIADMIN.BI_FIRE_ITEM_DIM
(
  POLICY_ID          NUMBER(12)                 NOT NULL,
  ITEM_NO            NUMBER(9)                  NOT NULL,
  BLOCK_ID           NUMBER(12)                 NOT NULL,
  DISTRICT_NO        VARCHAR2(6 BYTE)           NOT NULL,
  BLOCK_NO           VARCHAR2(6 BYTE)           NOT NULL,
  BLOCK_DESC         VARCHAR2(40 BYTE)          NOT NULL,
  PROVINCE_CD        VARCHAR2(6 BYTE)           NOT NULL,
  PROVINCE_DESC      VARCHAR2(25 BYTE)          NOT NULL,
  REGION_CD          NUMBER(2)                  NOT NULL,
  REGION_DESC        VARCHAR2(40 BYTE)          NOT NULL,
  CITY_CD            VARCHAR2(6 BYTE)           NOT NULL,
  CITY               VARCHAR2(40 BYTE)          NOT NULL,
  EQ_ZONE            VARCHAR2(2 BYTE),
  EQ_DESC            VARCHAR2(500 BYTE),
  TARF_CD            VARCHAR2(12 BYTE),
  TARF_DESC          VARCHAR2(30 BYTE),
  FR_ITEM_TYPE       VARCHAR2(3 BYTE),
  FR_ITM_TP_DS       VARCHAR2(30 BYTE),
  LOC_RISK1          VARCHAR2(50 BYTE),
  LOC_RISK2          VARCHAR2(50 BYTE),
  LOC_RISK3          VARCHAR2(50 BYTE),
  TARIFF_ZONE        VARCHAR2(2 BYTE),
  TARIFF_ZONE_DESC   VARCHAR2(500 BYTE),
  TYPHOON_ZONE       VARCHAR2(2 BYTE),
  TYPHOON_ZONE_DESC  VARCHAR2(500 BYTE),
  CONSTRUCTION_CD    VARCHAR2(2 BYTE),
  CONSTRUCTION_DESC  VARCHAR2(2000 BYTE),
  OCCUPANCY_CD       VARCHAR2(3 BYTE),
  OCCUPANCY_DESC     VARCHAR2(2000 BYTE),
  FLOOD_ZONE         VARCHAR2(2 BYTE),
  FLOOD_ZONE_DESC    VARCHAR2(500 BYTE)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


--  There is no statement for index BIADMIN.SYS_C0012814.
--  The object is created when the parent object is created.

ALTER TABLE BIADMIN.BI_FIRE_ITEM_DIM ADD (
  PRIMARY KEY
  (POLICY_ID, ITEM_NO)
  USING INDEX
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   2
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                PCTINCREASE      0
                BUFFER_POOL      DEFAULT
               )
  ENABLE VALIDATE);
