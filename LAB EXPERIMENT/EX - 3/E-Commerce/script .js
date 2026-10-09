// ================= PAGE NAVIGATION =================

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


// ================= CART =================

let cart = [];

function addCart(productName, price) {

    cart.push({
        name: productName,
        price: price
    });

    updateCartCount();

    alert(productName + " added to cart!");

    showPage("cart");
}


function updateCartCount() {

    const count = document.getElementById("cartCount");

    if (count) {
        count.textContent = cart.length;
    }

    updateCartTotal();
}


function updateCartTotal() {

    const subtotalElement =
        document.getElementById("subtotal");

    const totalElement =
        document.getElementById("total");

    if (!subtotalElement || !totalElement) {
        return;
    }

    let subtotal = 0;

    cart.forEach(item => {
        subtotal += item.price;
    });

    subtotalElement.textContent =
        "₹" + subtotal.toLocaleString("en-IN");

    let total = subtotal;

    if (subtotal > 0) {
        total = subtotal - 600;
    }

    if (total < 0) {
        total = 0;
    }

    totalElement.textContent =
        "₹" + total.toLocaleString("en-IN");
}


// ================= WISHLIST =================

let wishlist = [];

function addWishlist(productName) {

    if (!wishlist.includes(productName)) {

        wishlist.push(productName);

        alert(productName + " added to wishlist!");

    } else {

        alert(productName + " is already in your wishlist!");

    }
}


// ================= PRODUCT QUANTITY =================

let quantity = 1;

function changeQty(value) {

    quantity += value;

    if (quantity < 1) {
        quantity = 1;
    }

    if (quantity > 10) {
        quantity = 10;
    }

    const qtyElement =
        document.getElementById("qty");

    if (qtyElement) {
        qtyElement.textContent = quantity;
    }
}


// ================= COUPON =================

function applyCoupon() {

    const coupon =
        document.getElementById("coupon");

    if (!coupon) {
        return;
    }

    if (coupon.value.toUpperCase() === "PURPLE10") {

        alert(
            "Coupon applied successfully! You saved ₹100."
        );

    } else {

        alert(
            "Invalid coupon. Try PURPLE10."
        );

    }
}


// ================= PAYMENT =================

function selectPayment(button) {

    const buttons =
        document.querySelectorAll(".payment-tabs button");

    buttons.forEach(item => {
        item.classList.remove("active");
    });

    button.classList.add("active");

}


function placeOrder() {

    alert(
        "Payment successful! Your order has been placed."
    );

    showPage("confirmation");
}


// ================= SEARCH =================

const searchInput =
    document.getElementById("searchInput");

if (searchInput) {

    searchInput.addEventListener(
        "keyup",
        function(event) {

            if (event.key === "Enter") {

                showPage("shop");

                alert(
                    "Searching for: " +
                    searchInput.value
                );

            }

        }
    );

}


// ================= SORT =================

const sortSelect =
    document.getElementById("sortSelect");

if (sortSelect) {

    sortSelect.addEventListener(
        "change",
        function() {

            alert(
                "Products sorted by: " +
                this.value
            );

        }
    );

}


// ================= ORDER TABS =================

const orderTabs =
    document.querySelectorAll(".order-tabs button");

orderTabs.forEach(button => {

    button.addEventListener(
        "click",
        function() {

            orderTabs.forEach(item => {
                item.classList.remove("active");
            });

            this.classList.add("active");

        }
    );

});


// ================= PAGE START =================

showPage("home");
updateCartCount();