<%@ Page Title="" Language="C#" MasterPageFile="~/WebForm/MasterPage/Sample.Master" AutoEventWireup="true" CodeBehind="Shop.aspx.cs" Inherits="WebApplication.WebForm.Sample.Shop" %>

<asp:Content ID="Content1" ContentPlaceHolderID="contentNavBar" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="containerContent" runat="server">
    <div class="content fill">
        <div class="container"> 
            <div class="panel">
                <div class="panel-body col-md-3">
                    <div class="row" style="clear:none">
                        <div class="col-md-12 sidebar">
                            <h3>
                                Categories
                            </h3>
                            <ul>
                                <li class="">
                                    <a title="View all posts filed under Business" href="#">
                                        Business
                                    </a>
                                </li>
                                <li class="">
                                    <a title="View all posts filed under Design" href="#">
                                        Design
                                    </a>
                                </li>
                                <li class="">
                                    <a title="View all posts filed under Image" href="#">
                                        Image
                                    </a>
                                </li>
                                <li class="">
                                    <a title="View all posts filed under Photoshop" href="#">
                                        Photoshop
                                    </a>
                                </li>
                                <li class="">
                                    <a title="View all posts filed under Uncategorized" href="#">
                                        Uncategorized
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="panel">
                <div class="panel-body col-md-9">
                    <div class="row" style="clear:none">
                        <div class="col-md-3">
                            <div class="shop-product">
                                <div class="featured-image wow animated flipInY animated" data-wow-delay="0.3s" alt="" data-animation="flipInY">
                                    <span class="ribbon pre-order">Pre-order</span>
                                    <img src="../../images/picture/poster_2_up-263x341.jpg" />
                                    <div class="product-buttons">
                                        <a class="btn btn-custom bg-asbestos pop" href="#">Add to cart</a>
                                        <a class="btn btn-custom bg-asbestos pop" href="ShopProductDetail.aspx" target="_blank">Details</a>
                                    </div>
                                </div>
                                <div class="shop-product-info wow animated flipInY animated" data-wow-delay="0.3s" data-animation="flipInY">
                                    <h4>Sample Item</h4>
                                    <div class="category">Hoodie</div>
                                    <div class="value">฿72</div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="shop-product">
                                <div class="featured-image wow animated flipInY animated" data-wow-delay="0.3s" alt="" data-animation="flipInY">
                                    <span class="ribbon new">New</span>
                                    <img src="../../images/picture/hoodie_3_front-263x341.jpg" />
                                    <div class="product-buttons">
                                        <a class="btn btn-custom bg-asbestos pop" href="#">Add to cart</a>
                                        <a class="btn btn-custom bg-asbestos pop" href="ShopProductDetail.aspx" target="_blank">Details</a>
                                    </div>
                                </div>
                                <div class="shop-product-info wow animated flipInY animated" data-wow-delay="0.3s" data-animation="flipInY">
                                    <h4>Sample Item</h4>
                                    <div class="category">Hoodie</div>
                                    <div class="value">฿72</div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="shop-product">
                                <div class="featured-image wow animated flipInY animated" data-wow-delay="0.3s" alt="" data-animation="flipInY">
                                    <span class="ribbon new">New</span>
                                    <img src="../../images/picture/hoodie_4_front-263x341.jpg" />
                                    <div class="product-buttons">
                                        <a class="btn btn-custom bg-asbestos pop" href="#">Add to cart</a>
                                        <a class="btn btn-custom bg-asbestos pop" href="ShopProductDetail.aspx" target="_blank">Details</a>
                                    </div>
                                </div>
                                <div class="shop-product-info wow animated flipInY animated" data-wow-delay="0.3s" data-animation="flipInY">
                                    <h4>Sample Item</h4>
                                    <div class="category">Hoodie</div>
                                    <div class="value">฿72</div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="shop-product">
                                <div class="featured-image wow animated flipInY animated" data-wow-delay="0.3s" alt="" data-animation="flipInY">
                                    <span class="ribbon new">New</span>
                                    <img src="../../images/picture/hoodie_5_front-263x341.jpg" />
                                    <div class="product-buttons">
                                        <a class="btn btn-custom bg-asbestos pop" href="#">Add to cart</a>
                                        <a class="btn btn-custom bg-asbestos pop" href="ShopProductDetail.aspx" target="_blank">Details</a>
                                    </div>
                                </div>
                                <div class="shop-product-info wow animated flipInY animated" data-wow-delay="0.3s" data-animation="flipInY">
                                    <h4>Sample Item</h4>
                                    <div class="category">Hoodie</div>
                                    <div class="value">฿72</div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="shop-product">
                                <div class="featured-image wow animated flipInY animated" data-wow-delay="0.3s" alt="" data-animation="flipInY">
                                    <span class="ribbon sale">Sale</span>
                                    <img src="../../images/picture/T_2_front-263x341.jpg" />
                                    <div class="product-buttons">
                                        <a class="btn btn-custom bg-asbestos pop" href="#">Add to cart</a>
                                        <a class="btn btn-custom bg-asbestos pop" href="ShopProductDetail.aspx" target="_blank">Details</a>
                                    </div>
                                </div>
                                <div class="shop-product-info wow animated flipInY animated" data-wow-delay="0.3s" data-animation="flipInY">
                                    <h4>Sample Item</h4>
                                    <div class="category">T-Shirt</div>
                                    <div class="value">฿72</div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="shop-product">
                                <div class="featured-image wow animated flipInY animated" data-wow-delay="0.3s" alt="" data-animation="flipInY">    
                                    <span class="ribbon sale">Sale</span>
                                    <img src="../../images/picture/T_7_front-263x341.jpg" />
                                    <div class="product-buttons">
                                        <a class="btn btn-custom bg-asbestos pop" href="#">Add to cart</a>
                                        <a class="btn btn-custom bg-asbestos pop" href="ShopProductDetail.aspx" target="_blank">Details</a>
                                    </div>
                                </div>
                                <div class="shop-product-info wow animated flipInY animated" data-wow-delay="0.3s" data-animation="flipInY">
                                    <h4>Sample Item</h4>
                                    <div class="category">T-Shirt</div>
                                    <div class="value">฿72</div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="shop-product">
                                <div class="featured-image wow animated flipInY animated" data-wow-delay="0.3s" alt="" data-animation="flipInY">
                                    <span class="ribbon sale">Sale</span>
                                    <img src="../../images/picture/T_5_front-263x341.jpg" />
                                    <div class="product-buttons">
                                        <a class="btn btn-custom bg-asbestos pop" href="#">Add to cart</a>
                                        <a class="btn btn-custom bg-asbestos pop" href="ShopProductDetail.aspx" target="_blank">Details</a>
                                    </div>
                                </div>
                                <div class="shop-product-info wow animated flipInY animated" data-wow-delay="0.3s" data-animation="flipInY">
                                    <h4>Sample Item</h4>
                                    <div class="category">T-Shirt</div>
                                    <div class="value">฿72</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="contentScript" runat="server">
</asp:Content>
