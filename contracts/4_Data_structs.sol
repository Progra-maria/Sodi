// SPDX-License-Identifier: MIT

//Vesrion
pragma solidity ^0.8.4;

contract Data_structs {
    
    //Client data struct
    struct Customer {
        uint256 id;
        string name;
        string email;
    }

    //Customer variable instance (these data willl be public in the blockchain)
    Customer customer_1 = Customer(1, "Maria", "maria@email.com");

    //Arrays size might be declared in Solidity
    uint256 [5] public fixed_list_uints = [1,2,3,4,5];

    //Solidity allows dinamic arrays
    uint256 [] dynamic_list_uints;

    //Customer type inamic array
    Customer [] public dynamic_list_customer;

    //New array data assingment
    function array_modification(uint256 _id, string memory _name, string memory _email) public {
        dynamic_list_customer.push(Customer(_id, _name, _email));
        //or
        Customer memory random_customer = Customer(_id, _name, _email);
        dynamic_list_customer.push(random_customer);
    }

    //Mappings are a key-value association
    mapping (address => uint256) public address_uint;
    mapping (string => uint256 []) public string_listUints;
    mapping (address => Customer) public address_struct;

    //Number to address assignmet
    function assignNumber(uint256 _number) public {
        //The key is passed between the brackets, and the vaule is passed after the equal sing
        address_uint [msg.sender] = _number;
    }

    //Several numbers to string assignment
    function assignList(string memory _name, uint256 _number) public {
        string_listUints[_name].push(_number);
    }

    //Struct to address assignment
    function assingStruct(uint _id, string memory _name, string memory _email) public {
        address_struct[msg.sender] = Customer(_id, _name, _email);
    }
}