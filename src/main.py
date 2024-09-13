import qsharp
from Entangle import EntangleQubits
#n_qubits = 42
"""
def random_uint_qsharp(nqubits):
    (results, number) = qsharp.eval(f'RandomGen.GenRandomUint({nqubits})')
    count = 0
    for r in results:
        if r == qsharp.Result.One:
            count += 1
    print(f'src/main.py :: Number of 1s measured in sequence of {nqubits} qubits: {count}')
    print(f'src/main.py :: Integer Representation of the generated {nqubits} bits array: {number}')
    return number
"""
def entangle_qsharp():
    (result1, result2) = EntangleQubits.simulate()
    print(f'src/main.py :: entangle_qsharp(): Qubit One Measurement: {result1}, Qubit Two Measurement: {result2}')

if __name__ == '__main__':
    qsharp.init(project_root='.')
    #random_uint_qsharp(n_qubits)
    entangle_qsharp()
