// SPDX-License-Identifier: MIT
pragma solidity >=0.8.19;

// Define a contract representing a horse that moves like a knight in chess
contract Horse {
    // Position of the horse on a chess board represented by x and y coordinates
    int8 private posX;
    int8 private posY;

    // Check if the horse's current position is within the bounds of an 8x8 chess board
    function isWithinBounds() internal view returns (bool) {
        return posX >= 0 && posX < 8 && posY >= 0 && posY < 8;
    }

    // Move the horse 1 step in the x-direction and 2 steps in the y-direction
    function step1() public {
        posX += 1;
        posY += 2;
        require(isWithinBounds());
    }

    // Move the horse 2 steps in the x-direction and 1 step in the y-direction
    function step2() public {
        posX += 2;
        posY += 1;
        require(isWithinBounds());
    }

    // Move the horse 2 steps in the x-direction and 1 step in the negative y-direction
    function step3() public {
        posX += 2;
        posY -= 1;
        require(isWithinBounds());
    }

    // Move the horse 1 step in the negative x-direction and 2 steps in the negative y-direction
    function step4() public {
        posX -= 1;
        posY -= 2;
        require(isWithinBounds());
    }

    // Move the horse 1 step in the negative x-direction and 2 steps in the y-direction
    function step5() public {
        posX -= 1;
        posY += 2;
        require(isWithinBounds());
    }

    // Move the horse 2 steps in the negative x-direction and 1 step in the y-direction
    function step6() public {
        posX -= 2;
        posY += 1;
        require(isWithinBounds());
    }

    // Move the horse 2 steps in the negative x-direction and 1 step in the negative y-direction
    function step7() public {
        posX -= 2;
        posY -= 1;
        require(isWithinBounds());
    }

    // Move the horse 1 step in the negative x-direction and 2 steps in the negative y-direction
    function step8() public {
        posX -= 1;
        posY -= 2;
        require(isWithinBounds());
    }

    // Verify the horse is not at the destination position (7, 7) on the chess board
    function inv1_CheckNotAtDestination() public view {
        assert(!(posX == 7 && posY == 7));
    }
    
    // Verify the horse is not at the destination position (3, 4) on the chess board
    function inv2_CheckNotAtDestination() public view {
        assert(!(posX == 3 && posY == 4));
    }
}

