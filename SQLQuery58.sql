USE [AgentManagement]
GO
/****** Object:  StoredProcedure [dbo].[Customer_appSpdel]    Script Date: 3/22/2019 5:54:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[Customer_appSpdel]
	@Name nvarchar(50),
	@Address nvarchar(max),
	@City varchar(50),
	@State varchar(50),
	@Pincode bigint,
	@Employee_Type nvarchar(50),
	@Contact_no bigint,
	@Email nvarchar(50),
	@Contact_mode nvarchar(50),
	@Insurance_Already numeric(18,2),
	@Annual_income numeric(18,2),
	@Date_of_appointment date,
	@Preferrable_time time(7),
	@Customer_id numeric(18,0)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Delete from Customer_app where Customer_id=@Customer_id;
END
