$(document).ready(function () {
    var oTable = $('#myItem').dataTable({
        "bProcessing": true,
        "bServerSide": true,
        "sAjaxSource": 'Items/AjaxDataProvider',
        "sPaginationType": "full_numbers",
        "aoColumns": [
                                { "sName": "ID",
                                    "bSearchable": false,
                                    "bSortable": false,
                                    "bVisible": false
                                },
			                    { "sName": "NAME", "sWidth": "20%" },
			                    { "sName": "UOM", "sWidth": "7%", "sClass": "uom" },
			                    { "sName": "REMARKS", "sWidth": "8%" },
                                { "sName": "BARCODE", "sWidth": "8%" },
                                { "sName": "WITH SERIAL", "sWidth": "10%" },
                                { "sName": "REORDER", "sWidth": "7%" },
                                { "sName": "CODE", "sWidth": "8%" },
                                { "sName": "G230", "sWidth": "8%" },
                                { "sName": "G233", "sWidth": "8%" },
                                { "sName": "G234", "sWidth": "8%" },
                                { "sName": "MODEL" }
		                    ],
        "fnDrawCallback": function (oSettings) {
            $('#myItem tbody tr').each(function () {
                var iPos = oTable.fnGetPosition(this);
                $(this).click(function () {
                    window.location = "Items/Edit/" + oSettings.aoData[iPos]._aData[0];
                });
            });
        }
    })
    //    .makeEditable({
    //        sUpdateURL: "/Items/UpdateData",
    //        sAddURL: "/Items/AddData",
    //        sDeleteURL: "/Items/DeleteData",
    //        aoColumns: [ null,null,null,null,null,null,null,null,null,null,null]
    //    });
});

