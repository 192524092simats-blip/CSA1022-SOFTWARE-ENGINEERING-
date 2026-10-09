# Software Engineering Lab

## Experiment 2 – Bus Ticket Booking System

### Aim
To design a prototype for an E-Commerce Website using Figma.
### Tool Used
Figma

### Figma Prototype
[Click Here to View Bus Ticket Booking Prototype](PASTE_YOUR_FIGMA_LINK_HERE)

### index.html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PurpleCart - E-Commerce</title>
    <link rel="stylesheet" href="style.css">
</head>

<body>

<!-- ================= NAVBAR ================= -->

<header class="navbar">

    <div class="logo" onclick="showPage('home')">
        🛍️ <span>PurpleCart</span>
    </div>

    <nav>
        <a onclick="showPage('home')">Home</a>
        <a onclick="showPage('shop')">Shop</a>
        <a onclick="showPage('categories')">Categories</a>
        <a onclick="showPage('deals')">Deals</a>
        <a onclick="showPage('orders')">Orders</a>
        <a onclick="showPage('wishlist')">Wishlist</a>
        <a onclick="showPage('help')">Help</a>
    </nav>

    <div class="nav-actions">

        <div class="search">
            🔍
            <input type="text" placeholder="Search products..." id="searchInput">
        </div>

        <span onclick="showPage('notifications')" class="nav-icon">🔔</span>

        <span onclick="showPage('cart')" class="nav-icon">
            🛒 <b id="cartCount">0</b>
        </span>

        <span onclick="showPage('profile')" class="nav-icon">👤</span>

        <button class="login-btn" onclick="showPage('profile')">
            Login
        </button>

    </div>

</header>


<main>

<!-- ================= HOME ================= -->

<section id="home" class="page active">

    <div class="hero">

        <div class="hero-text">

            <span class="badge">NEW COLLECTION</span>

            <h1>
                Discover Products
                <span>You'll Love</span>
            </h1>

            <p>
                Shop smarter. Shop faster.
                Shop with PurpleCart.
            </p>

            <div class="hero-buttons">

                <button class="primary-btn"
                        onclick="showPage('shop')">
                    Shop Now →
                </button>

                <button class="secondary-btn"
                        onclick="showPage('deals')">
                    Explore Deals
                </button>

            </div>

        </div>

        <div class="hero-image">
            <div class="shopping-art">
                🛍️
                <div class="floating-card card1">🎧</div>
                <div class="floating-card card2">⌚</div>
                <div class="floating-card card3">👟</div>
            </div>
        </div>

    </div>


    <!-- CATEGORIES -->

    <section class="section">

        <div class="section-heading">
            <div>
                <h2>Shop by Category</h2>
                <p>Find everything you need in one place</p>
            </div>

            <button onclick="showPage('categories')">
                View All →
            </button>
        </div>

        <div class="category-grid">

            <div class="category-card"
                 onclick="showPage('shop')">
                <div>💻</div>
                <h3>Electronics</h3>
                <p>250+ Products</p>
            </div>

            <div class="category-card"
                 onclick="showPage('shop')">
                <div>👕</div>
                <h3>Fashion</h3>
                <p>500+ Products</p>
            </div>

            <div class="category-card"
                 onclick="showPage('shop')">
                <div>💄</div>
                <h3>Beauty</h3>
                <p>180+ Products</p>
            </div>

            <div class="category-card"
                 onclick="showPage('shop')">
                <div>🏠</div>
                <h3>Home & Kitchen</h3>
                <p>320+ Products</p>
            </div>

            <div class="category-card"
                 onclick="showPage('shop')">
                <div>⚽</div>
                <h3>Sports</h3>
                <p>140+ Products</p>
            </div>

            <div class="category-card"
                 onclick="showPage('shop')">
                <div>🎒</div>
                <h3>Accessories</h3>
                <p>200+ Products</p>
            </div>

        </div>

    </section>


    <!-- TRENDING PRODUCTS -->

    <section class="section lavender-section">

        <div class="section-heading">
            <div>
                <h2>Trending Products</h2>
                <p>Popular products customers love</p>
            </div>

            <button onclick="showPage('shop')">
                View All →
            </button>
        </div>

        <div class="product-grid">

            <div class="product-card">

                <div class="product-image">
                    🎧
                    <span class="discount">25% OFF</span>
                    <button class="heart"
                            onclick="addWishlist('Wireless Headphones')">
                        ♡
                    </button>
                </div>

                <div class="product-info">

                    <small>SoundMax</small>

                    <h3>Wireless Headphones</h3>

                    <div class="rating">
                        ★★★★★
                        <span>(128)</span>
                    </div>

                    <div class="price">
                        <del>₹4,999</del>
                        <strong>₹3,749</strong>
                    </div>

                    <button class="add-btn"
                            onclick="addCart('Wireless Headphones',3749)">
                        Add to Cart
                    </button>

                </div>

            </div>


            <div class="product-card">

                <div class="product-image">
                    ⌚
                    <span class="discount">30% OFF</span>
                    <button class="heart"
                            onclick="addWishlist('Smart Watch')">
                        ♡
                    </button>
                </div>

                <div class="product-info">

                    <small>TechFit</small>

                    <h3>Smart Watch Pro</h3>

                    <div class="rating">
                        ★★★★★
                        <span>(96)</span>
                    </div>

                    <div class="price">
                        <del>₹5,999</del>
                        <strong>₹4,199</strong>
                    </div>

                    <button class="add-btn"
                            onclick="addCart('Smart Watch Pro',4199)">
                        Add to Cart
                    </button>

                </div>

            </div>


            <div class="product-card">

                <div class="product-image">
                    👟
                    <span class="discount">20% OFF</span>
                    <button class="heart"
                            onclick="addWishlist('Running Shoes')">
                        ♡
                    </button>
                </div>

                <div class="product-info">

                    <small>UrbanStep</small>

                    <h3>Premium Running Shoes</h3>

                    <div class="rating">
                        ★★★★☆
                        <span>(74)</span>
                    </div>

                    <div class="price">
                        <del>₹3,999</del>
                        <strong>₹3,199</strong>
                    </div>

                    <button class="add-btn"
                            onclick="addCart('Running Shoes',3199)">
                        Add to Cart
                    </button>

                </div>

            </div>


            <div class="product-card">

                <div class="product-image">
                    📷
                    <span class="discount">15% OFF</span>
                    <button class="heart"
                            onclick="addWishlist('Digital Camera')">
                        ♡
                    </button>
                </div>

                <div class="product-info">

                    <small>PixelPro</small>

                    <h3>Digital Camera</h3>

                    <div class="rating">
                        ★★★★★
                        <span>(61)</span>
                    </div>

                    <div class="price">
                        <del>₹39,999</del>
                        <strong>₹33,999</strong>
                    </div>

                    <button class="add-btn"
                            onclick="addCart('Digital Camera',33999)">
                        Add to Cart
                    </button>

                </div>

            </div>

        </div>

    </section>

</section>


<!-- ================= SHOP ================= -->

<section id="shop" class="page">

    <div class="page-header">

        <div>
            <span class="small-label">PURPLECART STORE</span>
            <h1>All Products</h1>
            <p>Discover products selected just for you.</p>
        </div>

        <select id="sortSelect">
            <option>Recommended</option>
            <option>Price Low to High</option>
            <option>Price High to Low</option>
            <option>Newest</option>
        </select>

    </div>


    <div class="shop-layout">

        <aside class="filters">

            <h3>Filters</h3>

            <hr>

            <h4>Categories</h4>

            <label><input type="checkbox"> Electronics</label>
            <label><input type="checkbox"> Fashion</label>
            <label><input type="checkbox"> Beauty</label>
            <label><input type="checkbox"> Home</label>

            <h4>Price Range</h4>

            <input type="range" min="500" max="50000">

            <h4>Rating</h4>

            <label><input type="checkbox"> ★★★★★</label>
            <label><input type="checkbox"> ★★★★ & above</label>
            <label><input type="checkbox"> ★★★ & above</label>

            <h4>Discount</h4>

            <label><input type="checkbox"> 10% or more</label>
            <label><input type="checkbox"> 20% or more</label>
            <label><input type="checkbox"> 50% or more</label>

            <h4>Availability</h4>

            <label><input type="checkbox"> In Stock</label>

        </aside>


        <div class="shop-products">

            <div class="result-bar">
                <span>Showing 1–8 of 128 products</span>
                <span>Recommended</span>
            </div>

            <div class="product-grid">

                <div class="product-card" onclick="showPage('product')">
                    <div class="product-image">🎧
                        <span class="discount">25% OFF</span>
                        <button class="heart">♡</button>
                    </div>

                    <div class="product-info">
                        <small>SoundMax</small>
                        <h3>Wireless Headphones</h3>
                        <div class="rating">★★★★★ <span>(128)</span></div>
                        <div class="price">
                            <del>₹4,999</del>
                            <strong>₹3,749</strong>
                        </div>
                        <button class="add-btn"
                                onclick="event.stopPropagation();addCart('Wireless Headphones',3749)">
                            Add to Cart
                        </button>
                    </div>
                </div>


                <div class="product-card">

                    <div class="product-image">⌚
                        <span class="discount">30% OFF</span>
                        <button class="heart">♡</button>
                    </div>

                    <div class="product-info">
                        <small>TechFit</small>
                        <h3>Smart Watch Pro</h3>
                        <div class="rating">★★★★★ <span>(96)</span></div>

                        <div class="price">
                            <del>₹5,999</del>
                            <strong>₹4,199</strong>
                        </div>

                        <button class="add-btn"
                                onclick="addCart('Smart Watch Pro',4199)">
                            Add to Cart
                        </button>
                    </div>

                </div>


                <div class="product-card">

                    <div class="product-image">👟
                        <span class="discount">20% OFF</span>
                        <button class="heart">♡</button>
                    </div>

                    <div class="product-info">
                        <small>UrbanStep</small>
                        <h3>Premium Running Shoes</h3>
                        <div class="rating">★★★★☆ <span>(74)</span></div>

                        <div class="price">
                            <del>₹3,999</del>
                            <strong>₹3,199</strong>
                        </div>

                        <button class="add-btn"
                                onclick="addCart('Running Shoes',3199)">
                            Add to Cart
                        </button>
                    </div>

                </div>


                <div class="product-card">

                    <div class="product-image">📷
                        <span class="discount">15% OFF</span>
                        <button class="heart">♡</button>
                    </div>

                    <div class="product-info">
                        <small>PixelPro</small>
                        <h3>Digital Camera</h3>
                        <div class="rating">★★★★★ <span>(61)</span></div>

                        <div class="price">
                            <del>₹39,999</del>
                            <strong>₹33,999</strong>
                        </div>

                        <button class="add-btn"
                                onclick="addCart('Digital Camera',33999)">
                            Add to Cart
                        </button>
                    </div>

                </div>


                <div class="product-card">

                    <div class="product-image">💻
                        <span class="discount">18% OFF</span>
                        <button class="heart">♡</button>
                    </div>

                    <div class="product-info">
                        <small>NovaTech</small>
                        <h3>Ultra Laptop 14</h3>
                        <div class="rating">★★★★★ <span>(142)</span></div>

                        <div class="price">
                            <del>₹79,999</del>
                            <strong>₹65,599</strong>
                        </div>

                        <button class="add-btn"
                                onclick="addCart('Ultra Laptop 14',65599)">
                            Add to Cart
                        </button>
                    </div>

                </div>


                <div class="product-card">

                    <div class="product-image">👕
                        <span class="discount">40% OFF</span>
                        <button class="heart">♡</button>
                    </div>

                    <div class="product-info">
                        <small>UrbanWear</small>
                        <h3>Premium Cotton T-Shirt</h3>
                        <div class="rating">★★★★☆ <span>(89)</span></div>

                        <div class="price">
                            <del>₹1,999</del>
                            <strong>₹1,199</strong>
                        </div>

                        <button class="add-btn"
                                onclick="addCart('Premium T-Shirt',1199)">
                            Add to Cart
                        </button>
                    </div>

                </div>


                <div class="product-card">

                    <div class="product-image">🎒
                        <span class="discount">35% OFF</span>
                        <button class="heart">♡</button>
                    </div>

                    <div class="product-info">
                        <small>TravelPro</small>
                        <h3>Premium Travel Backpack</h3>
                        <div class="rating">★★★★★ <span>(112)</span></div>

                        <div class="price">
                            <del>₹3,499</del>
                            <strong>₹2,274</strong>
                        </div>

                        <button class="add-btn"
                                onclick="addCart('Travel Backpack',2274)">
                            Add to Cart
                        </button>
                    </div>

                </div>


                <div class="product-card">

                    <div class="product-image">🧴
                        <span class="discount">25% OFF</span>
                        <button class="heart">♡</button>
                    </div>

                    <div class="product-info">
                        <small>GlowCare</small>
                        <h3>Beauty Care Kit</h3>
                        <div class="rating">★★★★☆ <span>(53)</span></div>

                        <div class="price">
                            <del>₹2,499</del>
                            <strong>₹1,874</strong>
                        </div>

                        <button class="add-btn"
                                onclick="addCart('Beauty Care Kit',1874)">
                            Add to Cart
                        </button>
                    </div>

                </div>

            </div>

        </div>

    </div>

</section>


<!-- ================= PRODUCT DETAILS ================= -->

<section id="product" class="page">

    <div class="product-details">

        <div class="product-gallery">

            <div class="main-product-image">
                🎧
            </div>

            <div class="thumbnails">
                <div>🎧</div>
                <div>📦</div>
                <div>🎵</div>
                <div>🔊</div>
            </div>

        </div>


        <div class="product-description">

            <span class="small-label">SOUNDMAX</span>

            <h1>Premium Wireless Headphones</h1>

            <div class="rating large">
                ★★★★★
                <span>4.8 (128 Reviews)</span>
            </div>

            <hr>

            <div class="big-price">

                <del>₹4,999</del>

                <strong>₹3,749</strong>

                <span>25% OFF</span>

            </div>

            <p>
                Experience immersive sound with premium wireless
                headphones designed for music lovers.
            </p>


            <h3>Color</h3>

            <div class="colors">
                <button>Black</button>
                <button>Purple</button>
                <button>White</button>
            </div>


            <h3>Quantity</h3>

            <div class="quantity">

                <button onclick="changeQty(-1)">−</button>

                <span id="qty">1</span>

                <button onclick="changeQty(1)">+</button>

            </div>


            <p class="stock">
                ● In Stock — Only 12 left
            </p>


            <div class="product-buttons">

                <button class="primary-btn"
                        onclick="addCart('Premium Wireless Headphones',3749)">
                    Add to Cart
                </button>

                <button class="secondary-btn"
                        onclick="showPage('checkout')">
                    Buy Now
                </button>

            </div>


            <div class="features">

                <div>
                    🚚
                    <b>Free Delivery</b>
                    <small>On orders above ₹499</small>
                </div>

                <div>
                    ↩️
                    <b>Easy Returns</b>
                    <small>7-day return policy</small>
                </div>

                <div>
                    🔒
                    <b>Secure Payment</b>
                    <small>100% secure checkout</small>
                </div>

                <div>
                    🛡️
                    <b>Warranty</b>
                    <small>1 year warranty</small>
                </div>

            </div>

        </div>

    </div>


    <div class="details-tabs">

        <h2>Product Description</h2>

        <p>
            Premium wireless headphones with high-quality audio,
            active noise cancellation, long battery life and
            comfortable ear cushions.
        </p>

        <h2>Specifications</h2>

        <table>

            <tr>
                <td>Brand</td>
                <td>SoundMax</td>
            </tr>

            <tr>
                <td>Battery</td>
                <td>40 Hours</td>
            </tr>

            <tr>
                <td>Connectivity</td>
                <td>Bluetooth 5.3</td>
            </tr>

            <tr>
                <td>Warranty</td>
                <td>1 Year</td>
            </tr>

        </table>

        <h2>Customer Reviews</h2>

        <div class="review">
            <b>★★★★★ Rahul</b>
            <p>Excellent sound quality and comfortable design.</p>
        </div>

    </div>

</section>


<!-- ================= CART ================= -->

<section id="cart" class="page">

    <div class="page-header">

        <div>
            <span class="small-label">YOUR SHOPPING BAG</span>
            <h1>Shopping Cart</h1>
        </div>

    </div>


    <div class="cart-layout">

        <div class="cart-items" id="cartItems">

            <div class="cart-item">

                <div class="cart-product-image">
                    🎧
                </div>

                <div class="cart-info">

                    <h3>Wireless Headphones</h3>

                    <p>SoundMax</p>

                    <strong>₹3,749</strong>

                    <div class="cart-quantity">
                        <button>−</button>
                        <span>1</span>
                        <button>+</button>
                    </div>

                    <button class="remove-btn">
                        Remove
                    </button>

                </div>

            </div>

        </div>


        <div class="order-summary">

            <h2>Order Summary</h2>

            <div>
                <span>Subtotal</span>
                <b id="subtotal">₹0</b>
            </div>

            <div>
                <span>Discount</span>
                <b class="green">− ₹500</b>
            </div>

            <div>
                <span>Delivery Fee</span>
                <b>₹40</b>
            </div>

            <div>
                <span>Coupon</span>
                <b class="green">− ₹100</b>
            </div>

            <hr>

            <div class="total">
                <span>Total</span>
                <strong id="total">₹0</strong>
            </div>

            <input
                type="text"
                placeholder="Enter coupon code"
                id="coupon">

            <button class="coupon-btn"
                    onclick="applyCoupon()">
                Apply Coupon
            </button>

            <button class="primary-btn full"
                    onclick="showPage('checkout')">
                Proceed to Checkout →
            </button>

        </div>

    </div>

</section>


<!-- ================= CHECKOUT ================= -->

<section id="checkout" class="page">

    <div class="checkout-steps">

        <span class="active-step">1 Address</span>
        <span>→</span>
        <span>2 Delivery</span>
        <span>→</span>
        <span>3 Payment</span>
        <span>→</span>
        <span>4 Confirmation</span>

    </div>


    <div class="checkout-layout">

        <div>

            <div class="checkout-card">

                <div class="card-title">

                    <h2>Delivery Address</h2>

                    <button class="small-btn">
                        + Add New Address
                    </button>

                </div>


                <div class="address-grid">

                    <div class="address active-address">

                        <span class="address-tag">
                            HOME
                        </span>

                        <h3>Logeshwari D</h3>

                        <p>
                            12, Main Road,<br>
                            Chennai, Tamil Nadu<br>
                            600001
                        </p>

                        <button>Edit</button>

                    </div>


                    <div class="address">

                        <span class="address-tag">
                            OFFICE
                        </span>

                        <h3>PurpleCart Office</h3>

                        <p>
                            25, Business Street,<br>
                            Chennai, Tamil Nadu<br>
                            600018
                        </p>

                        <button>Edit</button>

                    </div>

                </div>

            </div>


            <div class="checkout-card">

                <h2>Delivery Options</h2>

                <label class="delivery-option">

                    <input type="radio" name="delivery" checked>

                    <div>
                        <b>Standard Delivery</b>
                        <p>Expected by 14 October</p>
                    </div>

                    <strong>FREE</strong>

                </label>


                <label class="delivery-option">

                    <input type="radio" name="delivery">

                    <div>
                        <b>Express Delivery</b>
                        <p>Expected by 12 October</p>
                    </div>

                    <strong>₹99</strong>

                </label>

            </div>

            <button class="primary-btn"
                    onclick="showPage('payment')">
                Continue to Payment →
            </button>

        </div>


        <div class="order-summary">

            <h2>Order Items</h2>

            <div class="mini-product">
                <span>🎧</span>
                <div>
                    <b>Wireless Headphones</b>
                    <p>Qty: 1</p>
                </div>
                <strong>₹3,749</strong>
            </div>

            <hr>

            <div>
                <span>Subtotal</span>
                <b>₹3,749</b>
            </div>

            <div>
                <span>Delivery</span>
                <b class="green">FREE</b>
            </div>

            <div class="total">
                <span>Total</span>
                <strong>₹3,749</strong>
            </div>

        </div>

    </div>

</section>


<!-- ================= PAYMENT ================= -->

<section id="payment" class="page">

    <div class="page-header">

        <div>
            <span class="small-label">SECURE CHECKOUT</span>
            <h1>Payment</h1>
        </div>

        <div class="secure">
            🔒 Secure Payment
        </div>

    </div>


    <div class="payment-layout">

        <div class="payment-card">

            <div class="payment-tabs">

                <button class="active"
                        onclick="selectPayment(this)">
                    UPI
                </button>

                <button onclick="selectPayment(this)">
                    Credit/Debit Card
                </button>

                <button onclick="selectPayment(this)">
                    Net Banking
                </button>

                <button onclick="selectPayment(this)">
                    Wallet
                </button>

                <button onclick="selectPayment(this)">
                    Cash on Delivery
                </button>

            </div>


            <div class="payment-form">

                <h2>Card Details</h2>

                <label>Card Number</label>

                <input
                    type="text"
                    placeholder="1234 5678 9012 3456">


                <label>Cardholder Name</label>

                <input
                    type="text"
                    placeholder="Name on card">


                <div class="form-row">

                    <div>
                        <label>Expiry Date</label>
                        <input placeholder="MM / YY">
                    </div>

                    <div>
                        <label>CVV</label>
                        <input placeholder="•••">
                    </div>

                </div>


                <button class="primary-btn full"
                        onclick="placeOrder()">
                    🔒 Pay Securely ₹3,749
                </button>

            </div>

        </div>


        <div class="order-summary">

            <h2>Order Summary</h2>

            <div>
                <span>Product Total</span>
                <b>₹3,749</b>
            </div>

            <div>
                <span>Discount</span>
                <b class="green">− ₹500</b>
            </div>

            <div>
                <span>Delivery</span>
                <b>FREE</b>
            </div>

            <hr>

            <div class="total">
                <span>Final Total</span>
                <strong>₹3,249</strong>
            </div>

        </div>

    </div>

</section>


<!-- ================= CONFIRMATION ================= -->

<section id="confirmation" class="page">

    <div class="confirmation">

        <div class="success-icon">
            ✓
        </div>

        <h1>Order Placed Successfully!</h1>

        <p>
            Thank you for shopping with PurpleCart.
        </p>

        <div class="order-confirm-card">

            <div>
                <span>Order ID</span>
                <strong>PC20261009001</strong>
            </div>

            <div>
                <span>Payment</span>
                <strong>Card •••• 3456</strong>
            </div>

            <div>
                <span>Total Amount</span>
                <strong>₹3,249</strong>
            </div>

            <div>
                <span>Estimated Delivery</span>
                <strong>14 October 2026</strong>
            </div>

            <div>
                <span>Delivery Address</span>
                <strong>Chennai, Tamil Nadu</strong>
            </div>

        </div>


        <div class="confirmation-buttons">

            <button class="primary-btn"
                    onclick="showPage('orders')">
                Track Order
            </button>

            <button class="secondary-btn"
                    onclick="showPage('orders')">
                View My Orders
            </button>

            <button class="secondary-btn"
                    onclick="showPage('home')">
                Continue Shopping
            </button>

        </div>

    </div>

</section>


<!-- ================= ORDERS ================= -->

<section id="orders" class="page">

    <div class="page-header">

        <div>
            <span class="small-label">PURCHASE HISTORY</span>
            <h1>My Orders</h1>
        </div>

    </div>


    <div class="order-tabs">

        <button class="active">All</button>
        <button>Processing</button>
        <button>Shipped</button>
        <button>Delivered</button>
        <button>Cancelled</button>

    </div>


    <div class="order-card">

        <div class="order-image">
            🎧
        </div>

        <div class="order-info">

            <span class="status shipped">
                ● Shipped
            </span>

            <h2>Wireless Headphones</h2>

            <p>Order ID: PC20261009001</p>

            <p>Ordered on: 09 October 2026</p>

            <strong>₹3,749</strong>

        </div>

        <div class="delivery">

            <span>Expected Delivery</span>

            <strong>14 October 2026</strong>

            <div class="progress">
                <span></span>
            </div>

            <small>Package is on the way</small>

        </div>

        <div class="order-buttons">

            <button onclick="showPage('tracking')">
                Track Order
            </button>

            <button>View Details</button>

            <button>Buy Again</button>

        </div>

    </div>

</section>


<!-- ================= WISHLIST ================= -->

<section id="wishlist" class="page">

    <div class="page-header">

        <div>
            <span class="small-label">YOUR FAVORITES</span>
            <h1>Wishlist</h1>
            <p>Products you've saved for later.</p>
        </div>

    </div>


    <div class="product-grid">

        <div class="product-card">

            <div class="product-image">
                🎧
                <span class="discount">25% OFF</span>
                <button class="heart">♥</button>
            </div>

            <div class="product-info">
                <small>SoundMax</small>
                <h3>Wireless Headphones</h3>
                <div class="rating">★★★★★ <span>(128)</span></div>

                <div class="price">
                    <strong>₹3,749</strong>
                </div>

                <span class="stock">
                    In Stock
                </span>

                <button class="add-btn"
                        onclick="addCart('Wireless Headphones',3749)">
                    Add to Cart
                </button>

            </div>

        </div>


        <div class="product-card">

            <div class="product-image">
                ⌚
                <span class="discount">30% OFF</span>
                <button class="heart">♥</button>
            </div>

            <div class="product-info">
                <small>TechFit</small>
                <h3>Smart Watch Pro</h3>
                <div class="rating">★★★★★ <span>(96)</span></div>

                <div class="price">
                    <strong>₹4,199</strong>
                </div>

                <span class="stock">
                    In Stock
                </span>

                <button class="add-btn"
                        onclick="addCart('Smart Watch Pro',4199)">
                    Add to Cart
                </button>

            </div>

        </div>

    </div>

</section>


<!-- ================= DEALS ================= -->

<section id="deals" class="page">

    <div class="deals-hero">

        <div>
            <span>LIMITED TIME</span>
            <h1>Flash Sale</h1>
            <p>Grab amazing products at unbeatable prices.</p>
        </div>

        <div class="countdown">
            <div>02</div>
            :
            <div>45</div>
            :
            <div>18</div>
        </div>

    </div>


    <section class="section">

        <div class="section-heading">

            <div>
                <h2>Today's Deals</h2>
                <p>Exclusive offers available today</p>
            </div>

        </div>


        <div class="deal-grid">

            <div class="deal-banner">
                <span>ELECTRONICS</span>
                <h2>Up to 50% OFF</h2>
                <p>Upgrade your gadgets today.</p>
                <button onclick="showPage('shop')">
                    Shop Now
                </button>
            </div>

            <div class="deal-banner">
                <span>FASHION</span>
                <h2>Flat 40% OFF</h2>
                <p>Refresh your wardrobe.</p>
                <button onclick="showPage('shop')">
                    Shop Now
                </button>
            </div>

            <div class="deal-banner">
                <span>HOME</span>
                <h2>Extra ₹500 OFF</h2>
                <p>Make your home beautiful.</p>
                <button onclick="showPage('shop')">
                    Shop Now
                </button>
            </div>

        </div>

    </section>

</section>


<!-- ================= PROFILE ================= -->

<section id="profile" class="page">

    <div class="profile-layout">

        <aside class="profile-sidebar">

            <div class="profile-photo">
                👤
            </div>

            <h2>Logeshwari D</h2>

            <p>customer@purplecart.com</p>

            <hr>

            <button onclick="showPage('orders')">
                📦 My Orders
            </button>

            <button onclick="showPage('wishlist')">
                ♡ Wishlist
            </button>

            <button>📍 Saved Addresses</button>

            <button>💳 Payment Methods</button>

            <button>🔔 Notifications</button>

            <button>⚙️ Account Settings</button>

            <button>❓ Help & Support</button>

            <button class="logout">
                🚪 Logout
            </button>

        </aside>


        <div class="profile-content">

            <span class="small-label">ACCOUNT</span>

            <h1>Profile Settings</h1>

            <div class="profile-card">

                <h2>Personal Information</h2>

                <div class="form-row">

                    <div>
                        <label>Full Name</label>
                        <input value="Logeshwari D">
                    </div>

                    <div>
                        <label>Email</label>
                        <input value="customer@purplecart.com">
                    </div>

                </div>


                <div class="form-row">

                    <div>
                        <label>Mobile Number</label>
                        <input value="+91 98765 43210">
                    </div>

                    <div>
                        <label>Date of Birth</label>
                        <input value="01 January 2005">
                    </div>

                </div>

                <button class="primary-btn">
                    Save Changes
                </button>

            </div>

        </div>

    </div>

</section>


<!-- ================= CATEGORIES ================= -->

<section id="categories" class="page">

    <div class="page-header">

        <div>
            <span class="small-label">EXPLORE</span>
            <h1>Categories</h1>
            <p>Shop from our wide range of categories.</p>
        </div>

    </div>

    <div class="category-grid large-categories">

        <div class="category-card">💻<h3>Electronics</h3></div>
        <div class="category-card">👕<h3>Fashion</h3></div>
        <div class="category-card">💄<h3>Beauty</h3></div>
        <div class="category-card">🏠<h3>Home & Kitchen</h3></div>
        <div class="category-card">⚽<h3>Sports</h3></div>
        <div class="category-card">🎒<h3>Accessories</h3></div>

    </div>

</section>


<!-- ================= TRACKING ================= -->

<section id="tracking" class="page">

    <div class="page-header">

        <div>
            <span class="small-label">DELIVERY</span>
            <h1>Track Your Order</h1>
            <p>Order PC20261009001</p>
        </div>

        <span class="status shipped">● On the way</span>

    </div>


    <div class="tracking-layout">

        <div class="tracking-map">

            <div class="map-route">

                <div class="location start">
                    <span>●</span>
                    <b>Warehouse</b>
                </div>

                <div class="moving-package">
                    🚚
                </div>

                <div class="location end">
                    <span>●</span>
                    <b>Chennai</b>
                </div>

            </div>

        </div>


        <div class="tracking-card">

            <h2>Delivery Status</h2>

            <div class="tracking-step completed">
                <span>✓</span>
                <div>
                    <b>Order Confirmed</b>
                    <p>09 Oct, 10:20 AM</p>
                </div>
            </div>

            <div class="tracking-step completed">
                <span>✓</span>
                <div>
                    <b>Order Shipped</b>
                    <p>10 Oct, 08:30 AM</p>
                </div>
            </div>

            <div class="tracking-step current">
                <span>●</span>
                <div>
                    <b>Out for Delivery</b>
                    <p>Expected today</p>
                </div>
            </div>

            <div class="tracking-step">
                <span>○</span>
                <div>
                    <b>Delivered</b>
                </div>
            </div>

        </div>

    </div>

</section>


<!-- ================= NOTIFICATIONS ================= -->

<section id="notifications" class="page">

    <div class="page-header">

        <div>
            <span class="small-label">ACCOUNT</span>
            <h1>Notifications</h1>
        </div>

    </div>

    <div class="notification-list">

        <div class="notification">
            🎉
            <div>
                <b>Special Offer Available</b>
                <p>Get extra 15% off on selected electronics.</p>
            </div>
        </div>

        <div class="notification">
            🚚
            <div>
                <b>Your order is on the way</b>
                <p>Order PC20261009001 has been shipped.</p>
            </div>
        </div>

        <div class="notification">
            ❤️
            <div>
                <b>Wishlist Price Drop</b>
                <p>A product in your wishlist is now cheaper.</p>
            </div>
        </div>

    </div>

</section>


<!-- ================= HELP ================= -->

<section id="help" class="page">

    <div class="help-center">

        <span class="small-label">SUPPORT</span>

        <h1>How can we help?</h1>

        <div class="help-search">
            🔍
            <input placeholder="Search help articles...">
        </div>


        <div class="help-grid">

            <div>
                📦
                <h3>Orders</h3>
                <p>Track, cancel or manage orders.</p>
            </div>

            <div>
                💳
                <h3>Payments</h3>
                <p>Payment and refund support.</p>
            </div>

            <div>
                🚚
                <h3>Delivery</h3>
                <p>Shipping and delivery questions.</p>
            </div>

            <div>
                ↩️
                <h3>Returns</h3>
                <p>Learn about our return policy.</p>
            </div>

        </div>

    </div>

</section>

</main>


<footer>

    <div class="footer-logo">
        🛍️ PurpleCart
    </div>

    <p>
        Shop smarter. Shop faster. Shop with PurpleCart.
    </p>

    <div>
        Home &nbsp; | &nbsp;
        Shop &nbsp; | &nbsp;
        Deals &nbsp; | &nbsp;
        Help
    </div>

    <p class="copyright">
        © 2026 PurpleCart. All Rights Reserved.
    </p>

</footer>


<script src="script.js"></script>

</body>
</html>

### Result
The Bus Ticket Booking System prototype was successfully designed using Figma.
for this i want source code 
like this for ex 3 as e commece
