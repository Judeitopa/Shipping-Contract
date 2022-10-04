//SPDX-License-Identifier:MIT

pragma solidity ^0.8.0;



contract Shipping{
     
    ShippingStatus private status;

    event newAlert(string description);

    enum ShippingStatus {Pending, Shipped, Delivered}
    constructor() {
        status = ShippingStatus.Pending;
      }

     function Shipped () public {
        status = ShippingStatus.Shipped;
        emit newAlert("Congrats!, Your item has been Shipped!");
     }

     function Delivered () public {
        status = ShippingStatus.Delivered;
        emit newAlert("Congrats!, Your item has been Delivered");
     }

     function getStatus(ShippingStatus _status) internal pure returns(string memory) {
       if (ShippingStatus.Pending == _status) return "Pending";
       if (ShippingStatus.Shipped == _status) return "Shipped";
       if (ShippingStatus.Delivered == _status) return "Delivered";
     }

     //Get Status of your shipped item

     function Status() public view returns (string memory){
        ShippingStatus _status = status;
        return getStatus(_status);
     }
}