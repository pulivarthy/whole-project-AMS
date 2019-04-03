-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE License_Managementsspupd
@Company_Name nvarchar(50),
@Address nvarchar(50),
@Contact_no bigint,
@Key_contact_name nvarchar(50),
@Licenseperiod nvarchar(50),
@Email nvarchar(50),
@Date_of_License_reg date,
@Commission_type nvarchar(50),
@Login_Id numeric(18,0)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Update License_Management set Company_Name=@Company_Name,Address=@Address,Contact_no=@Contact_no,Key_contact_name=@Key_contact_name,Licenseperiod=@Licenseperiod,Email=@Email,Date_of_License_reg=@Date_of_License_reg,Commission_type=@Commission_type,Login_Id=@Login_Id
	where Login_Id=@Login_Id;
END
GO
