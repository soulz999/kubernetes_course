kubectl taint node 'node01' spray=mortein:NoSchedule --dry-run=client -o yaml > taint.yaml


