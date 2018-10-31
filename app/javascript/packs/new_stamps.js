const press = document.getElementById('press');
var myStamps = [];
function newStamp() {
  press.addEventListener('keypress', (event) => {
  const keyName = event.key;
  if (keyName  == ' ') {
    myStamps.push(Stamp.new);
    console.log(myStamps)
  }
});
}

newStamp();
  // event.preventDefault();
  // myTasks.push(new Task());
