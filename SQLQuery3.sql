0USE [AgentManagement]
GO
/****** Object:  StoredProcedure [dbo].[AdminUserId]    Script Date: 3/28/2019 11:09:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[AdminUserId]
	@Login_Id numeric(18,0),
	@Password nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT Login_Id from Admin where Login_Id=@Login_Id and Password=@Password;
END
