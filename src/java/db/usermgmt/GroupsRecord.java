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
package db.usermgmt;

import utils.ErrorMaster;

/**
 * File:  GroupsRecord.java 
 *
 * Created on Mar 4, 2013 2:20:32 PM
 */
public class GroupsRecord
{
	public String    groupRelKey_;
	public String    groupName_;
	public String 	 companyRegnKey_;


	/*
	 * Method : show( ) Input : None Return : void
	 * 
	 * Purpose: It is used to print the all class variable values in console
	 */

	public void show( )
	{
             ErrorMaster errorMaster_ = null;

if( errorMaster_ == null ) errorMaster_ = new ErrorMaster( );
		errorMaster_.insert( "groupRelKey_	= " + groupRelKey_ );
		errorMaster_.insert( "groupName_		= " + groupName_ );
		errorMaster_.insert( "companyRegnKey_= " + companyRegnKey_ );
	}

	/*
	 * Method : clear( ) Input : None Return : None
	 * 
	 * Purpose: It is used to reset all class variable values
	 */

	public void clear( )
	{
		this.groupRelKey_ = null;
		this.groupName_ = null;
		this.companyRegnKey_ = null;
	}
}