<cfquery name="query" datasource="BestDeal">
select * from products
</cfquery>

<cfdump var = "#query#">