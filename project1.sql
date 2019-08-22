
Generate SQL
CREATE TABLE ers_reiumbursement_status
(
  reimb_status_id NUMBER(6) NOT NULL,
  reimb_status VARCHAR2(100) NOT NULL,
  PRIMARY KEY (reimb_status_id)
);

CREATE TABLE ers_reumbursement_type
(
  reimb_type_id NUMBER(6) NOT NULL,
  reimb_type VARCHAR2(100) NOT NULL,
  PRIMARY KEY (reimb_type_id)
);

CREATE TABLE ers_user_roles
(
  ers_user_role_id NUMBER(6) NOT NULL,
  user_role VARCHAR2(100) NOT NULL,
  PRIMARY KEY (ers_user_role_id)
);

CREATE TABLE ers_users
(
  ers_users_id NUMBER(6) NOT NULL,
  ers_username VARCHAR2(100) NOT NULL,
  ers_password VARCHAR2(100) NOT NULL,
  user_first_name VARCHAR2(100) NOT NULL,
  user_last_name VARCHAR2(100) NOT NULL,
  user_email VARCHAR2(100) NOT NULL,
  ers_user_role_id NUMBER(6) NOT NULL,
  PRIMARY KEY (ers_users_id),
  FOREIGN KEY (ers_user_role_id) REFERENCES ers_user_roles(ers_user_role_id),
  UNIQUE (ers_username),
  UNIQUE (user_email)
);

CREATE TABLE ers_reimbursement
(
  reimb_id NUMBER(6) NOT NULL,
  reim_amount NUMBER(6) NOT NULL,
  reimb_submitted VARCHAR2(100) NOT NULL,
  reimb_resolved VARCHAR2(100) NOT NULL,
  reimb_description VARCHAR2(100) NOT NULL,
  reimb_receipt VARCHAR2(100) NOT NULL,
  reimb_status_id NUMBER(6) NOT NULL,
  reimb_type_id NUMBER(6) NOT NULL,
  ers_users_id NUMBER(6) NOT NULL,
  PRIMARY KEY (reimb_id),
  FOREIGN KEY (reimb_status_id) REFERENCES ers_reiumbursement_status(reimb_status_id),
  FOREIGN KEY (reimb_type_id) REFERENCES ers_reumbursement_type(reimb_type_id),
  FOREIGN KEY (ers_users_id) REFERENCES ers_users(ers_users_id)
);