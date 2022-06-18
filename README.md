# PythonRAT (C&C or C2)

Simple Command and Control (C&C) botnet written asynchronously using asyncio
in Python3.7. Communication is implemented using unencrypted websockets.

Default Project : [here](https://github.com/HappyStoic/PythonBotnet)

### Features

* Run bash command on multiple bot clients simultaneously
* Enable reverse-shell on a specific bot client
* Bot client authentication using password

### Example

![](demo/demo-v1.gif)


### Why?

For fun :)

## Getting started

### Run via docker-compose

*Required: [docker](https://www.docker.com/), [docker-compose](https://docs.docker.com/compose/)*


The easiest way to test the botnet is to run prepared 
[docker-compose.yml](docker-compose.yml) file. To build images and run 
docker-compose in detached mode:
```
$ docker-compose build
$ docker-compose up -d
```

To connect to the control panel, websocket cli client is needed (e.g. 
[wscat](https://www.npmjs.com/package/wscat))
```
$ wscat -c localhost:4444
Connected (press CTRL+C to quit)
> Enter:
* "0" - to print bot clients collection
* Indexes of clients separated by space to send bash command to
* Index of one client to jump into bash (send "exit" for termination)
* Send "all" to send a single command for each bot

>
```


### Run locally

Project can be also installed locally:
```
$ pip install . 
```

Then run control panel server, bot client and websocket cli client in separated 
 terminals:

```
$ python3.7 src/server.py
$ python3.7 src/client.py
$ wscat -c localhost:4444
...
```

### Configuration

#### Control panel server
```
$ python3.7 server.py --help
Usage: server.py [OPTIONS]

Options:
  -cp, --cac_port INTEGER     Port where command and control center listens
  -bp, --bot_port INTEGER     Port where bots should connect in order to join
                              the botnet
  -s, --secret_password TEXT  Password needed for bots to connect
  -i, --ip_address TEXT       Ip address for server to listen on
  --help                      Show this message and exit.
```
##### Tips 

You can directly edit server.py file to avoid using the parameters.

You can run the following command to run server.py in background :

```
nohup python3 server.py & 

```

#### Botnet client
```
$ python3.7 client.py --help
Usage: client.py [OPTIONS]

Options:
  -s, --server_address TEXT       Ip address or host of a running c&c
  -p, --port INTEGER              Port where the running c&c listens
  -i, --connection_interval INTEGER
                                  Interval in seconds in which client tries to
                                  connect to c&c server
  --help                          Show this message and exit.
```
*Note: password for client authentication needs to be written directly to [src/client.py](src/client.py). (Default values match)*

*You can directly edit [src/client.py](src/client.py) file to avoid using the parameters.*

## License
This project is licensed under the terms of the MIT license.
