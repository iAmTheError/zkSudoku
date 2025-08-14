pragma circom 2.0.5;

include "../node_modules/circomlib/circuits/comparators.circom";

template sudoku(){
    signal input unsolved[9][9];
    signal input solved[9][9];

    //all the numbers in the unsolved grid must be between 1 and 9

    component checknine[9][9];
    component checkone[9][9];

    for(var i =0; i<9;i++){
        for(var j=0;j<9;j++){
            checknine[i][j] = LessEqThan(32);
            checknine[i][j].in[0] <== solved[i][j];
            checknine[i][j].in[1] <== 9;
            checknine[i][j].out === 1;

            checkone[i][j] = GreaterEqThan(32);
            checkone[i][j].in[0] <== solved[i][j];
            checkone[i][j].in[1] <== 1;
            checkone[i][j].out === 1;
        }
    }

    //if the element in the unsolved is 0, then it should be unsolved
    //if the element in the unsolved is not 0, then it should be equal to the solved element
    //the element should either be 0 or equal to the solved element
    component checkZero[9][9];
    component checkEqual[9][9];
    for(var i=0;i<9;i++){
        for(var j=0;j<9;j++){
            checkZero[i][j] = IsZero();
            checkZero[i][j].in <== unsolved[i][j];

            checkEqual[i][j] = IsEqual();
            checkEqual[i][j].in[0] <== unsolved[i][j];
            checkEqual[i][j].in[1] <== solved[i][j];
            checkEqual[i][j].out === 1-checkZero[i][j].out;
        }
    }

    //Every row must have all the numbers from 1 to 9 and they should not repeat
    component checkRow[324];
    var id = 0;
    for(var i=0;i<9;i++){
        for(var j=0;j<9;j++){
            for(var k=j+1;k<9;k++){
                checkRow[id] = IsEqual();
                checkRow[id].in[0] <== solved[i][j];
                checkRow[id].in[1] <== solved[i][k];
                checkRow[id].out === 0;
                id++;
            }
        }
    }

    //Every column must have all the numbers from 1 to 9 and they should not repeat
    component checkColumn[324];
    var id2 = 0;
    for(var i=0;i<9;i++){
        for(var j=0;j<9;j++){
            for(var k=j+1;k<9;k++){
                checkColumn[id2] = IsEqual();
                checkColumn[id2].in[0] <== solved[j][i];
                checkColumn[id2].in[1] <== solved[k][i];
                checkColumn[id2].out === 0;
                id2++;
            }
        }
    }

    //Every 3x3 square must have all the numbers from 1 to 9 and they should not repeat
    component checkSquare[324];
    var id3 = 0;
    for(var i=0;i<9;i+=3){
        for(var j=0;j<9;j+=3){
            for(var k =i;k<i+3;k++){
                for(var l=j;l<j+3;l++){
                    for(var m=i;m<=k;m++){
                        for(var n=j;n<l;n++){
                            checkSquare[id3] = IsEqual();
                            checkSquare[id3].in[0] <== solved[k][l];
                            checkSquare[id3].in[1] <== solved[m][n];
                            checkSquare[id3].out === 0;
                            id3++;
                        }
                    }
                }
            }
        }
    }
}
component main {public[unsolved]} = sudoku();