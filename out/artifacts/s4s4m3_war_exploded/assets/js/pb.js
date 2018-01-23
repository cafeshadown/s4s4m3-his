
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
function newgua() {
    $("#dlg").dialog("open").dialog('setTitle', '挂号');
        $.post("deptlist",function (data) {
            $.each(data,function(idx,obj){
                $('#did').append("<option value='"+obj.did+"'>"+obj.dname+"</option>")
            })
        },'json')
    $("#fm").form("clear");
    url = "pbinput";
    document.getElementById("hidtype").value="submit";
}
function edituser() {
    var row = $("#dg").datagrid("getSelected");
    if (row) {
        $("#dlg2").dialog("open").dialog('setTitle', '住院缴费');
        url = "pbpayroom?pbid="+row.pbid;
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

