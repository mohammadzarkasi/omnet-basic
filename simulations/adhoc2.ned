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
// parametric: false
// static:     true

//import inet.networklayer.autorouting.ipv4.IPv4NetworkConfigurator;
//import inet.nodes.inet.AdhocHost;
//import inet.world.radio.ChannelControl;
import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.AdhocHost;
import inet.physicallayer.wireless.ieee80211.packetlevel.Ieee80211ScalarRadioMedium;
import inet.physicallayer.wireless.common.contract.packetlevel.IRadioMedium;

network Adhoc2
{
    parameters:
    submodules:
        host0: AdhocHost {
            parameters:
                @display("r=,,#707070");
        }
        host1: AdhocHost {
            parameters:
                @display("r=,,#707070");
        }
        host2: AdhocHost {
            parameters:
                @display("r=,,#707070");
        }
        host3: AdhocHost {
            parameters:
                @display("r=,,#707070");
        }
        host4: AdhocHost {
            parameters:
                @display("r=,,#707070");
        }
        host5: AdhocHost {
            parameters:
                @display("r=,,#707070");
        }
        host6: AdhocHost {
            parameters:
                @display("r=,,#707070");
        }
        host7: AdhocHost {
            parameters:
                @display("r=,,#707070");
        }
        host8: AdhocHost {
            parameters:
                @display("r=,,#707070;p=176,315");
        }
        host9: AdhocHost {
            parameters:
                @display("r=,,#707070");
        }

//        channelControl: ChannelControl
//        {
//            parameters:
//                @display("p=60,50");
//        }

        radioMedium: <> like IRadioMedium {
            parameters:
                @display("p=60,50");
        }

        configurator: Ipv4NetworkConfigurator {
            @display("p=140,50");
        }
}
