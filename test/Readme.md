
These tests enable you to test your configuration and send in test data to our system.

#### filevent.rb

```
ruby filevent.rb -f mydata.json
```

Reads JSON data from the file mydata.json and makes a REST API call to the
endpoint **http://localhost:4567/api/1.0/event**

#### filerule.rb

```
ruby filerule.rb -f rulecomparator.json
```

Reads JSON data from the file and makes a REST API call to the
endpoint **http://localhost:4567/api/1.0/rule/comparator**

```
ruby filerule.rb -z observer -f ruleobserver.json
```

Reads JSON data from the file and makes a REST API call to the
endpoint **http://localhost:4567/api/1.0/rule/observer**

#### queueread.rb

```
ruby queueread.rb
```

Without any parameters it will read data JSON data from the **customer** queue and
print it out to the console.

```
ruby queueread.rb -f mydata.json
```

Read JSON data from the **customer** queue and write the JSON to the file
mydata.json
