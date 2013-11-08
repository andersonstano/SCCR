<%-- 
    Document   : index
    Created on : 26/10/2013, 12:09:53
    Author     : pg3648
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SCCR</title>

        <style>
            table#consumo { border: 1px solid #5b5b5b; border-collapse: collapse; font-family: Arial, Helvetica, sans-serif; font-size: 11px; color: #5b5b5b; margin: 0 0 0 25px;}
            table#consumo tr td {padding: 3px 2px 3px 2px; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 9px;} 
            table#consumo td.centralizar { text-align:center;}
            table#consumo td.dof { background-color:#F9E6C1;}
            table#consumo input {  font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 9px;}            
        </style>
        <script language="JavaScript" type="text/JavaScript">
            <!--
            function calc(num)
            {
                eval("q = parseFloat(document.objItens.q"+num+".value);"); 
                eval("p = parseFloat(document.objItens.p"+num+".value);");
                eval("d = parseFloat(document.objItens.d"+num+".value);");
                eval("h = parseFloat(document.objItens.h"+num+".value);");
                eval("m = parseFloat(document.objItens.m"+num+".value);");
                eval("f = parseFloat(document.objItens.f"+num+".value);");
	
                total = (q * p * d * (h + (m / 60.0))) / 1000.0;
                tc = Math.round(q * p / f) / 1000.0;
  
                eval("document.objItens.tot"+num+".value=total;");
                eval("document.objItens.tc"+num+".value=tc;");
            }

            function calctotal(num)
            {
                tot = 0.0, tc = 0.0;
                for(i=1;i<=num;i++) {
                    eval("tot = tot + parseFloat(document.objItens.tot"+i+".value);");
                    eval("tc  = tc  + parseFloat(document.objItens.tc"+i+".value);");
                }
  
                document.objTotal.total.value = Math.round(tot);
                document.objTotal.tc.value = Math.round(tc * 1000) / 1000.0;
            }

            function limpar(num)
            {
                for(i=1;i<=num;i++)
                {
                    eval("document.objItens.q"+i+".value=0);");
                    eval("document.objItens.p"+i+".value=0);");
                    eval("document.objItens.d"+i+".value=0);");
                    eval("document.objItens.h"+i+".value=0);");
                    eval("document.objItens.m"+i+".value=0);");
                    eval("document.objItens.f"+i+".value=0.92);");
                    eval("document.objItens.tot"+i+".value=0);");
                    eval("document.objItens.tc"+i+".value=0);");
                }
                document.objTotal.total.value = "0";
                document.objTotal.tc.value = "0";
            }

            //-->
        </script>

    </head>
    <body>

        <h2>SCCR - Simulação de consumo e carga para residências</h2>
        <table  width="750" border="0" cellpadding="0" cellspacing="0" id="consumo">
            <form name="objItens" onSubmit="javascript:return false;">
                <tr >
                    <td width=250 class="centralizar dof"><b>Equipamento</b></td>
                    <td width=35 class="centralizar dof"><b>Qtde.</b></td>
                    <td width=50 class="centralizar dof"><b>Potência Watts</b></td>
                    <td width=50 class="centralizar dof"><b>Uso de dias/mês</b></td>
                    <td width=100 class="centralizar dof"><b>Tempo de uso durante o dia</b></td>
                    <td width=70 class="centralizar dof"><b>FP</b></td>
                    <td width=45 class="centralizar dof"><b>Total Consumo (kWh)</b></td>
                    <td width=45 class="centralizar dof"><b>Total Carga (kVA)</b></td>
                </tr>
                <%-- start web service invocation --%><hr/>
                <%
                    try {
                        sccr.SCCR service = new sccr.SCCR();
                        sccr.Simulador port = service.getSimuladorPort();
                        // TODO process result here
                        java.util.List<sccr.Equipamento> result = port.listaEquipamentos();

                        int tot = result.size();
                        int i = 1;

                        java.util.Iterator<sccr.Equipamento> it = result.iterator();
                        while (it.hasNext()) {
                            sccr.Equipamento obj = it.next();

                %>
                <tr bgcolor="#ffffff">
                    <td width=250><%=obj.getDescricao()%></td>
                    <td width=35>
                        <div align="center">
                            <input size="2" name="q<%=i%>" onchange='javascript:calc("<%=i%>"); calctotal(<%=tot%>);' value="0" type="text">
                        </div></td>
                    <td width=50>
                        <div align="center">
                            <input size="5" name="p<%=i%>" onchange='javascript:calc("<%=i%>"); calctotal(<%=tot%>);' value="<%=obj.getPotencia()%>" type="text">                        
                        </div>
                    </td>
                    <td width=50>
                        <div align="center">
                            <input size="2" name="d<%=i%>" onchange='javascript:calc("<%=i%>"); calctotal(<%=tot%>);' value="<%=obj.getDiasdeuso()%>" type="text">
                        </div>
                    </td>
                    <td width=100>
                        <div align="center">
                            <input size="2" name="h<%=i%>" onchange='javascript:calc("<%=i%>"); calctotal(<%=tot%>);' value="<%=obj.getHoras()%>" maxlength="2" type="text"> h 
                            <input size="2" name="m<%=i%>" onChange='javascript:calc("<%=i%>"); calctotal(<%=tot%>);' value="<%=obj.getMinutos()%>" maxlength="2" type="text">                                    
                            min</div>
                    </td>
                    <td width=70>
                        <div align="center">
                            <input size="4" name="f<%=i%>" onchange='javascript:calc("<%=i%>"); calctotal(<%=tot%>);' value="<%=obj.getFp()%>" type="text">
                        </div>
                    </td>
                    <td width=45>
                        <div align="center">
                            <input size="5" disabled style="font-weight: bold;" name="tot<%=i%>" value="0" type="text">
                        </div></td>
                    <td width=45>
                        <div align="center">
                            <input size="5" disabled style="font-weight: bold;" name="tc<%=i%>" value="0" type="text">
                        </div></td>
                </tr>

                <%
                            i++;
                        }
                    } catch (Exception ex) {
                        // TODO handle custom exceptions here
                    }
                %>
                <%-- end web service invocation --%><hr/>
            </form>
        </table>

        <table border="0" cellpadding="0" cellspacing="0" width="750" id="consumo">
            <form name="objTotal" onSubmit="return false;">
                <tr>
                    <td width=345 height="50" class="dof">&nbsp;&nbsp;&nbsp;
                        <input type="button" onClick="return false;" value="Calcular">&nbsp;&nbsp;&nbsp;<input type="button" onClick="javascript:window.location.reload();" value="Limpar">&nbsp;&nbsp;&nbsp;<input type="button" onClick="javascript:self.print();" value="Imprimir"></td>
                    <td class="dof"><table width="100%" border="0" cellspacing="3" cellpadding="2">
                            <tr>
                                <td><div align="right"><b>Consumo:</b></div></td>
                                <td><input size="8" name="total" style="font-weight: bold;" disabled type="text" /></td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td><div align="center"><b>kWh/m&ecirc;s</b> </div></td>
                            </tr>
                        </table>
                    </td>
                    <td class="dof"><table width="100%" border="0" cellspacing="3" cellpadding="2">
                            <tr>
                                <td><div align="right"><b>Carga: </b></div></td>
                                <td><input size="8" name="tc" style="font-weight: bold;" disabled type="text" /></td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td><div align="center"><b>kVA</b> </div></td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </form>
        </table>
    </body>
</html>
