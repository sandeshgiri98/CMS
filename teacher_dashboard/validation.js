// user bata input leyako 
var mainPriceInput = document.getElementById('main-price');
var discountPriceInput = document.getElementById('discount-price');
var offerPriceInput = document.getElementById('offer-price');


mainPriceInput.addEventListener('input', calculateOfferPrice);
discountPriceInput.addEventListener('input', calculateOfferPrice);

// offer price calculate garako
function calculateOfferPrice() {
  var mainPrice = parseFloat(mainPriceInput.value) || 0;
  var discountPrice = parseFloat(discountPriceInput.value) || 0;

  var offerPrice = mainPrice - discountPrice;

  //Offer price display garako
  offerPriceInput.value = Math.round(offerPrice).toFixed(0);
}

// // ......................................................................................
// // Get the product link element
// const productLink = document.getElementById('product-link');

// // Get the product form fill element
//   const productFormFill = document.querySelector('.Products');

// // Add a click event listener to the product link
// productLink.addEventListener('click', () => {
//   // Show the product form fill
//   productFormFill.style.display = 'block';
// });



// // ......................................................................................
// // Get the product link element
// const productDetails = document.getElementById('product_report');

// // Get the product form fill element
//   const productdetailshow = document.querySelector('.product_detail');

// // Add a click event listener to the product link
// productDetails.addEventListener('click', () => {
//   // Show the product form fill
//   productdetailshow.style.display = 'block ';
// });

// // ....................................................................................
// document.getElementById("myButton").addEventListener("click", function() {
//   var navElement = document.getElementById("myNav");
//   navElement.classList.toggle("expanded");
//   navElement.classList.add("transition-disabled");
//   setTimeout(function() {
//     navElement.classList.remove("transition-disabled");
//   }, 1000); // Modify the delay to match your transition duration
// });
