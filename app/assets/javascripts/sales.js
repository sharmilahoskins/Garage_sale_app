// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/
// Called each time there's a notice message for sales
$(document).ready(function(){
  setTimeout(function(){
    $('#notice').remove();
  }, 3000);


   
  //     // Data to be submitted
  //     newItem = {
  //       "item": {
  //         "item_name": $("#item_item_name").val(),
  //         "item_description": $("#item_item_description").val(),
  //         "price": $("#item_price").val(),
  //         "image": $("#attach").val(),
  //         "sale_id": $("#sale_id").val()
  //       }
  //     }
  //
  //     $.ajax({
  //       dataType: 'json',
  //       url: '/items',
  //       method: 'POST',
  //       data: newItem,
  //       success: function(dataFromServer) {
  //         add_to_wine_list(dataFromServer);
  //       },
  //       error: function(jqXHR, textStatus, errorThrown) {
  //         alert("Add new wine failed: " + errorThrown);
  //       }
  //     });
  // });// end add wine

}); // end document ready

// Function to be called after data has been successfully submitted
// function add_to_wine_list() {
//   // $("#wine_list").append(
//   //   '<li><a href="' + '/wines/' + data.id + '">' +
//   //   data.name + "</a></li>");
//
// }
