//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Lesser General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
// 
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Lesser General Public License for more details.
// 
// You should have received a copy of the GNU Lesser General Public License
// along with this program.  If not, see http://www.gnu.org/licenses/.
// 

package mozar1.simulations;

// numOfHosts: 10
// parametric: true
// static:     false

import inet.common.scenario.ScenarioManager;
import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.aodv.AodvRouter;
import inet.node.ethernet.Eth100M;
import inet.node.ethernet.EthernetSwitch;
import inet.node.inet.Router;
import inet.node.inet.StandardHost;
import inet.node.inet.WirelessHost;
import inet.node.wireless.AccessPoint;
import inet.physicallayer.wireless.ieee80211.packetlevel.Ieee80211ScalarRadioMedium;
import inet.visualizer.common.IntegratedVisualizer;
import inet.visualizer.common.NetworkRouteVisualizer;
import inet.visualizer.canvas.integrated.IntegratedCanvasVisualizer;
import inet.physicallayer.wireless.common.contract.packetlevel.IRadioMedium;


//simple MyRectangle {
//    parameters:
//        double width @unit(m);
//        double height @unit(m);
//        double x @unit(m);
//        double y @unit(m);
//    display:
//        rectangle "p=0,0;50,30,black";
//        fill: transparent, gray;
//}

//simple MyRectangle {
//    parameters:
//        double width @unit(m);
//        double height @unit(m);
//        double x @unit(m);
//        double y @unit(m);
//    @display()
//        rectangle {
//            p = 0,0,50,30;
//            fill-color = "gray";
//            fill-mode = "transparent";
//            line-color = "black";
//        }
//}

network Adhoc4
{
    @display("bgb=660,630");
    submodules:
//        visualizer: IntegratedVisualizer {
//            @display("p=100,50");
//        }
        visualizer: IntegratedCanvasVisualizer {
            @display("p=100,50");
        }
        configurator: Ipv4NetworkConfigurator {
            @display("p=100,150");
        }
        radioMedium: Ieee80211ScalarRadioMedium {
            @display("p=100,250");
        }
//        radioMedium: <default("UnitDiskRadioMedium")> like IRadioMedium  {
//            @display("p=100,250");
//        }
        source: AodvRouter {
            @display("p=229,46");
            
        }
        destination: AodvRouter {
            @display("p=488.832,512.952");
        }
        aodvRouter1: AodvRouter {
            @display("p=421.296,295.872");
        }
        aodvRouter2: AodvRouter {
            @display("p=273.36002,440.592");
        }
        aodvRouter3: AodvRouter {
            @display("p=305.52,188.136");
        }
        aodvRouter4: AodvRouter {
            @display("p=562.8,328.032");
        }
        aodvRouter5: AodvRouter {
            @display("p=421.296,77.184");
        }
}
