# THE NODE DOES NOT NEED TO BE TAINTED !! JUST NEED A LABEL
#kubectl taint nodes node01 color=blue:NoSchedule

kubectl label nodes node01 color=blue

# The tag for red deploy was not ran by a imperative command because it was already present in the controlplane node (desired  to be run on)
