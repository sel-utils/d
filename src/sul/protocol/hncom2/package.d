/*
 * This file was automatically generated by sel-utils and
 * released under the GNU General Public License version 3.
 * 
 * License: https://github.com/sel-project/sel-utils/blob/master/LICENSE
 * Repository: https://github.com/sel-project/sel-utils
 * Generated from https://github.com/sel-project/sel-utils/blob/master/xml/protocol/hncom2.xml
 */
/**
 * Protocol used for the communication between an hub and multiple nodes with support
 * for Minecraft and Minecraft: Pocket Edition and different versions of their protocols.
 * 
 * <h2>Definitions</h2>
 * 
 * <h3>Hub</h3>
 * The hub (server) is the network part of the game server and handles pings, login
 * sequences, keep alive packets, queries, external consoles and everything else that
 * is not related to the gameplay.
 * A server can work with only an hub (nodeless) but every player that will try to
 * join the server will be disconnected because the server is full after the login
 * process.
 * 
 * <h3>Node</h3>
 * The node (client) is the gameplay part of the game server. It contains worlds and
 * entities and has only one network connection, with the hub.
 * 
 * <h2>Connection</h2>
 * 
 * Hncom uses a packet-oriented TCP connection and every packet is prefixed with a
 * little-endian unsigned 32-bits integer, without any exception.
 * 
 * <h3>Authentication</h3>
 * The node starts the connection sending a ConnectionRequest packet with its credentials
 * and waits for a ConnectionResponse packet.
 */
module sul.protocol.hncom2;

public import sul.protocol.hncom2.types;

public import sul.protocol.hncom2.util;
public import sul.protocol.hncom2.login;
public import sul.protocol.hncom2.status;
public import sul.protocol.hncom2.player;
public import sul.protocol.hncom2.world;
public import sul.protocol.hncom2.panel;