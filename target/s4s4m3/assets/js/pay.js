
    $(function () {

        $('#schbtn').click(function () {

            $("#dg").datagrid({
                url:"paylist?"+$('#findm').serialize()
            });


                $('#dg').datagrid('reload');


        });
    });
var url;
var type;
function newuser() {
    $("#dlg").dialog("open").dialog('setTitle', 'New User'); ;
    $("#fm").form("clear");
    url = "<%=basePath%>emp/empinput";
    document.getElementById("hidtype").value="submit";
}
function edituser() {
    var row = $("#dg").datagrid("getSelected");
    if (row) {
        $("#dlg").dialog("open").dialog('setTitle', 'Edit User');
        $("#fm").form("load", row);
        url = "<%=basePath%>emp/empupdate?eid=" + row.eid;
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
                $("#dlg2").dialog("close");
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
                $.post('<%=basePath%>emp/delete', { eid: row.eid }, function (result) {
                    $('#dg').datagrid('reload');
                    if (result.success) {
                        alert("删除成功");
                        // reload the user data
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
