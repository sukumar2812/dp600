create PROC dp600_e1.sp_read_data (@subject VARCHAR(100)=NULL,@name VARCHAR(100)=NULL) AS
BEGIN
select * from dp600_e1.student where (@subject is null or subject=@subject) and (@name is null or name=@name)
end