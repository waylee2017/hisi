Purpose: to demonstrate video broadcasting (DVB) playing. Stop frames during the playing, copy the still frames to the graphics surface, save the last frame as a .bmp picture, and resume the playing.
Command: sample_capture freq srate [qamtype or polarization] [vo_format]
      Fields [qamtype or polarization] and [vo_format] are optional.
      qamtype or polarization:
          For cable, used as qamtype, value can be 16|32|[64]|128|256|512 defaut[64]
          For satellite, used as polarization, value can be [0] horizontal | 1 vertical defaut[0]
      vo_format:
          The value of vo_format can be 1080P_60, 1080P_50, 1080i_60, 1080i_50, 720P_60, or 720P_50. The default value is 
          1080i_50.
Description of serial port key values:
q: quits.
c: stops frames and copies the last frame to the graphics surface.     
f: stops frames, copies the last frame to the graphics surface, and saves the last frame as a capture.bmp file.
Any key: resumes the playing.
Number key: plays the program labeled a specified number.
