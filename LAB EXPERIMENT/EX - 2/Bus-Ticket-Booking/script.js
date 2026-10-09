// PAGE NAVIGATION

function showPage(pageId) {

    const pages = document.querySelectorAll(".page");

    pages.forEach(page => {
        page.classList.remove("active");
    });

    const selectedPage = document.getElementById(pageId);

    if (selectedPage) {
        selectedPage.classList.add("active");
    }

    window.scrollTo({
        top: 0,
        behavior: "smooth"
    });
}


// SEAT SELECTION

const seats = document.querySelectorAll(".available-seat");

seats.forEach(seat => {

    seat.addEventListener("click", function () {

        // Remove previous selected seat
        document.querySelectorAll(".selected-seat")
            .forEach(selected => {

                if (selected !== this) {
                    selected.classList.remove("selected-seat");
                    selected.classList.add("available-seat");
                }

            });

        // Select clicked seat
        this.classList.remove("available-seat");
        this.classList.add("selected-seat");

        // Update booking summary
        const seatNumber = this.textContent.trim().split("\n")[0];

        document.getElementById("selectedSeat").textContent =
            seatNumber;

    });

});


// PAYMENT OPTIONS

const paymentOptions =
    document.querySelectorAll(".payment-option");

paymentOptions.forEach(option => {

    option.addEventListener("click", function () {

        paymentOptions.forEach(item => {
            item.classList.remove("active");
        });

        this.classList.add("active");

    });

});


// SEARCH SWAP BUTTON

const swapButton = document.querySelector(".swap");

if (swapButton) {

    swapButton.addEventListener("click", function () {

        alert("From and To locations swapped!");

    });

}


// OFFER BUTTONS

const offerButtons =
    document.querySelectorAll(".offer-card button");

offerButtons.forEach(button => {

    button.addEventListener("click", function () {

        alert("Offer code copied!");

    });

});


// PAGE START

showPage("home");