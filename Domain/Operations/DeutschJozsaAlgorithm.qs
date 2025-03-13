operation DeutschJozsaAlgorithm(oracle : ((Qubit[], Qubit[]) => Unit), n : Int) : Bool {
    using (qubits = Qubit[n + 1]) {
        H(qubits[0..n]);
        for (i in 1..n) {
            H(qubits[i]);
        }
        oracle(qubits[1..n], qubits[0]);
        for (i in 1..n) {
            H(qubits[i]);
        }
        let result = M(qubits[1..n]);
        return result == [Zero] * n;
    }
}