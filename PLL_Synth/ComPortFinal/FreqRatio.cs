using System;
using System.Collections.Generic;
using System.Text;

namespace ComPortFinal
{
    internal class FreqRatio
    {
        public byte Denominator { get; set; }
        public byte Numerator { get; set; }
        /// <summary>
        /// Default constructor
        /// </summary>
        public FreqRatio() { }

        public void RatioLookup(string value)
        {
            switch (value)
            {
                // C
                case "0000":
                    Denominator = 1;
                    Numerator = 1;
                    break;
                // C#
                case "0001":
                    Denominator = 25;
                    Numerator = 24;
                    break;
                // D
                case "0010":
                    Denominator = 9;
                    Numerator = 8; break;
                // D#
                case "0011":
                    Denominator = 6;
                    Numerator = 5; break;
                // E
                case "0100":
                    Denominator = 5; Numerator = 4; break;
                // F
                case "0101":
                    Denominator = 4; Numerator = 3; break;
                // F#              
                case "0110":
                    Denominator = 45;
                    Numerator = 32; break;
                // G
                case "0111":
                    Denominator = 3;
                    Numerator = 2; break;
                // G#
                case "1000":
                    Denominator = 8;
                    Numerator = 5;
                    break;
                // A
                case "1001":
                    Denominator = 5;
                    Numerator = 3;
                    break;
                // Bb
                case "1010":
                    Denominator = 9;
                    Numerator = 5;
                    break;
                // B
                case "1011":
                    Denominator = 15;
                    Numerator = 8;
                    break;
                // C (octave)
                case "1100":
                    Denominator = 2;
                    Numerator = 1;
                    break;
                default:
                    break;
            }
        }
    }

    
}
