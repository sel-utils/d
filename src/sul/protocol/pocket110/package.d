/*
 * This file was automatically generated by sel-utils and
 * released under the GNU General Public License version 3.
 * 
 * License: https://github.com/sel-project/sel-utils/blob/master/LICENSE
 * Repository: https://github.com/sel-project/sel-utils
 * Generated from https://github.com/sel-project/sel-utils/blob/master/xml/protocol/pocket110.xml
 */
/**
 * Protocol used in Minecraft: Pocket Edition and variants. The network part of the
 * protocol is managed by RakNet.
 * 
 * <h3>Login sequence</h3>
 * + The client sends a Login packet with the details of its game and its account
 * + The server always replies with a PlayerStatus
 * + If status field in the packet sent was different from ok the connection is closed
 * 
 * <h3>Spawning sequence</h3>
 * + The server sends a StartGame packet with the world's informations
 * + The server sends zero or more FullChunkData with the chunk's blocks and tiles
 * + The server sends the player's inventory using ContainerSetContent
 * + The server sends the world's textures through ResourcePacksInfo (the textures
 * may be empty)
 * + The client replies with ResourcePackClientResponse telling the server that the
 * textures have been loaded
 * + The server sends a PlayStatus packet set to spawned
 * + The client spawns
 * 
 * Everything written in the documentation has been tested on [sel-server](https://github.com/sel-project/sel-server).
 * The types and the packets without documentation haven't been tested yet or it's
 * not clear what their real purpose in the game is.
 */
module sul.protocol.pocket110;

public import sul.protocol.pocket110.types;

public import sul.protocol.pocket110.play;
