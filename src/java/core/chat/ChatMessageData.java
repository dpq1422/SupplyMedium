/**
 * - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
 * Copyright (c) 2006-2013 Tekton Technologies (P) Ltd. All Rights Reserved.
 * This product and related documentation is protected by copyright and
 * distributed under licenses restricting its use, copying, distribution and
 * decompilation. No part of this product or related documentation may be
 * reproduced in any form by any means without prior written authorization of
 * Tekton Technologies (P) Ltd. and its licensors, if any.
 * - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
 */
package core.chat;

import java.sql.Timestamp;

import core.regn.UserProfileKey;
import utils.ErrorMaster;

/**
 * File:  ChatMessageData.java 
 *
 * Created on 15-Oct-2013 3:00:22 PM
 */
public class ChatMessageData
{

	public UserProfileKey fromUserKey_;
	
	public UserProfileKey toUserKey_;
	
	public String message_;
	
	public Timestamp timestamp_;
	
	private static ErrorMaster errorMaster_ = null;


	/*
	 * Method : ChatMessageData -- constructor
	 * 
	 * Input  : None
	 * 
	 * Return : None
	 * 
	 * Purpose:
	 */
	public ChatMessageData()
	{
		fromUserKey_ = new UserProfileKey( );
		
		toUserKey_ 	 = new UserProfileKey( );
                
                if( errorMaster_ == null ) errorMaster_ = new ErrorMaster( );
	}
	
	/*
	 * Method : clear( ) 
	 * 
	 * Input : None 
	 * 
	 * Return : None
	 * 
	 * Purpose: To reset the class variables.
	 */

	public void clear( )
	{
		fromUserKey_ 	= null;
		
		toUserKey_ 		= null;
		
		message_ 		= null;
		
		timestamp_ 		= null;
	}

	/*
	 * Method : show( ) 
	 * 
	 * Input  : None 
	 * 
	 * Return : None
	 * 
	 * Purpose: It is used to print the all class variable values in console
	 */

	public void show( )
	{
		errorMaster_.insert( "fromUserKey_	= " + fromUserKey_ );
		
		errorMaster_.insert( "toUserKey_		= " + toUserKey_ );
		
		errorMaster_.insert( "message_		= " + message_ );
		
		errorMaster_.insert( "timestamp_		= " + timestamp_ );
	}

}