<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>永乐票务选座</title>
    <meta name="description" content="jquery.seat-charts是一款适合电影票、高铁票的在线选座插件。"/>

    <link rel="stylesheet" type="text/css" href="/ttms_ssm/css/saleTicket.css"/>
</head>

<body>

<div class="container">

    <h2 class="title">永乐票务售票</h2>

    <div class="demo clearfix">

        <!---左边座位列表----->

        <div id="seat_area">

            <div class="front">屏幕</div>

        </div>

        <!---右边选座信息----->

        <div class="booking_area">

            <p>电影：<span>天将雄师</span></p>
            <p>演出厅:
                <select name="" id=" " class="select">
                    <option value="1">1号演出厅</option>
                    <option value="2">2号演出厅</option>
                    <option value="3">3号演出厅</option>
                </select>
            </p>
            <br>
            <p>时间：
                <select name="" id="" class="select">
                    <option value="">14:00</option>
                    <option value="">16:00</option>
                    <option value="">19:30</option>
                </select>
            </p>

            <p>座位：</p>

            <ul id="seats_chose"></ul>

            <p>票数：<span id="tickects_num">0</span></p>

            <p>总价：<b>￥<span id="total_price">0</span></b></p>


            <input type="button" class="btn" value="确定购买"/>


            <div id="legend"></div>

        </div>

    </div>

</div>

<script src="/ttms_ssm/dist/jquery-3.1.1.min.js"></script>

<script type="text/javascript" src="/ttms_ssm/js/jquery.seat-charts.min.js"></script>

<script type="text/javascript">

    var price = 100; //电影票价

    $(document).ready(function () {

        var $cart = $('#seats_chose'), //座位区

                $tickects_num = $('#tickects_num'), //票数

                $total_price = $('#total_price'); //票价总额


        var sc = $('#seat_area').seatCharts({

            map: [//座位结构图 a 代表座位; 下划线 "_" 代表过道

                'cccccccccc',

                'cccccccccc',

                '__________',

                'cccccccccc',

                'cccccccccc',

                'cccccccccc',

                'cccccccccc',

                'cccccccccc',

                'cccccccccc',

                'cccccccccc'

            ],

            naming: {//设置行列等信息

                top: false, //不显示顶部横坐标（行）

                getLabel: function (character, row, column) { //返回座位信息

                    return column;

                }

            },

            legend: {//定义图例

                node: $('#legend'),

                items: [

                    ['c', 'available', '可选座'],

                    ['c', 'unavailable', '已售出']

                ]

            },

            click: function () {

                if (this.status() == 'available') { //若为可选座状态，添加座位

                    $('<li>' + (this.settings.row + 1) + '排' + this.settings.label + '座</li>')

                            .attr('id', 'cart-item-' + this.settings.id)

                            .data('seatId', this.settings.id)

                            .appendTo($cart);


                    $tickects_num.text(sc.find('selected').length + 1); //统计选票数量

                    $total_price.text(getTotalPrice(sc) + price);//计算票价总金额


                    return 'selected';

                } else if (this.status() == 'selected') { //若为选中状态


                    $tickects_num.text(sc.find('selected').length - 1);//更新票数量

                    $total_price.text(getTotalPrice(sc) - price);//更新票价总金额

                    $('#cart-item-' + this.settings.id).remove();//删除已预订座位


                    return 'available';

                } else if (this.status() == 'unavailable') { //若为已售出状态

                    return 'unavailable';

                } else {

                    return this.style();

                }

            }

        });

        //设置已售出的座位

        sc.get(['1_3', '1_4', '4_4', '4_5', '4_6', '4_7', '4_8']).status('unavailable');


    });


    function getTotalPrice(sc) { //计算票价总额

        var total = 0;

        sc.find('selected').each(function () {

            total += price;

        });

        return total;

    }

</script>


</body>

</html>




