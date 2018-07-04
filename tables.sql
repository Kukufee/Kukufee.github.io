CREATE TABLE t_temp(
 empId INTEGER PRIMARY KEY AUTO_INCREMENT,
 empName VARCHAR(15),
 gender VARCHAR(4),
 telNum VARCHAR(15),
 email VARCHAR(30),
 staffId INT,
 empEdu VARCHAR(25),
 cardNum VARCHAR(20),
 dId INT,
 empAddress VARCHAR(50),
 empCreateTime DATE,
 remark VARCHAR(20),
 habiit VARCHAR(30),
 political VARCHAR(10),
 QQ VARCHAR(20),
 ems VARCHAR(6),
 birth DATE,
 major VARCHAR(15),
 volk VARCHAR(15),
 CONSTRAINT emp_staff_fk FOREIGN KEY (staffId) REFERENCES t_staff(staff),
 CONSTRAINT emp_dept_fk FOREIGN KEY (dId) REFERENCES t_dept(dId)
);
DROP TABLE t_temp;
#用户表
CREATE TABLE t_user(
 userId INTEGER PRIMARY KEY AUTO_INCREMENT,
 userLoginName VARCHAR(15),
 userPwd VARCHAR(10),
 userName VARCHAR(15),
 state INT,
 createTime DATE,
 empId INT,
 CONSTRAINT user_temp_fk FOREIGN KEY (empId) REFERENCES t_temp(empId) 
 
);
#公告表
CREATE TABLE t_notice(
 noticeId INTEGER PRIMARY KEY AUTO_INCREMENT,
 noticeContent VARCHAR(100),
 userId INT,
 noticeTime DATE,
 CONSTRAINT notice_user_fk FOREIGN KEY (userId) REFERENCES t_user(userId)
);

#下载中心表
CREATE TABLE t_download(
 downloadId INTEGER PRIMARY KEY AUTO_INCREMENT,
 downloadTittle VARCHAR(20),
 downloadCreateTime DATE,
 userId INT,
 downloadDes VARCHAR(50),
 CONSTRAINT download_user_fk FOREIGN KEY (userId) REFERENCES t_user(userId)
 
);










