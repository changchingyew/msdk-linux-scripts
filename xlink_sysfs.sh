mount -t configfs none /sys/kernel/config
cd /sys/kernel/config/pci_ep/
mkdir functions/mxlk_pcie_epf/func0
ln -s functions/mxlk_pcie_epf/func0 controllers/82000000.pcie_ep/
mkdir functions/mxlk_pcie_epf/func1
ln -s functions/mxlk_pcie_epf/func1 controllers/82000000.pcie_ep/
mkdir functions/mxlk_pcie_epf/func2
ln -s functions/mxlk_pcie_epf/func2 controllers/82000000.pcie_ep/
mkdir functions/mxlk_pcie_epf/func3
ln -s functions/mxlk_pcie_epf/func3 controllers/82000000.pcie_ep/
mkdir functions/mxlk_pcie_epf/func4
ln -s functions/mxlk_pcie_epf/func4 controllers/82000000.pcie_ep/
mkdir functions/mxlk_pcie_epf/func5
ln -s functions/mxlk_pcie_epf/func5 controllers/82000000.pcie_ep/
mkdir functions/mxlk_pcie_epf/func6
ln -s functions/mxlk_pcie_epf/func6 controllers/82000000.pcie_ep/
mkdir functions/mxlk_pcie_epf/func7
ln -s functions/mxlk_pcie_epf/func7 controllers/82000000.pcie_ep/
echo "1" > controllers/82000000.pcie_ep/start
