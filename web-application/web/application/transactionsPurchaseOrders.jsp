<%@page import="supply.medium.home.bean.TransactionQteBean"%>
<%@page import="supply.medium.home.database.TransactionQteMaster"%>
<%@page import="supply.medium.home.database.CurrencyMaster"%>
<%@page import="supply.medium.home.database.QuantityTypeMaster"%>
<%@page import="supply.medium.home.database.GlobalProductItemMaster"%>
<%@page import="supply.medium.home.bean.GlobalProductItemBean"%>
<%@page import="supply.medium.home.bean.TransactionQteItemBean"%>
<%@page import="supply.medium.home.database.TransactionQteItemMaster"%>
<%@page import="supply.medium.home.database.CompanyMaster"%>
<%@page import="supply.medium.home.database.StateMaster"%>
<%@page import="supply.medium.home.bean.CompanyDetailsForVrBean"%>
<%@page import="supply.medium.home.bean.TransactionPoBean"%>
<%@page import="supply.medium.home.database.TransactionPoMaster"%>
<%@page import="supply.medium.home.bean.CountryBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="supply.medium.home.database.CountryMaster"%>
<%@page import="supply.medium.home.database.CompanyDetailAddressMaster"%>
<%@page import="supply.medium.home.bean.CompanyDetailAddressBean"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- saved from url=(0048)/SupplyMedium/user_home.jsp -->
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <link rel="stylesheet" href="inside/jquery-ui-1.10.0.custom.css">
        <link rel="stylesheet" href="inside/jquery-ui-1.9.2.custom_spinner.css">
        <link rel="stylesheet" href="inside/commonlayout.css">
        <link rel="stylesheet" href="inside/elements.css">
        <link rel="stylesheet" href="inside/Custome_Buttons.css">
        <link rel="stylesheet" href="inside/jquery.mCustomScrollbar.css">
        <link rel="stylesheet" href="inside/user_home.css">
        <link rel="stylesheet" href="inside/dilbag.css">
        <link rel="stylesheet" href="inside/po.css">
        <!-- Chat JS style -->
        <link rel="stylesheet" type="text/css" href="inside/jquery.chatjs.css">
        <script type="text/JavaScript" src="inside/SMNamespace.js">
        </script>
        <script type="text/JavaScript" src="inside/jquery-1.9.0.js">
        </script>
        <script type="text/JavaScript" src="inside/jquery-ui-1.10.0.custom.js">
        </script>
        <script type="text/JavaScript" src="inside/jquery-ui-1.9.2.custom_spinner.js">
        </script>
        <script type="text/JavaScript" src="inside/filterlist.js">
        </script>
        <script type="text/JavaScript" src="inside/jquery.customSelect.js">
        </script>
        <script type="text/javascript" src="inside/jquery.mCustomScrollbar.js">
        </script>
        <script src="inside/jquery.mousewheel.min.js">
        </script>
        <script type="text/JavaScript" src="inside/jquery.tooltipster.js">
        </script>
        <script type="text/JavaScript" src="inside/jquery.dataTables.js">
        </script>
        <script type="text/JavaScript" src="inside/common.js">
        </script>
        <script type="text/JavaScript" src="inside/jquery.validate.js">
        </script>
        <script type="text/JavaScript" src="inside/additional-methods.js">
        </script>
        <script type="text/JavaScript" src="inside/dropdownfiller.js">
        </script>
        <script type="text/JavaScript" src="inside/SMNamespace(1).js">
        </script>
        <script type="text/JavaScript" src="inside/footer.js">
        </script>
        <script type="text/JavaScript" src="inside/ajax_loader.js">
        </script>
        <!-- ChatJS and dependencies -->
        <script src="inside/jquery.chatjs.longpollingadapter.js" type="text/javascript">
        </script>
        <script src="inside/jquery.autosize.min.js" type="text/javascript">
        </script>
        <script src="inside/jquery.activity-indicator-1.0.0.min.js" type="text/javascript">
        </script>
        <script src="inside/jquery.chatjs.js" type="text/javascript">
        </script>
        <script type="text/JavaScript" src="inside/user_home.js">
        </script>
        <script type="text/JavaScript" src="inside/dilbag.js">
        </script>
        <title>Supply Medium</title>
        <!--<script>
        Usr_anlys('Admin');    
        </script>-->
    </head>
    <body onLoad="lockUnlock('webkrit_content_loader');<% if (request.getParameter("generatepo") != null) { %>swapWkTabs2('po_form_tab', 'po_request_tab');
                $('#po_request_content').hide();
                $('#po_form_content').show();
                $('#outsideBuyer').hide();<% }%>" onkeydown="displayunicode(event);">
    <link rel="stylesheet" href="inside/userheader.css">
    <link rel="stylesheet" href="inside/notifi_dropdown.css">
    <%@include file="_header.jsp"%>
    <div class="mainpage" id="mainpage" style="min-height:700px;background-color:#f1f1f1">
        <link rel="stylesheet" href="inside/transaction.css">
        <link rel="stylesheet" href="inside/tablestyle.css">
        <link rel="stylesheet" href="inside/Custome_Popup.css">
        <div class="pagetitlecontainer">
            <!-- Page header -->
            <div class="pagetitle">Transaction</div>
        </div>
        <div class="page">
            <div class="contentcontainer" style="min-height:709px;">
                <div id="trans_super_container" style="">
                    <div class="main_tab_container">
                        <!-- This is the main tab bar container -->
                        <div id="po_tab" class="main_tab_unselect">
                            <!-- This is the RFQ tab -->
                            <a href="transactions.jsp" class="white">RFQ</a>
                        </div>
                        <div id="po_tab" class="main_tab_unselect">
                            <!-- This is the Quotation tab -->
                            <a href="transactionsQuote.jsp" class="white">Quote</a>
                        </div>
                        <div id="po_tab" class="main_tab_select">
                            <!-- This is the Purchase order tab -->
                            <a href="transactionsPurchaseOrder.jsp" class="white">Purchase Order</a>
                        </div>
                        <div id="invoice_tab" class="main_tab_unselect">
                            <!-- This is the Invoice tab -->
                            <a href="transactionsInvoice.jsp" class="white">Invoice</a>
                        </div>
                        <div id="payment_tab" class="main_tab_unselect">
                            <!-- This is the Invoice tab -->
                            <a href="transactionsPayment.jsp" class="white">Payment</a>
                        </div>
                    </div>
                    <div class="main_tab_sep">
                        <!-- This is the seperator div  -->
                    </div>
                    <div id="trans_content" class="trans_content" style="display: block;">
                        <link rel="stylesheet" href="/SupplyMedium/Views/Transaction/Quote/css/po.css">
                        <div class="sub_tab_container" id="po_submenu">
                            <!-- This is Quote inner tab bar container -->
                            <div class="highlight" id="po_request_tab" onclick="swapWkTabs2('po_request_tab', 'po_form_tab');
                $('#po_request_content').show();
                $('#po_form_content').hide();">My Request</div>
                            <!-- My Request tab -->
                            <div class="normal" id="po_form_tab" onclick="swapWkTabs2('po_form_tab', 'po_request_tab');
                                    $('#po_request_content').hide();
                                    $('#po_form_content').show();">Generate PO</div>
                            <!-- Quote Form tab -->
                        </div>
                        <div id="po_request_content" style="position:relative;">
                            <!-- This is the Quote queue. -->
                            <div class="DT_border">
                            </div>
                            <div id="po_list_wrapper" class="dataTables_wrapper" role="grid">
                                <div class="dataTables_filter" id="po_list_filter">
                                    <label>Search <input type="text" autocomplete="off" aria-controls="po_list">
                                    </label>
                                </div>
                                <div class="fixed_height">
                                    <table id="po_list" style="width: 997px;padding-left:1px;" class="dataTable" aria-describedby="po_list_info">
                                        <thead>
                                            <tr role="row">
                                                <th class="rowBorder sorting_asc" style="border-left-width: 1px; border-left-style: solid; border-left-color: rgb(200, 200, 200); width: 20px;" role="columnheader" tabindex="0" aria-controls="po_list" rowspan="1" colspan="1" aria-sort="ascending" aria-label=": activate to sort column descending">
                                                </th>
                                                <th class="rowBorder sorting" role="columnheader" tabindex="0" aria-controls="po_list" rowspan="1" colspan="1" aria-label="Quote ID: activate to sort column ascending" style="width: 80px;">PO ID</th>
                                                <th class="rowBorder sorting" role="columnheader" tabindex="0" aria-controls="po_list" rowspan="1" colspan="1" aria-label="Date: activate to sort column ascending" style="width: 131px;">Date</th>
                                                <th class="rowBorder sorting" role="columnheader" tabindex="0" aria-controls="po_list" rowspan="1" colspan="1" aria-label="Company: activate to sort column ascending" style="width: 110px;">Company</th>
                                                <th class="rowBorder sorting" role="columnheader" tabindex="0" aria-controls="po_list" rowspan="1" colspan="1" aria-label="Phone: activate to sort column ascending" style="width: 160px;">Phone</th>
                                                <th class="rowBorder sorting" role="columnheader" tabindex="0" aria-controls="po_list" rowspan="1" colspan="1" aria-label="Primary Contact(Email): activate to sort column ascending" style="width: 111px;">Primary Contact(Email)</th>
                                                <th class="rowBorder sorting" role="columnheader" tabindex="0" aria-controls="po_list" rowspan="1" colspan="1" aria-label="State: activate to sort column ascending" style="width: 105px;">State</th>
                                                <th class="rowBorder sorting" role="columnheader" tabindex="0" aria-controls="po_list" rowspan="1" colspan="1" aria-label="Status: activate to sort column ascending" style="width: 48px;">Status</th>
                                                <th class="rowBorder sorting" role="columnheader" tabindex="0" aria-controls="po_list" rowspan="1" colspan="1" aria-label="Status: activate to sort column ascending" style="width: 48px;">Open</th>
                                            </tr>
                                        </thead>
                                        <tbody role="alert" aria-live="polite" aria-relevant="all">
                                            <%
                                                ArrayList al = TransactionPoMaster.showByTypeCompanyKey("Purchase Order", companyKey);
                                                String stl = "";
                                                String img = "";
                                                String cname = "";
                                                String cphone = "";
                                                String cemail = "";
                                                String cstate = "";
                                                String cstatus = "";
                                                String outsider[] = null;
                                                TransactionPoBean trb = null;
                                                CompanyDetailsForVrBean cb = null;
                                                for (int i = 0; i < al.size(); i++) {
                                                    outsider = null;
                                                    cname = "";
                                                    cphone = "";
                                                    cemail = "";
                                                    cstate = "";
                                                    cstatus = "";
                                                    if (i % 2 == 0) {
                                                        stl = "class='even'";
                                                    } else {
                                                        stl = "class='odd'";
                                                    }
                                                    trb = (TransactionPoBean) al.get(i);
                                                    if (companyKey.equals(trb.getCompany_key_from())) {
                                                        img = "trans_sent_icon.png";
                                                        if (trb.getPo_is_outside().equalsIgnoreCase("yes")) {
                                                            outsider = trb.getPo_is_outside_address().split("@#@#@");
                                                            cname = outsider[0];
                                                            cphone = "Outside Transaction";
                                                            cemail = outsider[6];
                                                            cstate = StateMaster.showStateFromKey(outsider[2]);
                                                        } else if (trb.getPo_is_outside().equalsIgnoreCase("no")) {
                                                            cb = CompanyMaster.showCompanyDetailsForVrProcess(trb.getCompany_key_to());
                                                            cname = cb.getCompanyName();
                                                            cphone = cb.getPhone();
                                                            cemail = cb.getEmail();
                                                            cstate = StateMaster.showStateFromKey(cb.getState());
                                                        }
                                                        cstatus = trb.getPo_trans_status();
                                                        if (cstatus.equals("Accepted")) {
                                                            cstatus = "PO Accepted";
                                                        } else if (cstatus.equals("Inquired")) {
                                                            cstatus = "PO Inquired";
                                                        } else {
                                                            cstatus = "PO Generated";
                                                        }
                                                    } else if (companyKey.equals(trb.getCompany_key_to())) {
                                                        img = "trans_received_icon.png";
                                                        cname = trb.getBuyerCompanyName();
                                                        cphone = trb.getBuyerPhone();
                                                        cemail = trb.getBuyerEmail();
                                                        cstate = trb.getBuyerState();
                                                        cstatus = trb.getPo_trans_status();
                                                        if (cstatus.equals("Accepted")) {
                                                            if (trb.getPo_is_inv_created().equalsIgnoreCase("no")) {
                                                                cstatus = "<a href='transactionsInvoice.jsp?generateinvoice' style='text-decoration:underline;'>Generate Invoice</a>";
                                                            } else {
                                                                cstatus = "Invoice Generated";
                                                            }
                                                        } else if (cstatus.equals("Inquired")) {
                                                            cstatus = "PO Inquired";
                                                        } else {
                                                            cstatus = "Approve PO";
                                                        }
                                                    }
                                            %>
                                            <tr <%=stl%> onclick="$('#po_popup').fadeIn();
                                                    showPoDetailInPopup('<%=trb.getTrans_key()%>', '<%=trb.getCompany_key_to()%>', '<%=trb.getCompany_key_from()%>');
                                                    $('#toKey').val('<%=trb.getCompany_key_to()%>');
                                                    showPoPopupData(<%=trb.getTrans_key()%>,<%=companyKey%>,<%=trb.getCompany_key_from()%>);">
                                                <td class="rowBorder"><img src="inside/<%=img%>"/></td>
                                                <td class="rowBorder"><%=trb.getPo_trans_rqf_key()%></td>
                                                <td class="rowBorder"><%=trb.getPo_created_on().split(" ")[0]%></td>
                                                <td class="rowBorder"><%=cname%></td>
                                                <td class="rowBorder"><%=cphone%></td>
                                                <td class="rowBorder"><%=cemail%></td>
                                                <td class="rowBorder"><%=StateMaster.showStateFromKey(cstate)%></td>
                                                <td class="rowBorder"><%=cstatus%></td>
                                                <td class="rowBorder"><a target="_blank" href="<%=request.getRealPath("") + File.separator%>cropData/company-<%=companyKey%>/transaction/<%=trb.getPo_trans_rqf_key()%>.pdf"><img alt="Open" title="Open" src="inside/open.png"></a></td>
                                            </tr>
                                            <%
                                                }
                                                if (al.size() == 0) {
                                            %>
                                            <tr class="odd">
                                                <td valign="top" colspan="9" class="dataTables_empty">No Request found</td>
                                            </tr>
                                            <%
                                                }
                                            %>
                                        </tbody>
                                    </table>
                                </div>
                                <div class="dataTables_info" id="po_list_info">Showing 0 to 0 of 0 entries</div>
                                <div class="dataTables_paginate paging_full_numbers" id="po_list_paginate">
                                    <a tabindex="0" class="first paginate_button paginate_button_disabled" id="po_list_first">First</a>
                                    <a tabindex="0" class="previous paginate_button paginate_button_disabled" id="po_list_previous">Previous</a>
                                    <span>
                                    </span>
                                    <a tabindex="0" class="next paginate_button paginate_button_disabled" id="po_list_next">Next</a>
                                    <a tabindex="0" class="last paginate_button paginate_button_disabled" id="po_list_last">Last</a>
                                </div>
                            </div>
                        </div>
                        <div id="po_form_content" style="display:none;width:100%;" class="po_form_content">
                            <form method="post" action="TransQuoteToPoDecode"  onsubmit="return poFormValidation()">
                                <input type="hidden" name="qTransRfqKey" value="<%=request.getParameter("generatepo")%>"/>
                                <!-- This is the Quote form details -->
                                <%                                CompanyDetailAddressBean cdab = (CompanyDetailAddressBean) (CompanyDetailAddressMaster.showCompanyDetailAddress(companyKey)).get(0);
                                %>
                                <div class="to_comp">
                                    <label class="label" style="padding-left:20px;width:45px;color:white;line-height:25px;">To:</label>
                                    <input type="text" value="<%=CompanyMaster.getCompanyNameFromKey(request.getParameter("key"))%>" autocomplete="off" placeholder="Search Registered Vendor" id="to_company" style="width:920px;" class="textbox">
                                </div>
                                <input type="hidden" id="selectedVendorKey" name="companyKeyTo" value="<%=request.getParameter("key")%>">
                                <div class="po_form" style="width: 1000px;">
                                    <div id="ven_search_result" class="com_search_result" style="display:none;">
                                    </div>
                                    <input type="hidden" id="form_trans_id" value="-1">
                                    <div class="po_buyer_det">
                                        <div class="sub_heading">Buyer Details</div>
                                        <div class="trans_row" style="float:left;">
                                            <label class="trans_label"> Buyer Name </label>
                                            <input type="text" autocomplete="off" disabled value="<%=cdab.getCompanyName()%>" class="textbox_disable" id="supplier_name">
                                        </div>
                                        <div class="trans_row">
                                            <label class="trans_label"> Country </label>
                                            <input type="text" autocomplete="off" disabled value="<%=CountryMaster.showCountryFromKey(cdab.getCountry())%>" class="textbox_disable" id="supplier_country">
                                        </div>
                                        <div class="trans_row">
                                            <label class="trans_label"> State/Province </label>
                                            <input type="text" autocomplete="off" disabled value="<%=StateMaster.showStateFromKey(cdab.getState())%>" class="textbox_disable" id="supplier_state">
                                        </div>
                                        <div class="trans_row">
                                            <label class="trans_label"> City </label>
                                            <input type="text" autocomplete="off" disabled value="<%=cdab.getCity()%>" class="textbox_disable" id="supplier_city">
                                        </div>
                                        <div class="trans_row">
                                            <label class="trans_label"> Address </label>
                                            <input type="text" autocomplete="off" disabled value="<%=cdab.getAddress()%>" class="textbox_disable" id="supplier_addr">
                                        </div>
                                        <div class="trans_row">
                                            <label class="trans_label"> Zip Code/Postal Code </label>
                                            <input type="text" autocomplete="off" disabled value="<%=cdab.getZipcode()%>" class="textbox_disable" id="supplier_zipcode">
                                        </div>
                                        <div class="sub_heading" style="margin-top:20px;">Request For Quote</div>
                                        <div class="trans_row">
                                            <label class="trans_label"> Quote Reference </label>
                                            <input type="text" name="quoteRefNo" autocomplete="off" class="textbox" id="po_ref">
                                        </div>
                                    </div>
                                    <div class="addr_sep">
                                    </div>
                                    <div class="po_supplier_det">
                                        <% CompanyDetailAddressBean cdab2 = (CompanyDetailAddressBean) (CompanyDetailAddressMaster.showCompanyDetailAddress(request.getParameter("key"))).get(0);%>
                                        <div class="sub_heading">Supplier Details</div>
                                        <div class="trans_row">
                                            <div class="checkContainer">
                                                <input type="checkbox" disabled class="checkbox" name="outside_supplier" id="outside_supplier" onclick="if (this.checked) {
                                                    $('#insideBuyer').hide();
                                                    $('#outsideBuyer').show();
                                                    $('#to_company').val('');
                                                    $('#selectedVendorKey').val(0);
                                                } else {
                                                    $('#insideBuyer').show();
                                                    $('#outsideBuyer').hide();
                                                }
                                                       ">
                                                <div>
                                                </div>
                                            </div>
                                            <label for="outside_supplier" class="trans_label" style="line-height: 19px; margin-left: 5px;">Outside
                                                Supplier</label>
                                        </div>
                                        <div class="supplier_address" id="outsideBuyer" style="width:100%;height:300px;">

                                            <div class="trans_row">
                                                <label class="trans_label"> Country </label>
                                                <SELECT name="outsideSupplierCountry" onChange="fetchState(this.value);" style="width:187px;height:28px;" class ="customSelect required">
                                                    <OPTION value="">--Select 
                                                        Country--</OPTION>
                                                        <%                                    ArrayList countryList = CountryMaster.showAll();
                                                            CountryBean scb = null;
                                                            for (int i = 0; i < countryList.size(); i++) {
                                                                scb = (CountryBean) countryList.get(i);
                                                        %>
                                                    <option value="<%=scb.getCountryKey()%>"><%=scb.getCountryName()%></option>
                                                    <%
                                                        }
                                                    %>
                                                </SELECT>
                                                <label for="countryregion_0" generated="true" class="error" id="countryregion_0err">
                                                </label>
                                            </div>
                                            <div class="trans_row">
                                                <label class="trans_label"> State/Province </label>
                                                <div id="select_0_container">
                                                    <select id="state_0" name="state_0" class="selectbox hasCustomSelect" style="-webkit-appearance: menulist-button; width: 188px; position: absolute; opacity: 0; height: 28px; font-size: 12px;">
                                                        <option>--Select State--</option>
                                                    </select>
                                                    <span class="customSelect selectbox" style="display: inline-block;">
                                                        <span class="customSelectInner" style="width: 142px; display: inline-block;">--Select State--</span>
                                                    </span>
                                                    <label for="state_0" generated="true" class="error" id="state_0err">
                                                    </label>
                                                </div>
                                                <input style="display:none;margin-left:200px;margin-top:-27px;" type="text" autocomplete="off" name="state_text" class="textbox" id="state_text">
                                            </div>
                                            <div class="trans_row">
                                                <label class="trans_label"> City </label>
                                                <input type="text" autocomplete="off" class="textbox" name="otsd_splr_cty" id="otsd_splr_cty">
                                            </div>
                                            <div class="trans_row">
                                                <label class="trans_label"> Address </label>
                                                <input type="text" autocomplete="off" class="textbox" name="otsd_splr_adrs" id="otsd_splr_adrs">
                                            </div>
                                            <div class="trans_row">
                                                <label class="trans_label"> Zip Code/Postal Code </label>
                                                <input type="text" autocomplete="off" class="textbox" name="otsd_splr_zpcd" id="otsd_splr_zpcd">
                                            </div>
                                            <div class="trans_row">
                                                <label class="trans_label"> Email </label>
                                                <input type="text" autocomplete="off" class="textbox" name="email" id="email">
                                            </div>
                                        </div>
                                        <div class="popup_supplier_address" id="insideBuyer" style="width: 100%; height: 300px;">
                                            <div class="trans_row">
                                                <label class="trans_label"> Supplier Name </label>
                                                <input type="text" autocomplete="off" class="textbox_disable" id="to_company_popup" value="<%=cdab2.getCompanyName()%>" readonly>
                                            </div>
                                            <div class="trans_row">
                                                <label class="trans_label"> Country </label>
                                                <input type="text" autocomplete="off" class="textbox_disable" id="popup_supplier_country" value="<%=CountryMaster.showCountryFromKey(cdab2.getCountry())%>" readonly>
                                            </div>
                                            <div class="trans_row">
                                                <label class="trans_label"> State/Province </label>
                                                <input type="text" autocomplete="off" class="textbox_disable" id="popup_supplier_state" value="<%=StateMaster.showStateFromKey(cdab2.getState())%>" readonly>
                                            </div>
                                            <div class="trans_row">
                                                <label class="trans_label"> City </label>
                                                <input type="text" autocomplete="off" class="textbox_disable" id="popup_supplier_city" value="<%=cdab2.getCity()%>" readonly>
                                            </div>
                                            <div class="trans_row">
                                                <label class="trans_label"> Address </label>
                                                <input type="text" autocomplete="off" class="textbox_disable" id="popup_supplier_addr" value="<%=cdab2.getAddress()%>" readonly>
                                            </div>
                                            <div class="trans_row">
                                                <label class="trans_label"> Zip Code/Postal Code </label>
                                                <input type="text" autocomplete="off" class="textbox_disable" id="popup_supplier_zipcode" value="<%=cdab2.getZipcode()%>" readonly>
                                            </div>
                                        </div>
                                        <div class="popup_outside_sup_email_content" style="width: 480px; height: 300px; display: none">
                                            <div class="trans_row" style="margin-top: 100px;">
                                                <label class="trans_label"> Email </label>
                                                <input type="text" autocomplete="off" class="textbox" id="popup_email">
                                            </div>
                                        </div>
                                        <div class="trans_row" style="margin-top: 50px;">
                                            <label class="trans_label"> Recurring </label>
                                            <select id="recurring" name="recurring" class="selectbox hasCustomSelect" style="width: 188px; -webkit-appearance: menulist-button; position: absolute; opacity: 0; height: 28px; font-size: 12px;" readonly>
                                                <option value="weekly">None</option>
                                                <option value="weekly">Weekly</option>
                                                <option value="monthly">Monthly</option>
                                                <option value="annually">Annually</option>
                                            </select>
                                            <span class="customSelect selectbox customSelectDisabled" style="width: 165px; display: inline-block;">
                                                <span class="customSelectInner" style="width: 142px; display: inline-block;">None</span>
                                            </span>
                                        </div>
                                    </div>
                                    <div class="items_head" style="padding-left:15px;">
                                        <label class="trans_label" style="width:38px;margin-right:4px;">S.No</label>
                                        <label class="trans_label" style="width:112px;margin-right:4px;">Item Name</label>
                                        <label class="trans_label" style="width:134px;margin-right:4px;">Item Description</label>
                                        <label class="trans_label" style="width:64px;margin-right:4px;">Batch No</label>
                                        <label class="trans_label" style="width:62px;margin-right:4px;">SKU No</label>
                                        <label class="trans_label" style="width:66px;margin-right:4px;">Barcode</label>
                                        <label class="trans_label" style="width:76px;margin-right:4px;">Quantity</label>
                                        <label class="trans_label" style="width:90px;margin-right:4px;">Receive Date</label>
                                        <label class="trans_label" style="width:98px;margin-right:4px;">Price per unit</label>
                                        <label class="trans_label" style="width:60px;margin-right:4px;">Multiplier</label>
                                        <label class="trans_label" style="width:100px;margin-right:4px;">Total</label>
                                    </div>
                                    <%
                                        ArrayList itemList = TransactionQteItemMaster.showQteItemFromQteKey(request.getParameter("generatepo"));
                                        TransactionQteItemBean transactionQteItemBean = null;
                                        GlobalProductItemBean gpib = null;
                                        String allItem = "";
                                        int count = 0;
                                        float qty = 0, price = 0, multi = 0, total = 0, tax = 0, grandTotal = 0, billing = 0;
                                        for (int i = 0; i < itemList.size(); i++) {
                                            transactionQteItemBean = (TransactionQteItemBean) itemList.get(i);
                                            gpib = GlobalProductItemMaster.showByItemKey(transactionQteItemBean.getItemKey());
                                            qty = Float.parseFloat(transactionQteItemBean.getQuantity());
                                            price = Float.parseFloat(transactionQteItemBean.getPrice());
                                            multi = Float.parseFloat(transactionQteItemBean.getMultiplier());
                                            total = price * multi * qty;
                                            grandTotal += total;
                                            count++;
                                            allItem = count + "";
                                    %>
                                    <div id="item<%=count%>" class="item" style="width:970px;float:left;margin-top:10px;margin-left:15px;margin-right:0px;">
                                        <input type="hidden" name="item_key" value="<%=gpib.getItemKey()%>" />  
                                        <input type="text" autocomplete="off" class="textbox" id="sno1" style="width:20px;margin-right:10px;" readonly value="<%=count%>">
                                        <input type="text" autocomplete="off" class="textbox" maxlength="80" id="item_name1" style="width:98px;margin-right:10px;" readonly value="<%=gpib.getItemName()%>">
                                        <input type="text" autocomplete="off" class="textbox" maxlength="80" id="item_desc1" style="width:118px;margin-right:10px;" readonly value="<%=gpib.getItemDescription()%>">
                                        <input type="text" autocomplete="off" class="textbox" maxlength="80" name="part_no" id="part_no1" style="width:48px;margin-right:10px;" readonly value="<%=transactionQteItemBean.getPartNo()%>">
                                        <input type="text" autocomplete="off" class="textbox" maxlength="80" id="sku_no1" style="width:48px;margin-right:10px;" readonly value="<%=gpib.getSKUno()%>">
                                        <input type="text" autocomplete="off" class="textbox" maxlength="80" name="brcd_no" id="brcd_no1" style="width:48px;margin-right:10px;" readonly value="<%=transactionQteItemBean.getBarcode()%>">
                                        <input type="text" autocomplete="off" class="textbox" maxlength="12" name="quantity" id="quantity1" style="width:28px;" value="<%=transactionQteItemBean.getQuantity()%>">
                                        <div class="quantity_unit" id="quantity_unit1"  style="margin-right:10px;"><%=QuantityTypeMaster.showCodeByKey(transactionQteItemBean.getQuantityUnitKey())%></div>
                                        <input type="hidden" name="quantityUnitKey" value="<%=transactionQteItemBean.getQuantityUnitKey()%>">
                                        <input type="text" autocomplete="off" class="textbox" maxlength="12" name="ship_date" id="quantity1" style="width:75px;margin-right:10px;" readonly value="<%=transactionQteItemBean.getShipDate()%>">
                                        <input type="text" autocomplete="off" class="textbox" name="price" id="ppunit1" style="width:50px;margin-right:0px;" value="<%=price%>">
                                        <div class="quantity_unit" id="currency1" style="margin-right:10px;"><%=CurrencyMaster.showCodeByKey(transactionQteItemBean.getCurrencyKey())%></div>
                                        <input type="hidden" name="currencyKey" value="<%=transactionQteItemBean.getCurrencyKey()%>">
                                        <input type="text" autocomplete="off" name="discount" class="textbox" id="multipl1" style="width:48px;margin-right:10px;" value="<%=multi%>">
                                        <input type="text" autocomplete="off" name="total" class="textbox" id="totl1" style="width:65px;margin-right:10px;" readonly value="<%=total%>">
                                        <!--<input type="button" class="del_btn" id="del_btn_1" style="width:110px;margin-right:10px;" onclick="delPrice('<%=total%>');
                                        $('#item<%=count%>').html('');
                                        document.getElementById('allQteItems').value = document.getElementById('allQteItems').value.replace('(<%=i%>^<%=gpib.getItemName()%>^<%=gpib.getItemDescription()%>^<%=transactionQteItemBean.getPartNo()%>^<%=gpib.getSKUno()%>^<%=transactionQteItemBean.getBarcode()%>^<%=transactionQteItemBean.getQuantity()%>^<%=transactionQteItemBean.getQuantityUnitKey()%>^<%=transactionQteItemBean.getShipDate().split(" ")[0]%>^<%=price%>^<%=transactionQteItemBean.getCurrencyKey()%>^<%=multi%>^<%=total%>),', '');">-->

                                    </div>                                 
                                    <% }%>
                                    <div class="items" id="items">
                                    </div>
                                    <div style="width:100%;float:left;margin-left:40px;height:50px;">
                                        <!--<input id="add_item_btn" type="button" class="add_item general-button" value="Add Item" onclick="$('#po_add_item_popup').fadeIn();">-->
                                        <input type="hidden" name="allQteItems" id="allQteItems" value="<%=allItem%>">
                                    </div>
                                    <div class="price_det" id="price_det">
                                        <div class="price_det_content">
                                            <label class="price_det_lbl" id="tot_list_price_lbl"> Total List Price: </label>
                                            <input type="text" autocomplete="off" readonly class="textbox" id="tot_list_price_amt" name="tot_list_price_amt"  style="width:90px;margin-right:10px;" value="<%=grandTotal%>">
                                        </div>
                                        <% TransactionQteBean qtb = TransactionQteMaster.showByKey(request.getParameter("generatepo"));
                                        %>
                                        <div class="price_det_content">
                                            <label class="price_det_lbl" id="tax_lbl"> Tax in Percentage: </label>
                                            <label class="price_det_lbl" id="popup_tax_amt" style="min-width:35px;width:auto;">
                                            </label>
                                            <input type="text" autocomplete="off" class="textbox" name="qt_tx" id="qt_tx" style="width:90px;margin-right:10px;" value="<%=qtb.getQ_tax_percentage()%>" onKeyUp="clclt_trans_amnt(this.value)">
                                        </div>
                                        <div class="price_det_content">
                                            <label class="price_det_lbl" id="tot_price_lbl"> Total Price: </label>
                                            <input type="text" autocomplete="off" readonly class="textbox" name="tot_price_amt" id="tot_price_amt" style="width:90px;margin-right:10px;" value="<%=qtb.getQ_total_billing_amount()%>">
                                        </div>
                                    </div>
                                    <div style="width:100%;float:left;margin-left:40px;height:50px;" id="po_terms_container">
                                        <div class="checkContainer">
                                            <input type="checkbox" class="checkbox" id="po_terms_cond">
                                            <div>
                                            </div>
                                        </div>
                                        <label for="po_terms_cond" class="trans_label" style="line-height:19px;margin-left:5px;cursor:pointer;text-decoration:underline;" id="po_tc_link">Accept terms &amp; conditions</label>
                                    </div>
                                    <div class="po_form_btns">
                                        <input type="button" class="gen-btn-Gray" style="margin-right:50px;" value="reset">
                                        <input type="submit" class="gen-btn-blue" value="Send" id="add_po_btn">
                                    </div>
                                    <div class="po_error" id="po_form_error">
                                    </div>
                                    <div class="invoice_error" id="tx_er">
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div style="display: none;z-index:2000;" class="Custome_Popup_Window" id="po_add_item_popup">
                            <div class="Cus_Popup_Outline po_add_item_popup_outline" style="width: 1100px !important;top:45%;height:350px;">
                                <div class="Popup_Tilte_NewGroup Gen_Popup_Title" style="border-radius:0px;">
                                    <div style="padding: 0px 0px 0px 15px; float: left">Add
                                        Item</div>
                                    <div class="Popup_Close_NewGroup Gen_Cus_Popup_Close" onclick="cancelQteItem();">
                                    </div>
                                </div>
                                <input type="hidden" id="from_form">
                                <div style="margin:20px 0 0 20px;width:350px;float: left;">
                                    <input type="radio" onclick="$('#existingItem').show();
                                            $('#addNewItem').hide();" checked type="radio" name="itemSelection" id="selectItem" value="selectItem">Select Item from Existing Product Catalog
                                </div>
                                <div style="margin:20px 0 0 20px;width:350px;float: left;">
                                    <input type="radio" onclick="$('#existingItem').hide();
                                            $('#addNewItem').show();" name="itemSelection" id="addItem" value="addItem">Add New Item
                                </div>
                                <div style="margin-top:0px;margin-left:15px;float:left;"id="existingItem">
                                    <div class="items_head">
                                        <label class="trans_label" style="width:370px;margin-right:10px;">Item Name / Item Description / Batch No / SKU No / Barcode</label>
                                        <label class="trans_label" style="width:140px;margin-right:10px;">Quantity</label>
                                        <label class="trans_label" style="width:130px;margin-right:10px;">Receive Date</label>
                                        <label class="trans_label" style="width:140px;margin-right:10px;">Price per unit</label>
                                        <label class="trans_label" style="width:110px;margin-right:10px;">Multiplier</label>
                                        <label class="trans_label" style="width:90px;margin-right:10px;">Total</label>
                                    </div>
                                    <div class="item" style="width:1095px;float:left;margin-left:10px;margin-right:0px;position:relative;">
                                        <input onkeyup="showGlobalItemSearch(this.value);" type="text" autocomplete="off" class="textbox" id="popup_item_desc" maxlength="80" style="width:350px;margin-right:20px;">
                                        <input type="text" autocomplete="off" class="textbox" onKeyUp="mult()" id="popup_quantity" maxlength="12" style="width:88px;">
                                        <div class="quantity_unit" id="popup_quantity_type">KGS</div>
                                        <div class="quan_units" id="popup_quantity_type_key" style="display:none;left:500px;">
                                        </div>
                                        <input type="text" autocomplete="off" class="textbox hasDatepicker" id="popup_ship_date" style="width:110px;margin-right:20px;">
                                        <input type="text" autocomplete="off" class="textbox" onKeyUp="mult()" id="popup_price" maxlength="12" style="width:90px;">
                                        <div class="currency" id="currency">USD</div>
                                        <div class="currency_list" id="currency_currency" style="display:none;left: 794px;">
                                        </div>
                                        <input type="text" autocomplete="off" class="textbox" value="1" id="dscnt" onKeyUp="mult()" maxlength="12" style="width:90px;margin-right:20px;">
                                        <input type="text" autocomplete="off" class="textbox" value="0" readonly id="pop_multiplier" maxlength="12" style="width:90px;margin-right:20px;">
                                        <div id="item_search_result" style="display:none;width:480px;margin-right:20px;z-index: 999999;height:100px;border: 1px solid #000;overflow-y: scroll;"></div>
                                        <input type="hidden" id="selectedItemKey"> 
                                    </div>
                                    <div class="items_head2" id="resulted-data-head" style="display:none;">                                        
                                        <label class="trans_label" style="width:120px;margin-right:20px;font-weight:bold;">Item Name</label>
                                        <label class="trans_label" style="width:120px;margin-right:20px;font-weight:bold;">Item Description</label>
                                        <label class="trans_label" style="width:120px;margin-right:20px;font-weight:bold;">Batch No</label>
                                        <label class="trans_label" style="width:120px;margin-right:20px;font-weight:bold;">SKU No</label>
                                        <label class="trans_label" style="width:120px;margin-right:420px;font-weight:bold;">Barcode</label>
                                    </div>
                                    <div class="items_head2" id="resulted-data" style="display:none;">                                        
                                        <label id="lblin" class="trans_label" style="width:120px;margin-right:20px;"></label>
                                        <label id="lblid" class="trans_label" style="width:120px;margin-right:20px;"></label>
                                        <label id="lblpn" class="trans_label" style="width:120px;margin-right:20px;"></label>
                                        <label id="lblsn" class="trans_label" style="width:120px;margin-right:20px;"></label>
                                        <label id="lblbc" class="trans_label" style="width:120px;margin-right:420px;"></label>
                                    </div>
                                    <div class="row" style="margin-top:40px;float:left;margin-left:250px;">
                                        <input id="po_add_item_popup_cancel" style="margin-left:100px;margin-right: 50px" type="button" class="gen-btn-Gray" value="Cancel" onclick="$('#po_add_item_popup').fadeOut();
                                                cancelQteItem();">
                                        <input id="save_item_btn" type="button" class="gen-btn-blue" value="Add" tabindex="8" onclick="addQteItem2();">
                                    </div>
                                    <div class="po_error" id="po_item_form_error" style="width:980px">
                                    </div>
                                </div>
                                <div style="margin-top:0px;margin-left:10px;float:left;position:relative;display:none; " id="addNewItem">
                                    <div class="items_head" style="margin-left: 25px;">                                        
                                        <label class="trans_label" style="width:135px;margin-right:20px;">Item Name</label>
                                        <label class="trans_label" style="width:120px;margin-right:20px;">Item Description</label>
                                        <label class="trans_label" style="width:98px;margin-right:20px;">Batch No</label>
                                        <label class="trans_label" style="width:98px;margin-right:20px;">SKU No</label>
                                        <label class="trans_label" style="width:98px;margin-right:20px;">Barcode</label>
                                        <!--                                        <label class="trans_label" style="width:98px;margin-right:52px;">Quantity</label>
                                                                                <label class="trans_label" style="width:118px;margin-right:20px;">Receive Date</label>-->
                                    </div>
                                    <div class="item" style="width:940px;float:left;margin-left:40px;margin-right:20px;position:relative;">
                                        <input type="text" autocomplete="off" class="textbox" id="popup_item_name" maxlength="80" style="width:120px;margin-right:20px;">
                                        <input type="text" autocomplete="off" class="textbox" id="popup_item_descir" maxlength="80" style="width:110px;margin-right:20px;">
                                        <input type="text" autocomplete="off" class="textbox" id="popup_part_no" maxlength="80" style="width:90px;margin-right:20px;">
                                        <input type="text" autocomplete="off" class="textbox" id="popup_sku_no" maxlength="80" style="width:90px;margin-right:20px;">
                                        <input type="text" autocomplete="off" class="textbox" id="popup_brcd" maxlength="80" style="width:90px;margin-right:20px;">
                                        <!--                                        <input type="text" autocomplete="off" class="textbox" id="popup_quantity" maxlength="12" style="width:90px;">
                                                                                <div class="quantity_unit" id="popup_quantity_type">KG</div>
                                                                                <div class="quan_units" id="popup_quantity_type_key" style="display:none;left:540px;">
                                                                                </div>
                                                                                <input type="text" autocomplete="off" class="textbox hasDatepicker" id="popup_ship_date" style="width:110px;margin-right:20px;">-->
                                    </div>                                    
                                    <div class="row" style="margin-top:40px;float:left;margin-left:100px;">
                                        <input id="po_add_item_popup_cancel" style="margin-left:100px;margin-right: 50px" type="button" class="gen-btn-Gray" value="Cancel"  onclick="$('#po_add_item_popup').fadeOut();
                                                cancelQteItem();">
                                        <input id="save_item_btn" type="button" class="gen-btn-blue" value="Add" tabindex="8" onclick="addQteItem();">
                                    </div>
                                    <div class="po_error" id="po_item_form_error" style="width:620px;font-weight:bold;color:green;font-size:14px;padding-top:10px;">
                                    </div>
                                </div>
                            </div>
                            <a id="addone_lastHiddenElement" href="/SupplyMedium/user_home.jsp#" style="opacity: 0; " tabindex="9">test</a>
                        </div>
                        <title>Insert title here</title>
                        <link rel="stylesheet" href="inside/po_popup.css">
                        <link rel="stylesheet" href="inside/po.css">
                        <div style="display: none; z-index: 1000;" class="Custome_Popup_Window" id="po_popup">

                        </div>
                        <title>Insert title here</title>
                        <div style="display: none; z-index: 1000;" class="Custome_Popup_Window" id="po_inquire_popup">
                            <div class="Cus_Popup_Outline po_inquire_outline">
                                <div class="Popup_Tilte_NewGroup Gen_Popup_Title" style="border-radius: 0px;">
                                    <div style="padding: 0px 0px 0px 15px; float: left">Quote Inquire Details</div>
                                    <div class="Popup_Close_NewGroup Gen_Cus_Popup_Close">
                                    </div>
                                </div>
                                <input type="hidden" id="chat_po_id">
                                <input type="hidden" id="chat_trans_id">
                                <input type="hidden" id="chat_reply_to_comp">
                                <input type="hidden" id="chat_reply_to_user">
                                <input type="hidden" id="chat_status">
                                <div id="chat_po_inquires">
                                </div>
                                <div id="chat_new_inquire">
                                    <div class="inquire_row">
                                        <label class="inquire_by" id="chat_company_name">
                                        </label>
                                        <textarea class="inquire_det" id="chat_new_inquire_message">
                                        </textarea>
                                        <label class="po_error" style="width:300px;margin-left: 125px;margin-top: 10px;" id="chat_inquire_error">
                                        </label>
                                    </div>
                                </div>
                                <input type="button" class="gen-btn-blue" value="Send" style="margin-left: 250px;margin-top: 30px;margin-bottom: 20px;" id="chat_inquire_save_btn">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <title>Insert title here</title>
        <div style="display: none; z-index: 1000;" class="Custome_Popup_Window" id="tc_content_popup">
            <div class="Cus_Popup_Outline add_content_outline">
                <div class="Popup_Tilte_NewGroup Gen_Popup_Title" style="border-radius: 0px;">
                    <div style="padding: 0px 0px 0px 15px; float: left">Content</div>
                    <div class="Popup_Close_NewGroup Gen_Cus_Popup_Close" id="tc_content_close">
                    </div>
                </div>
                <textarea class="tc_content" id="tc_content" readonly>
                </textarea>
                <input type="button" class="gen-btn-blue" value="Accept" style="margin-left: 180px;" id="tc_accept_btn">
                <input type="button" class="gen-btn-red" value="Reject" style="margin-left: 90px;" id="tc_reject_btn">
                <input type="hidden" id="check_box_id">
            </div>
        </div>
        <title>Toast Window </title>
        <link rel="stylesheet" href="inside/Cus_Toast.css">
        <!--  <input type="button" id="Open_Toast" value="AAAAAAAAAAAAAAAAAAAA"/>-->
        
        <%@include file="_footer.jsp"%>
        <div>
        </div>
        <title>Insert title here</title>
        <link rel="stylesheet" href="inside/Custome_Popup.css">
        <link rel="stylesheet" href="inside/popup_warning.css">
        <div id="warning_container" style="display: none;">
            <div id="warning_popup">
                <div id="war_head">
                    <label id="war_head_title">Warning</label>
                </div>
                <div id="war_body">
                    <label id="war_message">
                    </label>
                    <div id="war_btns">
                        <input type="button" id="okbtn" style="float:left;margin-right:30px;" class="pop-button pop-button-White" value="Yes">
                        <input id="Popup_Cancel" style="float:left;" type="button" class="pop-button pop-button-White" value="No">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%@include file="_invite.jsp"%>
    <script type="text/JavaScript" src="inside/restrict_menu.js">
    </script>
    <script>


                                            $.getScript("/SupplyMedium/Views/UserMgmt/js/usermgmt_fieldvalidator.js");
                                            $.getScript("/SupplyMedium/Views/Registration/js/regvalidator.js");
                                            $.getScript("/SupplyMedium/Views/UserMgmt/js/usermgmt.js", function(data, textStatus, jqxhr) {
                                                userOnload();
                                            });

    </script>
</body>
</html>