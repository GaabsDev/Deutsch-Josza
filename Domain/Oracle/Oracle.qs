operation Oracle(input : Int) : Unit is Adj + Ctl {
    using (qubits = Qubit[2]) {
        H(qubits[0]);
        H(qubits[1]);
        if (input == 0) {
            // Do nothing for the constant function
        } else {
            X(qubits[1]);
        }
        // Apply the oracle
        CNOT(qubits[0], qubits[1]);
        // Apply Hadamard gates again
        H(qubits[0]);
        H(qubits[1]);
        // Reset qubits
        ResetAll(qubits);
    }
}