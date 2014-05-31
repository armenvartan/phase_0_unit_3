// U3.W8-9:


// I worked on this challenge [by myself, with: ].

// 2. Pseudocode



// 3. Initial Solution

var grocery_list = new Array;

function GroceryItem(item, quantity, unit){
  this.item = item;
  this.quantity = quantity;
  this.unit = unit;
}

function AddItem(grocery){
  grocery_list.push(grocery);
}

function RemoveItem(number){
  grocery_list.splice(number - 1)
}

function ChangeQuantity(grocery, new_qty){
  grocery.quantity = new_qty;
}

function ChangeUnit(grocery, new_unit){
  grocery.unit = new_unit;
}

function DisplayList(list){
  var grocery_list_keys = [] // the item number for each grocery
  var list_keys = Object.keys(list);
  for(i = 0; i < list_keys.length; i++){ //turning the list keys into integers and adding 1, so that the list starts at 1, instead of 0
    grocery_list_keys.push(parseInt(list_keys[i]) + 1)
  }
  for(i = 0; i < grocery_list.length; i++){
    for (j = 0; j < list_keys.length; j++){
      if(i == j){
        console.log(grocery_list_keys[j] + ": " + grocery_list[i].quantity + " " +
        grocery_list[i].unit + " " + grocery_list[i].item);
      }
    }
  }
}



// 4. Refactored Solution






// 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE
console.log(grocery_list)
bacon = new GroceryItem("bacon", 3, "ea")
apple = new GroceryItem("apples", 1, "lb")
AddItem(bacon)
AddItem(apple)
console.log(grocery_list)
// RemoveItem(1)
// console.log(grocery_list)
ChangeQuantity(bacon, 5)
console.log(grocery_list)
ChangeUnit(bacon, "chunky")
DisplayList(grocery_list)





// 5. Reflection
