<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="bean.Calling_system_bean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="models.Query"%>
<%
    
    String hfccd = "-";
    String discp = "-";
    String subdi = "-";
    
    try {
        hfccd = request.getParameter("hfccd");
        discp = request.getParameter("discp");
        subdi = request.getParameter("subdi");
    } catch (Exception e) {
    }
    
    String hfccd_str = "";
    if (hfccd != "") {
        hfccd_str = " AND cs_hfc_cd = '"+hfccd+"'";
    }
    String discp_str = "";
    if (discp != "") {
        discp_str = " AND cs_discipline = '"+discp+"'";
    }
    String subdi_str = "";
    if (subdi != "") {
        subdi_str = " AND cs_sub_discipline = '"+subdi+"'";
    }

    String sql = "SELECT * FROM calling_system WHERE 1=1"+hfccd_str+discp_str+subdi_str;
    
    Query q = new Query();
    ArrayList<Calling_system_bean> d = q.getQueryCallingSystem(sql);
    
    Date datenow = new Date();
    SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/YYYY HH:mm:ss");
    out.print(sdf.format(datenow));
    
%>

<table class="table table-hover table-striped">
    <thead>
        <tr style="background-color: rgba(0, 255, 100, 0.2);">
            <th><center>Name</center></th>
            <th><center>Patient No.</center></th>
            <th><center>Queue Name</center></th>
        </tr>
    </thead>
    <tbody>
        <%
        if (d.size() > 0) {
            for (int i = 0; i < d.size(); i++) {
                String cs_id = d.get(i).getCs_id();
                int cs_callingtime = d.get(i).getCs_callingtime();
                %>
                <tr>
                    <td><center><%=d.get(i).getCs_patient_name() %></center></td>
                    <td><center id="qno_<%=i %>"><%=d.get(i).getCs_queue_no() %></center></td>
                    <td>
                        <center id="qname_<%=i %>"><%=d.get(i).getCs_queue_name() %></center>
                        <script>
                            <% if (cs_callingtime > 0) { %>
                            $(document).ready(function () {
                                var qno = $("#qno_<%=i %>").html();
                                var qname = $("#qname_<%=i %>").html();
                                var ayat = "Number " + qno + ", queue " + qname;
                                var msg = new SpeechSynthesisUtterance(ayat);
                                window.speechSynthesis.speak(msg);
                            });
                            <% 
                                Query q2 = new Query();
                                cs_callingtime -= 1;
                                String sql2 = "UPDATE calling_system SET cs_callingtime = '"+cs_callingtime+"' WHERE cs_id = '"+cs_id+"' ";
                                q2.setQuery(sql2);
                            } else {
                            } %>
                        </script>
                    </td>
                </tr>
                <%
            }
        }
        %>
    </tbody>
</table>