USE [AgentManagement]
GO
/****** Object:  StoredProcedure [dbo].[CustomerspDel]    Script Date: 3/25/2019 3:50:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[CustomerspDel] 
	@Customer_id numeric(18,0),
	@Password nvarchar(50),
	@Name nvarchar(50),
	@Date_of_birth date,
	@Address nvarchar(50),
	@Contact_no bigint,
	@Email nvarchar(50),
	@City varchar(50),
	@State nvarchar(50),
	@Date_of_join date,
	@Zipcode bigint

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Delete from Customer where Customer_id=@Customer_id;
END
