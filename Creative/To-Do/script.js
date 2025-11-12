const titleInput = document.getElementById("taskTitle");
const infoInput = document.getElementById("taskInfo");
const addBtn = document.getElementById("addBtn");
const taskList = document.getElementById("taskList");

addBtn.addEventListener("click", addTask);

function addTask() {
    const title = titleInput.value.trim();
    const info = infoInput.value.trim();

    if (title === "" || info === "") {
        alert("Please enter both task title and info!");
        return;
    }

    const li = document.createElement("li");

    const topDiv = document.createElement("div");
    topDiv.classList.add("task-top");

    const checkbox = document.createElement("input");
    checkbox.type = "checkbox";
    checkbox.addEventListener("change", () => {
        li.classList.toggle("completed");
    });

    const titleSpan = document.createElement("span");
    titleSpan.textContent = title;
    titleSpan.classList.add("task-title");

    const delBtn = document.createElement("button");
    delBtn.textContent = "Delete";
    delBtn.classList.add("delete-btn");
    delBtn.addEventListener("click", () => {
        li.remove();
    });

    topDiv.appendChild(checkbox);
    topDiv.appendChild(titleSpan);
    topDiv.appendChild(delBtn);

    const infoP = document.createElement("p");
    infoP.textContent = info;
    infoP.classList.add("task-info");

    const dateP = document.createElement("p");
    const now = new Date();
    dateP.textContent = "Added on: " + now.toLocaleString();
    dateP.classList.add("task-date");

    li.appendChild(topDiv);
    li.appendChild(infoP);
    li.appendChild(dateP);

    taskList.appendChild(li);

    titleInput.value = "";
    infoInput.value = "";
}
