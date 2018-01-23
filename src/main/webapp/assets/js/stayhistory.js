
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

function outroom() {
    var row = $('#dg').datagrid('getSelected');
    if (row) {
        $.messager.confirm('Confirm', '是否出院?', function (r) {
            if (r) {
                $.post('out', { pbname:row.pbname,shid:row.shid}, function (result) {
                    $('#dg').datagrid('reload');
                    if (result==1) {
                        alert("成功，你可以滚了");
                    } else {
                        alert("你还想出院？")
                    }
                }, 'json');
            }
        });
    }
}

