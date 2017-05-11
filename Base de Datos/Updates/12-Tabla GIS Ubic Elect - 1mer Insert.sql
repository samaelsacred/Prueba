USE [ActivosFijos]
GO
/****** Object:  StoredProcedure [dbo].[usp_I_acfGIS_UbicacionElectrica]    Script Date: 09/05/2017 12:10:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[usp_I_acfGIS_UbicacionElectrica]
 @mACFid int OUTPUT
,@mACFobra char OUTPUT
,@mKOSTL char OUTPUT
,@mVNRid char OUTPUT
,@mACFvalorniif decimal(18,2) OUTPUT
,@mACFvalortrib decimal(18,2) OUTPUT
,@mUBEid int OUTPUT -- 0
,@mV_T087U_ANLUE char(12) OUTPUT -- 0
AS
-- inserts a new row into the table
INSERT INTO [dbo].[acfACFp_Activo_Fijo]
(
 ACFid
,ACFobra
,KOSTL
,VNRid
,ACFvalorniif
,ACFvalortrib
,UBEid -- 0
,V_T087U_ANLUE -- 0
)
VALUES
(
 @mACFid
,@mACFobra
,@mKOSTL
,@mVNRid
,@mACFvalorniif
,@mACFvalortrib
,@mUBEid -- 0
,@mV_T087U_ANLUE -- 0
)
;

