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

        public MeadowApp()
        {
            Initialize();
            Run();
        }
        public override Task Run()
        {
            Console.WriteLine("Run...");
            RunLoop();
            return base.Run();
        }

        public override Task Initialize()
        {
            Console.WriteLine("Initialize hardware...");

            serialPort = Device.PlatformOS.GetSerialPortName("COM1").CreateSerialPort(baudRate: 115200);
            serialPort.Open();
            serialPort.DataReceived += SerialPort_DataReceived;

            return base.Initialize();
        }


        private void SerialPort_DataReceived(object sender, SerialDataReceivedEventArgs e)
        {
            Packet rec = new Packet(4);     // init new packet expecting a payload length of 4

            byte[] rxBuffer = new byte[12];
            serialPort.Read(rxBuffer, 0, 12); // read serial data into rx buffer
            
            List<PacketError> errors = rec.TryRXParse(rxBuffer);

            if (errors.Count > 0)
            {
                // TODO write thing to talk back...
                return;
            }

            Packet tx = new Packet("recv OK");
            tx.Send(serialPort);
            return;
        }

        private void RunLoop()
        {

            while (true)
            {
            }
        }

        //private void SetFreqDivider(byte division)
        //{
        //    // shift in the 6 bit value into the divider output ports
        //    for (byte i = 0; i < 6; i++)
        //    {
        //        frequencyDivOutput[i].State = (division >> i & 0x01) == 0x01;
        //    }
        //    Thread.Sleep(1); // let voltages stabilize
        //    return;
        //}

        //private void Pulse(IDigitalOutputPort port)
        //{
        //    port.State = true;  // bring high
        //    Thread.Sleep(1);    // let voltage stabilize and let latches set
        //    port.State = false; // bring low
        //    Thread.Sleep(1);    // stabilize
        //    return;
        //}
    }
}