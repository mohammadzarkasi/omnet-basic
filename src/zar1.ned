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

simple Z1App{
    parameters:
        int destAddress;
        @display("i=block/browser");
    gates:
        input in;
        output out;
}

simple Z1Routing
{
    parameters:
        int destAddress;
	    //@display("i=block/browser");
    gates:
        input localIn;
        output localOut;
        input in;
        output out;
}

module Z1Node {
    parameters:
        int address;
        @display("i=misc/node_vs,gold");
    
    submodules:
        app: MyApp {
            @display("p=30,30");
        }
        routing: MyRouting {
            @display("p=219,30");
        }
    connections:
        routing.localOut --> app.in;
        routing.localIn <-- app.out;
}

network Z1Network{
	// membuat channel (medium komunikasi) untuk menghemat penulisan 
    // kode berulang
    types:
        channel C100 extends ned.DatarateChannel
        {
            datarate = 100Mbps;
        }
	
}