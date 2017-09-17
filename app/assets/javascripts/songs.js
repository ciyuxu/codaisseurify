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
  var lyrics = $("input[name='lyrics']").val();
  var album = $("input[name='album']").val();
  var labelItem = $("<label></label>");
  var listItem = $("<li></li>");
  var artistId = $("input[name='artistId']").val();
  var newSong = { track: track, lyrics: lyrics, album: album }
  $.ajax({
    type: "POST",
    url: "/artists/" + artistId + "/songs.json",
    data: JSON.stringify({
      song: newSong
    }),
    contentType: "application/json",
    dataType: "json"
  })
  .done(function(data) {
    console.log(data);


  listItem.html(track);
  labelItem.html("Delete this song").bind('click', deleteSong);
  listItem.addClass("song");
  labelItem.addClass("deleteSong");
  listItem.attr("data-song-id", data.id);
  listItem.append(labelItem);
  $("#songList").append(listItem);
  });
}

// function deleteSong(event){
//   event.preventDefault();
//   $(event.target).closest(".song").remove();
// }

function deleteSong(event){
  event.preventDefault();
  var artistId = $("input[name='artistId']").val();
  var listItem = $(event.target).closest(".song");
  var songId = listItem.attr("data-song-id");
  $.ajax({
    type: "DELETE",
    url: "/artists/" + artistId + "/songs/" + songId + ".json",
    // data: JSON.stringify({
    //   song: song
    // }),
    contentType: "application/json",
    dataType: "json"
  })
  .done(function(data){
  $(event.target).closest(".song").remove();
  });
}

function deleteAllSongs(event){
  event.preventDefault();
  var artistId = $("input[name='artistId']").val();
  $.ajax({
    type: "DELETE",
    url: "/artists/" + artistId + "/songs.json",
    contentType: "application/json",
    dataType: "json"
  })
  .done(function(data){
  $(".song").remove();
  });
}

$(document).ready(function(){
  $("form").bind('submit', addSong);
  // $(".newSong").bind('click', addSong);
  $(".deleteSong").bind('click', deleteSong);
  $(".deleteAllSongs").bind('click', deleteAllSongs);
});
