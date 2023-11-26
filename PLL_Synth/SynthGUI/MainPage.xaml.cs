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
            Packet packet = new Packet(expPayloadLength: 4, numberFlag: false);

            string input = ((Entry)sender).Text.TrimEnd('\r', '\n');

            try
            {
                packet.Send(input, serialPort);
            }
            catch
            {
                DisplayAlert("ALERT", "COM port not open", "OK");
            }
        }

        private void btnOpenCOM_Pressed(object sender, EventArgs e)
        {
            string port = pkComPorts.SelectedItem.ToString();
            serialPort.PortName = port;
            serialPort.BaudRate = 115200;
            serialPort.Parity = Parity.None;
            serialPort.Open();
        }
    }
}