<%@ page import="com.bo.entity.Book" %>
<%@ page import="java.util.List" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/9/27
  Time: 22:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta charset="utf-8" />
  <title>首页</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css">
  <style type="text/css">
      h2,h3{
          color: rgb(73,73,73);
      }

      #search {
          height: 80px;
          background-color: rgb(246, 246, 241);
          display: flex;
          align-items: center;
          padding-left: 8%;
          margin-bottom: 10px;
      }
      .search-input {
          flex: 0 0 40%;
          height: 35px;
          background-color: #fff;
          border: none;
          border-radius: 3px;
          margin-left: 50px;
      }
      .search-btn {
          width: 35px;
          height: 35px;
          background-color: rgb(155, 154, 143);
          display: flex;
          align-items: center;
          justify-content: center;
      }
      .search-btn img {
          width: 50%;
          height: 50%;
      }
      .card {
          height: 180px;
          margin: 20px 5px 20px 5px;
      }
      .card img {
          width: 100%;
          height: 90%;
      }
      .card p {
          font-size: 13px;
          color: #9b9b9b;
      }
      .col-4 img {
          margin: 10px 5px 20px 5px;
          width: 80%;
      }
      hr {
          width: 90%;
          color: #eee;
          margin-top: 10px;
      }
  </style>
</head>

<body>
<%
    List<Book> bookList = (List<Book>) request.getAttribute("bookList");
%>

<!--顶部导航-->
<header>
  <div>
    <!--导航-->
    <ul class="nav">
      <li>
        <a href="#">首页</a>
      </li>
      <li>
        <a href="#">浏览</a>
      </li>
      <li>
        <a href="#">消息</a>
      </li>
      <li>
        <a href="#">推荐</a>
      </li>
      <li>
        <a href="#">我的</a>
      </li>
    </ul>
  </div>
</header>

<div id="top">
    <div page="top.jsp">
</div>
<!--搜索区-->
<div id="search-wrap">
  <h1>读书时刻</h1>
  <input type="text" placeholder="书名、作者、ISBN" class="search-input" />
    <div class="search-btn">
        <img src="images/search.png" alt="">
    </div>
</div>
    <%--主体内容区--%>
<div id="container">
  <div class="row">
      <div class="col-8">
         <h2>好书精选</h2>
         <hr>
          <div class="row">
        <div class="column">
            <img src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1569342661846&di=ed1064c9c6953f00d79feaa609932bad&imgtype=0&src=http%3A%2F%2Fn.sinaimg.cn%2Fbaby%2Ftransform%2F20160903%2FO8cO-fxvqcts9376318.jpg"  class="avatar"/>
        </div>
        <div class="column">
            <img src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1569342661839&di=674ca619b63164e04bce190bec26fdc0&imgtype=0&src=http%3A%2F%2Fi0.sinaimg.cn%2Fbb%2Fedu%2F13%2F1001%2F2013-01-10%2FU1427P20T47D218427F776DT20130110183418.jpg" class="avatar" />
        </div>
        <div class="column">
            <img src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1569342661833&di=b9d305f054531930325dc87944f6ca6b&imgtype=0&src=http%3A%2F%2Fwww.books88.com%2FBooks_Pic%2F20080508%2FL9787500680680.jpg" class="avatar" />
        </div>
        <div class="column">
            <img src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1569342661828&di=2f2557c45a0a26c3d410760b9716924f&imgtype=0&src=http%3A%2F%2Fbmzx.zslib.com.cn%2Fgivebook%2Fbookimage%2F2004%2F7213037757.jpg" class="avatar" />
        </div>
        <div class="column">
            <img src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1569342952840&di=6accd637a0941630dc45c148dd1808c3&imgtype=0&src=http%3A%2F%2Fwww.books88.com%2FBooks_Pic%2F20080509%2FL9787200065046.jpg" class="avatar" />
        </div>
        <div class="column">
            <img src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1569342952837&di=e305a92c6879cc5b60c402c939a66ae4&imgtype=0&src=http%3A%2F%2Fwww.books88.com%2FBooks_Pic%2F20090306%2FL9787501555734.jpg" class="avatar"  />
        </div>
    </div>

        <div class="col-2" card>
            <a href="${pageContext.request.contextPath}/detail/${book.id}">
                <img src="images/${book.cover}" alt="">
            </a>
            <p style="color:rgb(51,119,178)">${book.name}</p>
            <p>${book.author}</p>
        </div>

  <div class="col-4">
      <h3>热门标签</h3>
      <p><h2>青春</h2></p>
      <p><h4>校园、爱情、叛逆</h4></p>
      <p><h4>悬疑、惊悚、网络</h4></p>

      <p><h2>小说</h2></p>
      <p><h4>校作品集、世界名著、外国小说</h4></p>
      <p><h4>古典小说、外文原版、武侠小说</h4></p>

      <p><h2>艺术</h2></p>
      <p><h4>艺术理论、设计、影视艺术</h4></p>
      <p><h4>建筑艺术、戏曲、收藏鉴赏</h4></p>

      <p><h2>文学</h2></p>
      <p><h4>纪实文学、中国古诗、外国诗歌</h4></p>
      <p><h4>当代随笔、外国随笔、戏剧歌曲</h4></p>
  </div>
</div>
</div>
<!--脚注区-->
        <footer>
            <ul>
                <li>@2015-2019</li>
                <li>niit.edu.cn,</li>
                <li>all rights reserved</li>
                <li>南工院计算机学院</li>
            </ul>

            <ul>
                <li>联系我们</li>
                <li>客服中心</li>
                <li>合作声明</li>
                <li>相关法律</li>
            </ul>
        </footer>
</div>
</body>
</html>
