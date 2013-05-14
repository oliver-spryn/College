/* 
  Author:  Oliver SPryn
  Course:  COMP 244, Database Management
  Date:    11 October 2012 
  Description:  This is a custom exception to the be thrown
                in the case of an unknown database attribute
				type
*/ 


#include "DatabaseAttributeTypeUnknown.h"

DatabaseAttributeTypeUnknown::DatabaseAttributeTypeUnknown(string error) : BaseException(error) {
	//This constructor simply calls the super constructor
}