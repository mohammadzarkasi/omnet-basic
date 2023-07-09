//namespace mozar1;
#include <omnetpp.h>

using namespace omnetpp;


namespace mozar1 {

class Z1App : public cSimpleModule
{
protected:
    virtual void initialize() override;
    virtual void handleMessage(cMessage *msg) override;
};

Define_Module(Z1App);

void Z1App::initialize(){
    // Initialize is called at the beginning of the simulation.
    // To bootstrap the tic-toc-tic-toc process, one of the modules needs
    // to send the first message. Let this be `tic'.

    // Am I Tic or Toc?
    if (strcmp("tic", getName()) == 0) {
        // create and send first message on gate "out". "tictocMsg" is an
        // arbitrary string which will be the name of the message object.
        cMessage *msg = new cMessage("tictocMsg");
        EV << "Mengirim pesan pertama...\n";
        send(msg, "out");
    }
}

void Z1App::handleMessage(cMessage *msg){
    // The handleMessage() method is called whenever a message arrives
    // at the module. Here, we just send it to the other module, through
    // gate `out'. Because both `tic' and `toc' does the same, the message
    // will bounce between the two.
    EV << "Menerima pesan '" << msg->getName() << "', dan mengirimnya lagi...\n";
    send(msg, "out");
}
}
