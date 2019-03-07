// const contentHTML = `
// <form autocomplete="off" action="/action_page.php">
//   <div class="autocomplete" style="width:300px;">
//     <input id="myInput" type="text" name="myCountry" placeholder="Country">
//   </div>
//   <input type="submit">
// </form>`

const algoliaSearch = () => {
  console.log("loaded")
  document.addEventListener('DOMContentLoaded', function () {
    document.querySelector('.js-searchbar').oninput = changeEventHandler;
  }, false);

  function changeEventHandler(event) {
    // alert( event.target.value); 
    var client = algoliasearch('TRW5AW2WND', '3543ee8402e2317a737c001884ae0984');
    var index = client.initIndex('Flat');
    index.search(event.target.value, { hitsPerPage: 10, page: 0 })
      .then(function searchDone(content) {
        console.log(content)
        // document.getElementById('searchbar').innerHTML = contentHTML
        
      })
      .catch(function searchFailure(err) {
        console.error(err);
      });
  }
}


export { algoliaSearch }
