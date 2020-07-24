CREATE table "HACKERS" (
    "HACKER_ID"  NUMBER NOT NULL,
    "NAME"       VARCHAR2(40),
    constraint  "HACKERS_PK" primary key ("HACKER_ID")
)
/
CREATE table "SUBMISSIONS" (
    "SUBMISSION_ID" NUMBER(6,0) NOT NULL,
    "HACKER_ID"     NUMBER(6,0) NOT NULL,
    "CHALLENGE_ID"  NUMBER(6,0) NOT NULL,
    "SCORE"         NUMBER(3,0) NOT NULL,
    constraint  "SUBMISSIONS_PK" primary key ("SUBMISSION_ID")
)
/

