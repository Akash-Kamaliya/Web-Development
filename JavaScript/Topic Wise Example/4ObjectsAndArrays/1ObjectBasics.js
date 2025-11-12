// objectBasics.js - create, access, update, delete
const student = { id: 1, name: 'Akash', skills: ['C','JS'] };
console.log('name', student.name);
student.age = 19;
console.log('updated', student);
delete student.id;
console.log('after delete', student);
