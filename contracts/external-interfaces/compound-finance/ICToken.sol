// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.7.6;

interface ICToken {
    function mint(uint mintAmount) external returns (uint256);
    function redeem(uint redeemTokens) external returns (uint256);
    function redeemUnderlying(uint redeemAmount) external returns (uint256);
    function exchangeRateStored() external view returns (uint256);
    function exchangeRateCurrent() external returns (uint256);
    function supplyRatePerBlock() external view returns (uint256);
    function accrueInterest() external returns (uint256);
    function underlying() external view returns (address);
    function comptroller() external view returns (address);
}

interface ICTokenErc20 {
   function totalSupply() external view returns (uint256);
   function balanceOf(address to) external view returns (uint256);
   function transfer(address recipient, uint256 amount) external returns (bool);
}
