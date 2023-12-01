using System;
using System.Collections.Generic;
using System.IO.Ports;
using System.Text;
using Meadow.Hardware;

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
        private string _header;
        private int _length;
        private string _payload;
        private int _checksum;

        /// <summary>
        /// The packet header
        /// </summary>
        public string Header { get => _header; set => _header = value; }
        public int Length { get => _length; set => _length = value; }
        public string Payload
        {
            get => _payload;
            set
            {
                _payload = value;
                for (int i = 0; i < _length; i++)
                {
                    _checksum += (byte)value[i];
                }
                _checksum = _checksum % 1000;
            }
        }
        public int Checksum { get => _checksum; }
        /// <summary>
        /// Default constructor
        /// </summary>
        public Packet() { }
        /// <summary>
        /// Creates an empty packet with a specified payload length. Uses default header of "###".
        /// </summary>
        /// <param name="length">THe</param>
        public Packet(int length)
        {
            Header = "###";
            Length = length;
        }

        /// <summary>
        /// Creates a packet object
        /// </summary>
        /// <param name="payload"></param>
        public Packet(string payload)
        {
            Header = "###";
            Length = payload.Length;
            Payload = payload;
        }

        public List<PacketError> TryRXParse(byte[] buffer)
        {
            List<PacketError> errors = new List<PacketError>();

            // convert to string
            string recieved = buffer.ToString();

            recieved.TrimEnd('\r', '\n');

            if (recieved.Substring(0, Header.Length) != Header)
            {
                errors.Add(PacketError.HeaderError);
            }

            if (recieved.Length != Length + 3 + Header.Length)
            {
                errors.Add(PacketError.LengthError);
            }

            if (errors.Count > 0)
            {
                return errors;
            }

            try
            {
                Payload = recieved.Substring(Header.Length, Length);
            }
            catch
            {
                errors.Add(PacketError.LengthError);
            }
;
            int recChx = Convert.ToUInt16(recieved.Substring(Header.Length + Length));

            if (recChx != Checksum)
            {
                errors.Add(PacketError.ChecksumError);
            }

            return errors;
        }

        public void Send(SerialPort port)
        {
            string outstring = Header + Payload + Checksum.ToString() + "\r\n";
            byte[] packetBytes = Encoding.UTF8.GetBytes(outstring);
            port.Write(packetBytes, 0, packetBytes.Length);
        }

        public void Send(ISerialPort port)
        {
            string outstring = Header + Payload + Checksum.ToString() + "\r\n";
            byte[] packetBytes = Encoding.UTF8.GetBytes(outstring);
            port.Write(packetBytes, 0, packetBytes.Length);
        }
    }
}