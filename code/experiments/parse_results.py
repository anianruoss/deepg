import pandas as pd

results = pd.DataFrame(
    columns=['alpha', 'beta', 'gamma', 'running time', 'distance']
)

with open('results.txt', 'r') as f:
    idx = 0

    for line in f.readlines():
        if line.startswith('experiments'):
            name = line.split('experiments/')[1].split('_')
            idx_alpha = name.index('alpha')
            idx_beta = name.index('beta')
            idx_gamma = name.index('gamma')
            alpha = '{' + f'{name[idx_alpha + 1: idx_beta]}' + '}'
            beta = '{' + f'{name[idx_beta + 1: idx_gamma]}' + '}'
            gamma = '{' + f'{name[idx_gamma + 1: name.index("intervals")]}' + '}'
        if 'runtime' in line:
            time = float(line.split('(s): ')[1])
        if 'distance' in line: 
            distance = float(line.split('distance: ')[1])
        if not line.strip():
            results.loc[idx] = [alpha, beta, gamma, time, distance]
            idx += 1

results.to_latex('parsed_results.tex', index=False)
