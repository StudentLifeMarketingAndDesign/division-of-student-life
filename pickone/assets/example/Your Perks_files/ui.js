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
        $("#pick-cat-panel").css("display", "none");
        $("#pick-org-panel").css("display", "none");
        $("#login-panel").css("display", "block");
        $("#loginform input").keypress(function (e) { if (e.keycode == 13) { $("#loginform").submit(); } });
        var dlg = $("#dialog").dialog({
            title: "Please Log In",
            modal: true,
            height: 300,
            width: 300,
            buttons: {
                "Log In": function () {
                    dlg.find("#loginform").submit();
                },
                "Cancel": function () {
                    dlg.dialog("close");
                }
            }
        });
        return false;
    });

    $(".pick-this").click(function (o) {
        var info = $(o.currentTarget).attr("title");
        var pick = info.split(";");
        var type = pick[0], id = pick[1], title = pick[2];

        if (!loggedin) { // determined in LogOnUserControl.ascx
            $("#pick-cat-panel").css("display", "none");
            $("#pick-org-panel").css("display", "none");
            var dlg = $("#dialog");
            var mylogin = function () {
                var un = dlg.find("#UserName").val();
                var pw = dlg.find("#Password").val();
                $.post("/Account/LogOnAjax",
                            { username: un, password: pw },
                            function (data, status, jqXHR) {
                                if ($(data).find("result").attr("value") == "success") {
                                    makePick(type, id, title, dlg);
                                }
                            }
                        )
            };
            $("#loginform input").keypress(function (e) { if (e.keycode == 13) { mylogin(); } });
            dlg.dialog({
                title: "Please Log In",
                modal: true,
                height: 400,
                width: 512,
                buttons: {
                    "Log In": mylogin,
                    "Cancel": function () {
                        dlg.dialog("close");
                    }
                }
            });
        } else {
            makePick(type, id, title);
        }
        return false;
    });

    function makePick(type, id, title, dlg) {
        $("#login-panel").css("display", "none");
        $(".pick-name").text(title);
        if (type.toLowerCase() == "organization") {
            $("#pick-org-panel").css("display", "block");
            $("#pick-cat-panel").css("display", "none");
        } else {
            $("#pick-org-panel").css("display", "none");
            $("#pick-cat-panel").css("display", "block");
        }
        if (!dlg) {
            var dlg = $("#dialog").dialog({
                title: "Pick This?",
                modal: true,
                height: 400,
                width: 512,
                buttons: {
                    "Make This My Pick": function () {
                        postPickDialog();
                    },
                    "Cancel": function () {
                        dlg.dialog("close");
                    }
                }
            });
        } else {
            dlg.dialog("option", "title", "Pick This?");
            dlg.find(".ui-dialog-buttonpane button:contains('Log In') span").text("Make This My Pick");
        }
    }
});