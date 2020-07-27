#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------


#------------------------------------------------------------
# Table: users
#------------------------------------------------------------

CREATE TABLE users(
        id   Int  Auto_increment  NOT NULL ,
        name Varchar (50) NOT NULL ,
        surname  Varchar (50) NOT NULL ,
        mail     Varchar (255) NOT NULL ,
        mdp      text NOT NULL ,
        avatar   text NULL ,
        admin    boolean NULL
	,CONSTRAINT USERS_PK PRIMARY KEY (user_id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: messages
#------------------------------------------------------------

CREATE TABLE MESSAGES(
        m_id Int  Auto_increment  NOT NULL ,
        createdAt  Varchar (255) NOT NULL ,
        title    Varchar (150) NOT NULL ,
        TITLE      Varchar (150) NOT NULL ,
        user_id   Int NOT NULL
	,CONSTRAINT MESSAGES_PK PRIMARY KEY (MESSAGE_ID)

	,CONSTRAINT MESSAGES_USERS_FK FOREIGN KEY (user_id) REFERENCES users(id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: COMMENTS
#------------------------------------------------------------

CREATE TABLE COMMENTS(
        c_id Int  Auto_increment  NOT NULL ,
        createdAt  timestamp CURRENT_TIMESTAMP ,
        c_text     text NOT NULL ,
        user_id    Int NOT NULL ,
        message_id Int NOT NULL
	,CONSTRAINT COMMENTS_PK PRIMARY KEY (COMMENT_ID)

	,CONSTRAINT COMMENTS_USERS_FK FOREIGN KEY (user_id) REFERENCES USERS(id)
	,CONSTRAINT COMMENTS_MESSAGES0_FK FOREIGN KEY (message_id) REFERENCES messages(m_id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: class
#------------------------------------------------------------

CREATE TABLE CLASS(
        cl_id   Int  Auto_increment  NOT NULL ,
        name       Varchar (150) NOT NULL ,
        classMates Varchar (150) NOT NULL
	,CONSTRAINT CLASS_PK PRIMARY KEY (cl_id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: CHILDREN
#------------------------------------------------------------

CREATE TABLE CHILDREN(
        ch_id        Int  Auto_increment  NOT NULL ,
        childName Varchar (150) NOT NULL ,
        childSurname  Varchar (150) NOT NULL ,
        class_id        Int NOT NULL ,
        user_id         Int NOT NULL
	,CONSTRAINT CHILDREN_PK PRIMARY KEY (CHILD_ID)

	,CONSTRAINT CHILDREN_CLASS_FK FOREIGN KEY (class_id) REFERENCES class(cl_id)
	,CONSTRAINT CHILDREN_USERS0_FK FOREIGN KEY (user_id) REFERENCES users(id)
)ENGINE=InnoDB;

