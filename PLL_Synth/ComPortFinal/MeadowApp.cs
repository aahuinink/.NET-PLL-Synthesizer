using System;
using System.Collections.Generic;
using System.Data;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using Meadow;
using Meadow.Devices;
using Meadow.Foundation;
using Meadow.Foundation.Leds;
using Meadow.Hardware;
using Meadow.Peripherals.Leds;
using Meadow.Units;

namespace ComPortFinal
{
    // Change F7FeatherV2 to F7FeatherV1 for V1.x boards
    public class MeadowApp : App<F7FeatherV2>
    {
        // hardware objects
        ISerialPort serialPort;
        IDigitalOutputPort[] frequencyDivOutput =
        {
            Device.CreateDigitalOutputPort(Device.Pins.D05, false),
            Device.CreateDigitalOutputPort(Device.Pins.D06, false),
            Device.CreateDigitalOutputPort(Device.Pins.D07, false),
            Device.CreateDigitalOutputPort(Device.Pins.D08, false),
            Device.CreateDigitalOutputPort(Device.Pins.D09, false),
            Device.CreateDigitalOutputPort(Device.Pins.D10, false),
        };
        IDigitalOutputPort M_set =
            Device.CreateDigitalOutputPort(Device.Pins.D04, false);
        IDigitalOutputPort N_set =
            Device.CreateDigitalOutputPort(Device.Pins.D03, false);

        //public MeadowApp()
        //{
        //    Initialize();
        //    SendLoop();
        //}
        public override Task Run()
        {
            Console.WriteLine("Run...");

            RunLoop();
            return base.Run();
        }

        public override Task Initialize()
        {
            Console.WriteLine("Initialize hardware...");

            // TODO: init digital output pins here  

            serialPort = Device.PlatformOS.GetSerialPortName("COM1")
                                .CreateSerialPort(baudRate: 115200);
            serialPort.Open();
            serialPort.DataReceived += SerialPort_DataReceived;

            return base.Initialize();
        }


        private void SerialPort_DataReceived(object sender, SerialDataReceivedEventArgs e)
        {
            Packet packet = new Packet(expPayloadLength: 4, numberFlag: false); // total length is 12 

            //Console.WriteLine(serialPort.BytesToRead);

            // total length: 3 wide header, 4 wide payload, no packet number, 3 wide chxum, cr + nl = 12
            byte[] response = new byte[12];
            serialPort.Read(response, 0, 12);
            string recieved = response.ToString();

            // parse into packet object
            List<PacketError> errors = packet.TryRXParse(recieved);

            // check for errors
            if (errors.Count > 0)
            {
                //foreach ( PacketError error in errors)
                //{
                //    errorChecker.Handle(error);           
                //}
                // no need to handle bc the meadow board doesn't care about keeping track of errors right now
                return;
            }

            FreqRatio freqRatio = new FreqRatio();

            // convert packet payload to a frequency ratio
            freqRatio.RatioLookup(packet.Payload);

            // set the denominator
            SetFreqDivider(freqRatio.Denominator);

            Pulse(N_set);

            // set the numerator
            SetFreqDivider(freqRatio.Denominator);

            Pulse(M_set);

            Packet ack = new Packet(4, false);

            return;
        }

        private void RunLoop()
        {

            while (true)
            {
            }
        }

        private void SetFreqDivider(byte division)
        {
            // shift in the 6 bit value into the divider output ports
            for (byte i = 0; i < 6; i++)
            {
                frequencyDivOutput[i].State = (division >> i & 0x01) == 0x01;
            }
            Thread.Sleep(1); // let voltages stabilize
            return;
        }

        private void Pulse(IDigitalOutputPort port)
        {
            port.State = true;  // bring high
            Thread.Sleep(1);    // let voltage stabilize and let latches set
            port.State = false; // bring low
            Thread.Sleep(1);    // stabilize
            return;
        }
    }
}