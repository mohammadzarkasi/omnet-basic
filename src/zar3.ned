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

package mozar1;

import inet.visualizer.contract.IIntegratedVisualizer;
import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.physicallayer.wireless.common.medium.RadioMedium;
import inet.physicallayer.wireless.unitdisk.UnitDiskRadioMedium;
import inet.node.contract.INetworkNode;

network Z4Network
{
    parameters:
        //        @display("bgb=650,500;bgg=100,1,grey95");
        @figure[title](type=label; pos=0,-1; anchor=sw; color=darkblue);

        @figure[rcvdPkText](type=indicatorText; pos=150,20; anchor=w; font=,8; textFormat="packets received: %g"; initialValue=0);
        @statistic[packetReceived](source=sink1.app[0].packetReceived; record=figure(count); targetFigure=rcvdPkText);



    submodules:
        visualizer: <default(firstAvailableOrEmpty("IntegratedCanvasVisualizer"))> like IIntegratedVisualizer if typename != "" {
            @display("p=20,20");
        }
        configurator: Ipv4NetworkConfigurator {
            @display("p=60,20");
        }
        radioMedium: UnitDiskRadioMedium {
            @display("p=100,20");
        }

        hostA1: <default("WirelessHost")> like INetworkNode {
            @display("p=49.9788,110.42486");
        }
        hostA2: <default("WirelessHost")> like INetworkNode {
            @display("p=49.9788,113.53675");
        }

        hostA3: <default("WirelessHost")> like INetworkNode {
            @display("p=49.9788,117.40303");
        }
        hostA4: <default("WirelessHost")> like INetworkNode {
            @display("p=49.9788,120.51492");
        }
        hostA5: <default("WirelessHost")> like INetworkNode {
            @display("p=49.9788,123.43821");
        }


        hostB1: <default("WirelessHost")> like INetworkNode {
            @display("p=50,140");
        }
        hostB2: <default("WirelessHost")> like INetworkNode {
            @display("p=53,140");
        }
        hostB3: <default("WirelessHost")> like INetworkNode {
            @display("p=56,140");
        }
        hostB4: <default("WirelessHost")> like INetworkNode {
            @display("p=50,144");
        }
        hostB5: <default("WirelessHost")> like INetworkNode {
            @display("p=53,144");
        }
        hostB6: <default("WirelessHost")> like INetworkNode {
            @display("p=56,144");
        }
        hostB7: <default("WirelessHost")> like INetworkNode {
            @display("p=50,148");
        }
        hostB8: <default("WirelessHost")> like INetworkNode {
            @display("p=53,148");
        }
        hostB9: <default("WirelessHost")> like INetworkNode {
            @display("p=56,148");
        }


        hostC1: <default("WirelessHost")> like INetworkNode {
            @display("p=60,140");
        }
        hostC2: <default("WirelessHost")> like INetworkNode {
            @display("p=63,140");
        }
        hostC3: <default("WirelessHost")> like INetworkNode {
            @display("p=66,140");
        }
        hostC4: <default("WirelessHost")> like INetworkNode {
            @display("p=60,144");
        }
        hostC5: <default("WirelessHost")> like INetworkNode {
            @display("p=63,144");
        }
        hostC6: <default("WirelessHost")> like INetworkNode {
            @display("p=66,144");
        }
        hostC7: <default("WirelessHost")> like INetworkNode {
            @display("p=60,148");
        }
        hostC8: <default("WirelessHost")> like INetworkNode {
            @display("p=63,148");
        }
        hostC9: <default("WirelessHost")> like INetworkNode {
            @display("p=66,148");
        }

        hostD1: <default("WirelessHost")> like INetworkNode {
            @display("p=72,140");
        }
        hostD2: <default("WirelessHost")> like INetworkNode {
            @display("p=72,144");
        }
        hostD3: <default("WirelessHost")> like INetworkNode {
            @display("p=72,148");
        }

        hostE1: <default("WirelessHost")> like INetworkNode {
            @display("p=76,140");
        }
        hostE2: <default("WirelessHost")> like INetworkNode {
            @display("p=76,144");
        }
        hostE3: <default("WirelessHost")> like INetworkNode {
            @display("p=76,148");
        }

        hostF1: <default("WirelessHost")> like INetworkNode {
            @display("p=80,140");
        }
        hostF2: <default("WirelessHost")> like INetworkNode {
            @display("p=80,144");
        }
        hostF3: <default("WirelessHost")> like INetworkNode {
            @display("p=80,148");
        }

        hostG1: <default("WirelessHost")> like INetworkNode {
            @display("p=84,140");
        }
        hostG2: <default("WirelessHost")> like INetworkNode {
            @display("p=84,144;i=device/cpu");
        }
        hostG3: <default("WirelessHost")> like INetworkNode {
            @display("p=84,148;i=device/card");
        }


        sink1: <default("WirelessHost")> like INetworkNode {
            @display("p=49.9788,132;i=device/antennatower");
        }
}
