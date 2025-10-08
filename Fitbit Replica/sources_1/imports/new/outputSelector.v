`timescale 1ns / 1ps


//this module takes every input from the four main modules and decides which one to display, based on two-second counter, MUX, and binary to seven segment controller


//NOTE: ALL THIS MODULE DOES IS CHANGE 'MODE' VALUE EVERY TWO SECONDS

module outputSelector(
    input CLK, input RESET, input [13:0] totalSteps, input [13:0] distanceCovered, input [13:0] thirtyTwoStepsPerSecond, input [13:0] sixtyFourStepsPerSecond,
    
    output mainAnode0, output mainAnode1, output mainAnode2, output mainAnode3, output [6:0] mainSevenSeg
    );
    
    reg [1:0] outputIndex = 0;
    reg [14:0] outerCounter = 0;
    reg [14:0] innerCounter = 0;
    
    //below is for testing
    //reg [13:0] distanceCovered = 69;
    //reg [13:0] thirtyTwoStepsPerSecond = 1234;
    //reg [13:0] sixtyFourStepsPerSecond = 64;
    //above is for testing
    
    //reg mainAnode0_REG;
    //assign mainAnode0 = mainAnode0_REG;
    
    reg [2:0] MODE = 0;
    
    wire twoSecondPulse;
    
    wire [13:0] mainBinaryInput;
   
    combinationalMux_14BitOutput MUX1 (MODE, totalSteps, distanceCovered, thirtyTwoStepsPerSecond, sixtyFourStepsPerSecond, mainBinaryInput);
    
    binaryTo_4Digit_SevenSeg totalStepsHEHE (CLK, RESET, MODE, mainBinaryInput, mainAnode0, mainAnode1, mainAnode2, mainAnode3, mainSevenSeg);


    twoSecondCounter_pulse pulse1 (CLK, RESET, twoSecondPulse );

    always@(posedge twoSecondPulse)
    begin
    
        if (RESET)
        begin
            MODE <= 0;
            outputIndex <= 0;
        end
        
        else 
        begin
            //outputIndex <= outputIndex +1;
            if (outputIndex == 0) // should display totalSteps
            begin
                //outputIndex <= 0;
                MODE <= 0;
                outputIndex <= outputIndex +1;
                 //mainBinaryInput <= totalSteps; 
            end
            
            else if (outputIndex == 1) // should display distanceCovered
            begin
                MODE <= 1; 
                outputIndex <= outputIndex +1;
            end
            
            else if (outputIndex == 2) // should display thirtyTwoStepsPerSecond
            begin
                MODE <= 2;
                outputIndex <= outputIndex +1;
            end
            
            else if (outputIndex == 3)
            begin
                MODE <= 3;
                outputIndex <= outputIndex +1;
            end
            
            /*else if (outputIndex > 3)
            begin
                MODE <=0;
                outputIndex <= 0;
            end*/
            
        
        end
        
        
       
    end


    
    /*always@(posedge CLK)
    begin
    
        //assume inputs will be = 0 when reset is asserted
        //need counter
        if (outerCounter == 1999) // (19999) two seconds have passed 
        begin
            
            
            
        end
        
        
        
        else if (outerCounter < 1999) // 19999 here and below is just for 2 second timing
        begin
            if (innerCounter == 9999) // 9999
            begin
                innerCounter = 0;
                outerCounter <= outerCounter + 1;
            end
            
            else if (innerCounter < 9999) // 9999
            begin
                innerCounter <= innerCounter +1;
            end
        end
        
        
         
        
    
    end*/
    
    
    
    
endmodule
