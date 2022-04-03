DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_createStudentInfo`(
    IN _Id VARCHAR(45),
    IN _FirstName VARCHAR(200),
    IN _LastName VARCHAR(200),
    IN _Department VARCHAR(250),
	IN _EmailId VARCHAR(250),
	IN _PhoneNumber varchar(100),
	IN _Photo Blob,
    IN _createby varchar(50)
    )
BEGIN
    if exists (select 1 from tbl_students_info where Id = _Id)  THEN
      
        select 'Username Exists !!';
      
    ELSE
      
        insert into tbl_students_info
        (
            Id,
            FirstName,
            LastName,
            Department,
            EmailId,
            PhoneNumber,
            Photo,
            CreateDate,
            CreateBy
            
        )
        values
        (
            _Id,
            _FirstName,
            _LastName,
            _Department,
            _EmailId,
            _PhoneNumber,
            _Photo,
            sysdate(),
            _createby
        );
      
    END IF;
END$$
DELIMITER ;
