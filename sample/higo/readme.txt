demo description:
   	Examples:
	1. Animation 
        Function:
                 A .gif animation example shows all .gif pictures under res/gif.
	 Command:
                 ./sample_animation 

	2. Dot-matrix font 
        Function:
                 The test case shows three lines of character strings in different colors. 
        Command:
	         ./sample_bitmapfont 

	3. Cursor        
	 Function:
	 	 The cursor works properly when you perform common cursor operations, corlorkey cursor operations, or alpha cursor operations, move the cursor, or refresh the cursor.
        Command:	
		 ./sample_cursorck

	4. jpeg decoding
	 Function:
		 In the test case, all .jpeg pictures in the specified directory are decoded. The decoded pictures are displayed in a row.        
	 Command:	
		 ./sample_dec

	5. Encoding interface
	 Function:
		 In this test case, a surface is saved as a .bmp file. The file name is mybitmap.bmp.
        Command:	
		 ./sample_encoder

	6. Filling rectangle interface
	 Function:
		 This test case shows the function of HI_GO_FillRect. A rectangle is displayed.
        Command:	
		 ./sample_fillrect

	7. Graphics layer interface
	 Function:
		 This test case shows how to create, destroy, and refresh a graphics layer, and obtain the surface of the graphics layer. A red rectangle and a green rectangle are displayed.
        Command:	
		 ./sample_gdev

	8. surface interface
	 Function:
		 This test case shows how to create, destroy, and fill a surface. A red rectangle is displayed.
        Command:	
		 ./sample_surface

	9. Vector font interface
	 Function:
		  This test case shows how to use the vector font. Three lines of contents in the vector font in different colors are displayed.
        Command:	
		 ./sample_text

	10. Performance test
		 This test case shows how to test the blit performance, fill performance, font display performance, decoding performance, and refresh performance.
        Command:	
		 ./sample_performance 

	11. Window 
		 This test case shows how to use the window. A rectangle window is displayed. The rectangle can be moved.
        Command:	
		 ./sample_wm
	12. Smooth transition from the startup screen
		This test case shows the smooth transition from the startup screen to user programs. The norm, pixel format, display size, and screen size of user programs must be consistent with those of the startup screen.        
	Command:	
		 ./sample_logo
		 
Attention:
          4+64 configure please refer to sample_decrle
