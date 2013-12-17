function viewVehicles(){
	$.ajax({
		type:"post",
		url:"viewCarAction?carNumber="+$("#carNumber").attr("value"),
		dataType:"json",
		beforeSend: function(result) {
        },
		success:function(data){
        	//alert(data.msg);
        	var table = $("#carTable");
			$.each(data.cars, function(i, item){
				//alert(item.carNum+" "+item.capability+" "+item.volume);<tr><td>"+eval(i)+
				table.append(
						"</td><td>"+item.carNum+
						"</td><td>"+item.carType+
						"</td><td>"+item.capability+
						"</td><td>"+item.volume+
						"</td><td><a href='#'>修改</a></td>"+
						"<td><a href='#'>删除</a></td></tr>");
			})
		},
        error:function(data, status, err){
	        alert(JSON.stringify(data));
        }
	});
}

function addTurn(){
	//alert($("#carNum").val());
	var url = "../addTurnAction?carNum="+$("#carNum").val()+
				"&turnNum="+$("#turnNum").attr("value")+
				"&startTime="+$("#startTime").attr("value")+
				"&arriveTime="+$("#arriveTime").attr("value");
	$.post(url);
}

function addVehicle(){
	alert($("#vType").attr("value"));
	var url = "../addCarAction?number="+$("#number").attr("value")+
			"&capability="+$("#capability").attr("value")+
			"&volume="+$("#volume").attr("value")+
			"&vType="+$("#vType").attr("value");
	$.post(url,function(){
		//$(locaiton.href="");
	});
}

function viewTurns(){
	$.ajax({
		type:"post",
		url:'../viewTurnAction?turnNum='+$("#turnNum").attr("value"),
		dataType:"json",
		beforeSend: function(result) {
        },
		success:function(data){
        	//alert(JSON.stringify(data));
    		$(".temp").remove();
    		var table = $("#turnTable");
    		$.each(data.turns, function(i, item){
    			table.append("<tr class='temp'><td>"+eval(i)+
    					"</td><td>"+item.classNum+
    					"</td><td>"+"车辆编号"+
    					"</td><td>"+"线路编号"+
    					"</td><td>"+item.startTime+
    					"</td><td>"+item.arriveTime+
    					"</td></tr>");
    		})
		},
        error:function(data, status, err){
	        alert(JSON.stringify(data));
        }
	});
}

function genRoutes(){
	//var url = "getRoutesAction?start=北京&end=广东";
	var url = "getRoutesAction?from="+$("#from").attr("value")+
	"&to="+$("#to").attr("value");
	$.ajax({
		type:"post",
		url:url,
		dataType:"json",
		beforeSend: function(result) {
		
        },
		success:function(data){
        	var routeTable = $("#routeTable");
        	$("#routeTable").html("");
        	routeTable.append("<tr style='background-color:#cccccc;;'>"+
        			"<th width='46'></th><th aligh='center' width='406'>路线</th></tr>");
        	$.each(data.rs,function(i, item){
        		routeTable.append("<tr><td><input id='cb' type='checkbox' value='"+item+
        				"'/></td><td>"+item+"</td></tr>");
        	})
        	routeTable.append('<tr><td id="g" colspan="3" style="text-align:center;">' +
        			'<button name="Submit2" onclick="addRoute()">选定</button>' +
                    '<input type="button" name="Submit3" value="返回" onClick="window.history.go(-1)">' +
                    '</td></tr>');
		},
        error:function(data){
			alert("error");
	        //alert(JSON.stringify(data));
        }
	});
}

function addRoute(){
	var routes = new Array();
	var i=0;
	$(":checkbox").each(function(ele,index){
		if($(this).attr("checked")){
			//alert($(this).attr("value"));
			routes[i]=$(this).attr("value");
			i += 1;
		}
	});
	$.post('addRouteAction?routes='+routes.join('/'),function(){
		alert('添加路径成功');
	},'json');
}
function checkRoutes(){
	var from = $("#from").attr("value");
	var to = $("#to").attr("value");
	if(from=="" || to=="")
	{
		alert("请选择起始配送点");
		return;
	}
	var url = "checkRoutesAction?from=" + from +
			  "&to=" + to;
	var routesTable = $("#routesTable");
	$(".temp").remove();
	$.post(url,function(data){
		//alert(JSON.stringify(data));
		$.each(data.routes,function(i,item){
			routesTable.append("<tr class='temp'><td><input type='checkbox' value='"+item.id+"'></td><td>"+
					item.id+"</td><td>"+
					item.startName+"</td><td>"+
					item.endName+"</td><td>"+
					item.routes+"</td></tr>");
		})
	},'json');
}
function cancleSelected(){
	var selected = new Array();
	var i=0;
	$(":checkbox").each(function(ele,index){
		if($(this).attr("checked")){
			//alert($(this).attr("value"));
			selected[i]=$(this).attr("value");
			i += 1;
		}
	});
	$.post('removeRoutesAction?selected='+selected.join('/'),function(data){
		alert("删除路径！");
	});
}