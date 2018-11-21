CREATE TABLE REGIONE(

NOMEREGIONE		VARCHAR(40)	PRIMARY KEY
);

CREATE TABLE CAPOLUOGO(
NOMELOCATION		VARCHAR(40)	PRIMARY KEY,
LAT                 VARCHAR(30) NOT NULL,
LON                 VARCHAR(30) NOT NULL,
NOMER			    VARCHAR(40)	NOT NULL
);

CREATE TABLE ELEMENTO(
NOME			VARCHAR(5)	PRIMARY KEY

);

CREATE TABLE USER_REGISTERED(

USERNAME		VARCHAR(15)		PRIMARY KEY,
PASS    		VARCHAR(16)		NOT NULL

);

CREATE TABLE VISTA (

USERNAME 			VARCHAR(15)		NOT NULL,
LOC_SCELTA		    VARCHAR(40)		NOT NULL

);


CREATE TABLE ELEMSCANNER(

INCREMENTO      INTEGER                 NOT NULL,
NOMEE			VARCHAR(5)			    NOT NULL,
NOMEL			VARCHAR(40)			    NOT NULL,
VALORE			DECIMAL(4,3)            NOT NULL,
DATA_SCAN		VARCHAR(19)             NOT NULL

);

CREATE TABLE CONTEGGIO (CONTA       INTEGER             NOT NULL);
INSERT INTO CONTEGGIO VALUES (0);

ALTER TABLE VISTA 
ADD FOREIGN KEY (LOC_SCELTA) REFERENCES CAPOLUOGO(NOMELOCATION);



ALTER TABLE VISTA 
ADD FOREIGN KEY (USERNAME) REFERENCES USER_REGISTERED(USERNAME);



ALTER TABLE CAPOLUOGO 
ADD FOREIGN KEY (NOMER) REFERENCES REGIONE(NOMEREGIONE);



ALTER TABLE ELEMSCANNER 
ADD FOREIGN KEY (NOMEE) REFERENCES ELEMENTO(NOME);



ALTER TABLE ELEMSCANNER 
ADD FOREIGN KEY (NOMEL) REFERENCES CAPOLUOGO(NOMELOCATION);