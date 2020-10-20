// function task() {
//   const submit = document.getElementById("submit")
//   console.log(submit)
//    submit.addEventListener("click", (e) => {
//     const formData = new FormData(document.getElementById("form"));
//     const XHR = new XMLHttpRequest();
//     XHR.open("POST", `/lists/:${gon.list}/tasks${(gon.list)}????????` , true)
//     XHR.responseType = "json";
//     XHR.send(formData);
//     XHR.onload = () => {
//       if (XHR.status != 200) {
//         alert('Error ${XHR.status}: ${XHR.statusText}');
//         return null;
//       }
//       const item = XHR.response.post;
//       const list = document.getElementById("list??????");
//       const formText = document.getElementById("content");
//       const HTML = `
//  <div class="task">

//   <div class="task-content">
//     <%= check_box_tag :done %>
//     <%= task.content %>
//   </div>

//   <div class="map">
//     <iframe 
//         width="500"
//         height="100"
//         frameborder="0" style="border:0"
//         src=<%=url_for("https://www.google.com/maps/embed/v1/place?key=#{ENV["GOOGLE_API_KEY"]}&q=#{task.content}&zoom=15")%>>
//     </iframe>
//   </div>

//   <div class delete-btn>
//     <%= link_to "削除", list_task_path(@list.id, task.id), method: :delete %>
//   </div>

//  </div>`;
//   list.insertAdjacentHTML("afterend", HTML);
//      formText.value = "";
//     };
//     e.preventDefault();
//   });
// }
// window.addEventListener("load", task);