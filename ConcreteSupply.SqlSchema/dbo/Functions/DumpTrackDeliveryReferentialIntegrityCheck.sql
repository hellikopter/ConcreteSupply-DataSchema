CREATE FUNCTION [dbo].[DumpTrackDeliveryReferentialIntegrityCheck]
(
	@Id int,	
	@PostalAddressId int
)
RETURNS bit
AS
BEGIN
	declare @result bit=0;

	if exists(
		select top 1 d.Id from Delivery d
		join PostalAddress pa on pa.Id=d.PostalAddressId
		join PostalAddress pa_all on pa_all.ContactPointId=pa.ContactPointId
		where d.Id=@Id and pa_all.Id=@PostalAddressId)
		set @result=1
	
	return @result
END