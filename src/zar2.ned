package mozar1;

import inet.visualizer.contract.IIntegratedVisualizer;
import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.physicallayer.wireless.common.medium.RadioMedium;
import inet.physicallayer.wireless.unitdisk.UnitDiskRadioMedium;
import inet.node.contract.INetworkNode;


network Z2Network{

	parameters:
        @display("bgb=650,500;bgg=100,1,grey95");
        @figure[title](type=label; pos=0,-1; anchor=sw; color=darkblue);

        @figure[rcvdPkText](type=indicatorText; pos=380,20; anchor=w; font=,18; textFormat="packets received: %g"; initialValue=0);
        @statistic[packetReceived](source=hostB.app[0].packetReceived; record=figure(count); targetFigure=rcvdPkText);

	
	submodules:
	    visualizer: <default(firstAvailableOrEmpty("IntegratedCanvasVisualizer"))> like IIntegratedVisualizer if typename != "" {
            @display("p=580,125");
        }
        configurator: Ipv4NetworkConfigurator {
            @display("p=580,200");
        }
//        radioMedium: RadioMedium {
//            @display("p=580,275");
//        }
        radioMedium: UnitDiskRadioMedium {
            @display("p=580,275");
        }
        hostA: <default("WirelessHost")> like INetworkNode {
            @display("p=50,325");
        }
        hostB: <default("WirelessHost")> like INetworkNode {
            @display("p=450,325");
        }
}