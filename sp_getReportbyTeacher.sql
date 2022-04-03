DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getReportbyTeacher`(
IN _createby varchar(50))
BEGIN
select info.id,info.firstname,info.lastname,info.department,info.emailid,info.phonenumber,ad.createby teacher,ad.time  from tbl_attendance ad
inner join tbl_students_info info on ad.id=info.id
where ad.createby=_createby
order by ad.time desc;

END$$
DELIMITER ;
