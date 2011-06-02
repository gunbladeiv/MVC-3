function validateJSON(x) {
    var orig = x;
    var stgify = JSON.stringify(orig);
    var splitchar = ['\\"', '\',\'', '[', ']', '\"'];
    var joinchar = ['\'', '\':\'', '', '', ''];

    for (i = 0; i < 5; i++) {
        stgify = stgify.split(splitchar[i]);
        tmp = stgify.join(joinchar[i]);
        stgify = tmp;
    }
    stgify = "{" + stgify + "}";
    var finalEdit = stgify;
    return finalEdit;
}

function uomlist(y) {
    $.post('Items/uomSelectList?id='+y, {},
    function (data) {
        uomlist = validateJSON(data);
    },
    'json/javascript'
    );

    return uomlist;
}

function uomList(y) {
    ulist = uomlist(y);
    return ulist;
}

function grplist(y) {
    $.post('Items/grpSelectList?id='+y, {},
    function (data) {
        grplist = validateJSON(data);
    },
    'json/javascript'
    );
    return grplist;
}

function grpList(y) {
    b = grplist(y);
    return b;
}