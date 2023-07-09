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
//        int destAddress;
        @display("i=block/browser");
    gates:
        input in;
        output out;
}

//simple Z1Routing
//{
//    parameters:
//        int destAddress;
//	    //@display("i=block/browser");
//    gates:
//        input localIn;
//        output localOut;
//        input in;
//        output out;
//}

//simple Z1Queue
//{
//    parameters:
//        int capacity;
//        @display("i=block/queue");
//    gates:
//        input in;
//        output out;
//}

//module Z1Node {
//    parameters:
//        int address;
//        @display("i=misc/node_vs,gold");
//
//    gates:
//        inout port[];
//    
//    submodules:
//        app: MyApp {
//            @display("p=30,30");
//        }
//        routing: MyRouting {
//            @display("p=219,30");
//        }
//        queue[sizeof(port)]: MyQueue {
//            @display("p=110,149");
//        }
//        
//    connections:
//        routing.localOut --> app.in;
//        routing.localIn <-- app.out;
//        
////        for i=0..sizeof(port)-1 {
////            routing.out[i] --> queue[i].in;
////            routing.in[i] <-- queue[i].out;
////
////            queue[i].line <--> port[i];
//        
////        }
//
//}

network Z1Network{
	// membuat channel (medium komunikasi) untuk menghemat penulisan 
    // kode berulang
    types:
        channel C100 extends ned.DatarateChannel
        {
            datarate = 100Mbps;
            delay = 100ms;
        }
	submodules:
	    tic: Z1App{
	    	parameters:
	    	    @display("i=,gold");
	    }
	    app2: Z1App{
	    	parameters:
	    	    @display("i=,blue");
	    }
	connections:
	    tic.out --> C100 --> app2.in;
	    tic.in  <-- C100 <-- app2.out; 
}