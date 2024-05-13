# company details

This Solidity smart contract, Company, is designed to manage details of various companies including their IDs, names, statuses, and starting salaries. It offers functionalities to add new company details and retrieve existing company names.

## Description

The Company contract consists of the following components:

1.Struct: The details struct stores the essential information of a company, including its ID, name, status, and starting salary.

2.State Variables:

3.company_details: It holds the details of a single company at a time.
Functions:

addCompanyName: This function allows users to add new company details. It performs validations to ensure that the starting salary is above a minimum threshold and that the company ID is not zero.
getName: This function retrieves the name of the company whose details have been added.

## Getting Started
o add details of a new company, call the addCompanyName function with the following parameters:

_id: The unique ID of the company (must be greater than 0).
_name: The name of the company.
_status: The status of the company.
_salary: The starting salary offered by the company (must be at least $100,000).
### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., error.sol). Copy and paste the following code into the file:

```solidity
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

```

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.18" (or another compatible version), and then click on the "Compile error.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "error" contract from the dropdown menu, and then click on the "Deploy" button.



Navaneeth M  
navaneeth.mm321@gmail.com


## License

This project is licensed under the terms of the MIT license. See the LICENSE file for details.

