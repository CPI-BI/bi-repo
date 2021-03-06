CREATE TABLE BIADMIN.BI_RENEWAL_FACT
(
  POLICY_CODE       NUMBER,
  POLICY_ID         NUMBER,
  POLICY_NO         VARCHAR2(30 BYTE),
  LINE_CODE         NUMBER(12),
  BRANCH_CODE       NUMBER(12),
  CRED_BRANCH_CODE  NUMBER(12),
  AGENT_CODE        NUMBER(12),
  ASSURED_CODE      NUMBER(12),
  EXP_DATE          NUMBER(12),
  PREM_AMT          NUMBER(16,5),
  NEW_POLICY_ID     NUMBER,
  PREM_RENEW_AMT    NUMBER(16,5),
  RENEWAL_TAG       VARCHAR2(10 BYTE),
  ITEM_NO           NUMBER,
  ITEM_TITLE        VARCHAR2(1000 BYTE),
  EXPIRY_TAG        VARCHAR2(10 BYTE),
  MAX_EXP_DATE      NUMBER(12)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
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


ALTER TABLE BIADMIN.BI_RENEWAL_FACT ADD (
  PRIMARY KEY
 (POLICY_CODE)
    USING INDEX 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   2
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                PCTINCREASE      0
               ));

