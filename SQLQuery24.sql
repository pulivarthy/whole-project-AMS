USE [AgentManagement]
GO
/****** Object:  StoredProcedure [dbo].[customer_policy_reg_cal]    Script Date: 3/27/2019 3:47:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[customer_policy_reg_cal]
@Login_Id numeric(18,0),
@FromDate datetime,
@ToDate datetime
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select  sum(CONVERT(numeric(18,0), Sum_assured)) from Customer_Policy_Reg where Login_Id=@Login_Id and (Date_of_booking between @FromDate and @ToDate)
END
