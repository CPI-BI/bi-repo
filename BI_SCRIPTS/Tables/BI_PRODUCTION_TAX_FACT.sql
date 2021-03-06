CREATE TABLE BIADMIN.BI_PRODUCTION_TAX_FACT
(
  POLICY_CODE            NUMBER(12),
  POLICY_NO              VARCHAR2(100 BYTE)     NOT NULL,
  LINE_CODE              NUMBER(12)             NOT NULL,
  BRANCH_CODE            NUMBER(12),
  AGENT_CODE             NUMBER(12),
  ASSURED_CODE           NUMBER(12),
  ISSUE_DATE             NUMBER(12),
  INCEPT_DATE            NUMBER(12),
  EXP_DATE               NUMBER(12),
  ACCT_ENT_DATE          NUMBER(12),
  SPOILED_ACCT_ENT_DATE  NUMBER(12),
  TSI                    NUMBER(16,2),
  MODAL_PREMIUM          NUMBER(16,2),
  ANNUAL_PREMIUM         NUMBER(16,2),
  EVAT                   NUMBER(12,2),
  LOCAL_GOV_TAX          NUMBER(12,2),
  DOC_STAMPS             NUMBER(12,2),
  FIRE_SERVICE_TAX       NUMBER(12,2),
  OTHER_CHARGES          NUMBER(12,2),
  COMMISSION_AMT         NUMBER(12,2),
  RET_PREM               NUMBER(12,2),
  FACUL_PREM             NUMBER(12,2),
  POL_FLAG               VARCHAR2(50 BYTE),
  SPEC_POL_FLAG          VARCHAR2(1 BYTE),
  LINE_CD                VARCHAR2(2 BYTE)       NOT NULL,
  ISS_CD                 VARCHAR2(2 BYTE),
  PREM_SEQ_NO            NUMBER(12),
  CURRENCY_RT            NUMBER(12,9),
  OFFICE_CODE            NUMBER(12),
  SUBLINE_CD             VARCHAR2(7 BYTE),
  POLICY_ID              NUMBER(12),
  BRANCH_NAME            VARCHAR2(500 BYTE),
  BOOKING_DATE           NUMBER(12),
  ENDORSEMENT_NO         VARCHAR2(100 BYTE),
  RENEW_NO               NUMBER(12),
  DIST_FLAG              VARCHAR2(50 BYTE),
  REC_TYPE               VARCHAR2(20 BYTE),
  WHOLDING_TAX           NUMBER,
  EFF_DATE               NUMBER,
  ENDT_SEQ_NO            NUMBER(6),
  POLICY_TYPE            VARCHAR2(300 BYTE),
  CRED_BRANCH_CODE       NUMBER(12),
  ENDT_TYPE              VARCHAR2(2 BYTE),
  REINSTATE_TAG          VARCHAR2(2 BYTE)
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


ALTER TABLE BIADMIN.BI_PRODUCTION_TAX_FACT ADD (
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
