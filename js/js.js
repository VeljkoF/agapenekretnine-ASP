$(document).ready(function(){
    var brojac = 0;
    $("#btnDodajSliku").click(function(){
        brojac++;
        if(brojac<9999)
        $(this).before("<input type='file' size='30' id='fSlika' name='fSlika[]'/><br/>");
    });
});



