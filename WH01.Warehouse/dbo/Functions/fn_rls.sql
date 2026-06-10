CREATE function dbo.fn_rls(@cntry VARCHAR(100)) RETURNS TABLE
WITH SCHEMABINDING
AS
RETURN
(
SELECT 1 AS RESULT
WHERE exists (SELECT 1 AS RSLT FROM dbo.config WHERE email=USER_NAME() AND Country=@cntry) or USER_NAME()='fabric01@sukumarberawiprogmail.onmicrosoft.com'
)
;