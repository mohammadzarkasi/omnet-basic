// designate the NED package of this folder
package mozar1;

//import inet.tutorials.protocol.Node;


// namespace of module C++ classes
@namespace(mozar1);

@license(LGPL);

//import inet.
import ned.*;


// membuat simple-module sendiri
simple MyApp
{
    parameters:
        int destAddress;
        @display("i=block/browser");
    gates:
        input in;
        output out;
}

simple MyRouting
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

simple MyQueue
{
    parameters:
        int capacity;
        @display("i=block/queue");
    gates:
        input in;
        output out;
}



// membuat module
//module MyNode
//{
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
//    connections:
//        routing.localOut --> app.in;
//        routing.localIn <-- app.out;
//
//        for i=0..sizeof(port)-1 {
//            routing.out[i] --> queue[i].in;
//            routing.in[i] <-- queue[i].out;
//
//            queue[i].line <--> port[i];
//        }
//}


//nama jaringan adalah MyNetwork1
//network MyNetwork1
//{
//    // membuat channel (medium komunikasi) untuk menghemat penulisan 
//    // kode berulang
//    types:
//        channel C100 extends ned.DatarateChannel
//        {
//            datarate = 100Mbps;
//        }
//
//    //	membuat node-node yang ada di dalam jaringan
//    submodules:
//        node1: Node {
//            // cara mengatur posisi node di simulasi
//            @display("p=83,33");
//        }
//        node2: Node {
//            @display("p=175,147");
//        }
//        node3: Node {
//            @display("p=295,40");
//        }
//        node4: Node {
//            @display("p=392,155");
//        }
//        node5: Node{
//        	@display("p=550,155");
//        }
//        node6: Node{
//        	@display("p=200,250");
//        }
//        myApp1: MyApp{
//        	@display("p=40,250");
//        }
//        myNode1: MyNode{
//        	@display("p=300,200");
//        }
//    connections:
//        // menghubungkan node x ke node y melalui suatu medium komunikasi 
//        node1.port++ <--> {  datarate = 100Mbps; } <--> node2.port++;
//        node2.port++ <--> {  datarate = 100Mbps; } <--> node3.port++;
//
//        // menghubungkan node x ke node y melalui suatu 
//        // medium komunikasi buatan sendiri
//        node3.port++ <--> C100 <--> node4.port++;
//        node4.port++ <--> C100 <--> node5.port++;
//
//        node6.port++ <--> C100 <--> myApp1.port++;
//}
//
//
