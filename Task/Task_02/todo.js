const list = document.querySelector(".todo_list");
const createBtn = document.querySelector(".create_btn");

let todos = [];

createBtn.addEventListener('click', createNewTodo);

function createNewTodo(){
    const item = {
        id: new Date().getTime(),
		text: "",
		complete: false
	}
    
    todos.unshift(item);
    
    const { itemEl, inputEl } = createTodoElement(item);
    
    list.prepend(itemEl);
    
    inputEl.removeAttribute("disabled");
    inputEl.focus();
    
    saveToLocalStorage();
}

{/* <div class="item">
<input type="checkbox" />
<input type="text" disabled />
<div class="actions">
    <button class="material-icons">edit</button>
    <button class="material-icons remove-btn">remove_circle</button>
</div>
</div> */}

// item event
function createTodoElement(item){

    // item div
    const itemEl = document.createElement("div");
    itemEl.classList.add("item")

    // checkbox input
    const checkbox = document.createElement("input")
    checkbox.type = "checkbox";
    checkbox.checked = item.complete;

    if (item.complete) {
		itemEl.classList.add("complete");
	}

    // text input
    const inputEl = document.createElement("input");
    inputEl.type = "text";
    inputEl.value = item.value;
    inputEl.setAttribute("disabled", "");

    // action div
    const actionsEl = document.createElement("div");
	actionsEl.classList.add("actions");

    // edit btn
    const editBtnEl = document.createElement("button");
	editBtnEl.classList.add("material-icons");
	editBtnEl.innerText = "edit";

    // remove btn
	const removeBtnEl = document.createElement("button");
	removeBtnEl.classList.add("material-icons", "remove-btn");
	removeBtnEl.innerText = "remove_circle";

    actionsEl.append(editBtnEl);
    actionsEl.append(removeBtnEl);

    itemEl.append(checkbox);
    itemEl.append(inputEl);
    itemEl.append(actionsEl);

    // checkbox event
    checkbox.addEventListener("change", () => {
        item.complete = checkbox.checked;

        if(item.complete){
            itemEl.classList.add("complete");
        }else{
            itemEl.classList.remove("complete");
        }

        saveToLocalStorage();
    })

    // input event
    inputEl.addEventListener("input", () => {
		item.text = inputEl.value;
	});

	inputEl.addEventListener("blur", () => {
		inputEl.setAttribute("disabled", "");

		saveToLocalStorage();
	});

    // edit event
	editBtnEl.addEventListener("click", () => {
		inputEl.removeAttribute("disabled");
		inputEl.focus();
	});

    // remove enent
	removeBtnEl.addEventListener("click", () => {
		todos = todos.filter(t => t.id != item.id);
		itemEl.remove();

		saveToLocalStorage();
	});

    return { itemEl, inputEl, editBtnEl, removeBtnEl }
}

// todo load
function displayTodos() {
	loadFromLocalStorage();

	for (let i = 0; i < todos.length; i++) {
		const item = todos[i];

		const { itemEl } = createTodoElement(item);

		list.append(itemEl);
	}
}

displayTodos();

// todo save
function saveToLocalStorage() {
	const data = JSON.stringify(todos);

	localStorage.setItem("my_todos", data);
}

function loadFromLocalStorage() {
	const data = localStorage.getItem("my_todos");

	if (data) {
		todos = JSON.parse(data);
	}
}