
### resqfile

This means that data can be sent to one of three places.

* Data can be sent to a URL endpoint
* Data can be written to a file
* Data can be published to a RabbitMQ channel

The current **x** option default is **1**

* 1 = URL
* 2 = File
* 3 = Queue

##### Sending data to an event URL endpoint

```
ruby sim.rb
```

This POSTS data to the default URL *http://localhost:4567/api/1.0/event*

##### Sending data to a rule comparator URL endpoint

```
ruby sim.rb -z comparator -y api/1.0/rule
```

This POSTS data to the default URL *http://localhost:4567/api/1.0/rule/comparator*

##### Sending data to a rule observer URL endpoint

```
ruby sim.rb -z observer -y api/1.0/rule
```

This POSTS data to the default URL *http://localhost:4567/api/1.0/rule/observer*

#### Sending data to a File

```
ruby sim.rb -x 2
```

This will write data out to the default file **mydata.json**

```
ruby sim.rb -x 2 -f 'yourdata.json'
```

This will write data out to the file **yourdata.json**

```
ruby sim.rb -z comparator -y api/1.0/rule -x 2 -f rulecomparator.json
```

This writes comparator rule data to the file *rulecomparator.json*

```
ruby sim.rb -z observer -y api/1.0/rule -x 2 -f ruleobserver.json
```

This writes observer rule data to the file *ruleobserver.json*

#### Sending data to RabbitMQ

```
ruby sim.rb -x 3
```

By default data is sent to the RabbitMQ exchange **test.spnee.customer**

```
ruby sim.rb -e 'test.spnee.blue'
```

This will publish your JSON data to the alternate exchange **test.spnee.blue**

### Reference

Run this command to see the message below:

```
ruby sim.rb -h
```

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
