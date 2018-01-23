
    $(function () {
        $('#schbtn').click(function () {

            $("#dg").datagrid({
                url:"pblist?"+$('#findm').serialize()
            });
                $('#dg').datagrid('reload');


        });
    });
var url;
var type;

function edituser() {
    var row = $("#dg").datagrid("getSelected");
    if (row) {
        $("#dlg2").dialog("open").dialog('setTitle', '住院缴费');
        url = "pbpayroom?pbid="+row.pbid;
    }
}
    function medicinepay() {
        var row = $("#dg").datagrid("getSelected");
        if (row) {
            $("#dlg").dialog("open").dialog('setTitle', '药品缴费');
            $.post('recipelist',{pbid:row.pbid}, function (data) {
                var dg = document.getElementById("datagrid");
                for (var i = 0; i < data.length; i++) {
                    var ro = data[i];
                    var tr = "<tr>";
                    tr += "<td>" + row.pbid+ "</td>";
                    tr += "<td>" + ro.mname + "</td>";
                    tr += "<td>" + ro.mcount + "</td>";
                    tr += "<td>" + ro.runit + "</td>";
                    tr += "<td>" + ro.rname + "</td>";
                    tr += "</td>";
                    tr += "</tr>";
                    dg.innerHTML += tr;
                }
            }, 'json');
            url = "tongji?pbid="+row.pbid;
        }
    }


function savepay() {
    $("#fm2").form("submit", {
        url: url,
        onsubmit: function () {
            return $(this).form("validate");
        },
        success: function (result) {
            if (result == "1") {
                $.messager.alert("提示信息", "操作成功");
                $("#dlg").dialog("close");
                $("#dg").datagrid("load");
            }
            else {
                $.messager.alert("提示信息", "操作失败");
                $("#dlg").dialog("close");
                $("#dg").datagrid("load");
            }
        }
    });
}

function destroyUser() {
    var row = $('#dg').datagrid('getSelected');
    if (row) {
        $.messager.confirm('Confirm', '是否删除?', function (r) {
            if (r) {
                $.post('pbdelete', { pbid: row.pbid }, function (result) {
                    $('#dg').datagrid('reload');
                    if (result.success) {
                        alert("删除成功");
                    } else {
                        $.messager.show({   // show error message
                            title: '无法删除',
                            msg: result.errorMsg
                        });
                    }
                }, 'json');
            }
        });
    }
}

