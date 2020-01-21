# Aliases for Galapagos
alias pushVMs_l="rsync -uavzP -e ssh ~/VMs/ Emperor_l:~/VMs/"
alias pushVMs="rsync -uavzP -e ssh ~/VMs/ Emperor:~/VMs/"
alias pullVMs_l="rsync -uavzP -e ssh Emperor_l:~/VMs/ ~/VMs/"
alias pullVMs="rsync -uavzP -e ssh Emperor:~/VMs/ ~/VMs/"

