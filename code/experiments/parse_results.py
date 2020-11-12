import matplotlib.pyplot as plt
import argparse
import pandas as pd

parser = argparse.ArgumentParser()
parser.add_argument('--file', type=str, required=True)
args = parser.parse_args()

results = pd.DataFrame(
    columns=['eps', 'theta', 'running time', 'distance']
)

with open(args.file, 'r') as f:
    idx = 0

    for line in f.readlines():
        if 'theta' in line:
            name = line.strip().split('/')[1].split('_')
            theta = float(name[name.index('theta') + 1])
            eps = name[-1]
        if 'runtime' in line:
            time = float(line.split('(s): ')[1])
        if 'distance' in line: 
            distance = float(line.split('distance: ')[1])
        if not line.strip():
            results.loc[idx] = [eps, theta, time, distance]
            idx += 1

fig, ax = plt.subplots(1, 1)

for eps, eps_results in results.groupby('eps'):
    eps_results = eps_results.sort_values(by='theta')
    ax.plot(eps_results['theta'], eps_results['running time'], label=f'eps = {eps}')

ax.legend()
ax.set_xlabel('theta')
ax.set_ylabel('running time (s)')
fig.suptitle(args.file.split('.txt')[0])
plt.savefig(args.file.split('.txt')[0] + '.eps')
