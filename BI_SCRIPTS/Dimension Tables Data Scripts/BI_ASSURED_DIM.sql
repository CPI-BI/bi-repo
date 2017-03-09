ALTER TABLE BIADMIN.BI_ASSURED_DIM
 DROP PRIMARY KEY CASCADE;

DROP TABLE BIADMIN.BI_ASSURED_DIM CASCADE CONSTRAINTS;

CREATE TABLE BIADMIN.BI_ASSURED_DIM
(
  ASSURED_CODE       NUMBER(12),
  ASSURED_NAME       VARCHAR2(500 BYTE)         NOT NULL,
  ACTIVE_TAG         VARCHAR2(1 BYTE),
  BIRTH_DATE         DATE,
  CORPORATE_TAG      VARCHAR2(1 BYTE),
  ASSURED_GRP        VARCHAR2(100 BYTE),
  TRAN_DATE          DATE,
  DESIGNATION        VARCHAR2(5 BYTE),
  GSIS_NO            NUMBER(10),
  MAIL_ADDR1         VARCHAR2(50 BYTE),
  MAIL_ADDR2         VARCHAR2(50 BYTE),
  MAIL_ADDR3         VARCHAR2(50 BYTE),
  BILL_ADDR1         VARCHAR2(50 BYTE),
  BILL_ADDR2         VARCHAR2(50 BYTE),
  BILL_ADDR3         VARCHAR2(50 BYTE),
  CONTACT_PERSON     VARCHAR2(50 BYTE),
  PHONE_NO           VARCHAR2(40 BYTE),
  REFERENCE_NO       VARCHAR2(20 BYTE),
  INSTITUTIONAL_TAG  VARCHAR2(1 BYTE),
  FIRST_NAME         VARCHAR2(249 BYTE),
  LAST_NAME          VARCHAR2(249 BYTE),
  MIDDLE_INITIAL     VARCHAR2(2 BYTE),
  SUFFIX             VARCHAR2(5 BYTE),
  REMARKS            VARCHAR2(4000 BYTE),
  ASSD_NAME2         VARCHAR2(50 BYTE),
  ASSD_TIN           VARCHAR2(15 BYTE),
  CP_NO              VARCHAR2(40 BYTE),
  SUN_NO             VARCHAR2(40 BYTE),
  SMART_NO           VARCHAR2(40 BYTE),
  GLOBE_NO           VARCHAR2(40 BYTE),
  VAT_TAG            VARCHAR2(100 BYTE),
  NO_TIN_REASON      VARCHAR2(50 BYTE),
  EMAIL_ADDRESS      VARCHAR2(100 BYTE)
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


--  There is no statement for index BIADMIN.SYS_C0012815.
--  The object is created when the parent object is created.

ALTER TABLE BIADMIN.BI_ASSURED_DIM ADD (
  PRIMARY KEY
  (ASSURED_CODE)
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