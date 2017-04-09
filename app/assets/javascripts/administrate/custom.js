$(function () {
makeydatey();
});


$('.app-container').on('cocoon:after-insert', function(e, insertedItem) {
    makeydatey();
});

function makeydatey(){
$(".datetimepicker").datetimepicker({
    debug: false,
    format: "YYYY-MM-DD HH:mm:ss",
//    ampm: true, // FOR AM/PM FORMAT
//    format: "YYYY-MM-DD g:i A",
});
}
