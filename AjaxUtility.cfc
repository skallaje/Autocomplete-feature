<cfcomponent name="AjaxUtility">
<cffunction name = "getProductsMatch" returntype="string" access="remote" returnformat="plain">
<cfargument name="searchId" type="string" required="yes">
<cfquery name="prodQuery" datasource="BestDeal">
select productID, productName from products where productName like '#searchId#%'
</cfquery>
<cfset str = "">
<cfloop query="prodQuery">
<cfset str = str & "<product>"&"<id>"&prodQuery.productID&"</id>"&"<productName>"&prodQuery.productName&"</productName>"&"</product>">
</cfloop>
<cfreturn "<products>" & str & "</products>">
</cffunction>
</cfcomponent>