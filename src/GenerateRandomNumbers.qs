namespace GenerateRandom {
    open Microsoft.Quanum.Arrays;
    open Microsoft.Quantum.Convert;
    
    operation GenerateRandomNumbers(nQubits : Int) : (Result[], Int) {
	use qubits = Qubit[nQubits];
	ApplyToEach(H, qubits);
	let result = MResetEachZ(qubits);
	let number = ResultArrayAsInt(Reversed(result));
	return (result, number);
    }
}
