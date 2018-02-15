ServerCommunicator wraps server API for battlesnakes and provied main communicator between clients and server

Usage:
--------------------------------------------
4 ways to initialize
1. ServerCommunicator host: <an IP> port: <port>
2. ServerCommunicator port: <port> where host is default to 0.0.0.0.
3. ServerCommunicator host: <an IP> where port is default to 3000.
4. ServerCommunicator  withConfig: <ServerConfig>

where
<an IP> is IP as array: #[ 192 168 0 1]
<port> is port as number

then
instance start.
--------------------------------------------
also
class PlayerInfo can change appearence of Snake. Set it via setter startResponse:

--------------------------------------------
Example with 4 snakes
--------------------------------------------

|snakes sc|
snakes := OrderedCollection new.


sc:= (ServerCommunicator port: 3000) .
sc startResponse: (PlayerInfo new color: 'red'; name: 'devil'; taunt: 'i will destroy you'; headType: 'shades'; headUrl: 'https://media.licdn.com/mpr/mpr/shrink_100_100/AAEAAQAAAAAAAAPLAAAAJGEyMmJiY2Y0LWYzM2UtNGM5Zi1iNzdkLWU4YmQyYTQ3MjFiNQ.png' ).
snakes add: sc.

sc:= (ServerCommunicator port: 3001) .
sc startResponse: (PlayerInfo new color: 'blue'; name: 'Elvis'; headType: 'tongue'; taunt: 'la lal la'; headUrl:  'https://im9.cz/iRft/809/98/1381298809--100x100.jpg').
snakes add: sc.

sc:= (ServerCommunicator port: 3002) .
sc startResponse: (PlayerInfo new color: 'orange'; name: 'Smiley'; headType: 'smile'; tailType: 'fat-rattle'; taunt: 'be happy'; headUrl: 'http://img.brothersoft.com/games/flash/icon/s/smile_v1-9558-1264178089.png' ).
snakes add: sc.

snakes add: (ServerCommunicator port: 3003) .

Teapot stopAll.

snakes do: [ :each | each start ].

