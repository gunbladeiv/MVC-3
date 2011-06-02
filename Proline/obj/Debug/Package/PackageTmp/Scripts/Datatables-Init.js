var oTable;
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
		                    ]
    }).makeEditable({
        sUpdateURL: "/Items/UpdateData",
        sAddURL: "/Items/AddData",
        sDeleteURL: "/Items/DeleteData",
        aoColumns: [
                    {},
                    {
                        data: uomList(209),
                        type: "select", 
                        onBlur: "submit",
                        submit : "OK"
                    },  
                    {},
                    {},
                    {},
                    {},
                    {},
                    {
                        data: grpList(230),
                        type: "select",
                        onBlur: "submit",
                        submit : "OK"
                    },
                    {
                        data: grpList(233),
                        type: "select",
                        onBlur: "submit",
                        submit: "OK"
                    },
                    {
                        data: grpList(234),
                        type: "select",
                        onBlur: "submit",
                        submit: "OK"
                    },
                    {}
                   ]
                });
        });
