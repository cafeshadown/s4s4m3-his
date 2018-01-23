
$(function () {

    $('#schbtn').click(function () {

        $("#dg").datagrid({
            url:"historylist?"+$('#findm').serialize()
        });
        $('#dg').datagrid('reload');
    });
});
var url;
var type;
function doctor() {
    var row = $("#dg").datagrid("getSelected");
       if(row) {
           $("#dlg").dialog("open").dialog('setTitle', '就诊');
           url = "save?pbid="+row.pbid;
       }
}

function edituser() {
    var row = $("#dg").datagrid("getSelected");
    if (row) {
        $("#dlg2").dialog("open").dialog('setTitle', '出院登记');
        url = "out?srid="+row.srid;
    }
}
function saveuser() {
    $("#fm").form("submit", {
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
function savepay() {
    $("#fm2").form("submit", {
        url: url,
        onsubmit: function () {
            return $(this).form("validate");
        },
        success: function (result) {
            if (result == "1") {
                $.messager.alert("提示信息", "操作成功");
                $("#dlg2").dialog("close");
                $("#dg").datagrid("load");
            }
            else {
                $.messager.alert("提示信息", "操作失败");
                $("#dlg2").dialog("close");
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

