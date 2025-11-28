//SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.20;
import {OrderBook} from "../../contracts/OrderBook.sol";
import {MarginAccount} from "../../contracts/MarginAccount.sol";

contract Config {

    string rpcUrl = "";

    function getKuruForwarderAllowedInterfaces() public returns (bytes4[] memory) {
        bytes4[] memory allowedInterfaces = new bytes4[](7);
        allowedInterfaces[0] = OrderBook.addBuyOrder.selector;
        allowedInterfaces[1] = OrderBook.addSellOrder.selector;
        allowedInterfaces[2] = OrderBook.placeAndExecuteMarketBuy.selector;
        allowedInterfaces[3] = OrderBook.placeAndExecuteMarketSell.selector;
        allowedInterfaces[4] = MarginAccount.deposit.selector;
        allowedInterfaces[5] = MarginAccount.withdraw.selector;
        allowedInterfaces[6] = OrderBook.batchUpdate.selector;
        return allowedInterfaces;
    }

    function getProtocolMultiSig() public returns (address) {
        return address(0);
    }

    function getDeployer() public returns (address) {
        return address(0);
    }

    function getProtocolFeeCollector() public returns (address) {
        return address(0);
    }

    function getRpcUrl() internal returns (string memory) {
        return rpcUrl;
    }

}