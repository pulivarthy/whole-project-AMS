USE [AgentManagement]
GO
/****** Object:  StoredProcedure [dbo].[Customer_policysp]    Script Date: 3/26/2019 6:17:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[Customer_policysp]
@Customer_id numeric(18,0),
@Policy_name varchar(50),
@Policy_company varchar(50),
@Date_of_booking date,
@Sum_assured numeric(18,2),
@Payment_mode varchar(50),
@Login_Id numeric(18,0),
@Date_of_birth date,
@Height numeric(18,2),
@Weight numeric(18,2),
@Identification_mark nvarchar(50),
@Nominee_name nvarchar(50),
@Nominee_relationship nvarchar(50),
@Nominee_date_of_birth date,
@Contact_no bigint,
@Appointment_id numeric(18,0)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	insert into Customer_Policy_Reg (Customer_id,Policy_company,Date_of_booking,Sum_assured,Payment_mode,Date_of_birth,Height,Weight,Identification_mark,Nominee_name,Nominee_relationship,Nominee_date_of_birth,Contact_no,Appointment_id) values(@Policy_name,@Policy_company,@Date_of_booking,@Sum_assured,@Payment_mode,@Date_of_birth,@Height,@Weight,@Identification_mark,@Nominee_name,@Nominee_relationship,@Nominee_date_of_birth,@Contact_no,@Appointment_id)
END
