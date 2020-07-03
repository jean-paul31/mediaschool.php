#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------


#------------------------------------------------------------
# Table: USERS
#------------------------------------------------------------

CREATE TABLE USERS(
        USER_ID   Int  Auto_increment  NOT NULL ,
        FIRSTNAME Varchar (50) NOT NULL ,
        LASTNAME  Varchar (50) NOT NULL ,
        EMAIL     Varchar (255) NOT NULL ,
        PICS      Varchar (500) NOT NULL
	,CONSTRAINT USERS_PK PRIMARY KEY (USER_ID)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: MESSAGES
#------------------------------------------------------------

CREATE TABLE MESSAGES(
        MESSAGE_ID Int  Auto_increment  NOT NULL ,
        CREATEDAT  Date NOT NULL ,
        AUTHORS    Varchar (50) NOT NULL ,
        TITLE      Varchar (150) NOT NULL ,
        TEXT       Varchar (150) NOT NULL ,
        USER_ID    Int NOT NULL
	,CONSTRAINT MESSAGES_PK PRIMARY KEY (MESSAGE_ID)

	,CONSTRAINT MESSAGES_USERS_FK FOREIGN KEY (USER_ID) REFERENCES USERS(USER_ID)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: COMMENTS
#------------------------------------------------------------

CREATE TABLE COMMENTS(
        COMMENT_ID Int  Auto_increment  NOT NULL ,
        CREATEDAT  Date NOT NULL ,
        TEXT       Varchar (150) NOT NULL ,
        USER_ID    Int NOT NULL ,
        MESSAGE_ID Int NOT NULL
	,CONSTRAINT COMMENTS_PK PRIMARY KEY (COMMENT_ID)

	,CONSTRAINT COMMENTS_USERS_FK FOREIGN KEY (USER_ID) REFERENCES USERS(USER_ID)
	,CONSTRAINT COMMENTS_MESSAGES0_FK FOREIGN KEY (MESSAGE_ID) REFERENCES MESSAGES(MESSAGE_ID)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: CLASS
#------------------------------------------------------------

CREATE TABLE CLASS(
        CLASS_ID   Int  Auto_increment  NOT NULL ,
        NAME       Varchar (150) NOT NULL ,
        CLASSMATES Varchar (150) NOT NULL
	,CONSTRAINT CLASS_PK PRIMARY KEY (CLASS_ID)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: CHILDREN
#------------------------------------------------------------

CREATE TABLE CHILDREN(
        CHILD_ID        Int  Auto_increment  NOT NULL ,
        CHILD_FIRSTNAME Varchar (150) NOT NULL ,
        CHILD_LASTNAME  Varchar (150) NOT NULL ,
        CLASS_ID        Int NOT NULL ,
        USER_ID         Int NOT NULL
	,CONSTRAINT CHILDREN_PK PRIMARY KEY (CHILD_ID)

	,CONSTRAINT CHILDREN_CLASS_FK FOREIGN KEY (CLASS_ID) REFERENCES CLASS(CLASS_ID)
	,CONSTRAINT CHILDREN_USERS0_FK FOREIGN KEY (USER_ID) REFERENCES USERS(USER_ID)
)ENGINE=InnoDB;

