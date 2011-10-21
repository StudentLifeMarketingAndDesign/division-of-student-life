$(document).ready(function () {
    var title_input = $("#title_input");
    if (title_input.typeahead != null) {
        title_input.typeahead({
            match: "omega",
            data: myarray ? myarray : [],
            showDelay: 20,
            spellCheck: true,
            acceptKeys: [9],
            helpMsg: "",
            maxLen: 10,
            autoScroll: 500
        });
    }

    $("#sessionmgr_link").click(function () {
        var dlg = $("#dialog").dialog({
            title: "Please Log In",
            modal: true,
            height: 300,
            width: 300,
            buttons: {
                "Log In": function () {
                    dlg.find("form").submit();
                },
                "Cancel": function () {
                    dlg.dialog("close");
                }
            }
        });
        return false;
    });
});