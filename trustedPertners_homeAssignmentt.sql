USE [trustedpartners]
GO
/****** Object:  Table [dbo].[AGENTS]    Script Date: 07.05.2022 23:46:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AGENTS](
	[AGENT_CODE] [char](6) NOT NULL,
	[AGENT_NAME] [char](40) NULL,
	[WORKING_AREA] [char](35) NULL,
	[COMMISSION] [int] NULL,
	[PHONE_NO] [char](15) NULL,
	[COUNTRY] [varchar](25) NULL,
PRIMARY KEY CLUSTERED 
(
	[AGENT_CODE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ORDERS]    Script Date: 07.05.2022 23:46:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ORDERS](
	[ORD_NUM] [int] NOT NULL,
	[ORD_AMOUNT] [float] NOT NULL,
	[ADVANCE_AMOUNT] [float] NOT NULL,
	[ORD_DATE] [datetime] NOT NULL,
	[CUST_CODE] [varchar](6) NOT NULL,
	[AGENT_CODE] [char](6) NOT NULL,
	[ORD_DESCRIPTION] [varchar](60) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ORD_NUM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[AGENTS] ([AGENT_CODE], [AGENT_NAME], [WORKING_AREA], [COMMISSION], [PHONE_NO], [COUNTRY]) VALUES (N'A001  ', N'Subbarao                                ', N'Bangalore                          ', 14, N'077-12346674   ', N'')
INSERT [dbo].[AGENTS] ([AGENT_CODE], [AGENT_NAME], [WORKING_AREA], [COMMISSION], [PHONE_NO], [COUNTRY]) VALUES (N'A002  ', N'Mukesh                                  ', N'Mumbai                             ', 11, N'029-12358964   ', N'')
INSERT [dbo].[AGENTS] ([AGENT_CODE], [AGENT_NAME], [WORKING_AREA], [COMMISSION], [PHONE_NO], [COUNTRY]) VALUES (N'A004  ', N'Ivan                                    ', N'Torento                            ', 15, N'008-22544166   ', N'')
INSERT [dbo].[AGENTS] ([AGENT_CODE], [AGENT_NAME], [WORKING_AREA], [COMMISSION], [PHONE_NO], [COUNTRY]) VALUES (N'A005  ', N'Anderson                                ', N'Brisban                            ', 13, N'045-21447739   ', N'')
INSERT [dbo].[AGENTS] ([AGENT_CODE], [AGENT_NAME], [WORKING_AREA], [COMMISSION], [PHONE_NO], [COUNTRY]) VALUES (N'A006  ', N'McDen                                   ', N'London                             ', 15, N'078-22255588   ', N'')
INSERT [dbo].[AGENTS] ([AGENT_CODE], [AGENT_NAME], [WORKING_AREA], [COMMISSION], [PHONE_NO], [COUNTRY]) VALUES (N'A008  ', N'Alford                                  ', N'New York                           ', 12, N'044-25874365   ', N'')
INSERT [dbo].[AGENTS] ([AGENT_CODE], [AGENT_NAME], [WORKING_AREA], [COMMISSION], [PHONE_NO], [COUNTRY]) VALUES (N'A009  ', N'Benjamin                                ', N'Hampshair                          ', 11, N'008-22536178   ', N'')
INSERT [dbo].[AGENTS] ([AGENT_CODE], [AGENT_NAME], [WORKING_AREA], [COMMISSION], [PHONE_NO], [COUNTRY]) VALUES (N'A011  ', N'Ravi Kumar                              ', N'Bangalore                          ', 15, N'077-45625874   ', N'')
INSERT [dbo].[AGENTS] ([AGENT_CODE], [AGENT_NAME], [WORKING_AREA], [COMMISSION], [PHONE_NO], [COUNTRY]) VALUES (N'A012  ', N'Lucida                                  ', N'San Jose                           ', 12, N'044-52981425   ', N'')
INSERT [dbo].[ORDERS] ([ORD_NUM], [ORD_AMOUNT], [ADVANCE_AMOUNT], [ORD_DATE], [CUST_CODE], [AGENT_CODE], [ORD_DESCRIPTION]) VALUES (200002, 1000, 400, CAST(N'2022-05-15T00:00:00.000' AS DateTime), N'C00012', N'A012  ', N'ADR')
INSERT [dbo].[ORDERS] ([ORD_NUM], [ORD_AMOUNT], [ADVANCE_AMOUNT], [ORD_DATE], [CUST_CODE], [AGENT_CODE], [ORD_DESCRIPTION]) VALUES (200014, 500, 100, CAST(N'2020-07-11T00:00:00.000' AS DateTime), N'C00010', N'A009  ', N'ADR')
INSERT [dbo].[ORDERS] ([ORD_NUM], [ORD_AMOUNT], [ADVANCE_AMOUNT], [ORD_DATE], [CUST_CODE], [AGENT_CODE], [ORD_DESCRIPTION]) VALUES (200023, 500, 100, CAST(N'2021-04-04T00:00:00.000' AS DateTime), N'C00022', N'A002  ', N'ADR')
INSERT [dbo].[ORDERS] ([ORD_NUM], [ORD_AMOUNT], [ADVANCE_AMOUNT], [ORD_DATE], [CUST_CODE], [AGENT_CODE], [ORD_DESCRIPTION]) VALUES (200101, 3000, 1000, CAST(N'2021-07-15T00:00:00.000' AS DateTime), N'C00001', N'A008  ', N'ADR')
INSERT [dbo].[ORDERS] ([ORD_NUM], [ORD_AMOUNT], [ADVANCE_AMOUNT], [ORD_DATE], [CUST_CODE], [AGENT_CODE], [ORD_DESCRIPTION]) VALUES (200102, 2000, 300, CAST(N'2021-05-05T00:00:00.000' AS DateTime), N'C00012', N'A012  ', N'ADR')
INSERT [dbo].[ORDERS] ([ORD_NUM], [ORD_AMOUNT], [ADVANCE_AMOUNT], [ORD_DATE], [CUST_CODE], [AGENT_CODE], [ORD_DESCRIPTION]) VALUES (200103, 1500, 700, CAST(N'2021-11-05T00:00:00.000' AS DateTime), N'C00021', N'A005  ', N'ADR')
INSERT [dbo].[ORDERS] ([ORD_NUM], [ORD_AMOUNT], [ADVANCE_AMOUNT], [ORD_DATE], [CUST_CODE], [AGENT_CODE], [ORD_DESCRIPTION]) VALUES (200104, 1500, 500, CAST(N'2021-03-13T00:00:00.000' AS DateTime), N'C00006', N'A004  ', N'ADR')
INSERT [dbo].[ORDERS] ([ORD_NUM], [ORD_AMOUNT], [ADVANCE_AMOUNT], [ORD_DATE], [CUST_CODE], [AGENT_CODE], [ORD_DESCRIPTION]) VALUES (200105, 2500, 500, CAST(N'2020-11-08T00:00:00.000' AS DateTime), N'C00025', N'A011  ', N'ADR')
INSERT [dbo].[ORDERS] ([ORD_NUM], [ORD_AMOUNT], [ADVANCE_AMOUNT], [ORD_DATE], [CUST_CODE], [AGENT_CODE], [ORD_DESCRIPTION]) VALUES (200106, 2500, 700, CAST(N'2020-02-04T00:00:00.000' AS DateTime), N'C00005', N'A002  ', N'ADR')
INSERT [dbo].[ORDERS] ([ORD_NUM], [ORD_AMOUNT], [ADVANCE_AMOUNT], [ORD_DATE], [CUST_CODE], [AGENT_CODE], [ORD_DESCRIPTION]) VALUES (200108, 4000, 600, CAST(N'2021-02-11T00:00:00.000' AS DateTime), N'C00008', N'A004  ', N'ADR')
INSERT [dbo].[ORDERS] ([ORD_NUM], [ORD_AMOUNT], [ADVANCE_AMOUNT], [ORD_DATE], [CUST_CODE], [AGENT_CODE], [ORD_DESCRIPTION]) VALUES (200111, 1000, 300, CAST(N'2021-07-10T00:00:00.000' AS DateTime), N'C00020', N'A008  ', N'ADR')
INSERT [dbo].[ORDERS] ([ORD_NUM], [ORD_AMOUNT], [ADVANCE_AMOUNT], [ORD_DATE], [CUST_CODE], [AGENT_CODE], [ORD_DESCRIPTION]) VALUES (200112, 600, 200, CAST(N'2020-10-12T00:00:00.000' AS DateTime), N'C00023', N'A006  ', N'ADR')
INSERT [dbo].[ORDERS] ([ORD_NUM], [ORD_AMOUNT], [ADVANCE_AMOUNT], [ORD_DATE], [CUST_CODE], [AGENT_CODE], [ORD_DESCRIPTION]) VALUES (200113, 4000, 600, CAST(N'2021-06-19T00:00:00.000' AS DateTime), N'C00022', N'A002  ', N'ADR')
INSERT [dbo].[ORDERS] ([ORD_NUM], [ORD_AMOUNT], [ADVANCE_AMOUNT], [ORD_DATE], [CUST_CODE], [AGENT_CODE], [ORD_DESCRIPTION]) VALUES (200114, 3500, 2000, CAST(N'2021-08-18T00:00:00.000' AS DateTime), N'C00002', N'A008  ', N'ADR')
INSERT [dbo].[ORDERS] ([ORD_NUM], [ORD_AMOUNT], [ADVANCE_AMOUNT], [ORD_DATE], [CUST_CODE], [AGENT_CODE], [ORD_DESCRIPTION]) VALUES (200115, 900, 700, CAST(N'2020-12-12T00:00:00.000' AS DateTime), N'C00010', N'A009  ', N'ADR')
INSERT [dbo].[ORDERS] ([ORD_NUM], [ORD_AMOUNT], [ADVANCE_AMOUNT], [ORD_DATE], [CUST_CODE], [AGENT_CODE], [ORD_DESCRIPTION]) VALUES (200116, 600, 200, CAST(N'2021-11-18T00:00:00.000' AS DateTime), N'C00010', N'A009  ', N'ADR')
INSERT [dbo].[ORDERS] ([ORD_NUM], [ORD_AMOUNT], [ADVANCE_AMOUNT], [ORD_DATE], [CUST_CODE], [AGENT_CODE], [ORD_DESCRIPTION]) VALUES (200117, 800, 200, CAST(N'2021-10-11T00:00:00.000' AS DateTime), N'C00014', N'A001  ', N'ADR')
INSERT [dbo].[ORDERS] ([ORD_NUM], [ORD_AMOUNT], [ADVANCE_AMOUNT], [ORD_DATE], [CUST_CODE], [AGENT_CODE], [ORD_DESCRIPTION]) VALUES (200118, 500, 100, CAST(N'2020-09-04T00:00:00.000' AS DateTime), N'C00023', N'A006  ', N'ADR')
INSERT [dbo].[ORDERS] ([ORD_NUM], [ORD_AMOUNT], [ADVANCE_AMOUNT], [ORD_DATE], [CUST_CODE], [AGENT_CODE], [ORD_DESCRIPTION]) VALUES (200120, 500, 100, CAST(N'2020-07-06T00:00:00.000' AS DateTime), N'C00009', N'A002  ', N'ADR')
INSERT [dbo].[ORDERS] ([ORD_NUM], [ORD_AMOUNT], [ADVANCE_AMOUNT], [ORD_DATE], [CUST_CODE], [AGENT_CODE], [ORD_DESCRIPTION]) VALUES (200121, 1500, 600, CAST(N'2021-03-19T00:00:00.000' AS DateTime), N'C00008', N'A004  ', N'ADR')
INSERT [dbo].[ORDERS] ([ORD_NUM], [ORD_AMOUNT], [ADVANCE_AMOUNT], [ORD_DATE], [CUST_CODE], [AGENT_CODE], [ORD_DESCRIPTION]) VALUES (200122, 2500, 400, CAST(N'2021-09-17T00:00:00.000' AS DateTime), N'C00003', N'A004  ', N'ADR')
INSERT [dbo].[ORDERS] ([ORD_NUM], [ORD_AMOUNT], [ADVANCE_AMOUNT], [ORD_DATE], [CUST_CODE], [AGENT_CODE], [ORD_DESCRIPTION]) VALUES (200123, 500, 100, CAST(N'2021-09-12T00:00:00.000' AS DateTime), N'C00022', N'A002  ', N'ADR')
INSERT [dbo].[ORDERS] ([ORD_NUM], [ORD_AMOUNT], [ADVANCE_AMOUNT], [ORD_DATE], [CUST_CODE], [AGENT_CODE], [ORD_DESCRIPTION]) VALUES (200125, 2000, 600, CAST(N'2020-10-10T00:00:00.000' AS DateTime), N'C00018', N'A005  ', N'ADR')
INSERT [dbo].[ORDERS] ([ORD_NUM], [ORD_AMOUNT], [ADVANCE_AMOUNT], [ORD_DATE], [CUST_CODE], [AGENT_CODE], [ORD_DESCRIPTION]) VALUES (200130, 2500, 400, CAST(N'2021-03-07T00:00:00.000' AS DateTime), N'C00025', N'A011  ', N'ADR')
INSERT [dbo].[ORDERS] ([ORD_NUM], [ORD_AMOUNT], [ADVANCE_AMOUNT], [ORD_DATE], [CUST_CODE], [AGENT_CODE], [ORD_DESCRIPTION]) VALUES (200134, 4200, 1800, CAST(N'2020-05-19T00:00:00.000' AS DateTime), N'C00004', N'A005  ', N'ADR')
INSERT [dbo].[ORDERS] ([ORD_NUM], [ORD_AMOUNT], [ADVANCE_AMOUNT], [ORD_DATE], [CUST_CODE], [AGENT_CODE], [ORD_DESCRIPTION]) VALUES (201011, 300, 200, CAST(N'2020-12-02T00:00:00.000' AS DateTime), N'C00023', N'A006  ', N'ADR')
INSERT [dbo].[ORDERS] ([ORD_NUM], [ORD_AMOUNT], [ADVANCE_AMOUNT], [ORD_DATE], [CUST_CODE], [AGENT_CODE], [ORD_DESCRIPTION]) VALUES (201012, 600, 200, CAST(N'2020-01-03T00:00:00.000' AS DateTime), N'C00023', N'A004  ', N'ADR')
INSERT [dbo].[ORDERS] ([ORD_NUM], [ORD_AMOUNT], [ADVANCE_AMOUNT], [ORD_DATE], [CUST_CODE], [AGENT_CODE], [ORD_DESCRIPTION]) VALUES (201013, 300, 200, CAST(N'2020-10-02T00:00:00.000' AS DateTime), N'C00023', N'A004  ', N'ADR')
INSERT [dbo].[ORDERS] ([ORD_NUM], [ORD_AMOUNT], [ADVANCE_AMOUNT], [ORD_DATE], [CUST_CODE], [AGENT_CODE], [ORD_DESCRIPTION]) VALUES (210108, 1800, 900, CAST(N'2021-12-04T00:00:00.000' AS DateTime), N'C00021', N'A005  ', N'ADR')
INSERT [dbo].[ORDERS] ([ORD_NUM], [ORD_AMOUNT], [ADVANCE_AMOUNT], [ORD_DATE], [CUST_CODE], [AGENT_CODE], [ORD_DESCRIPTION]) VALUES (210109, 1800, 500, CAST(N'2021-10-04T00:00:00.000' AS DateTime), N'C00021', N'A005  ', N'ADR')
/****** Object:  StoredProcedure [dbo].[spGetAgentOrdersByRank]    Script Date: 07.05.2022 23:46:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Vitaly G
-- Create date: 2022-05-05
-- Description:	accept two parameters first is a list (list of AGENT_CODE) and the second is int
-- The method should return a list of agents with order (ORD_NUM, ORD_AMOUNT, ADVANCE_AMOUNT, ORD_DATE, CUST_CODE, AGENT_CODE, ORD_DESCRIPTION) 
-- only One order for an agent
-- (We should receive the ORD_NUM that received Chronologically in this number)
-- for example, the oldest order for an agent will be 1 The second will be 2 the third 3, and so on.

  

-- =============================================
CREATE   PROCEDURE [dbo].[spGetAgentOrdersByRank]
	-- Add the parameters for the stored procedure here
	@AgentsList varchar(max),
	@Rank int = 1900
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	--IF (@Year < 1980 ) OR (@Year > Year(GETDATE()))
	--BEGIN
	--	RAISERROR('Invalid parameter: @Year should have a valid value between 1980 and current year', 18, 0)
	--	RETURN
	--END

	IF @Rank < 1
	BEGIN
		RAISERROR('Invalid parameter: @Rank should have a valid value greater then zero', 18, 0)
		RETURN
	END

	SET NOCOUNT ON;

	SELECT *
	FROM [dbo].[ORDERS]
	WHERE ord_num IN (
		SELECT 
		(
			SELECT b.ord_num
			FROM [trustedpartners].[dbo].[ORDERS] b 
			WHERE b.[AGENT_CODE] = a.[AGENT_CODE]
			ORDER BY [ORD_DATE] 
			offset @Rank-1 rows
			FETCH NEXT 1 rows only
		) as ord_num
		FROM [trustedpartners].[dbo].[ORDERS] a
		WHERE a.AGENT_CODE IN (SELECT value FROM STRING_SPLIT(@AgentsList, ','))
		GROUP BY a.[AGENT_CODE]
	) 

	RETURN;
END
GO
/****** Object:  StoredProcedure [dbo].[spGetAgentsWithOrdersNumForYear]    Script Date: 07.05.2022 23:46:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Vitaly G
-- Create date: 2022-05-05
-- Description:	accept two parameters first is a number and the Second is a year    
-- The method should return a list of agents (AGENT_CODE, AGENT_NAME, PHONE_NO) that have more or equal 
-- of orders compared to the number in the first value, in the year given in the second value
  

-- =============================================
CREATE   PROCEDURE [dbo].[spGetAgentsWithOrdersNumForYear]
	-- Add the parameters for the stored procedure here
	@OrdersNum int = 1,
	@Year int = 1900
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	IF (@Year < 1980 ) OR (@Year > Year(GETDATE()))
	BEGIN
		RAISERROR('Invalid parameter: @Year should have a valid value between 1980 and current year', 18, 0)
		RETURN
	END

	IF @OrdersNum < 1
	BEGIN
		RAISERROR('Invalid parameter: @OrdersNum should have a valid value greater then zero', 18, 0)
		RETURN
	END

	SET NOCOUNT ON;

	SELECT dbo.agents.agent_code, AGENT_NAME, phone_no
	FROM [dbo].ORDERS
	LEFT JOIN [dbo].[AGENTS] ON dbo.ORDERS.AGENT_CODE = dbo.AGENTS.AGENT_CODE
	WHERE year(ord_date) = @Year
	group by dbo.agents.agent_code, AGENT_NAME, phone_no
	HAVING count(*) >= @OrdersNum
	RETURN;
END
GO
/****** Object:  StoredProcedure [dbo].[spGetAgentWithHighestSellForYear]    Script Date: 07.05.2022 23:46:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Vitaly G
-- Create date: 2022-05-05
-- Description:	accept parameter (year) and return The AGENT_CODE who has the highest sum   
--  of ADVANCE_AMOUNT in the first quarter of the specific year sent in the parameter.   

-- =============================================
CREATE PROCEDURE [dbo].[spGetAgentWithHighestSellForYear]
	-- Add the parameters for the stored procedure here
	@Year int = 1900
	--,@SelectedAgent CHAR(6) OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	IF (@Year < 1980 ) OR (@Year > Year(GETDATE()))
	BEGIN
		RAISERROR('Invalid parameter: @Year should have a valid value between 1980 and current year', 18, 0)
		RETURN
	END

	SET NOCOUNT ON;

	--SELECT @SelectedAgent=TRIM(Agent_Code)
	--FROM (
		SELECT Top(1) 
			TRIM(Agent_code) Agent_Code, 
			sum(ADVANCE_AMOUNT) AS 'TotalAmount'
		FROM [trustedpartners].[dbo].[ORDERS]
		WHERE month(ord_date) <= 3 -- first quoter
		AND year(ord_date) = @Year
		GROUP BY TRIM(Agent_code)
		ORDER BY 2 DESC
	--) tbl1
	--PRINT @SelectedAgent
	RETURN;
END
GO
