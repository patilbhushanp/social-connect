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
               "searchable": true
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
        dom: '<"toolbar">fipt',
        "order": [[0, 'asc']]
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
    $('#userListTable_filter').addClass('col-lg-3');
    $('#userListTable_info').addClass('col-lg-3');
    $('#userListTable_paginate').addClass('col-lg-6');
    $('#userListTable_paginate').addClass('pull-left');
    
    $('input[type=search]').each(function(index, element) {
    	$(element).css('height', '28px');
    });
});


/* Formatting function for row details - modify as you need */
function format ( data ) {
    return '<div>' +
				'<div class="col-lg-6 pull-right personal-info" >'+
				    '<table cellpadding="5" cellspacing="0" border="0" style="width: 60%;padding-left:50px;height:130px;">'+
				        '<tr>'+
					        '<td>'+
					        '<img style="height:130px;" src="img/unknown-person.png" title="employee snap" alt="employee snap" />'+
					        '</td>'+    
					        '<td>'+
							'<a class="navbar-minimalize minimalize-styl-2 btn btn-primary " href="userDetail.xconnect">View Profile</a>'+					        
					        '</td>' +
				        '</tr>'+
				    '</table>'+
				'</div>' +
				'<div class="col-lg-6 pull-left personal-info">'+
				    '<table cellpadding="5" cellspacing="0" border="0" style="padding-left:50px;height:130px;">'+
				        '<tr>'+
				            '<td width="30%" >Full name:</td>'+
				            '<td width="70%" >' + data.EmployeeName + '</td>'+
				        '</tr>'+
				        '<tr>'+
				            '<td>Email Id:</td>'+
				            '<td>' + data.EmailID + '</td>'+
				        '</tr>'+
				        '<tr>'+
				        '<td>Extension number:</td>'+
					        '<td>1234</td>'+
					    '</tr>'+
				        '<td>Blood Group:</td>'+
					        '<td>O Positive</td>'+
					    '</tr>'+
				        '<tr>'+
				            '<td>Address:</td>'+
				            '<td>' + data.Address + '</td>'+
				        '</tr>'+
				     '</table>'+
				'</div>'+
			'</div>';

}