namespace Superposition {
	open Microsoft.Quantum.Intrinsic;
	open Microsoft.Quantum.Diagnostics;
	open Microsoft.Quantum.Measurement;
	@EntryPoint()
	operation EntangleQubits() : (Result, Result) {
		use (q1, q2) = (Qubit(), Qubit());
		H(q1);
		CNOT(q1, q2);
		DumpMachine();
		let (m1, m2) = (M(q1), M(q2));
		Reset(q1);
		Reset(q2);
		return (m1, m2);
	}
}