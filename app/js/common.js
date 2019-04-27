$(document).ready(function() {

    // Executes when the HTML document is loaded and the DOM is ready
    // alert("Document is ready");
});

$(function(){

    $('.nselect-1').nSelect();

});


function fldset(){
    out = "";
    return out;
}


$(".addbtn").click(function () {
    that = $(this).parents(".cartform");
    //those = fldset();
    $('.form-group').clone().appendTo(".cartform");

    //that.append(those);
    }
);