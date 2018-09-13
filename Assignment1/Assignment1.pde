
int frame = 0;
//int dot = 15;

void setup() 
{
  size(768, 432);
  stroke(128, 128 ,128, 128);
  strokeWeight(3);
  frameRate(30);
}

void draw()
{
  background(0, 0, 0);
  stroke(135, 135, 134);
  strokeWeight(14.5);
  
  line(20, 95, 20, 337);                     // sida
  line(15, 100, 95, 121);                    // Tak
  line(15, 216, 80, 216);                    // Mitten
  
  //Letter L Left
  line(108, 119, 108, 314);                  // Sida
  line(103, 310, 155, 296);                  // golv
  
  // Letter A Left
  line(167, 134, 167, 298);                  // sida
  line(205, 144, 205, 288);                  // sida 2
  line(162, 139, 210, 151);                  // Tak
  line(162, 216, 210, 216);                  // Mitten
  
  // Letter R Left
  line(227, 151, 227, 282);                  // Sida lång
  line(260, 160, 260, 221);                  // Sida kort
  line(222, 154, 265, 165);                  // Tak
  line(222, 216, 265, 216);                  // Mitten
  line(222, 211, 265, 272);                  // Sned
  
  // Letter N Left
  line(282, 165, 282, 268);                  // Sida
  line(310, 172, 310, 260);                  // sida 2
  line(277, 163, 315, 259);                  // sneda
  
  // Letter E Left
  line(330, 178, 330, 255);                  // Sida
  line(325, 181, 354, 189);                  // Tak
  line(325, 216, 350, 216);                  // Mitten
  line(325, 251, 354, 243);                  // Golv
  
  // Letter E Right
  line(438, 178, 438, 255);                  // Sida 2
  line(414, 189, 443, 181);                  // Tak
  line(418, 216, 443, 216);                  // Mitten
  line(414, 243, 443, 251);                  // Golv
  
  // Letter N Right
  line(458, 172, 458, 260);                  // Sida
  line(486, 165, 486, 268);                  // Sida 2
  line(453, 259, 491, 163);                  // Sneda
  
  // Letter R Right
  line(508, 160, 508, 221);                  // Sida Kort
  line(541, 151, 541, 282);                  // Sida Lång
  line(503, 165, 546, 154);                  // Tak
  line(503, 216, 546, 216);                  // Mitten
  line(503, 272, 546, 211);                  // Sned
  
  // Letter A Right
  line(563, 144, 563, 288);                  // Sida
  line(601, 134, 601, 298);                  // sida 2
  line(558, 151, 606, 139);                  // Tak
  line(558, 216, 606, 216);                  // mitten
  
  // Letter L Right
  line(660, 119, 660, 314);                  // Sida
  line(665, 311, 613, 297);                  // Golv
  
  // Letter F Right
  line(748, 95, 748, 337);                   // sida 2
  line(673, 121, 753, 100);                  // Tak
  line(688, 216, 753, 216);
  
  // mitten punkt
  line(384, 216, 384, 216);
  stroke(98, 99, 98);
  strokeWeight(3.0);
  
  // Thin lines inside letters
  // Letter F Left
  line(20, 95, 20, 337);                     // sida
  line(15, 100, 95, 121);                    // Tak
  line(15, 216, 80, 216);                    // Mitten
  
  //Letter L Left
  line(108, 119, 108, 314);                  // Sida
  line(103, 310, 155, 296);                  // golv
  
  // Letter A Left
  line(167, 134, 167, 298);                  // sida
  line(205, 144, 205, 288);                  // sida 2
  line(162, 139, 210, 151);                  // Tak
  //line(162, 216, 210, 216);                // Mitten
  
  // Letter R Left
  line(227, 151, 227, 282);                  // Sida lång
  line(260, 160, 260, 221);                  // Sida kort
  line(222, 154, 265, 165);                  // Tak
  line(222, 216, 265, 216);                  // Mitten
  line(222, 211, 265, 272);                  // Sned
  
  // Letter N Left
  line(282, 165, 282, 268);                  // Sida
  line(310, 172, 310, 260);                  // sida 2
  line(277, 163, 315, 259);                  // sneda
  
  // Letter E Left
  line(330, 178, 330, 255);                  // Sida
  line(325, 181, 354, 189);                  // Tak
  //line(325, 216, 350, 216);                // Mitten
  line(325, 251, 354, 243);                  // Golv
  
  // Letter E Right
  line(438, 178, 438, 255);                  // Sida 2
  line(414, 189, 443, 181);                  // Tak
  //line(418, 216, 443, 216);                // Mitten
  line(414, 243, 443, 251);                  // Golv
  
  // Letter N Right
  line(458, 172, 458, 260);                  // Sida
  line(486, 165, 486, 268);                  // Sida 2
  line(453, 259, 491, 163);                  // Sneda
  
  // Letter R Right
  line(508, 160, 508, 221);                  // Sida Kort
  line(541, 151, 541, 282);                  // Sida Lång
  line(503, 165, 546, 154);                  // Tak
  line(503, 216, 546, 216);                  // Mitten
  line(503, 272, 546, 211);                  // Sned
  
  // Letter A Right
  line(563, 144, 563, 288);                  // Sida
  line(601, 134, 601, 298);                  // sida 2
  line(558, 151, 606, 139);                  // Tak
  //line(558, 216, 606, 216);                // mitten
  
  // Letter L Right
  line(660, 119, 660, 314);                  // Sida
  line(665, 311, 613, 297);                  // Golv
  
  // Letter F Right
  line(748, 95, 748, 337);                   // sida 2
  line(673, 121, 753, 100);                  // Tak
  line(688, 216, 753, 216);                  // Mitten

    
    if (frame <= 48)
    {
        strokeWeight(4);
        stroke(152, 56, 54);
        line(162, 216, 162 + frame, 216);
        line(606 - frame, 216, 606, 216);
        line(384, 15, 384, 14 + frame);
        line(384, 417 - frame, 384, 417); 
        noFill();
    }
    
    else 
    {
        strokeWeight(4);
        stroke(152, 56, 54);
        line(162, 216, 162 + 48, 216);
        line(606 - 48, 216, 606, 216);
        line(384, 15, 384, 14 + 48);
        line(384, 417 - 48, 384, 417);
    }
  
    if (frame > 115 && frame < 140)
    {
        line(325, 216, 300 + (frame - 90), 216);
        line(468 - (frame - 90), 216, 443, 216);
        line(384, 153, 384, 128 + (frame - 90));
        line(384, 304 - (frame - 90), 384, 279);
    }
    else if (frame >= 140)
    {
        line(325, 216, 350, 216);
        line(418, 216, 443, 216);
        line(384, 153, 384, 178);
        line(384, 254, 384, 279);
        line(width / 2, height / 2, width / 2, height / 2);
    }
    
    if (frame >= 49)
    {
        noFill();
        arc(384, 216, 350, 350, -1.41, -0.44);
        arc(384, 216, 350, 350, 0.46, 1.41);
        arc(384, 216, 350, 350, -4.56, -3.59);
        arc(384, 216, 350, 350, -2.70, -1.74);
    }
    if (frame >= 80)
    {
        noFill();
        arc(384, 216, 225, 225, -1.41, -0.56);
        arc(384, 216, 225, 225, 6.85, 7.67);
        arc(384, 216, 225, 225, -4.56, -3.71);
        arc(384, 216, 225, 225, -2.59, -1.74);
    }
    if (frame >= 140)
    {
        noFill();
        ellipse(384, 216, 50, 50);
    }
    
    frame++;
}
