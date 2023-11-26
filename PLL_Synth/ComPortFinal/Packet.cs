using System;
using System.Collections.Generic;
using System.IO.Ports;
using System.Text;

namespace ComPortFinal
{
    public enum PacketError
    {
        LengthError,
        HeaderError,
        NumberError,
        ChecksumError,
    }

    public class Packet
    {
        // basic packet: "{expHeader}{NUM[2..0]}{PAYLOAD}{CHXUM[2..0]}\r\n"
        private int _expLength;     // the expected packet length
        private string _expHeader;  // the expected packet header
        private int _expPayloadLength; // the expected payload length in bytes
        private bool _numberFlag;   // flags if the packet has an identification number
        private int _length;        // the length of the packet
        private string _header;     // the packet header
        private int _number;        // the packet number
        private string _payload;    // the packet payload
        private double[] _analogValues = new double[5];
        private int _checksum;      // the packet checksum

        public int Length { get => _length; set => _length = value; }
        public string Header { get => _header; set => _header = value; }
        public int Number { get => _number; set => _number = value; }
        public string Payload { get => _payload; set => _payload = value; }
        public int Checksum { get => _checksum; set => _checksum = value; }

        /// <summary>
        /// The analog values from the
        /// </summary>
        public double[] AnalogValues { get => _analogValues; }

        /// <summary>
        /// Default packet constructor (length = 37, header = "###")
        /// </summary>
        public Packet() 
        {
            _expLength = 37;
            _expPayloadLength = 28;

            _expHeader = "###";
        }

        public Packet(int expPayloadLength, bool numberFlag)
        {
            _expLength = (numberFlag) ? expPayloadLength + 9 : expPayloadLength + 6;
            _expPayloadLength = expPayloadLength;
            _numberFlag = numberFlag;
            _expHeader = "###";
        }

        /// <summary>
        /// Construct a packet object with a non-default header.
        /// </summary>
        /// <param name="expHeader">The expected packet header (Default: "###")</param>
        public Packet(string expHeader)
        {
            _expLength = 36;
            _expPayloadLength = 28;
            _expHeader = expHeader;
        }

        /// <summary>
        /// Construct a packet object with a non-default header and length
        /// </summary>
        /// <param name="expPacketLength">The expected packet length</param>
        /// <param name="expHeader">The expected header<param>
        /// <param name="expPayloadLength">The expected payload message length</param>
        public Packet(int expPayloadLength, string expHeader, bool  numberFlag)
        {
            _expLength = expPayloadLength + expHeader.Length + 6;
            _expLength = numberFlag ? _expLength : _expLength - 3;
            _expPayloadLength= expPayloadLength;
            _expHeader = expHeader;
        }

        /// <summary>
        /// Parses a string into a packet object and handles error checking
        /// </summary>
        /// <param name="recieved">The recieved string to be parsed into the object</param>
        /// <returns>An array of all PacketErrors that occured during the parsing attempt.
        /// The array is empty if the packet was successfully parsed</returns>
        public List<PacketError> TryRXParse(string recieved)
        {
            List<PacketError> errors = new List<PacketError>(); // create a new list of errors to hold any errors thrown
            recieved = recieved.TrimEnd('\r').TrimEnd('\n');
            Length = recieved.Length;

            // check length
            if (Length != _expLength)
            {
                errors.Add(PacketError.LengthError);
            }

            // pop and check header
            Header = recieved.Substring(0, _expHeader.Length);
            recieved = recieved.Substring(_expHeader.Length);

            if (Header != _expHeader)
            {
                errors.Add(PacketError.HeaderError);
            }

            // calculate checksum
            int chx = 0;
            if (_numberFlag)
            {
                for (int i = 0; i < _expPayloadLength + 3; i++)
                {
                    chx += (byte)recieved[i];
                }

                // pop packet number
                if (!int.TryParse(recieved.Substring(0, 3), out _number))
                {
                    errors.Add(PacketError.NumberError);
                }

                recieved = recieved.Substring(3);

            } else
            {
                for (int i = 0; i < _expPayloadLength; i++)
                {
                    chx += (byte)recieved[i];
                }
            }
            
            chx %= 1000; // take last three digits of chxum

            // pop message
            Payload = recieved.Substring(0, _expPayloadLength);
            recieved = recieved.Substring(_expPayloadLength);

            // check recieved checksum
            int recChx;
            //check that it can be parsed and that it matches the calculated checksum
            if (!int.TryParse(recieved, out recChx) | recChx != chx)
            {
                errors.Add(PacketError.ChecksumError);
            }

            Checksum = chx;

            return errors;
        }


        public void Send(string payload, SerialPort serialPort)
        {
            int chx = 0;                    // checksum variable

            // convert payload to bytes to calculate checksum
            byte[] payloadByte = Encoding.UTF8.GetBytes(payload);
            try
            {
                // calculate checksum
                for (int i = 0; i < _expPayloadLength; i++)
                {
                    chx += payloadByte[i];
                }
            } catch (Exception e)
            {
                Console.WriteLine(e.ToString());
                return;
            }
            

            // create packet string
            string packetString = _expHeader + payload + chx.ToString() + "\r\n";

            // put packetString into txBuffer
            byte[] txBuffer = Encoding.UTF8.GetBytes(packetString);
            // send txBuffer
            serialPort.Write(txBuffer, 0, txBuffer.Length);
            return;
        }
    }
}
