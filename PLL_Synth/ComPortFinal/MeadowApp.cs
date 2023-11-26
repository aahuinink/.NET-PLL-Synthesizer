using System;
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

        Packet packet = new Packet();
        ErrorChecking errorChecker = new ErrorChecking();

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

            //Console.WriteLine(serialPort.BytesToRead);
            byte[] response = new byte[12];
            serialPort.Read(response, 0, 12);

            //TODO: write what do to with serial data
        }

        private void RunLoop()
        {

            while (true)
            {
            }
        }
    }

}