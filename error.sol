//SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

contract company{
    struct details{
        uint id;
        string name;
        string status;
        uint start_salary;
    }
    details company_details;

    function addCompanyName(uint _id, string memory _name, string memory _status,uint _salary) public {
        require(_salary>100000,"The minimum starting salary is $100000");
        if(_id<=0){
            revert("Company ID cannot be 0");
        }
        company_details=(details(_id,_name,_status,_salary));
    }

    function getName() public view returns(string memory){
        assert(company_details.id!=0 );
        return company_details.name;
    }
}
