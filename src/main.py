import qsharp
n_qubits = 42

if __name__ == '__main__':
    qsharp.init(project_root='.')
    (results, number) = qsharp.eval(f'GenerateRandom.GenerateRandomNumbers({n_qubits})')
    count = 0
    for result in results:
        if result == qsharp.Result.One:
            count += 1
    print(f'src/main.py :: Number of Ones: {count}')
    print(f'src/main.py :: Integer Representation of the generated {n_qubits} bits array: {number}')

