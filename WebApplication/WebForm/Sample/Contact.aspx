<%@ Page Title="" Language="C#" MasterPageFile="~/WebForm/MasterPage/Sample.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="WebApplication.WebForm.Sample.Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="contentNavBar" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="containerContent" runat="server">
    <div class="content fill">
        <div class="container">
            <div class="panel wow animated fadeInDown animated" data-wow-delay="0.3s" alt="" data-animation="fadeInDown">
                <div class="col-md-6">
                    <div class="panel-body">
                        <div class="row" style="clear:none">
                            <h5 class="underline">
                                Silkspan Company Limited
                            </h5>
                            <div class="col-md-12">
                                <div class="wow animated flipInX animated" data-wow-delay="0.3s" alt="" data-animation="flipInX">
                                    <div class="inline circle-icon">
                                        <i class="fa fa-user"></i>
                                    </div>
                                    <div class="inline">
                                        <p><span class="text-blue">Support:</span> Natz@silkspan</p>
                                        <p><span class="text-blue">E-mail:</span> <a href="mailto:support@silkspan.local" target="_top">support@silkspan.local</a></p>
                                    </div>
                                </div>
                                <div class="wow animated flipInX animated" data-wow-delay="0.3s" alt="" data-animation="flipInX">
                                    <div class="inline circle-icon">
                                        <i class="fa fa-star"></i>
                                    </div>
                                    <div class="inline">
                                        <p>555 SSP Tower, 27th Floor</p>
                                        <p>Sukhumvit 63 Road Klongton Nua, Vadhana, Bangkok 10110, Thailand</p>
                                    </div>
                                </div>
                                <div class="wow animated flipInX animated" data-wow-delay="0.3s" alt="" data-animation="flipInX">
                                    <div class="inline circle-icon">
                                        <i class="fa fa-fax"></i>
                                    </div>
                                    <div class="inline">
                                        <p><span class="text-blue">Phone:</span> 02-392-5500 (Call Center)</p>
                                        <p><span class="text-blue">Fax:</span> 02-392-6090 (Office)</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 panel">
                    <div class="panel-body">
                        <div class="row" style="clear:none"> 
                            <h5 class="underline">
                                Send a message
                            </h5>
                            <div class="col-md-12">
                                <div class="row">
                                    <div class="col-md-12">
                                        Lorem ipsum nulla per pharetra habitant egestas faucibus eget senectus amet, augue rutrum ac id libero amet felis massa euismod, congue diam egestas faucibus venenatis.</p>
                                     </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-6">
                                        <input id="Text2" class="form-control" type="text" placeholder="Name"></input>
                                    </div>
                                    <div class="col-sm-6">
                                        <input id="email2" class="form-control" type="email" placeholder="Email"></input>
                                    </div>
                                </div>
                                <div class="row">
                                     <div class="col-md-12">
                                        <input id="email4" class="form-control" type="email" placeholder="Subject"></input>
                                    </div>
                                </div>
                                <div class="row">
                                     <div class="col-md-12">
                                        <textarea id="Textarea2" class="form-control" placeholder="Message" ></textarea>
                                    </div>
                                </div>
                                <button class="btn btn-custom bg-blue" type="submit">Submit Message</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="jumbotron">
        <div id="map_canvas" style="height:400px;" class="wow animated fadeInDown animated" data-wow-delay="0.3s" alt="" data-animation="fadeInDown">
        </div>
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="contentScript" runat="server">
    <script src="https://maps.googleapis.com/maps/api/js"></script>
    <script>
        $(window).load(function () {
            var map_position = new google.maps.LatLng(13.738979, 100.588532);
            var marker_position = new google.maps.LatLng(13.738979, 100.588532);
            var map;
            var marker;
            //var image = 'images/icon/map-marker.png';
            var mapOptions = {
                zoom: 13,
                scrollwheel: false,
                mapTypeId: google.maps.MapTypeId.ROADMAP,
                streetViewControl: true,
                center: map_position
            };
            map = new google.maps.Map(document.getElementById('map_canvas'), mapOptions);
            marker = new google.maps.Marker({
                map: map,
                animation: google.maps.Animation.DROP,
                position: marker_position
                //icon: image
            });
            google.maps.event.addListener(marker, 'click', toggleBounce);
            function toggleBounce() {
                if (marker.getAnimation() != null) {
                    marker.setAnimation(null);
                } else {
                    marker.setAnimation(google.maps.Animation.BOUNCE);
                }
            }
        });


        $("#xxx").hover(function () {
            var img = $(this);
            var src = img.attr('src');
            $("#xxx").attr('src', src.replace('.png', '-active.png'))
        });
    </script>
</asp:Content>

