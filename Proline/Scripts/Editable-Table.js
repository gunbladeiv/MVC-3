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

function g230list(y) {
    $.post('Items/grpSelectList?id='+y, {},
    function (data) {
        g230list = validateJSON(data);
    },
    'json/javascript'
    );
    return g230list;
}

function g233list(y) {
    $.post('Items/grpSelectList?id=' + y, {},
    function (data) {
        g233list = validateJSON(data);
    },
    'json/javascript'
    );
    return g233list;
}

function g234list(y) {
    $.post('Items/grpSelectList?id=' + y, {},
    function (data) {
        g234list = validateJSON(data);
    },
    'json/javascript'
    );
    return g234list;
}
