// function createSong(track) {
//   var newSong = { name: name, age: age, bio: bio }
//
//     $.ajax({
//       type: 'POST',
//       url: '',
//       data: JSON.stingify({
//         song: newSong
//       }),
//       contentType: "application/json"
//       dataType: "json"
//     })
//     .done(function(data) {
//       console.log(data);
//
//
//     })
// }
function submitSong(event){
  event.preventDefault();
  var track = $("#new-song").val();

  createSong(track);

  $("#new-song").val(null);
}

function addSong(event){
  event.preventDefault();

  var track = $("input[name='track']").val();
  var lyrics = $("input[lyrics='lyrics']").val();
  var album = $("input[album='album']").val();
  var labelItem = $("<label></label>");
  var listItem = $("<li></li>");


  listItem.html(track);
  labelItem.html("delete this song").bind('click', deleteSong);
  listItem.addClass("song");
  labelItem.addClass("deleteSong");
  listItem.append(labelItem);
  $("#songList").append(listItem);

}

function deleteSong(event){
  event.preventDefault();
  $(event.target).closest(".song").remove();
}



function deleteAllSongs(event){
  event.preventDefault();
  $(".song").remove();
}

$(document).ready(function(){
  $("form").bind('submit', submitSong);
  $(".newSong").bind('click', addSong);
  $(".deleteSong").bind('click', deleteSong);
});
