sample_socket is used on the demo board.
sample_socket_pc is used on the Linux server.

Run sample_socket -s on the server to listen to data on the port.
              Run -c xx.xx.xx.xx on the client to connect to the server. Before running this command, ensure that the sample_socket_pc is running on the server.                   
                  The data on the port is being listened.

The parameters are valid for the server and client:
              -p 5002 specified port. The values must be consistent for the server and client.
	      -u udp mode. The modes for the server and client must be the same. If the mode is not specified, the TCP mode is used.
              -l 10 number of cyclic speed test times. The default value is 10. The values must be consistent for the server and client.
              -m 1 data size during each data transmission for speed test. The data size is in the unit of MB. The default value is 1 MB. The values must be consistent for the server and client.
              -f (m/k/b) format of displaying the test result. m indicates the speed is in the unit of MB; k indicates that the speed is
                 in the unit of KB; b indicates that the speed is in the unit of byte. The default value is m. The values must be consistent for
                  the server and client.
   

The following parameter is valid only for the client:
	      -d test the download function rapidly


You can enter commands after the client is connected to the server. You cannot enter Backspace to delete the entered commands.
		Enter speed none to test the speed. The test results are displayed on the client and server.
                Enter down xxxx.xxx to test the file transfer function. The test results are displayed on the client and server. The User Datagram Protocol (UDP) is not supported.
                                                   xxx.xx can be the path on the server.
                Enter close to end this test.


                                             