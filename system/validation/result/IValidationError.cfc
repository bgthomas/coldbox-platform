/**
********************************************************************************
Copyright Since 2005 ColdBox Framework by Luis Majano and Ortus Solutions, Corp
www.coldbox.org | www.luismajano.com | www.ortussolutions.com
********************************************************************************
The ColdBox validation error interface, all inspired by awesome Hyrule Validation Framework by Dan Vega
*/
interface{

	/**
	* Set the error message
	* @message.hint The error message
	*/
	coldbox.system.validation.result.IValidationError function setMessage(required string message);
	 
	/**
	* Set the field
	* @message.hint The error message
	*/
	coldbox.system.validation.result.IValidationError function setField(required string field);
	
	/**
	* Set the rejected value
	* @value.hint The rejected value
	*/
	coldbox.system.validation.result.IValidationError function setRejectedValue(required any value);
	
	/**
	* Set the validator type name that rejected
	* @validationType.hint The name of the rejected validator
	*/
	coldbox.system.validation.result.IValidationError function setValidationType(required any validationType);
	
	/**
	* Get the error validation type
	*/
	string function getValidationType();
	
	/**
	* Get the error message
	*/
	string function getMessage();
	
	/**
	* Get the error field
	*/
	string function getField();
	
	/**
	* Get the rejected value
	*/
	any function getRejectedValue();
	
	/**
	* Get the error representation
	*/
	struct function getMemento();
	
	/**
	* Configure method, which can do setters for all required error params
	* @message.hint The required error message
	* @field.hint The required field that case the exception
	* @rejectedValue.hint The optional rejected value
	* @validationType.hint The name of the rejected validator
	*/
	coldbox.system.validation.result.IValidationError function configure(required string message, required string field, string rejectedValue, string validationType);
	
}