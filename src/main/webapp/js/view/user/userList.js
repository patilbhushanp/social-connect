$(document).ready(function() {
	$("<link/>", {
		   rel: "stylesheet",
		   type: "text/css",
		   href: "css/datatable/datatables.min.css"
		}).appendTo("head");
	
	var table = $('#userListTable').DataTable({
		"ajax": 'js/view/user/testUserData.txt',
		"columnDefs": [
           {
        	   "data": "EmployeeName",
               "targets": [0],
               "searchable": false
           },
           {
        	   "data": "OU",
               "targets": [1],
               "searchable": false
           },
           {
        	   "data": "Designation",
               "targets": [2],
               "searchable": false
           },
           {
        	   "data": "Location",
               "targets": [3],
               "searchable": false
           },
           {
			    "className":      'details-control',
			    "orderable":      false,
			    "data":           null,
			    "targets": [4],
			    "defaultContent": ''
			}
        ],
        pageLength: 10,
        responsive: true,
        dom: '<"toolbar">fpt',
        "order": [[1, 'asc']]
    });
	
    $('#userListTable tbody').on('click', 'td.details-control', function (){
        var tr = $(this).closest('tr');
        var row = table.row( tr );
        if ( row.child.isShown() ) {
            row.child.hide();
            tr.removeClass('shown');
        } else {
            row.child( format(row.data()) ).show();
            tr.addClass('shown');
        }
    });
});


/* Formatting function for row details - modify as you need */
function format ( data ) {
    return '<div class="col-lg-6 pull-right">'+
			    '<table cellpadding="5" cellspacing="0" border="0" style="padding-left:50px;">'+
			        '<tr>'+
				        '<td></td>'+    
				        '<td><img src="img/unknown-person.png" title="employee snap" alt="employee snap" /></td>' +
			        '</tr>'+
			    '</table>'+
			'</div>' +
			'<div class="col-lg-6 pull-left">'+
			    '<table cellpadding="5" cellspacing="0" border="0" style="padding-left:50px;">'+
			        '<tr>'+
			            '<td>Full name:</td>'+
			            '<td>' + data.EmployeeName + '</td>'+
			        '</tr>'+
			        '<tr>'+
			            '<td>Email Id:</td>'+
			            '<td>john.smith@xpanxion.co.in</td>'+
			        '</tr>'+
			        '<tr>'+
			        '<td>Extension number:</td>'+
				        '<td>1234</td>'+
				    '</tr>'+
			        '<tr>'+
			            '<td>Extra info:</td>'+
			            '<td>And any further details here (images etc)...</td>'+
			        '</tr>'+
			    '</table>'+
			'</div>';

}