// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.6.0) (token/ERC20/IERC20.sol)

pragma solidity ^0.8.0;

/**
 * @dev Interface of the ERC20 standard as defined in the EIP.
 */
interface IERC20 {
   
    //event事件，告诉用户和开发者合约交互产生的日志
    event Transfer(address indexed from, address indexed to, uint256 value); //转账日志

  
    event Approval(address indexed owner, address indexed spender, uint256 value);//授权或取消授权

    //function函数，业务逻辑实现
    function totalSupply() external view returns (uint256); //代币发行量

  
    function balanceOf(address account) external view returns (uint256);//用户余额

 
    function transfer(address to, uint256 amount) external returns (bool);//转账


    function allowance(address owner, address spender) external view returns (uint256);//授权转账额度


    function approve(address spender, uint256 amount) external returns (bool); //授权

 

     //授权转账
    function transferFrom(
        address from,
        address to,
        uint256 amount
    ) external returns (bool);
}
