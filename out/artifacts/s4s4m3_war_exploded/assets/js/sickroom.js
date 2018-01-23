
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
function killroom() {
    var row = $("#dg").datagrid("getSelected");
    if (row) {

        $.post('nullroom',{srid:row.srid},function (data) {
            $.each(data,function(idx,obj){
                $('#sbname')[0].length=1;
                $('#sbname').append("<option value='"+obj.sbname+"'>"+obj.sbname+"</option>")
            })
        },'json')
        $("#dlg").dialog("open").dialog('setTitle', '住院登记');
        url = "inputroom?srid="+row.srid+"&srcount="+row.srcount+"&srprice="+row.srprice;
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

