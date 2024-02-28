### Federated Learning Implementation using Flower Framework
This repository is created to test out the Flower library and understand how federated learning works. 

Implementation details:
1. A container image is created with Flower and Scikit-learn to test out Minist data set.
2. This same container image is used to create three containers working as Server, Client 1 and Client 2.
3. Secure communication is established using gprc protocol and self-signed certificates using Flower's script. 

To do - 
Use this same implementation across different TREs and different clusters to test functionality. 

