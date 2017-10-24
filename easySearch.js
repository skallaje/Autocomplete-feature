function init(){
    completeField = document.getElementById("searchId");
    completeTable = document.getElementById("complete-table");
    autoRow = document.getElementById("auto-row");
}

function doCompletion(){
    unhideTable();
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
      //buildTable(this.responseText);
      buildTable((new DOMParser()).parseFromString(this.responseText, "text/xml"));
    }
  };
    var url = "AjaxUtility.cfc?method=getProductsMatch&searchId="+escape(searchId.value);
    if(searchId.value != ''){
        xhttp.open("GET", url , true);
        xhttp.send();
    }else{
        hideTable();
    }
}

function hideTable(){
    autoRow.style.visibility="hidden";
}

function unhideTable(){
    autoRow.style.visibility="visible";
}

function clearTable() {
    if (completeTable.getElementsByTagName("tr").length > 0) {
        completeTable.style.display = 'none';
        for (loop = completeTable.childNodes.length -1; loop >= 0 ; loop--) {
            completeTable.removeChild(completeTable.childNodes[loop]);
        }
    }
}

function buildTable(res){
    clearTable();
    if (res == null) {
        return false;
    } else {
        var products = res.getElementsByTagName("products")[0];
        if (products.childNodes.length > 0) {
            for (loop = 0; loop < products.childNodes.length; loop++) {
                var product = products.childNodes[loop];
                var productName = product.getElementsByTagName("productName")[0];
                var productId = product.getElementsByTagName("id")[0];
                appendProduct(productId.childNodes[0].nodeValue, productName.childNodes[0].nodeValue);
            }
        }
    }
}

function appendProduct(id, name){
    var row;
    var cell;
    var linkElement;    
    completeTable.style.display = 'table';
    row = document.createElement("tr");
    cell = document.createElement("td");
    linkElement = document.createElement("a");
    linkElement.style.padding='5px';
    linkElement.setAttribute("href", "/A4/RetrieveProductInfoServlet?id="+id);
    linkElement.appendChild(document.createTextNode(name));
    cell.appendChild(linkElement);
    row.appendChild(cell);
    completeTable.appendChild(row);
}