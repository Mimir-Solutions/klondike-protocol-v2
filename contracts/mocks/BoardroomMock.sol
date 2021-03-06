//SPDX-License-Identifier: MIT
pragma solidity =0.6.6;

import "../interfaces/IBoardroom.sol";

contract BoardroomMock is IBoardroom {
    function notifyTransfer(address token, uint256 amount) public override {
        emit NotifyTransfer(token, amount);
    }

    function updateRewardsAfterLock(address owner) public override {
        emit UpdateRewardsAfterLock(owner);
    }

    event NotifyTransfer(address token, uint256 amount);
    event UpdateRewardsAfterLock(address owner);
}
