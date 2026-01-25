//Scripts
function addTask() {
    var taskInput = document.getElementById("taskInput");
    var taskText = taskInput.value;

    if (taskText === "") {
        alert("Please enter a task");
        return;
    }

    var li = document.createElement("li");

    // Task text
    var span = document.createElement("span");
    span.textContent = taskText;
    span.className = "task-text";

    // Click to mark completed
    span.onclick = function() {
            span.classList.toggle("completed");
        }
        // Delete button
    var deleteBtn = document.createElement("button");
    deleteBtn.textContent = "Delete";
    deleteBtn.className = "delete-btn";

    deleteBtn.onclick = function() {
        li.remove();
    };

    li.appendChild(span);
    li.appendChild(deleteBtn);

    document.getElementById("taskList").appendChild(li);
    taskInput.value = "";

}