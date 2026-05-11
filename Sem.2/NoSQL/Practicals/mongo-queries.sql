-- mongosh --username admin --password password --host {host} --port {port}

show dbs;

use test;

db.createCollection("users");

show collections;

db.users.insertOne({"name": "Lovesh", "age": 24, 'email': "lk@gmail.com"});

db.users.find({}, {name: 1, _id: 0})

db.users.find({name: {$exists: true}}, {name: 1, _id: 0})

db.students.find(
  {},
  {
    _id: 0,
    FullName: "$name",
    age: 1
  }
)


db.users.insertMany([
    {"name": "Nilesh", "age": 30, 'email': "nd@gmail.com"},
    {"name": "Swati", "age": 26, 'email': "sx@gmail.com"},
]);


db.users.find()

db.users.updateOne({"name": "Lovesh"}, {$set: {"age": "45"}});

db.users.updateOne({"name": "Lovesh"}, {$set: {"age": "45", "email": 'asdh'}});

db.users.find()

db.users.insertOne({"name": "Aditya", "age": 42, 'email': "ap@gmail.com"});

db.users.insertOne({"name": "Aditya Pathak", "age": 24, 'email': "TEST@gmail.com"});

db.users.updateOne({"name": "Aditya"}, {$set: {"age": "ghjk", "email": '789f'}});

db.users.updateMany({"name": "Aditya"}, {$set: {"age": "dghj", "email": '586uhrd'}});

db.users.deleteOne({"name": "Aditya"});

db.users.find({"name": "Aditya"});

db.users.updateOne({"name": "Aditya"}, {$push: {hobbies: "Python"}});

db.users.updateOne({"name": "Aditya"}, {$push: {hobbies: "TT"}});

-- ("Coding", "Python") results to last Item only "Python"
db.users.find({"hobbies": ("Coding", "Python")});

db.users.updateOne({"name": "Aditya"}, {$pop: {hobbies: 1}});

db.users.updateOne({"name": "Aditya"}, {$pull: {hobbies: "Python"}});

db.users.find();

db.users.updateMany({}, {$set: {"institute": "DSF"}});

db.users.deleteOne({hobbies: "TT"});

db.users.find({"name": {$regex: "Aditya"}});

db.users.deleteMany({"name": {$regex: "Aditya"}});

db.users.updateMany({age: {$gte: 30}}, {$unset: {age: ""} });

db.users.updateMany(
  {
    $or: [
      {institute: 'None'},
      {age: "45"}
    ]
  },
  {$set: {institute: "IPS"} }
)

-- db.users.drop();

-- db.dropDatabase();


db.users.find({"name": {$eq: "Lovesh"}})
db.users.find({"name": {$ne: "Lovesh"}})
db.users.find({"name": {$gt: "Aditya"}})
db.users.find({"name": {$gte: "Aditya Pathak"}})
db.users.find({"age": {$gt: "0"}})
db.users.find({"age": {$gt: 0}})

db.users.find({"age": {$lt: "0"}})
db.users.find({"age": {$lte: 0}}) --less than equals too

db.users.find({"age": {$in: [20, 26]}}) -- in this list only not range
db.users.find({"age": {$nin: [30, 45, "dh"]}}) -- not in
db.users.find({"name": {$nin: ['Lovesh', 'Aditya']}})

db.users.find({$or: [ {"age": 30}, {"age": 26} ]})
db.users.find({$or: [{"age": 30}, {"age": 26}, {"age": "dh"}]})
db.users.find({$and: [{"age": 26}, {"name": "Nilesh"}]})
db.users.find({"age": {$not: {$ne: 26}}})

db.users.find({$nor: [{age: 30}, {name: "Lovesh"}]})

-- $nand does not eqist it can be achive by,
  -- $nor
db.users.find({$nor: [{age: 30, name: "Lovesh"}]})
  -- combination of $not & $and | $and works differently when used with $expr
db.users.find({
  $expr: {
    $not: {
      $and: [
        {$eq: ["$age", 30]},
        {$eq: ["$name", "Nilesh"]}
      ]
    }
  }
})

-- this won't give error but it's a wrong syntax
db.users.find({
  $expr: {
    $not: {
      $and: [
        {"age": 30},
        {"name": "Nilesh"}
      ]
    }
  }
})

-- Search by missing field
db.users.find({
  $expr: {
    $not: {
      $and: [
        {$eq: [{$type: "$age"}, "missing"]},
        {$eq: ["$name", "Nilesh"]}
      ]
    }
  }
})


-- Aggregations

db.createCollection("students")

db.students.insertMany([
  {name: "Amit", age: 21, course: "BCA", marks: 75},
  {name: "Neha", age: 22, course: "BCA", marks: 85},
  {name: "Priya", age: 23, course: "MCA", marks: 90},
  {name: "Rahul", age: 21, course: "MCA", marks: 80}
])

db.students.aggregate([
  {$match: {age: {$gt: 21} }},
  {$sort: {name: 1} },
  {$group: {_id: "$course", total: {$sum: 1} }},
  {$limit: 5}
])

-- $group (Grouping Documents)(Group students by course)

db.students.aggregate([{$group: {_id: "$course", totalStudents: {$sum: 1}}}])


-- $match(Filtering Data)(Works like WHERE in SQL)

db.students.aggregate([{$match: {course: "BCA"}}])

db.students.aggregate([
  {$group: {_id: "$course", total: {$sum: 1} }},
  {$match: {_id: "BCA"} }
])

-- $sort(Sorting)(Sort by marks)
db.students.aggregate([{$sort: {age: -1, name: -1}}])

-- $project(Selecting Fields)(Display only specific fields)
db.students.aggregate([{$project: {name: 1, marks: 1, _id: 0}}])

-- $avg(Average Calculation)(Average marks of students)
-- null means do not group by any field i.e. treat all documents as one single group
db.students.aggregate([{$group: {_id: null, averageMarks: {$avg: "$marks"}}}])

-- $max and $min
db.students.aggregate([{$group: {_id: null, maxMarks: {$max: "$marks"}}}])
db.students.aggregate([{$group: {_id: null, minMarks: {$min: "$marks"}}}])

-- $sum (Total)
db.students.aggregate([{$group: {_id: null, totalMarks: {$sum: "$marks"}}}])

-- $limit (Limit results)
db.students.aggregate([{$limit: 2}])

-- $skip (Skip no. of documents from top)
db.students.aggregate([{$skip: 2}])

-- $count (Count documents)
db.students.aggregate([{$count: "TotalStudents"}])
