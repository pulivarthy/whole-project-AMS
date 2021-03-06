USE [AgentManagement]
GO
/****** Object:  StoredProcedure [dbo].[Customer_Policy_Regupd]    Script Date: 3/27/2019 10:05:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[Customer_Policy_Regupd]
@Customer_id numeric(18,0),
@Policy_name nvarchar(50),
@Policy_company nvarchar(50),
@Date_of_booking date,
@Sum_assured nvarchar(50),
@Payment_mode nvarchar(50),
@Login_Id numeric(18,0),
@Date_of_birth date,
@Height nvarchar(50),
@Weight nvarchar(50),
@Identification_mark nvarchar(50),
@Nominee_name nvarchar(50),
@Nominee_relationship nvarchar(50),
@Nominee_date_of_birth date,
@Contact_no nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	update Customer_Policy_Reg set 
	Policy_name=@Policy_name,Policy_company=@Policy_company,Date_of_booking=@Date_of_booking,Sum_assured=@Sum_assured,Payment_mode=@Payment_mode,Date_of_birth=@Date_of_birth,Height=@Height,Weight=@Weight,Identification_mark=@Identification_mark,Nominee_name=@Nominee_name,Nominee_relationship=@Nominee_relationship,Contact_no=@Contact_no
	where Customer_id=@Customer_id or Login_Id=@Login_Id
   
END
