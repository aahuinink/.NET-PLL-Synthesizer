using System.IO.Ports;
using ComPortFinal;
using Meadow.Hardware;

namespace SynthGUI
{
    public partial class MainPage : ContentPage
    {
        // hardware objects
        SerialPort serialPort = new SerialPort();
        string recString;
        public MainPage()
        {
            InitializeComponent();
            string[] ports = SerialPort.GetPortNames();
            pkComPorts.ItemsSource = ports;
            if (ports.Length > 0)
            {
                pkComPorts.SelectedItem = ports[0];
            }
            Loaded += MainPage_Loaded;

            
        }

        private void MyMainThreadCode()
        {
            output.Text = recString;
            return;
        }

        private void MainPage_Loaded(object sender, EventArgs e)
        {
            serialPort.BaudRate = 115200;
            serialPort.ReceivedBytesThreshold = 1;
            serialPort.DataReceived += SerialPort_DataReceived;
            return;
        }
         
        private void SerialPort_DataReceived(object sender, System.IO.Ports.SerialDataReceivedEventArgs e)
        {
            recString = serialPort.ReadLine();
            MainThread.BeginInvokeOnMainThread(MyMainThreadCode);
        }

        private void entryInput_Completed(object sender, EventArgs e)
        {
            string input = ((Entry)sender).Text.TrimEnd('\r', '\n');
            Packet packet = new Packet(input);
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
            serialPort.Parity = System.IO.Ports.Parity.None;
            serialPort.Open();
            output.Text = "COM opened";
        }
    }
}