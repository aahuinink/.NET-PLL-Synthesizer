using MQTTnet;
using MQTTnet.Client;

namespace SynthGUI
{
    public partial class MainPage : ContentPage
    {
        // hardware objects
        IMqttClient client;
        public MainPage()
        {
            InitializeComponent();
            Loaded += MainPage_Loaded;
        }

        private void MyMainThreadCode()
        {
            return;
        }

        private async void MainPage_Loaded(object sender, EventArgs e)
        {
            client = new MqttFactory().CreateMqttClient();
            var options = new MqttClientOptionsBuilder()
                                    .WithClientId(Guid.NewGuid().ToString())
                                    .WithTcpServer("broker.emqx.io", 1883)
                                    .WithClientId("mqttx_233455ef")
                                    .WithCleanSession()
                                    .Build();

            client.ConnectedAsync += Client_ConnectedAsync;
            client.DisconnectedAsync += Client_DisconnectedAsync;

            await client.ConnectAsync(options);
            return;
        }

        private Task Client_DisconnectedAsync(MqttClientDisconnectedEventArgs arg)
        {
            MainThread.BeginInvokeOnMainThread(MyMainThreadCode);
            return Task.CompletedTask;
        }

        private Task Client_ConnectedAsync(MqttClientConnectedEventArgs arg)
        {
            MainThread.BeginInvokeOnMainThread(MyMainThreadCode);
            return Task.CompletedTask;
        }

        private void entryInput_Completed(object sender, EventArgs e)
        {
            return;
        }

        private void btnOpenCOM_Pressed(object sender, EventArgs e)
        {
            return;
        }
    }
}