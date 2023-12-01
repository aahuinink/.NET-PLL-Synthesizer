using System.IO.Ports;
using ComPortFinal;

namespace SynthGUI
{
    public partial class MainPage : ContentPage
    {
        // hardware objects
        private SerialPort serialPort = new SerialPort();

        public MainPage()
        {
            InitializeComponent();
            Loaded += MainPage_Loaded;

            serialPort.DataReceived += SerialPort_DataReceived;
        }

        private void MainPage_Loaded(object sender, EventArgs e)
        {
            string[] ports = SerialPort.GetPortNames(); 
            pkComPorts.ItemsSource = ports;
            if (ports.Length > 0 )
            {
                pkComPorts.SelectedItem = ports[0];
            }
            return;
        }

        private void entryInput_Completed(object sender, EventArgs e)
        {
            string input = ((Entry)sender).Text.TrimEnd('\r', '\n');
            Packet packet = new Packet(input, false);
            output.Text = ($"Length: {packet.Length}\n{packet.Header}{packet.Payload}{packet.Checksum}");
            try
            {
                packet.Send(serialPort);
            }
            catch (Exception ex)
            {
                output.Text = ex.ToString();
            }
        }

        private void btnOpenCOM_Pressed(object sender, EventArgs e)
        {
            string port = pkComPorts.SelectedItem.ToString();
            serialPort.PortName = port;
            serialPort.BaudRate = 115200;
            serialPort.Parity = Parity.None;
            serialPort.Open();
            output.Text = "COM opened";
        }

        private void SerialPort_DataReceived(object sender, SerialDataReceivedEventArgs e)
        {
            Packet inPacket = new Packet(expPayloadLength: "recv OK".Length, false);
            byte[] response = new byte[inPacket.ExpLength];
            serialPort.Read(response, 0, inPacket.ExpLength);
            string recieved = response.ToString();
            output.Text = recieved;
            return;
        }
    }
}