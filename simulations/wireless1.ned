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

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.physicallayer.wireless.common.contract.packetlevel.IRadioMedium;
import inet.node.inet.WirelessHost;

//
// TODO auto-generated type
//
network Wireless1
{
    parameters:
        @display("bgb=600,600");
    submodules:
        configurator: Ipv4NetworkConfigurator{
        	@display("p=40,30");
        }
        radioMedium: <default("UnitDiskRadioMedium")> like IRadioMedium{
        	@display("p=140,30");
        }
        host1: WirelessHost{
        	@display("p=50,150");
        }
        host2: WirelessHost{
        	@display("p=450,150");
        }
}
