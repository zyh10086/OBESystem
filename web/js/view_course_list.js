var example1 = $("#example1").DataTable();
var examaple2 = $('#example2').DataTable({
    "paging": true,
    "lengthChange": false,
    "searching": false,
    "ordering": true,
    "info": true,
    "autoWidth": false
});

$(document).ready(function () {
    $.ajax({
        type: "GET",
        url: "/OBESystem/GetAllCourseList",
        dataType: 'json',
        success: function (data) {
            console.log(data);
            data.forEach(addRow);
        },
        error: function (response) {
            console.log(response);
        }
    });
}
);

function addRow(data) {
    var codeCourse = data.codeCourse;
    var title = data.title;
    var contributorName = data.contributorName;

    var tools = "<button type=\"button\" class=\"btn btn-success btn-xs\"><i class=\"fa fa-edit\"></i></button>\n\
<button type=\"button\" class=\"btn bg-purple btn-xs\"><i class=\"fa  fa-eye\"></i></button>\n\
<button type=\"button\" class=\"btn btn-danger btn-xs\"><i class=\"fa fa-trash\"></i></button>"
    example1.row.add([codeCourse, title, contributorName, tools]);
    example1.draw();
    
}
