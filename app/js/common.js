$(document).ready(function() {

    // Executes when the HTML document is loaded and the DOM is ready
    // alert("Document is ready");
});

$(function(){

    $('.nselect-1').nSelect();

});

$(".addbtn").click(function () {
    that = $(this).parents(".cartform");
    that.append("<H1>HELLO!!!!</H1>");
    }
);