<%@ Page Title="" Language="C#" MasterPageFile="~/WebForm/MasterPage/Sample.Master" AutoEventWireup="true" CodeBehind="ShopProductDetail.aspx.cs" Inherits="WebApplication.WebForm.Sample.ShopProductDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="contentNavBar" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="containerContent" runat="server">
    <div class="content fill">
        <div class="container">
            <div class="col-md-12 panel">
                <div class="panel-body">
                    <div class="row" style="clear:none">
                        <div class="col-md-3 panel text-center">
                            <img src="../../images/picture/poster_2_up-263x341.jpg" class="wow animated flipInY animated" alt="" data-animation="flipInY">
                        </div>
                        <div class="col-md-6 panel">
                            <div class="col-md-12 panel wow animated fadeInDown animated" alt="" data-animation="fadeInDown">
                                <h5 class="underline">Happy Ninja</h3>
                                <div class="panel">
                                    <p class="categories">
                                        <span class="amount">Categories: Clothing, Hoodies.</span>
                                    </p>
                                    <p class="price">
                                        <span class="amount">฿35.00</span>
                                    </p>
                                    <p>
                                        Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.
                                    </p>
                                    <div itemprop="description">
                                        <input id="unit" class="form-control text-center inline" style="width:40px" type="text" placeholder="1" maxlength="2"></input>
                                        <a class="btn btn-custom bg-asbestos pop inline" href="#">Add to cart</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <h5 class="underline wow animated fadeInDown animated" alt="" data-animation="fadeInDown">Reviews for Happy Ninja</h3>
                                <div class="col-md-12 no-padding">
                                    <div class="panel">
                                        <div class="comment wow animated fadeInDown animated" alt="" data-animation="fadeInDown">
                                            <div class="avatar">
                                                <img src="../../images/picture/7a6df00789e50714fcde1b759befcc84.jpeg"></img>
                                            </div>
                                            <div class="comment-text">
                                                <strong itemprop="author">Stuart</strong>
                                                <time datetime="2013-06-07T15:49:53+00:00" itemprop="datePublished">June 7, 2013</time>
                                                <div class="description" itemprop="description">
                                                    <p>This will go great with my Hoodie that I ordered a few weeks ago.</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="comment wow animated fadeInDown animated" alt="" data-animation="fadeInDown">
                                            <div class="avatar">
                                                <img src="../../images/picture/59c82b1d2c60537f900fb191b3cb611b.jpeg"></img>
                                            </div>
                                            <div class="comment-text">
                                                <strong itemprop="author">Maria</strong>
                                                <time datetime="2013-06-07T15:49:53+00:00" itemprop="datePublished">June 7, 2013</time>
                                                <div class="description" itemprop="description">
                                                    <p>Love this shirt! The ninja near and dear to my heart. <3</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-12 no-padding wow animated fadeInDown animated" alt="" data-animation="fadeInDown">
                                    <h5>Add a review</h3>
                                    <div class="row">
                                         <div class="col-md-12">
                                            <input id="email4" class="form-control" type="text" placeholder="Name"></input>
                                        </div>
                                    </div>
                                    <div class="row">
                                         <div class="col-md-12">
                                            <textarea id="Textarea2" class="form-control" placeholder="Message" ></textarea>
                                        </div>
                                    </div>
                                    <button class="btn btn-custom bg-blue pop" type="submit">Submit Message</button>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 panel">
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="contentScript" runat="server">
</asp:Content>
