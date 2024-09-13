namespace RandomGen {
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Diagnostics;
    open Microsoft.Quantum.Measurement;
    open Microsoft.Quantum.Arrays;
    open Microsoft.Quantum.Canon;

    function ResultArrayToInt(results : Result[]) : Int {
        mutable number = 0;
        for idx in 0 .. Length(results) - 1 {
            if (results[idx] == One) {
                set number += (1 <<< idx);
            }
        }
        return number;
    }

    operation GenRandomUint(nQubits : Int) : (Result[], Int) {
        use qubits = Qubit[nQubits];
        ApplyToEach(H, qubits);
        mutable results = new Result[nQubits];
        for idx in 0 .. nQubits - 1 {
            let result = MResetZ(qubits[idx]);
            set results w/= idx <- result;
        }
        let reversedResults = Reversed(results);
        let number = ResultArrayToInt(reversedResults);
        return (reversedResults, number);
    }
}