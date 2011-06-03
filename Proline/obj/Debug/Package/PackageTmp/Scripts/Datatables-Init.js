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
                        data: uomlist("209"),
                        type: "select",
                        submit: "OK"
                    },
                    {},
                    {},
                    {
                        type: "select",
                        onBlur: "submit",
                        data: "{ null:'Please Select',False:'Not Included',True:'Included'}",
                        submit: "OK"
                    },
                    {},
                    {},
                    {
                        data: g230list("230"),
                        type: "select",
                        submit: "OK"
                    },
                    {
                        data: g233list("233"),
                        type: "select",
                        submit: "OK"
                    },
                    {
                        data: g234list("250"),
                        type: "select",
                        submit: "OK"
                    },
                    {}
                   ]
    });
});
