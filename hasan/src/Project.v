// Truth table for prime number UP 
	//Present state         Next state 					 T-Flip Flop
//  Q4  Q3  Q2  Q1  Q0		Q4  Q3  Q2  Q1  Q0		 T4  T3  T2  T1  T0
//  0   0   0   1   0		0   0   0   1   1		 0	 0	 0	 0	 1
//  0   0   0   1   1 		0   0   1   0   1		 0	 0	 1	 1	 0
//  0   0   1   0   1		0   0   1   1   1		 0	 0	 0	 1	 0
//  0   0   1   1   1		0   1   0   1   1		 0	 1	 1	 0	 0
//  0   1   0   1   1		0   1   1   0   1		 0	 0	 1	 1	 0
//  0   1   1   0   1		1   0   0   0   1		 1	 1	 1	 0	 0
//  1   0   0   0   1		1   0   0   1   1		 0	 0	 0	 1	 0
//  1   0   0   1   1		1   0   1   1   1		 0	 0	 1	 0	 0 
//  1   0   1   1   1		1   1   1   0   1		 0	 1	 0	 1	 0   
//  1   1   1   0   1 		1   1   1   1   1		 0	 0	 0	 1	 0
//  1   1   1   1   1		0   0   0   1   0		 1	 1	 1	 0	 1

//T0={2,31}	
//T1={3,5,11,17,23,29}
//T2={3,7,11,13,19,31}
//T3={7,13,23,31}
//T4={13,31}

//T0=Q0' +Q3Q2Q1
//T1=Q3'Q1'+Q4Q1'+Q4'Q2'Q0+Q4Q3'Q2
//T2=Q4'Q3+Q3Q1+Q4'Q1Q0+Q2'Q1Q0
//T3=Q2Q1+Q4'Q3Q1'
//T4=Q4'Q3Q1'+Q3Q2Q1	





// Truth table for prime number Down  
	//Present state         Next state 					 T-Flip Flop
//  Q4  Q3  Q2  Q1  Q0		Q4  Q3  Q2  Q1  Q0		 T4  T3  T2  T1  T0
//  0   0   0   1   0		1   1   1   1   1		 1	 1	 1	 0	 1
//  0   0   0   1   1 		0   0   0   1   0		 0	 0	 0	 0	 1
//  0   0   1   0   1		0   0   0   1   1		 0	 0	 1	 1	 0
//  0   0   1   1   1		0   0   1   0   1		 0	 0	 0	 1	 0
//  0   1   0   1   1		0   0   1   1   1		 0	 1	 1	 0	 0
//  0   1   1   0   1		0   1   0   1   1		 0	 0	 1	 1	 0
//  1   0   0   0   1	    0   1   1   0   1		 1	 1	 1	 0	 0
//  1   0   0   1   1		1   0   0   0   1		 0	 0	 0	 1	 0 
//  1   0   1   1   1		1   0   0   1   1		 0	 0	 1	 0	 0   
//  1   1   1   0   1 		1   0   1   1   1		 0	 1	 0	 1	 0
//  1   1   1   1   1		1   1   1   0   1		 0	 0	 0	 1	 0

//T0={2,3}
//T1={5,7,13,19,29,31}
//T2={2,5,11,13,17,23}
//T3={2,11,17,29}
//T4={2,17}	

//T0=Q4'Q3'Q2'
//T1= Q4'Q2+Q3Q2+Q4Q2'Q1
//T2= Q0'+Q4'Q1'+Q2'Q1'+Q3'Q3+Q4Q3'Q2Q1
//T3=Q0'+Q2'Q1'+Q3Q2'+Q4Q3Q1'
//T4=Q0'+Q2'Q1'	




// Truth table for Fibb number UP 
	//Present state             Next state 					 T-Flip Flop
// Q5   Q4  Q3  Q2  Q1  Q0	 Q5	Q4  Q3  Q2  Q1  Q0	     T5	 T4  T3  T2  T1  T0
// 0    0   0   0   0   0	 0  0   0   0   0   1		 0	 0	 0	 0	 0	 1	 s0
// 0    0   0   0   0   1 	 0  0   0   0   1   0		 0	 0	 0	 0	 1	 1	 s1	    
// 0    0   0   0   0   1	 0	0   0   0   1   0		 0	 0	 0	 0	 1	 1	 sR	----------------- Error	 
// 0    0   0   0   1   0	 0  0   0   0   1   1		 0	 0	 0	 0	 0	 1	 s2
// 0    0   0   0   1   1	 0  0   0   1   0   1		 0	 0	 0	 1	 1	 0	 s3
// 0    0   0   1   0   1	 0  0   1   0   0   0		 0	 0	 1	 1	 0	 1	 s5
// 0    0   1   0   0   0	 0  0   1   1   0   1		 0	 0	 0	 1	 0	 1	 s8
// 0    0   1   1   0   1	 0  1   0   1   0   1		 0	 1	 1	 0	 0   0	 s13
// 0    1   0   1   0   1	 1  0   0   0   1   0		 1	 1	 0	 1	 1   1	 s21
// 1    0   0   0   1   0 	 1	1   0   1   1   1		 0	 1	 0	 1	 0	 1	 s34
// 1    1   0   1   1   1	 0  0   0   0   0   0		 1	 1	 0	 1	 1	 1	 s55

//T0={0,1,2,5,8,21,34,55}	
//T1={1,3,21,55}
//T2={3,5,8,21,34,55}
//T3={5,13}
//T4={13,21,34,55}
//T5={21,55}

//T0=Q0'+Q3'Q2
//T1=Q4+Q1Q0
//T2=Q5+Q1Q0+Q3'Q2+Q3Q2'
//T3=Q4'Q2
//T4=Q4+Q5+Q3Q0
//T5=Q4



// Truth table for Fibb number Dwon  																	  00 0110
	//Present state             Next state 					 T-Flip Flop							 11 0111
// Q5   Q4  Q3  Q2  Q1  Q0	 Q5	Q4  Q3  Q2  Q1  Q0	        T5	 T4  T3  T2  T1  T0						 00 0001
// 0    0   0   0   0   0	 1	1   0   1   1   1		     1	 1	 0	 1	 1	 1	 s0					 00 1101
// 0    0   0   0   0   1 	 0  0   0   0   0   0		     0	 0	 0	 0	 0	 1	 s1	    			 01 0101
// 0    0   0   0   0   1    0  0   0   0   1   1            0	 0	 0	 0	 1	 1	 sR	----------------- Error	 
// 0    0   0   0   1   0	 0  0   0   0   0   1		     0	 0	 0	 0	 1	 1	 s2
// 0    0   0   0   1   1	 0  0   0   0   1   0		     0	 0	 0	 0	 0	 1	 s3
// 0    0   0   1   0   1	 0  0   0   0   1   1		     0	 0	 0	 1	 1	 0	 s5
// 0    0   1   0   0   0	 0  0   0   1   0   1		     0	 0	 1	 1	 0	 1	 s8
// 0    0   1   1   0   1	 0  0   1   0   0   0		     0	 0	 0	 1	 0   1	 s13
// 0    1   0   1   0   1	 0  0   1   1   0   1		     0	 1	 1	 0	 0   0	 s21
// 1    0   0   0   1   0 	 0	1   0   1   0   1		     1	 1	 0	 1	 1	 1	 s34
// 1    1   0   1   1   1	 1  0   0   0   1   0		     0	 1	 0	 1	 0	 1	 s55 


//T0={0,1,2,3,8,13,34,55}
//T1={0,2,5,34}
//T2={0,5,8,13,34,55}
//T3={8,21}
//T4={0,21,34,55}
//T5={0,34}

//T0=Q2'+Q0+Q3
//T1=Q3'Q0'+Q4'Q2'Q3'
//T3=Q3Q2'+Q5'Q4
//T4=Q4+Q5+Q3'Q2'Q0'
//T5=Q5Q4'+Q3'Q2'Q0'

module T_ff(t,clk,reset,q);
 
input t,clk,reset;
output q;
reg q; 
always @(posedge clk or posedge reset) begin
if(reset) begin
q=1'b0; 
end 
else
	begin
q<=q^t; 
end	
end
endmodule


//module T_ff(t,clk,reset,q);
	
module PrimeUP(clk,Q,reset);
	input clk,reset;
	output [4:0]Q;
	wire [4:0]D;
	assign D[0]=~Q[0]|(Q[3] & Q[2] & Q[1]);
	assign D[1]=(~Q[3]& ~Q[1])|(Q[4] & ~Q[1]) |(~Q[4] & ~Q[2] & Q[0])|(Q[4] & ~Q[3] & Q[2]);
	assign D[2]=(~Q[4]& Q[3])|(Q[3] & Q[1]) |(~Q[4] & Q[1] & Q[0]) | (~Q[2] & Q[1] & Q[0]);
	assign D[3]=(Q[2]& Q[1])|(~Q[4] & Q[3] & ~Q[1]);
	assign D[4]=(~Q[4] & Q[3] & ~Q[1])|(Q[3] & Q[2] & Q[1]);
	
	T_ff U0(D[0],clk,reset,Q[0]);
	T_ff U1(D[1],clk,reset,Q[1]);
	T_ff U2(D[2],clk,reset,Q[2]);
	T_ff U3(D[3],clk,reset,Q[3]);
	T_ff U4(D[4],clk,reset,Q[4]);
	
endmodule 

module testPrimeNumberUP;
	reg clk,reset;
	wire [4:0]Q;
	PrimeUP	R0(clk,Q,reset);	
	initial 
		begin	
	    reset = 1'b1;clk=1;
	   $monitor("%b%b%b%b%b",Q[4],Q[3],Q[2],Q[1],Q[0]);
      #10ns reset = 0;
   repeat (53)
	  #10ns clk = ~clk;
		end		
endmodule

module primeDwon(clk,Q,reset);
input clk,reset;
output [4:0]Q;
wire [4:0]D; 

	assign D[0]=(~Q[4] & ~Q[3] & ~Q[2]);
	assign D[1]=(~Q[4] & Q[2]) |(Q[3] & Q[2]) |(Q[4] & ~Q[2] & Q[1]);
	assign D[2]=(~Q[0])|(~Q[4]& ~Q[1])|(~Q[2] & ~Q[1]) |(~Q[4] & Q[3]) | (Q[4] & ~Q[3] & Q[2] & Q[1]);	
	assign D[3]=(~Q[0])|(~Q[2]& ~Q[1])|(Q[3]& ~Q[2])|(Q[4] & Q[3] & ~Q[1]);
	assign D[4]=(~Q[0])|(~Q[2] & ~Q[1]);


	T_ff U0(D[0],clk,reset,Q[0]);
	T_ff U1(D[1],clk,reset,Q[1]);
	T_ff U2(D[2],clk,reset,Q[2]);
	T_ff U3(D[3],clk,reset,Q[3]);
	T_ff U4(D[4],clk,reset,Q[4]);
endmodule

module testPrimeNumberDwon;
	reg clk,reset;
	wire [4:0]Q;
	primeDwon R1(clk,Q,reset);	
	initial 
		begin	
	    reset = 1'b1;clk=1;
	   $monitor("%b%b%b%b%b",Q[4],Q[3],Q[2],Q[1],Q[0]);
      #10ns reset = 0;
   repeat (53)
	  #10ns clk = ~clk;
		end		
endmodule


module SystemAll(clk,outputPrimeUP,outputPrimeDwon,outputFibbUP,outputFibbDown,Mood);
 input clk;
 input [1:0]Mood;
output [4:0]outputPrimeUP,outputPrimeDwon;
output [5:0]outputFibbUP,outputFibbDown;
wire [3:0]yourChoice;
//prime down
assign yourChoice[0]= (Mood==2'b00)?1'b0:1'b1;
//prime  UP
assign yourChoice[1]= (Mood==2'b01)?1'b0:1'b1;
//Fibonacci Down
assign yourChoice[2]= (Mood==2'b10)?1'b0:1'b1;
//Fibonacci UP  
assign yourChoice[3]= (Mood==2'b11)?1'b0:1'b1;
PrimeUP	R0(clk,outputPrimeUP,yourChoice[0]) ;
primeDwon R1(clk,outputPrimeDwon,yourChoice[1]);
FibbUP   R2(clk,outputFibbUP,yourChoice[2]);
FibbDown R3(clk,outputFibbDown,yourChoice[3]);
endmodule

module testAllSystem;				
	reg clk;
	reg [1:0]Mood;
	wire [4:0]outputPrimeUP,outputPrimeDwon;
	wire [5:0]outputFibbUP,outputFibbDown;
	SystemAll S(clk,outputPrimeUP,outputPrimeDwon,outputFibbUP,outputFibbDown,Mood);
 initial
	 begin 
		 Mood=2'b01;
	     clk=1;
		 // $monitor("Up prime:%b%b%b%b%b",outputPrimeUP[4],outputPrimeUP[3],outputPrimeUP[2],outputPrimeUP[1],outputPrimeUP[0]);
		  $monitor("Down  prime:%b%b%b%b%b",outputPrimeDwon[4],outputPrimeDwon[3],outputPrimeDwon[2],outputPrimeDwon[1],outputPrimeDwon[0]);
		  $monitor("Up prime:%b%b%b%b%b",outputPrimeUP[4],outputPrimeUP[3],outputPrimeUP[2],outputPrimeUP[1],outputPrimeUP[0]);
		  $monitor("up Fibb:%b%b%b%b%b",outputFibbUP[5],outputFibbUP[4],outputFibbUP[3],outputFibbUP[2],outputFibbUP[1],outputFibbUP[0]);
		  $monitor("Down Fibb:%b%b%b%b%b",outputFibbDown[5],outputFibbDown[4],outputFibbDown[3],outputFibbDown[2],outputFibbDown[1],outputFibbDown[0]);
		  #10ns Mood=2'b00;
		  repeat(15)
		  begin
		  #10ns clk=~clk;		 
		  end 
		   #10ns Mood=2'b01;
		  repeat(15)
		  begin
		  #10ns clk=~clk;		 
		  end 
		   #10ns Mood=2'b10;
		  repeat(15)
		  begin
		  #10ns clk=~clk;		 
		  end
		  #10ns Mood=2'b11;
		  repeat(15)
		  begin
		  #10ns clk=~clk;		 
		  end
		end			
endmodule

module FibbUP(clk,Q,reset);
input clk,reset;
output [5:0]Q;
wire [5:0]D;
  	assign D[0]=~Q[0]|(Q[4])|(~Q[3] & ~Q[1]);
	assign D[1]=(Q[4])|(~Q[2]& Q[0]);
	assign D[2]=(Q[5])|(Q[1]& Q[0])|(~Q[3] & Q[2]) | (Q[3] & ~Q[2]);
	assign D[3]=(~Q[4] & Q[2]);
	assign D[4]=(Q[4]) | (Q[5]) | (Q[3] & Q[0]);
	assign D[5]=Q[4];		
	T_ff U0(D[0],clk,reset,Q[0]);
	T_ff U1(D[1],clk,reset,Q[1]);
	T_ff U2(D[2],clk,reset,Q[2]);
	T_ff U3(D[3],clk,reset,Q[3]);
	T_ff U4(D[4],clk,reset,Q[4]);
	T_ff U5(D[5],clk,reset,Q[5]);
endmodule 

module testFibbUP;
	reg clk,reset;
	wire [5:0]Q;
	FibbUP	U(clk,Q,reset);	
	initial 
		begin	
	    reset = 1'b1;clk=1;
	   $monitor("%b%b%b%b%b%b",Q[5],Q[4],Q[3],Q[2],Q[1],Q[0]);
      #10ns reset = 0;
   repeat (100)
	  #10ns clk = ~clk;
		end		
endmodule 


module FibbDown(clk,Q,reset);
input clk,reset;
output [5:0]Q;
wire [5:0]D;
  	assign D[0]=~Q[2]|| Q[0] | Q[3];
	assign D[1]=(~Q[3] & ~Q[0])|(~Q[4]& ~Q[3] & Q[2]);
	assign D[2]=(Q[5])|(~Q[1]& ~Q[0])|(~Q[3] & Q[2]);
	assign D[3]=(Q[3] & ~Q[2])|(~Q[5] & Q[4]);
	assign D[4]=(Q[4]) | (Q[5]) | (~Q[3] & ~Q[1] & ~Q[0]);
	assign D[5]=(Q[5] & ~Q[4]) |(~Q[3] & ~Q[1] & ~Q[0]);		
	T_ff U0(D[0],clk,reset,Q[0]);
	T_ff U1(D[1],clk,reset,Q[1]);
	T_ff U2(D[2],clk,reset,Q[2]);
	T_ff U3(D[3],clk,reset,Q[3]);
	T_ff U4(D[4],clk,reset,Q[4]);
	T_ff U5(D[5],clk,reset,Q[5]);
endmodule 

module testFibbDown;
	reg clk,reset;
	wire [5:0]Q;
	FibbDown U(clk,Q,reset);	
	initial 
		begin	
	    reset = 1'b1;clk=1;
	   $monitor("%b%b%b%b%b%b",Q[5],Q[4],Q[3],Q[2],Q[1],Q[0]);
      #10ns reset = 0;
   repeat (100)
	  #10ns clk = ~clk;
		end		
endmodule 