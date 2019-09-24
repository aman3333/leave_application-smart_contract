pragma solidity ^0.5.0;

contract Leave_Application
{
        string public name="abc";
        
        uint public startDateOfLeave;
        uint public endDateOfLeave;
        uint public RequiredLeaves;
        uint public numberofApprovedLeaves=10;
        
        bool public eligible;
        
       
        function setValues(string memory  _name) public
        {
                name=_name;
         }
        
        
        function setStartDate(uint _startDateOfLeave) public
        {
            startDateOfLeave=_startDateOfLeave;
        }
        
        function setEndDate(uint _endDateOfLeave) public
        {
            endDateOfLeave=_endDateOfLeave;
        }
   
        function calculateLeaves ()  public
        {
            RequiredLeaves = endDateOfLeave-startDateOfLeave;
        }

       
        function determineEligibility(uint startDateOfLeave,uint endDateOfLeave) public 
       {
           
           
           if(RequiredLeaves <= numberofApprovedLeaves)
           {
               
               eligible=true;
           }
           else
           {
               
               eligible=false;
           }
       }
        
        
}