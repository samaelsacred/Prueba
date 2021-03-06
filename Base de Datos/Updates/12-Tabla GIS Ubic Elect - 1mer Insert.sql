USE [ActivosFijos]
GO
/****** Object:  StoredProcedure [dbo].[usp_I_acfGIS_UbicacionElectrica]    Script Date: 11/05/2017 11:08:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[usp_I_acfGIS_UbicacionElectrica]
 @iACFid int OUTPUT
,@sACFobra char OUTPUT
,@sKOSTL char OUTPUT
,@sVNRid char OUTPUT
,@decACFvalorniif decimal(18,2) OUTPUT
,@decACFvalortrib decimal(18,2) OUTPUT
,@iUBEid int OUTPUT -- 0
,@sV_T087U_ANLUE char(12) OUTPUT -- 0
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
 @iACFid
,@sACFobra
,@sKOSTL
,@sVNRid
,@decACFvalorniif
,@decACFvalortrib
,@iUBEid -- 0
,@sV_T087U_ANLUE -- 0
)
SELECT  
 @iACFid = ACFid
,@sACFobra = ACFobra
,@sKOSTL = KOSTL
,@sVNRid = VNRid
,@decACFvalorniif = ACFvalorniif
,@decACFvalortrib = ACFvalortrib
,@iUBEid = UBEid
,@sV_T087U_ANLUE = V_T087U_ANLUE
FROM [dbo].[acfACFp_Activo_Fijo]
WHERE 
ACFid = @iACFid
;

