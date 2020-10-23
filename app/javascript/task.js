// function task() {
//   const tasks = document.querySelectorAll(".task");
//   const listName = document.getElementById("list-name")
//   const submit = document.getElementById("submit");
//   tasks.forEach(function(task){
//     const taskId = task.getAttribute("data-id")
//   })
//   submit.addEventListener("click", (e) => {
//     const listId = listName.getAttribute("data-id")
//     console.log(listId)
//     const formData = new FormData(document.getElementById("form"));
//    const XHR = new XMLHttpRequest();
//    XHR.open("POST", `/lists/${listId}/tasks` , true);
//    XHR.responseType = "json";
//    XHR.send(formData);
//    XHR.onload = () => {
//    if  (XHR.status != 200) {
//        alert(`Error ${XHR.status}: ${XHR.statusText}`);
//       return null;
//    }
//    console.log("success")
//    const item = XHR.response.task;
//    console.log(item)
//   //  const content = item.task
//    const task = document.getElementById("addedTask");
//    const formText = document.getElementById("content");
//    const mykey = gon.my_private_key;
//    const HTML = `
//    <div class="task-content">
//    <%= check_box_tag :done %>
//    <!-- 投稿したメッセージ内容を記述する -->
//      ${ item.content}
//    </div>
//  <div class="map">
//    <iframe 
//        width="500"
//        height="100"
//        frameborder="0" style="border:0"
//        src=<%=url_for("https://www.google.com/maps/embed/v1/place?key=#${mykey}&q=#${item.content}&zoom=15")%>>
//    </iframe>
//  </div>
//      <div class= delete-btn>
//        <img src="img_x.png"><a href="/lists/${listId}/tasks/${item.id}", method: :delete >
//      </div>`;
//    task.insertAdjacentHTML("afterend", HTML);
//    formText.value = "";
//    };
//    e.preventDefault();
//   })

// };


  
//  window.addEventListener("load", task);