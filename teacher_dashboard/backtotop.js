const backtoTop = document.querySelector(".to-top");

    window.addEventListener("scroll", scrollFunction);

    function scrollFunction() {
      if (window.scrollY > 800) {
        backtoTop.style.display = "block";
      } else {
        backtoTop.style.display = "none";
      }
    }
    backtoTop.addEventListener("click", backToTop);

    function backToTop() {
      window.scrollTo({
        top: 0,
        behavior: "smooth"
      });
    }