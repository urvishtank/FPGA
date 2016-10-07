`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 				Author :== Tank Urvish Bhikhabhai
//					Roll_No :== B.Tech(ICT-201501107)
//					Subject :==Find a Inverse of a matrix 
//					LA_Submission
//
// Create Date:    19:23:21 10/07/2016 
// Design Name: 
// Module Name:    Inverse_Matrix 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Inverse_Matrix(Data_out0,Data_out1,Data_out2,Data_out3,Data_out4,Data_out5,Data_out6,Data_out7,Data_out8,Data_out9,Data_out10,Data_out11,Data_out12,Data_out13,Data_out14,Data_out15,Data_out16,Data_out17,Data_out18,Data_out19,Data_out20,Data_out21,Data_out22,Data_out23,Data_out24);
//output Declaration

  /*
		  matrix :==   1  8	-9	7	5	
				0	1	0	4	4	
				0	0	1	2	5	
				0	0	0	1	-5	
				0	0	0	0	1
		  
		  //Inverse of a Matrix:==
		  
					1	-8	9	7	17	
					0	1	0	4	4	
					0	0	1	2	5
					0	0	0	1	-5	
					0	0	0	0	1
		  */
output reg [63:0]Data_out0;
output reg [63:0]Data_out1;
output reg [63:0]Data_out2;
output reg [63:0]Data_out3;
output reg [63:0]Data_out4;
output reg [63:0]Data_out5;
output reg [63:0]Data_out6;
output reg [63:0]Data_out7;
output reg [63:0]Data_out8;
output reg [63:0]Data_out9;
output reg [63:0]Data_out10;
output reg [63:0]Data_out11;
output reg [63:0]Data_out12;
output reg [63:0]Data_out13;
output reg [63:0]Data_out14;
output reg [63:0]Data_out15;
output reg [63:0]Data_out16;
output reg [63:0]Data_out17;
output reg [63:0]Data_out18;
output reg [63:0]Data_out19;
output reg [63:0]Data_out20;
output reg [63:0]Data_out21;
output reg [63:0]Data_out22;
output reg [63:0]Data_out23;
output reg [63:0]Data_out24;
//Declaration
//array :
real Matrix[0:4][0:9];
real k;

initial begin
//first augmented Matrix's Row
Matrix[0][0] = 1.0;
Matrix[0][1] = 8.0;
Matrix[0][2] = -9.0;
Matrix[0][3] = 7.0;
Matrix[0][4] = 5.0;
Matrix[0][5] = 1.0;
Matrix[0][6] = 0.0;
Matrix[0][7] = 0.0;
Matrix[0][8] = 0.0;
Matrix[0][9] = 0.0;
//Second augmented Matrix's Row
Matrix[1][0] = 0.0;
Matrix[1][1] = 1.0;
Matrix[1][2] = 0.0;
Matrix[1][3] = 4.0;
Matrix[1][4] = 4.0;
Matrix[1][5] = 0.0;
Matrix[1][6] = 1.0;
Matrix[1][7] = 0.0;
Matrix[1][8] = 0.0;
Matrix[1][9] = 0.0;
//third augmented Matrix's Row
Matrix[2][0] = 0.0;
Matrix[2][1] = 0.0;
Matrix[2][2] = 1.0;
Matrix[2][3] = 2.0;
Matrix[2][4] = 5.0;
Matrix[2][5] = 0.0;
Matrix[2][6] = 0.0;
Matrix[2][7] = 1.0;
Matrix[2][8] = 0.0;
Matrix[2][9] = 0.0;
//Fourth augmented Matrix's Row
Matrix[3][0] = 0.0;
Matrix[3][1] = 0.0;
Matrix[3][2] = 0.0;
Matrix[3][3] = 1.0;
Matrix[3][4] = -5.0;
Matrix[3][5] = 0.0;
Matrix[3][6] = 0.0;
Matrix[3][7] = 0.0;
Matrix[3][8] = 1.0;
Matrix[3][9] = 0.0;

//Fifth augmented Matrix's Row
Matrix[4][0] = 0.0;
Matrix[4][1] = 0.0;
Matrix[4][2] = 0.0;
Matrix[4][3] = 0.0;
Matrix[4][4] = 1.0;
Matrix[4][5] = 0.0;
Matrix[4][6] = 0.0;
Matrix[4][7] = 0.0;
Matrix[4][8] = 0.0;
Matrix[4][9] = 1.0;

end

always@(*)
begin
	 
	k = Matrix[0][0];  //first diagonal of first augmented row
				if(k!=0)
			begin
				//divide first row by its diagonal element(Matrix[n][n])
				   Matrix[0][0] = Matrix[0][0] / Matrix[0][0];
				   Matrix[0][1] = Matrix[0][1] / Matrix[0][0];
					Matrix[0][2] = Matrix[0][2] / Matrix[0][0];
					Matrix[0][3] = Matrix[0][3] / Matrix[0][0];
					Matrix[0][4] = Matrix[0][4] / Matrix[0][0];
					Matrix[0][5] = Matrix[0][5] / Matrix[0][0];
					Matrix[0][6] = Matrix[0][6] / Matrix[0][0];
					Matrix[0][7] = Matrix[0][7] / Matrix[0][0];
					Matrix[0][8] = Matrix[0][8] / Matrix[0][0];
					Matrix[0][9] = Matrix[0][9] / Matrix[0][0];
		
			end
//start subtract all row's from first row
			k = Matrix[1][0];
				Matrix[1][0] = Matrix[1][0] - (k*Matrix[0][0]); 
				Matrix[1][1] = Matrix[1][1] - (k*Matrix[0][1]); 
				Matrix[1][2] = Matrix[1][2] - (k*Matrix[0][2]); 
				Matrix[1][3] = Matrix[1][3] - (k*Matrix[0][3]); 
				Matrix[1][4] = Matrix[1][4] - (k*Matrix[0][4]); 
				Matrix[1][5] = Matrix[1][5] - (k*Matrix[0][5]); 
				Matrix[1][6] = Matrix[1][6] - (k*Matrix[0][6]); 
				Matrix[1][7] = Matrix[1][7] - (k*Matrix[0][7]); 
				Matrix[1][8] = Matrix[1][8] - (k*Matrix[0][8]); 
				Matrix[1][9] = Matrix[1][9] - (k*Matrix[0][9]);

			k = Matrix[2][0];
				Matrix[2][0] = Matrix[2][0] - (k*Matrix[0][0]); 
				Matrix[2][1] = Matrix[2][1] - (k*Matrix[0][1]); 
				Matrix[2][2] = Matrix[2][2] - (k*Matrix[0][2]); 
				Matrix[2][3] = Matrix[2][3] - (k*Matrix[0][3]); 
				Matrix[2][4] = Matrix[2][4] - (k*Matrix[0][4]); 
				Matrix[2][5] = Matrix[2][5] - (k*Matrix[0][5]); 
				Matrix[2][6] = Matrix[2][6] - (k*Matrix[0][6]); 
				Matrix[2][7] = Matrix[2][7] - (k*Matrix[0][7]); 
				Matrix[2][8] = Matrix[2][8] - (k*Matrix[0][8]); 
				Matrix[2][9] = Matrix[2][9] - (k*Matrix[0][9]);

			k = Matrix[3][0];
				Matrix[3][0] = Matrix[3][0] - (k*Matrix[0][0]); 
				Matrix[3][1] = Matrix[3][1] - (k*Matrix[0][1]); 
				Matrix[3][2] = Matrix[3][2] - (k*Matrix[0][2]); 
				Matrix[3][3] = Matrix[3][3] - (k*Matrix[0][3]); 
				Matrix[3][4] = Matrix[3][4] - (k*Matrix[0][4]); 
				Matrix[3][5] = Matrix[3][5] - (k*Matrix[0][5]); 
				Matrix[3][6] = Matrix[3][6] - (k*Matrix[0][6]); 
				Matrix[3][7] = Matrix[3][7] - (k*Matrix[0][7]); 
				Matrix[3][8] = Matrix[3][8] - (k*Matrix[0][8]); 
				Matrix[3][9] = Matrix[3][9] - (k*Matrix[0][9]);

			k = Matrix[4][0];
				Matrix[4][0] = Matrix[4][0] - (k*Matrix[0][0]); 
				Matrix[4][1] = Matrix[4][1] - (k*Matrix[0][1]); 
				Matrix[4][2] = Matrix[4][2] - (k*Matrix[0][2]); 
				Matrix[4][3] = Matrix[4][3] - (k*Matrix[0][3]); 
				Matrix[4][4] = Matrix[4][4] - (k*Matrix[0][4]); 
				Matrix[4][5] = Matrix[4][5] - (k*Matrix[0][5]); 
				Matrix[4][6] = Matrix[4][6] - (k*Matrix[0][6]); 
				Matrix[4][7] = Matrix[4][7] - (k*Matrix[0][7]); 
				Matrix[4][8] = Matrix[4][8] - (k*Matrix[0][8]); 
				Matrix[4][9] = Matrix[4][9] - (k*Matrix[0][9]);

//Doing above process againg for second Row and so on...	
//start Lowertrianguler			
k = Matrix[1][1];
	
			if(k!=0)
			begin
				   Matrix[1][0] = Matrix[1][0] / Matrix[1][1];
				   Matrix[1][1] = Matrix[1][1] / Matrix[1][1];
					Matrix[1][2] = Matrix[1][2] / Matrix[1][1];
					Matrix[1][3] = Matrix[1][3] / Matrix[1][1];
					Matrix[1][4] = Matrix[1][4] / Matrix[1][1];
					Matrix[1][5] = Matrix[1][5] / Matrix[1][1];
					Matrix[1][6] = Matrix[1][6] / Matrix[1][1];
					Matrix[1][7] = Matrix[1][7] / Matrix[1][1];
					Matrix[1][8] = Matrix[1][8] / Matrix[1][1];
					Matrix[1][9] = Matrix[1][9] / Matrix[1][1];
		
			end
		
			k = Matrix[2][1];
				Matrix[2][0] = Matrix[2][0] - (k*Matrix[1][0]); 
				Matrix[2][1] = Matrix[2][1] - (k*Matrix[1][1]); 
				Matrix[2][2] = Matrix[2][2] - (k*Matrix[1][2]); 
				Matrix[2][3] = Matrix[2][3] - (k*Matrix[1][3]); 
				Matrix[2][4] = Matrix[2][4] - (k*Matrix[1][4]); 
				Matrix[2][5] = Matrix[2][5] - (k*Matrix[1][5]); 
				Matrix[2][6] = Matrix[2][6] - (k*Matrix[1][6]); 
				Matrix[2][7] = Matrix[2][7] - (k*Matrix[1][7]); 
				Matrix[2][8] = Matrix[2][8] - (k*Matrix[1][8]); 
				Matrix[2][9] = Matrix[2][9] - (k*Matrix[1][9]);

			k = Matrix[3][1];
				Matrix[3][0] = Matrix[3][0] - (k*Matrix[1][0]); 
				Matrix[3][1] = Matrix[3][1] - (k*Matrix[1][1]); 
				Matrix[3][2] = Matrix[3][2] - (k*Matrix[1][2]); 
				Matrix[3][3] = Matrix[3][3] - (k*Matrix[1][3]); 
				Matrix[3][4] = Matrix[3][4] - (k*Matrix[1][4]); 
				Matrix[3][5] = Matrix[3][5] - (k*Matrix[1][5]); 
				Matrix[3][6] = Matrix[3][6] - (k*Matrix[1][6]); 
				Matrix[3][7] = Matrix[3][7] - (k*Matrix[1][7]); 
				Matrix[3][8] = Matrix[3][8] - (k*Matrix[1][8]); 
				Matrix[3][9] = Matrix[3][9] - (k*Matrix[1][9]);

			k = Matrix[4][1];
				Matrix[4][0] = Matrix[4][0] - (k*Matrix[1][0]); 
				Matrix[4][1] = Matrix[4][1] - (k*Matrix[1][1]); 
				Matrix[4][2] = Matrix[4][2] - (k*Matrix[1][2]); 
				Matrix[4][3] = Matrix[4][3] - (k*Matrix[1][3]); 
				Matrix[4][4] = Matrix[4][4] - (k*Matrix[1][4]); 
				Matrix[4][5] = Matrix[4][5] - (k*Matrix[1][5]); 
				Matrix[4][6] = Matrix[4][6] - (k*Matrix[1][6]); 
				Matrix[4][7] = Matrix[4][7] - (k*Matrix[1][7]); 
				Matrix[4][8] = Matrix[4][8] - (k*Matrix[1][8]); 
				Matrix[4][9] = Matrix[4][9] - (k*Matrix[1][9]);

//end LowerTrianguler...

//start upperTrianguler...
			k = Matrix[0][1];
				Matrix[0][0] = Matrix[0][0] - (k*Matrix[1][0]); 
				Matrix[0][1] = Matrix[0][1] - (k*Matrix[1][1]); 
				Matrix[0][2] = Matrix[0][2] - (k*Matrix[1][2]); 
				Matrix[0][3] = Matrix[0][3] - (k*Matrix[1][3]); 
				Matrix[0][4] = Matrix[0][4] - (k*Matrix[1][4]); 
				Matrix[0][5] = Matrix[0][5] - (k*Matrix[1][5]); 
				Matrix[0][6] = Matrix[0][6] - (k*Matrix[1][6]); 
				Matrix[0][7] = Matrix[0][7] - (k*Matrix[1][7]); 
				Matrix[0][8] = Matrix[0][8] - (k*Matrix[1][8]); 
				Matrix[0][9] = Matrix[0][9] - (k*Matrix[1][9]);

//end  upperTrianguler...
//same again for sedcond row				
k = Matrix[2][2];
	
			if(k!=0)
			begin
				   Matrix[2][0] = Matrix[2][0] / Matrix[2][2];
				   Matrix[2][1] = Matrix[2][1] / Matrix[2][2];
					Matrix[2][2] = Matrix[2][2] / Matrix[2][2];
					Matrix[2][3] = Matrix[2][3] / Matrix[2][2];
					Matrix[2][4] = Matrix[2][4] / Matrix[2][2];
					Matrix[2][5] = Matrix[2][5] / Matrix[2][2];
					Matrix[2][6] = Matrix[2][6] / Matrix[2][2];
					Matrix[2][7] = Matrix[2][7] / Matrix[2][2];
					Matrix[2][8] = Matrix[2][8] / Matrix[2][2];
					Matrix[2][9] = Matrix[2][9] / Matrix[2][2];
		
			end
//start LowerTrianguler
		
			
			k = Matrix[3][2];
				Matrix[3][0] = Matrix[3][0] - (k*Matrix[2][0]); 
				Matrix[3][1] = Matrix[3][1] - (k*Matrix[2][1]); 
				Matrix[3][2] = Matrix[3][2] - (k*Matrix[2][2]); 
				Matrix[3][3] = Matrix[3][3] - (k*Matrix[2][3]); 
				Matrix[3][4] = Matrix[3][4] - (k*Matrix[2][4]); 
				Matrix[3][5] = Matrix[3][5] - (k*Matrix[2][5]); 
				Matrix[3][6] = Matrix[3][6] - (k*Matrix[2][6]); 
				Matrix[3][7] = Matrix[3][7] - (k*Matrix[2][7]); 
				Matrix[3][8] = Matrix[3][8] - (k*Matrix[2][8]); 
				Matrix[3][9] = Matrix[3][9] - (k*Matrix[2][9]);

			k = Matrix[4][2];
				Matrix[4][0] = Matrix[4][0] - (k*Matrix[2][0]); 
				Matrix[4][1] = Matrix[4][1] - (k*Matrix[2][1]); 
				Matrix[4][2] = Matrix[4][2] - (k*Matrix[2][2]); 
				Matrix[4][3] = Matrix[4][3] - (k*Matrix[2][3]); 
				Matrix[4][4] = Matrix[4][4] - (k*Matrix[2][4]); 
				Matrix[4][5] = Matrix[4][5] - (k*Matrix[2][5]); 
				Matrix[4][6] = Matrix[4][6] - (k*Matrix[2][6]); 
				Matrix[4][7] = Matrix[4][7] - (k*Matrix[2][7]); 
				Matrix[4][8] = Matrix[4][8] - (k*Matrix[2][8]); 
				Matrix[4][9] = Matrix[4][9] - (k*Matrix[2][9]);

//end upperTrianguler...

//start upperTrianguler...
			k = Matrix[1][2];
				Matrix[1][0] = Matrix[1][0] - (k*Matrix[2][0]); 
				Matrix[1][1] = Matrix[1][1] - (k*Matrix[2][1]); 
				Matrix[1][2] = Matrix[1][2] - (k*Matrix[2][2]); 
				Matrix[1][3] = Matrix[1][3] - (k*Matrix[2][3]); 
				Matrix[1][4] = Matrix[1][4] - (k*Matrix[2][4]); 
				Matrix[1][5] = Matrix[1][5] - (k*Matrix[2][5]); 
				Matrix[1][6] = Matrix[1][6] - (k*Matrix[2][6]); 
				Matrix[1][7] = Matrix[1][7] - (k*Matrix[2][7]); 
				Matrix[1][8] = Matrix[1][8] - (k*Matrix[2][8]); 
				Matrix[1][9] = Matrix[1][9] - (k*Matrix[2][9]);

				k = Matrix[0][2];
				Matrix[0][0] = Matrix[0][0] - (k*Matrix[2][0]); 
				Matrix[0][1] = Matrix[0][1] - (k*Matrix[2][1]); 
				Matrix[0][2] = Matrix[0][2] - (k*Matrix[2][2]); 
				Matrix[0][3] = Matrix[0][3] - (k*Matrix[2][3]); 
				Matrix[0][4] = Matrix[0][4] - (k*Matrix[2][4]); 
				Matrix[0][5] = Matrix[0][5] - (k*Matrix[2][5]); 
				Matrix[0][6] = Matrix[0][6] - (k*Matrix[2][6]); 
				Matrix[0][7] = Matrix[0][7] - (k*Matrix[2][7]); 
				Matrix[0][8] = Matrix[0][8] - (k*Matrix[2][8]); 
				Matrix[0][9] = Matrix[0][9] - (k*Matrix[2][9]);

//end  upperTrianguler...


k = Matrix[3][3];
	
			if(k!=0)
			begin
				   Matrix[3][0] = Matrix[3][0] / Matrix[3][3];
				   Matrix[3][1] = Matrix[3][1] / Matrix[3][3];
					Matrix[3][2] = Matrix[3][2] / Matrix[3][3];
					Matrix[3][3] = Matrix[3][3] / Matrix[3][3];
					Matrix[3][4] = Matrix[3][4] / Matrix[3][3];
					Matrix[3][5] = Matrix[3][5] / Matrix[3][3];
					Matrix[3][6] = Matrix[3][6] / Matrix[3][3];
					Matrix[3][7] = Matrix[3][7] / Matrix[3][3];
					Matrix[3][8] = Matrix[3][8] / Matrix[3][3];
					Matrix[3][9] = Matrix[3][9] / Matrix[3][3];
		
			end
//start LowerTrianguler
		
			
		k = Matrix[4][3];
				Matrix[4][0] = Matrix[4][0] - (k*Matrix[3][0]); 
				Matrix[4][1] = Matrix[4][1] - (k*Matrix[3][1]); 
				Matrix[4][2] = Matrix[4][2] - (k*Matrix[3][2]); 
				Matrix[4][3] = Matrix[4][3] - (k*Matrix[3][3]); 
				Matrix[4][4] = Matrix[4][4] - (k*Matrix[3][4]); 
				Matrix[4][5] = Matrix[4][5] - (k*Matrix[3][5]); 
				Matrix[4][6] = Matrix[4][6] - (k*Matrix[3][6]); 
				Matrix[4][7] = Matrix[4][7] - (k*Matrix[3][7]); 
				Matrix[4][8] = Matrix[4][8] - (k*Matrix[3][8]); 
				Matrix[4][9] = Matrix[4][9] - (k*Matrix[3][9]);

//end LowerTrianguler...

//start upperTrianguler...
			
			k = Matrix[2][3];
				Matrix[2][0] = Matrix[2][0] - (k*Matrix[3][0]); 
				Matrix[2][1] = Matrix[2][1] - (k*Matrix[3][1]); 
				Matrix[2][2] = Matrix[2][2] - (k*Matrix[3][2]); 
				Matrix[2][3] = Matrix[2][3] - (k*Matrix[3][3]); 
				Matrix[2][4] = Matrix[2][4] - (k*Matrix[3][4]); 
				Matrix[2][5] = Matrix[2][5] - (k*Matrix[3][5]); 
				Matrix[2][6] = Matrix[2][6] - (k*Matrix[3][6]); 
				Matrix[2][7] = Matrix[2][7] - (k*Matrix[3][7]); 
				Matrix[2][8] = Matrix[2][8] - (k*Matrix[3][8]); 
				Matrix[2][9] = Matrix[2][9] - (k*Matrix[3][9]);

			k = Matrix[1][3];
				Matrix[1][0] = Matrix[1][0] - (k*Matrix[3][0]); 
				Matrix[1][1] = Matrix[1][1] - (k*Matrix[3][1]); 
				Matrix[1][2] = Matrix[1][2] - (k*Matrix[3][2]); 
				Matrix[1][3] = Matrix[1][3] - (k*Matrix[3][3]); 
				Matrix[1][4] = Matrix[1][4] - (k*Matrix[3][4]); 
				Matrix[1][5] = Matrix[1][5] - (k*Matrix[3][5]); 
				Matrix[1][6] = Matrix[1][6] - (k*Matrix[3][6]); 
				Matrix[1][7] = Matrix[1][7] - (k*Matrix[3][7]); 
				Matrix[1][8] = Matrix[1][8] - (k*Matrix[3][8]); 
				Matrix[1][9] = Matrix[1][9] - (k*Matrix[3][9]);

				k = Matrix[0][3];
				Matrix[0][0] = Matrix[0][0] - (k*Matrix[3][0]); 
				Matrix[0][1] = Matrix[0][1] - (k*Matrix[3][1]); 
				Matrix[0][2] = Matrix[0][2] - (k*Matrix[3][2]); 
				Matrix[0][3] = Matrix[0][3] - (k*Matrix[3][3]); 
				Matrix[0][4] = Matrix[0][4] - (k*Matrix[3][4]); 
				Matrix[0][5] = Matrix[0][5] - (k*Matrix[3][5]); 
				Matrix[0][6] = Matrix[0][6] - (k*Matrix[3][6]); 
				Matrix[0][7] = Matrix[0][7] - (k*Matrix[3][7]); 
				Matrix[0][8] = Matrix[0][8] - (k*Matrix[3][8]); 
				Matrix[0][9] = Matrix[0][9] - (k*Matrix[3][9]);

//end  upperTrianguler...



k = Matrix[4][4];
	
			if(k!=0)
			begin
				   Matrix[4][0] = Matrix[4][0] / Matrix[4][4];
				   Matrix[4][1] = Matrix[4][1] / Matrix[4][4];
					Matrix[4][2] = Matrix[4][2] / Matrix[4][4];
					Matrix[4][3] = Matrix[4][3] / Matrix[4][4];
					Matrix[4][4] = Matrix[4][4] / Matrix[4][4];
					Matrix[4][5] = Matrix[4][5] / Matrix[4][4];
					Matrix[4][6] = Matrix[4][6] / Matrix[4][4];
					Matrix[4][7] = Matrix[4][7] / Matrix[4][4];
					Matrix[4][8] = Matrix[4][8] / Matrix[4][4];
					Matrix[4][9] = Matrix[4][9] / Matrix[4][4];
		
			end
	
//end LowerTrianguler...

//start upperTrianguler...
			
			k = Matrix[3][4];
				Matrix[3][0] = Matrix[3][0] - (k*Matrix[4][0]); 
				Matrix[3][1] = Matrix[3][1] - (k*Matrix[4][1]); 
				Matrix[3][2] = Matrix[3][2] - (k*Matrix[4][2]); 
				Matrix[3][3] = Matrix[3][3] - (k*Matrix[4][3]); 
				Matrix[3][4] = Matrix[3][4] - (k*Matrix[4][4]); 
				Matrix[3][5] = Matrix[3][5] - (k*Matrix[4][5]); 
				Matrix[3][6] = Matrix[3][6] - (k*Matrix[4][6]); 
				Matrix[3][7] = Matrix[3][7] - (k*Matrix[4][7]); 
				Matrix[3][8] = Matrix[3][8] - (k*Matrix[4][8]); 
				Matrix[3][9] = Matrix[3][9] - (k*Matrix[4][9]);


			k = Matrix[2][4];
				Matrix[2][0] = Matrix[2][0] - (k*Matrix[4][0]); 
				Matrix[2][1] = Matrix[2][1] - (k*Matrix[4][1]); 
				Matrix[2][2] = Matrix[2][2] - (k*Matrix[4][2]); 
				Matrix[2][3] = Matrix[2][3] - (k*Matrix[4][3]); 
				Matrix[2][4] = Matrix[2][4] - (k*Matrix[4][4]); 
				Matrix[2][5] = Matrix[2][5] - (k*Matrix[4][5]); 
				Matrix[2][6] = Matrix[2][6] - (k*Matrix[4][6]); 
				Matrix[2][7] = Matrix[2][7] - (k*Matrix[4][7]); 
				Matrix[2][8] = Matrix[2][8] - (k*Matrix[4][8]); 
				Matrix[2][9] = Matrix[2][9] - (k*Matrix[4][9]);

			k = Matrix[1][4];
				Matrix[1][0] = Matrix[1][0] - (k*Matrix[4][0]); 
				Matrix[1][1] = Matrix[1][1] - (k*Matrix[4][1]); 
				Matrix[1][2] = Matrix[1][2] - (k*Matrix[4][2]); 
				Matrix[1][3] = Matrix[1][3] - (k*Matrix[4][3]); 
				Matrix[1][4] = Matrix[1][4] - (k*Matrix[4][4]); 
				Matrix[1][5] = Matrix[1][5] - (k*Matrix[4][5]); 
				Matrix[1][6] = Matrix[1][6] - (k*Matrix[4][6]); 
				Matrix[1][7] = Matrix[1][7] - (k*Matrix[4][7]); 
				Matrix[1][8] = Matrix[1][8] - (k*Matrix[4][8]); 
				Matrix[1][9] = Matrix[1][9] - (k*Matrix[4][9]);

				k = Matrix[0][4];
				Matrix[0][0] = Matrix[0][0] - (k*Matrix[4][0]); 
				Matrix[0][1] = Matrix[0][1] - (k*Matrix[4][1]); 
				Matrix[0][2] = Matrix[0][2] - (k*Matrix[4][2]); 
				Matrix[0][3] = Matrix[0][3] - (k*Matrix[4][3]); 
				Matrix[0][4] = Matrix[0][4] - (k*Matrix[4][4]); 
				Matrix[0][5] = Matrix[0][5] - (k*Matrix[4][5]); 
				Matrix[0][6] = Matrix[0][6] - (k*Matrix[4][6]); 
				Matrix[0][7] = Matrix[0][7] - (k*Matrix[4][7]); 
				Matrix[0][8] = Matrix[0][8] - (k*Matrix[4][8]); 
				Matrix[0][9] = Matrix[0][9] - (k*Matrix[4][9]);

//end  upperTrianguler...

//Outputs

Data_out0 = Matrix[0][5];
Data_out1 = Matrix[0][6];
Data_out2 = Matrix[0][7];
Data_out3 = Matrix[0][8];
Data_out4 = Matrix[0][9];
Data_out5 = Matrix[1][5];
Data_out6 = Matrix[1][6];
Data_out7 = Matrix[1][7];
Data_out8 = Matrix[1][8];
Data_out9 = Matrix[1][9];
Data_out10 = Matrix[2][5];
Data_out11 = Matrix[2][6];
Data_out12 = Matrix[2][7];
Data_out13 = Matrix[2][8];
Data_out14 = Matrix[2][9];
Data_out15 = Matrix[3][5];
Data_out16 = Matrix[3][6];
Data_out17 = Matrix[3][7];
Data_out18 = Matrix[3][8];
Data_out19 = Matrix[3][9];
Data_out20 = Matrix[4][5];
Data_out21 = Matrix[4][6];
Data_out22 = Matrix[4][7];
Data_out23 = Matrix[4][8];
Data_out24 = Matrix[4][9];

end
endmodule
