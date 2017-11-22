Purpose: to demonstrate multiple track of audio mixing. A maximum of 8-channel pulse code modulations (PCMs) are supported.
Command: 
./sample_mixengine file0 TrackWeight0 [SampleRate0] [Channel0] file1 TrackWeight1 [SampleRate1] [Channel1]
For example:
./sample_mixengine a.wav 100 48000 1 b.wav 100 48000 1