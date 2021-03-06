var quoteText="";
// This method is called while onload
$(document).ready(
		function() 
		{	
			initQuoteDataTable();
			
			 getQuoteMyAddress();
			
			$("#quote_request_tab").click(quoteRequestTabClicked);
			
			$("#quote_form_tab").click(quoteFormTabClicked);
			
			$("#add_item_btn").click(showAddItemPopup);
			
			$( "#ship_date1" ).datepicker();
			
			$('#outside_supplier').change(outsideSupplierEvent);
			
			$("#save_item_btn").click(saveItem);
			
			 $('select.selectbox').customSelect();
			 
			 
			 $("#quote_accept_btn").click(acceptQuote);
			 
			 $("#quote_reject_btn").click(rejectQuote);
			 
			 $("#supp_quote_inquire_btn").click(suppInquireBtnClicked);
			 
			 $("#buy_quote_inquire_btn").click(buyInquireBtnClicked);
			 
			 $("#quote_close_btn").click(closeQuotePopup);
			 
			 
			 $("#quote_inquire_send").click(inquireQuote);
			 
			 $("#chat_inquire_save_btn").click(chatInquireQuote);
			 
			 $("#quantity_unit").click(showQuantityUnits);
			 
			 $("#currency").click(showCurrencyList);
			 
			 
			 $("#quote_edit_btn").click(editButtonClicked);
			 
			 $("#popup_add_item_btn").click(showAddItemPopup1);
			 
			 $("#quote_update_btn").click(updateQuote);
			 
			 $("#tax_amt").text(mainTaxPer);
			 
			 /*$("#quote_inquire_cancel").click(quoteInquireCancelBtnClicked);*/
			 
			 $("#quote_popup_form").mCustomScrollbar({theme:"dark-thick",scrollInertia:150});
			 
			 $("#quote_tc_link").click( quoteTCClicked );
			 
			 fetchQuoteRequest();
			 
			 $("body").click(function()
					 {
						$("#units_quantity_unit").hide();
						
					 });
						
			$("#quantity_unit").click(function(event)
					{
						$("#units_quantity_unit").show();
						
						event.stopPropagation();
					});
			
			$("body").click(function()
				{
					$("#currency_currency").hide();
				});
			$("#currency").click(function(event)
					{
						$("#currency_currency").show();
						event.stopPropagation();
					});
			 
		});


/* This method is called when user click the Quote Terms and condition link */
function quoteTCClicked()
{
	var toComp=$("#to_company").val();
	
	if(toComp!="")
	{
	$("#check_box_id").val("quote_terms_cond");
	
	TCPopup( quoteText );
	}
}


/* This method is called when user click the 'My Request' tab */

function quoteRequestTabClicked()
{
	$("#quote_request_content").show();
	$("#quote_form_content").hide();
	
	$("#quote_request_tab").removeClass("normal");
	$("#quote_request_tab").addClass("highlight");
	
	$("#quote_form_tab").removeClass("highlight");
	$("#quote_form_tab").addClass("normal");
}

/* This method is called when user click the 'Quote Form' tab */

function quoteFormTabClicked()
{
	$("#quote_request_content").hide();
	$("#quote_form_content").show();
	
	$("#quote_request_tab").addClass("normal");
	$("#quote_request_tab").removeClass("highlight");
	
	$("#quote_form_tab").addClass("highlight");
	$("#quote_form_tab").removeClass("normal");
}


/* This method is called when user click the 'Add Item' tab.
 * It shows the add item popup view.Using this view user can
 * add the items to Quote*/

function showAddItemPopup()
{
	$("#popup_item_desc").val("");
	$("#popup_part_no").val("");
        $("#popup_brcd").val("");
	$("#popup_quantity").val("");
	$("#popup_ship_date").val("");
	$("#pop_multiplier").val("");
	$("#popup_price").val("");
	
	$("#quote_add_item_popup").show();
	
	$("#from_form").val("QuoteForm");
	
	$("#popup_item_desc").focus();
}


/* This method is called when user click the 'Add Item' tab from Edit view.
 * It shows the add item popup view.Using this view user can
 * add the items to Quote*/

function showAddItemPopup1()
{
	$("#popup_item_desc").val("");
	$("#popup_part_no").val("");
	$("#popup_quantity").val("");
	$("#popup_ship_date").val("");
	$("#pop_multiplier").val("");
	$("#popup_price").val("");
	
	$("#quote_add_item_popup").show();
	
	$("#from_form").val("PopUpQuoteForm");
	
	$("#popup_item_desc").focus();
}
/* this method is called when user click the outside supplier checkbox.
 * User select the outside supplier check box, outside supplier email only display.
 * User unselect the outside supplier check box, supplier address details displayed.
 */
function outsideSupplierEvent()
{
	 if ($("#outside_supplier").is(':checked')) 
	 {
		 $(".supplier_address").hide();
		 $(".outside_sup_email_content").show();
		 $("#quote_terms_container").hide();
		 
	 }
	 else
	 {
		 $(".supplier_address").show();
		 $(".outside_sup_email_content").hide();
		 $("#quote_terms_container").show();
	 }
}
fetchCountry();