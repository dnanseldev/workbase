const Evt = require('./eventEmmiter');

let evt = new Evt();

evt.on('greettin', function() {

    console.log('Hi there!');
});

evt.on('greettin', function() {

    console.log('Hi there again!');
});

evt.emit('greettin');

