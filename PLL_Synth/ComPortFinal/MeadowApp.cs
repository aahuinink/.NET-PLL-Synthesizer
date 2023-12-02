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
        

        //public MeadowApp()
        //{
        //    Initialize();
        //    SendLoop();
        //}
        public override Task Run()
        {
            
            return base.Run();
        }

        public override Task Initialize()
        {

            return base.Initialize();
        }
    }

}