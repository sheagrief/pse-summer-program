// implement proof of knowledge of a preimage of a hash function
pragma circom 2.0.0; 

include "../../../node_modules/circomlib/circuits/poseidon.circom";

template Hash () {  
   signal input x;
   signal output h;

   // Constraints
   component hash = Poseidon(1);
   hash.inputs[0] <== x;
   h <== hash.out;
}

component main = Hash();