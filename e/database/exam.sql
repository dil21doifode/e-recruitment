
CREATE TABLE COM
(
  CNAME      VARCHAR2(255 BYTE),
  CADDRESS   VARCHAR2(255 BYTE),
  CPOST      VARCHAR2(255 BYTE),
  CCRITERIA  VARCHAR2(255 BYTE),
  CUSERNAME  VARCHAR2(255 BYTE),
  CEMAIL     VARCHAR2(255 BYTE),
  CCONTACT   VARCHAR2(255 BYTE),
  CCUTOFF    VARCHAR2(255 BYTE)
)
TABLESPACE SYSTEM
PCTUSED    40
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            MINEXTENTS       1
            MAXEXTENTS       2147483645
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCACHE
NOPARALLEL
MONITORING;


CREATE TABLE COPYOFEXAM
(
  EXAMID    VARCHAR2(255 BYTE),
  EXAMNAME  VARCHAR2(255 BYTE),
  CUTOFF    VARCHAR2(255 BYTE)
)
TABLESPACE SYSTEM
PCTUSED    40
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            MINEXTENTS       1
            MAXEXTENTS       2147483645
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCACHE
NOPARALLEL
MONITORING;


CREATE TABLE DETAILS
(
  USERNAME      VARCHAR2(255 BYTE),
  NAME          VARCHAR2(255 BYTE),
  GENDER        VARCHAR2(255 BYTE),
  DATEOFBIRTH   VARCHAR2(255 BYTE),
  COLLEGENAME   VARCHAR2(255 BYTE),
  COLLEGEPHONE  VARCHAR2(255 BYTE),
  COLLEGEEMAIL  VARCHAR2(255 BYTE),
  BRANCH        VARCHAR2(255 BYTE),
  MARK          VARCHAR2(255 BYTE),
  DEGREE        VARCHAR2(255 BYTE),
  EMAIL_ID      VARCHAR2(255 BYTE),
  TELEPHONE     VARCHAR2(255 BYTE),
  ADDRESS       VARCHAR2(255 BYTE),
  STATE         VARCHAR2(255 BYTE),
  PINCODE       VARCHAR2(255 BYTE),
  CATEGORY      VARCHAR2(255 BYTE)
)
TABLESPACE SYSTEM
PCTUSED    40
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            MINEXTENTS       1
            MAXEXTENTS       2147483645
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCACHE
NOPARALLEL
MONITORING;


CREATE TABLE EXAM
(
  JOBID     VARCHAR2(255 BYTE),
  POST      VARCHAR2(255 BYTE),
  EXAMID    VARCHAR2(255 BYTE),
  EXAMNAME  VARCHAR2(255 BYTE),
  CUTOFF    VARCHAR2(255 BYTE)
)
TABLESPACE SYSTEM
PCTUSED    40
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            MINEXTENTS       1
            MAXEXTENTS       2147483645
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCACHE
NOPARALLEL
MONITORING;


CREATE TABLE EXPERIENCED
(
  USERNAME     VARCHAR2(255 BYTE),
  EXPYEARS     VARCHAR2(255 BYTE),
  COMPANY      VARCHAR2(255 BYTE),
  DESIGNATION  VARCHAR2(255 BYTE),
  SALARY       VARCHAR2(255 BYTE),
  COMADDRESS   VARCHAR2(255 BYTE)
)
TABLESPACE SYSTEM
PCTUSED    40
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            MINEXTENTS       1
            MAXEXTENTS       2147483645
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCACHE
NOPARALLEL
MONITORING;


CREATE TABLE JOBDETAILS
(
  JOBID          VARCHAR2(255 BYTE),
  POST           VARCHAR2(255 BYTE),
  CRITERIA       VARCHAR2(255 BYTE),
  NOOFVACANCIES  VARCHAR2(255 BYTE),
  SALARY         VARCHAR2(255 BYTE),
  LASTDATE       VARCHAR2(255 BYTE)
)
TABLESPACE SYSTEM
PCTUSED    40
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            MINEXTENTS       1
            MAXEXTENTS       2147483645
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCACHE
NOPARALLEL
MONITORING;


CREATE TABLE LOGIN
(
  USERNAME  VARCHAR2(255 BYTE),
  PASSWORD  VARCHAR2(255 BYTE),
  STATUS    VARCHAR2(255 BYTE)
)
TABLESPACE SYSTEM
PCTUSED    40
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            MINEXTENTS       1
            MAXEXTENTS       2147483645
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCACHE
NOPARALLEL
MONITORING;


CREATE TABLE QUESTION
(
  JOBID       VARCHAR2(255 BYTE),
  EXAMID      VARCHAR2(255 BYTE),
  QUESTIONNO  NUMBER(10),
  QUESTION    VARCHAR2(255 BYTE),
  OPTION1     VARCHAR2(255 BYTE),
  OPTION2     VARCHAR2(255 BYTE),
  OPTION3     VARCHAR2(255 BYTE),
  OPTION4     VARCHAR2(255 BYTE),
  ANSWER      VARCHAR2(255 BYTE)
)
TABLESPACE SYSTEM
PCTUSED    40
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            MINEXTENTS       1
            MAXEXTENTS       2147483645
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCACHE
NOPARALLEL
MONITORING;


CREATE TABLE RESULT
(
  STUDENTID  VARCHAR2(255 BYTE),
  EXAMID     VARCHAR2(255 BYTE),
  JOBID      VARCHAR2(255 BYTE),
  MARK       NUMBER(10)
)
TABLESPACE SYSTEM
PCTUSED    40
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            MINEXTENTS       1
            MAXEXTENTS       2147483645
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCACHE
NOPARALLEL
MONITORING;


CREATE TABLE TEMP_DATA
(
  STUDID  VARCHAR2(255 BYTE),
  QSTNO   NUMBER(10),
  QST     VARCHAR2(255 BYTE),
  CH1     VARCHAR2(255 BYTE),
  CH2     VARCHAR2(255 BYTE),
  CH3     VARCHAR2(255 BYTE),
  CH4     VARCHAR2(255 BYTE),
  ANS     VARCHAR2(255 BYTE)
)
TABLESPACE SYSTEM
PCTUSED    40
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            MINEXTENTS       1
            MAXEXTENTS       2147483645
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCACHE
NOPARALLEL
MONITORING;



Insert into COM
   (CNAME, CADDRESS, CPOST, CCRITERIA, CUSERNAME, 
    CEMAIL, CCONTACT, CCUTOFF)
 Values
   ('WiproCompany', 'wipro,manikonda,hyd', 'wipro,manikondapost', 'goodtechnical', 'wiprocompany', 
    'www.wipro@gmail.com', '040255667', '65');
Insert into COM
   (CNAME, CADDRESS, CPOST, CCRITERIA, CUSERNAME, 
    CEMAIL, CCONTACT, CCUTOFF)
 Values
   ('syntel', 'pune', 'pune', 'freshers', 'syntel', 
    'syntel@inc.com', '2009922', '60');
Insert into COM
   (CNAME, CADDRESS, CPOST, CCRITERIA, CUSERNAME, 
    CEMAIL, CCONTACT, CCUTOFF)
 Values
   ('TCS', 'hyd', 'hyd', 'experienced', 'tcs', 
    'tcs@mail.com', '404578', '70');
Insert into COM
   (CNAME, CADDRESS, CPOST, CCRITERIA, CUSERNAME, 
    CEMAIL, CCONTACT, CCUTOFF)
 Values
   ('Infotech', 'hyd', 'hyd', 'Fresher', 'Infotech', 
    'carrers@Infotech.com', '4567890', '60');
COMMIT;


Insert into DETAILS
   (USERNAME, NAME, GENDER, DATEOFBIRTH, COLLEGENAME, 
    COLLEGEPHONE, COLLEGEEMAIL, BRANCH, MARK, DEGREE, 
    EMAIL_ID, TELEPHONE, ADDRESS, STATE, PINCODE, 
    CATEGORY)
 Values
   ('asha', 'ashaq', 'Female', '08/08/09', 'UIT', 
    '057684955', 'uit@ymail.com', 'Comp Science               ', '65', 'BTech', 
    'asha@a.com', '232323', 'ernagar,hyd', 'AP', '525555', 
    'Fresher');
Insert into DETAILS
   (USERNAME, NAME, GENDER, DATEOFBIRTH, COLLEGENAME, 
    COLLEGEPHONE, COLLEGEEMAIL, BRANCH, MARK, DEGREE, 
    EMAIL_ID, TELEPHONE, ADDRESS, STATE, PINCODE, 
    CATEGORY)
 Values
   ('venu', 'venu', 'Male', '08/06/1984', 'arts', 
    '66750102', 'cc@mail.com', 'Comp Science               ', '86', 'MCA', 
    'venu@gmail.com', '9985020598', 'hyd', 'AP', '500001', 
    'Experienced');
Insert into DETAILS
   (USERNAME, NAME, GENDER, DATEOFBIRTH, COLLEGENAME, 
    COLLEGEPHONE, COLLEGEEMAIL, BRANCH, MARK, DEGREE, 
    EMAIL_ID, TELEPHONE, ADDRESS, STATE, PINCODE, 
    CATEGORY)
 Values
   ('madhu', 'madhu', 'Male', '08/06/84', 'arts', 
    '66750124', 'arts@mail.com', 'Comp Science               ', '86', 'MCA', 
    'madhu@gmail.com', '9966558', 'hyd', 'AP', '500001', 
    'Fresher');
Insert into DETAILS
   (USERNAME, NAME, GENDER, DATEOFBIRTH, COLLEGENAME, 
    COLLEGEPHONE, COLLEGEEMAIL, BRANCH, MARK, DEGREE, 
    EMAIL_ID, TELEPHONE, ADDRESS, STATE, PINCODE, 
    CATEGORY)
 Values
   ('ashwini', 'ashwini', 'Female', '22/08/88', 'UASC', 
    '2550357', 'uasc@kakatiya.ac.in', 'Comp Science & Information ', '86', 'MCA', 
    'ashwini@kakatiya.ac.in', '7654890', '100ft road', 'AP', '506370', 
    'Fresher');
COMMIT;

Insert into EXAM
   (JOBID, POST, EXAMID, EXAMNAME, CUTOFF)
 Values
   ('555', 'JavaDeveloper', '123', 'Arithmetic', '60');
Insert into EXAM
   (JOBID, POST, EXAMID, EXAMNAME, CUTOFF)
 Values
   ('555', 'JavaDeveloper', '234', 'DataStructures', '60');
COMMIT;

Insert into EXPERIENCED
   (USERNAME, EXPYEARS, COMPANY, DESIGNATION, SALARY, 
    COMADDRESS)
 Values
   ('venu', '2', 'isree tech', 'programmer', '10000', 
    'hyd');
COMMIT;

Insert into JOBDETAILS
   (JOBID, POST, CRITERIA, NOOFVACANCIES, SALARY, 
    LASTDATE)
 Values
   ('555', 'JavaDeveloper', 'Fresher', '25', '2.4', 
    '01/09/2009');
COMMIT;

Insert into LOGIN
   (USERNAME, PASSWORD, STATUS)
 Values
   ('asha', 'ashakumari', 's');
Insert into LOGIN
   (USERNAME, PASSWORD, STATUS)
 Values
   ('admin', 'admin', 'a');
Insert into LOGIN
   (USERNAME, PASSWORD, STATUS)
 Values
   ('wiprocompany', 'wiprocompany', 'c');
Insert into LOGIN
   (USERNAME, PASSWORD, STATUS)
 Values
   ('venu', 'venu1234', 's');
Insert into LOGIN
   (USERNAME, PASSWORD, STATUS)
 Values
   ('madhu', 'boinapally', 's');
Insert into LOGIN
   (USERNAME, PASSWORD, STATUS)
 Values
   ('syntel', 'syntelinc', 'c');
Insert into LOGIN
   (USERNAME, PASSWORD, STATUS)
 Values
   ('tcs', 'tcshyderabad', 'c');
Insert into LOGIN
   (USERNAME, PASSWORD, STATUS)
 Values
   ('ashwini', 'ashwini1', 's');
Insert into LOGIN
   (USERNAME, PASSWORD, STATUS)
 Values
   ('Infotech', 'Infotech', 'c');
COMMIT;

Insert into QUESTION
   (JOBID, EXAMID, QUESTIONNO, QUESTION, OPTION1, 
    OPTION2, OPTION3, OPTION4, ANSWER)
 Values
   ('555', '123', 1, '2*3+4*(5+4)=?', '54', 
    '45', '126', 'none', '45');
Insert into QUESTION
   (JOBID, EXAMID, QUESTIONNO, QUESTION, OPTION1, 
    OPTION2, OPTION3, OPTION4, ANSWER)
 Values
   ('555', '123', 2, '3*4+5=?', '27', 
    '17', '32', 'none', '17');
Insert into QUESTION
   (JOBID, EXAMID, QUESTIONNO, QUESTION, OPTION1, 
    OPTION2, OPTION3, OPTION4, ANSWER)
 Values
   ('555', '123', 3, '420/7+80=?', '125', 
    '140', '170', '5', '140');
Insert into QUESTION
   (JOBID, EXAMID, QUESTIONNO, QUESTION, OPTION1, 
    OPTION2, OPTION3, OPTION4, ANSWER)
 Values
   ('555', '123', 4, 'if a=10,b=5 then a+b=?', '12', 
    '15', '50', '5', '15');
Insert into QUESTION
   (JOBID, EXAMID, QUESTIONNO, QUESTION, OPTION1, 
    OPTION2, OPTION3, OPTION4, ANSWER)
 Values
   ('555', '123', 5, '45/5+1=?', '18', 
    '10', '9', 'none', '10');
Insert into QUESTION
   (JOBID, EXAMID, QUESTIONNO, QUESTION, OPTION1, 
    OPTION2, OPTION3, OPTION4, ANSWER)
 Values
   ('555', '123', 6, '40%*50=?', '200', 
    '20', '2', '22', '20');
Insert into QUESTION
   (JOBID, EXAMID, QUESTIONNO, QUESTION, OPTION1, 
    OPTION2, OPTION3, OPTION4, ANSWER)
 Values
   ('555', '123', 7, 'asdf', 'asdfg', 
    'awert', 'asdf', 'aqwr', 'asdf');
Insert into QUESTION
   (JOBID, EXAMID, QUESTIONNO, QUESTION, OPTION1, 
    OPTION2, OPTION3, OPTION4, ANSWER)
 Values
   ('555', '123', 8, 'L.C.M. means', 'Least Common Multiples', 
    'Least Common Multiple', 'Least common multiplier', 'none', 'Least Common Multiple');
Insert into QUESTION
   (JOBID, EXAMID, QUESTIONNO, QUESTION, OPTION1, 
    OPTION2, OPTION3, OPTION4, ANSWER)
 Values
   ('555', '123', 9, '120/234*100=?', '49', 
    '50', '45', '55', '49');
Insert into QUESTION
   (JOBID, EXAMID, QUESTIONNO, QUESTION, OPTION1, 
    OPTION2, OPTION3, OPTION4, ANSWER)
 Values
   ('555', '123', 10, 'G.C.D. means', 'Gretest Common Divisor', 
    'Greatest Common Divider', 'Greatest Common Distributor', 'none', 'Gretest Common Divisor');
Insert into QUESTION
   (JOBID, EXAMID, QUESTIONNO, QUESTION, OPTION1, 
    OPTION2, OPTION3, OPTION4, ANSWER)
 Values
   ('555', '123', 11, 'wwwww', 'sssssss', 
    'dddddddd', 'ggggggg', 'wwwwwwwww', 'wwwww');
Insert into QUESTION
   (JOBID, EXAMID, QUESTIONNO, QUESTION, OPTION1, 
    OPTION2, OPTION3, OPTION4, ANSWER)
 Values
   ('555', '123', 12, 'what is square value of 7?', '7', 
    '49', '2.5', '343', '49');
Insert into QUESTION
   (JOBID, EXAMID, QUESTIONNO, QUESTION, OPTION1, 
    OPTION2, OPTION3, OPTION4, ANSWER)
 Values
   ('555', '123', 13, 'sum of cubes of 2,3,4 is?', '89', 
    '79', '99', 'none', '99');
Insert into QUESTION
   (JOBID, EXAMID, QUESTIONNO, QUESTION, OPTION1, 
    OPTION2, OPTION3, OPTION4, ANSWER)
 Values
   ('555', '123', 14, '6%3=?', '2', 
    '18', '0', '1', '0');
Insert into QUESTION
   (JOBID, EXAMID, QUESTIONNO, QUESTION, OPTION1, 
    OPTION2, OPTION3, OPTION4, ANSWER)
 Values
   ('555', '123', 15, '23*10/20=?', '11', 
    '12', '11.5', '115', '11');
Insert into QUESTION
   (JOBID, EXAMID, QUESTIONNO, QUESTION, OPTION1, 
    OPTION2, OPTION3, OPTION4, ANSWER)
 Values
   ('555', '123', 18, '288+222-200=?', '300', 
    '310', '320', '330', '310');
Insert into QUESTION
   (JOBID, EXAMID, QUESTIONNO, QUESTION, OPTION1, 
    OPTION2, OPTION3, OPTION4, ANSWER)
 Values
   ('555', '123', 19, 'WHAT IS PALINDREME', 'value write in reverse u get same no', 
    'word write in reverse u get same nword', 'word r vale write revers get same ', 'none', 'word r vale write revers get same ');
Insert into QUESTION
   (JOBID, EXAMID, QUESTIONNO, QUESTION, OPTION1, 
    OPTION2, OPTION3, OPTION4, ANSWER)
 Values
   ('555', '123', 16, '234+456=?', '670', 
    '690', '680', '660', '690');
Insert into QUESTION
   (JOBID, EXAMID, QUESTIONNO, QUESTION, OPTION1, 
    OPTION2, OPTION3, OPTION4, ANSWER)
 Values
   ('555', '123', 17, '567+1-2=?', '565', 
    '566', '569', '570', '566');
Insert into QUESTION
   (JOBID, EXAMID, QUESTIONNO, QUESTION, OPTION1, 
    OPTION2, OPTION3, OPTION4, ANSWER)
 Values
   ('555', '123', 20, 'ttttt', 'ttttt', 
    'ttttttttt', 'ttttttttttttttt', 'ttttttttttttttttttt', 'ttttt');
COMMIT;

Insert into RESULT
   (STUDENTID, EXAMID, JOBID, MARK)
 Values
   ('venu', '123', '555', 6);
Insert into RESULT
   (STUDENTID, EXAMID, JOBID, MARK)
 Values
   ('venu', '123', '555', 8);
Insert into RESULT
   (STUDENTID, EXAMID, JOBID, MARK)
 Values
   ('ashwini', '123', '555', 6);
Insert into RESULT
   (STUDENTID, EXAMID, JOBID, MARK)
 Values
   ('ashwini', '123', '555', 8);
Insert into RESULT
   (STUDENTID, EXAMID, JOBID, MARK)
 Values
   ('venu', '123', '555', 10);
Insert into RESULT
   (STUDENTID, EXAMID, JOBID, MARK)
 Values
   ('venu', '123', '555', 3);
Insert into RESULT
   (STUDENTID, EXAMID, JOBID, MARK)
 Values
   ('venu', '123', '555', 5);
Insert into RESULT
   (STUDENTID, EXAMID, JOBID, MARK)
 Values
   ('asha', '123', '555', 7);
Insert into RESULT
   (STUDENTID, EXAMID, JOBID, MARK)
 Values
   ('venu', '123', '555', 6);
Insert into RESULT
   (STUDENTID, EXAMID, JOBID, MARK)
 Values
   ('venu', '123', '555', 4);
Insert into RESULT
   (STUDENTID, EXAMID, JOBID, MARK)
 Values
   ('venu', '123', '555', 2);
Insert into RESULT
   (STUDENTID, EXAMID, JOBID, MARK)
 Values
   ('venu', '123', '555', 1);
Insert into RESULT
   (STUDENTID, EXAMID, JOBID, MARK)
 Values
   ('venu', '123', '555', 3);
Insert into RESULT
   (STUDENTID, EXAMID, JOBID, MARK)
 Values
   ('venu', '123', '555', 6);
Insert into RESULT
   (STUDENTID, EXAMID, JOBID, MARK)
 Values
   ('venu', '123', '555', 8);
COMMIT;


