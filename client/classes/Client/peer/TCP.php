<?php
class pmq_Client_Peer_Tcp extends pmq_Client_Peer_Abstract
{
    public function connect()
    {
        // hier connection aufbauen etc
    }
    
    abstract public function put(array $messages)
    {
        // messages zusammentueten und in einem rutsch versenden
    }
}