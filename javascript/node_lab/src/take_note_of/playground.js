const Util = require('util');

function Person()
{
    this._firstName = '';
    this._lastName = ''; 
    this._joke = 'Jojo Star family';   
}

Person.prototype.Greet = function() {
    console.log(`Hello ${this._firstName} ${this._lastName} ${this._joke}`);
}

function Customer()
{
    Person.call(this);
    this._email = ''
    this._telephone = ''
}

Util.inherits(Customer, Person);

//let p1 = new Person();


let c1 = new Customer();
c1._firstName = 'Joseph';
c1._lastName = 'Biong';
c1._email = 'joseph@mail.com';
c1._telephone = '+55(16) 9 8116-6676';
//c1._joke = 'new joke';
c1.Greet();

/*
p1['_firstName'] = 'Daniel';
p1['_lastName'] = 'Anselmo';
p1.Greet();
*/