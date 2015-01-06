

```
Usage: sim.rb [options]
-x PostType                      String 1 = URL, 2 = File, 3 = Rabbit
-e Exchange                      String RabbitMQ Exchange name
-f File                          String File name
-g Host                          String Host name
-p Port                          String Port number
-y Endpoint1                     String Endpoint Part 1
-z Endpoint2                     String Endpoint Part 2 and RuleType
-m Dimension                     String Dimension name
-d Days                          Integer Time simulation interval
-n Messages                      Integer Send in n messages
-v                               Run verbosely
-h, --help                       Show this message
```

#### resqfile

This means that data can be sent to one of three places.

* Data can be sent to a URL endpoint
* Data can be published to a RabbitMQ channel
* Data can be written to a file

The current default is **3**

* 1 = URL
* 2 = File
* 3 = Queue

#### Sending data to RabbitMQ

```
r sim.rb
```

By default data is sent to the RabbitMQ exchange **test.spnee.customer**

```
r sim.rb -e 'test.spnee.blue'
```

This will publish your JSON data to the alternate exchange **test.spnee.blue**

#### Sending data to a File

```
r sim.rb -x 2
```

This will write data out to the default file **mydata.json**

```
r sim.rb -x 2 -f 'yourdata.json'
```

This will write data out to the file **yourdata.json**

#### Posting event data to a URL endpoint

```
ruby sim.rb -x 1
```

This POSTS data to the default URL http://localhost:4567/api/1.0/event

#### String Endpoint Part 2 and RuleType
