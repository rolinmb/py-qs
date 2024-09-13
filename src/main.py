import qsharp

if __name__ == '__main__':
    qsharp.init(project_root='.')
    n_qubits = input('src/main.py :: Enter the number of random qubits to be generated: ')
    (results, number) = qsharp.eval(f'GenerateRandom.GenerateRandomNumbers({n_qubits})')
    count = 0
    for result in results:
        if result == qsharp.Result.One
            count += 1

    print(f'src/main.py :: Bits Generated: {results}')
    print(f'src/main.py :: Number of Ones: {count}')
    print(f'src/main.py :: The Integer Representation of the generated {n_qubits} bits: {number}')
