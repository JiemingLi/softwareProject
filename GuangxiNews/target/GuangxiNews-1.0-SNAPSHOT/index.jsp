<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html lang="en">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="renderer" content="webkit">
    <meta name="referrer" content="always">
    <meta name="google-site-verification" content="ok0wCgT20tBBgo9_zat2iAcimtN4Ftf5ccsh092Xeyw" />
    <title>
        广西壮瑶信息
    </title>
    <meta name="baidu-site-verification" content="cZdR4xxR7RxmM4zE" />
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Expires" content="Sun, 6 Mar 2005 01:00:00 GMT">

    <meta name="keywords" content="广西,壮族,瑶族" />
    <meta name="description" content="广西壮瑶信息" />
    <link rel="alternate" href="/feed/review/best" type="application/rss+xml" title="RSS">

    <link href="https://img3.doubanio.com/f/shire/bf61b1fa02f564a4a8f809da7c7179b883a56146/css/douban.css" rel="stylesheet" type="text/css">
    <link href="https://img3.doubanio.com/f/shire/ae3f5a3e3085968370b1fc63afcecb22d3284848/css/separation/_all.css" rel="stylesheet"
        type="text/css">
    <link href="https://img3.doubanio.com/f/zerkalo/4b7b75331a86c9c8275ac6b7306e820fc072e09a/css/init.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="https://img3.doubanio.com/misc/mixed_static/e3f4e21541fe4b2.css">
    <style type="text/css"></style>

    <script type="text/javascript">var _head_start = new Date();</script>
    <script type="text/javascript" src="https://img3.doubanio.com/f/shire/7cdd59e1378f9ccea648a083fecf12d71ed66c2b/js/jquery-1.8.3.js"></script>
    <script type="text/javascript" src="https://img3.doubanio.com/f/shire/77323ae72a612bba8b65f845491513ff3329b1bb/js/do.js"
        data-cfg-autoload="false"></script>

    <script type="text/javascript" src="https://img3.doubanio.com/f/shire/f010949d3f23dd7c972ad7cb40b800bf70723c93/js/douban.js"></script>
    <script type="text/javascript" src="https://img3.doubanio.com/f/shire/afb2e24c7be373fa64d49d28de42719ec2262e1c/js/lib/moreurl.js"></script>
    <script type="text/javascript" src="https://img3.doubanio.com/f/zerkalo/faf4e3047552fe4c8a20b9a9dafab7088b4f71c3/dist/js/base.js"></script>
    <script type="text/javascript" src="https://img3.doubanio.com/f/shire/0efdc63b77f895eaf85281fb0e44d435c6239a3f/js/separation/_all.js"></script>


    <script type="text/javascript"></script>

    <link rel="shortcut icon" href="" type="image/x-icon">
</head>

<body>

    <div id="wrapper" class="movie-content review-wrapper">
        <div id="content">

            <h1>广西壮瑶文化信息</h1>

            <div class="grid-16-8 clearfix">

                <!-- 文章列表 -->
                <div class="article">


                    <ul class="top-tab clearfix">


                        <li class=" selected">
                            <a href="/news/all">
                                <span>热点查询</span>
                            </a>
                        </li>



                        <!-- <li class="">
                            <a href="/review/latest?app_name=movie">
                                <span>新片评论</span>
                            </a>
                        </li> -->

                    </ul>




                    <div class="review-list chart ">

                        <c:forEach items="${list}" var="item">
                            <!-- 以这个为标准 -->
                            <div data-cid="9593388">
                                <div class="main review-item" id="9593388">
                                    <!-- href -->
                                    <a class="subject-img" href="/news/contents/${item.id}">
                                        <img  height = "125px" alt="${item.title}" title="${item.title}" src="${item.href}" rel="v:image"
                                        />
                                    </a>

                                    <header class="main-hd">
                                        <!-- <a href="https://www.douban.com/people/132758789/" class="avator">
                                            <img width="24" height="24" src="https://img3.doubanio.com/icon/u132758789-6.jpg">
                                        </a> -->

                                        <!-- <a href="https://www.douban.com/people/132758789/" class="name">男神的炎迪迪</a>
                                        <span class="allstar50 main-title-rating" title="力荐"></span> -->
                                        <!-- list_date -->
                                        <span content="2018-08-15" class="main-meta"><fmt:formatDate value="${item.listDate}" pattern="yyyy-MM-dd"/> </span>
                                    </header>


                                    <div class="main-bd">

                                        <h2>
                                            <!-- title -->
                                            <a href="https://movie.douban.com/review/9593388/">${item.title}</a>
                                        </h2>

                                        <!-- sub_title -->
                                        <div id="review_9593388_short" class="review-short" data-rid="9593388">
                                            <div class="short-content">
                                                <!-- <p class="spoiler-tip">这篇影评可能有剧透</p> -->

                                                ${item.subTitle}

                                                <a href="javascript:;" id="toggle-9593388-copy" class="unfold" title="展开">展开</a>
                                            </div>
                                        </div>

                                        <div id="review_9593388_full" class="hidden">
                                            <div id="review_9593388_full_content" class="full-content"></div>
                                        </div>

                                        <!-- <div class="action">
                                            <a href="javascript:;" class="action-btn up" data-rid="9593388" title="有用">
                                                <img src="https://img3.doubanio.com/f/zerkalo/536fd337139250b5fb3cf9e79cb65c6193f8b20b/pics/up.png" />
                                                <span id="r-useful_count-9593388">
                                                    95
                                                </span>
                                            </a>
                                            <a href="javascript:;" class="action-btn down" data-rid="9593388" title="没用">
                                                <img src="https://img3.doubanio.com/f/zerkalo/68849027911140623cf338c9845893c4566db851/pics/down.png" />
                                                <span id="r-useless_count-9593388">
                                                    22
                                                </span>
                                            </a>
                                            <a href="https://movie.douban.com/review/9593388/#comments" class="reply">19回应</a>

                                            <a href="javascript:;;" class="fold hidden">收起</a>
                                        </div> -->
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                        <script type="text/javascript" src="https://img3.doubanio.com/misc/mixed_static/1f92a998dfb48ad8.js"></script>
                        <!-- COLLECTED CSS -->
                    </div>

                    <c:if test="${type == 1}">
                        <div class="paginator">
                            <a href="/news/all?page=${pre}">
                            <span class="prev">
                            &lt;前页
                        </span>
                            </a>
                                <%--<span class="thispage" data-total-page="3">1</span>--%>
                            <a href="/news/all?page=${current}">${current}</a>
                                <%--<a href="/review/best?start=40">3</a>--%>
                            <span class="next">
                            <link rel="next" href="/review/best?start=20" />
                            <a href="/news/all?page=${next}">后页&gt;</a>
                        </span>
                            <span class="count">(共${total}页)</span>
                        </div>
                    </c:if>

                    <c:if test="${type > 1}">
                        <div class="paginator">
                            <a href="/news/culture/${type}?page=${pre}">
                            <span class="prev">
                            &lt;前页
                        </span>
                            </a>
                                <%--<span class="thispage" data-total-page="3">1</span>--%>
                            <a href="/news/culture/${type}?page=${current}">${current}</a>
                                <%--<a href="/review/best?start=40">3</a>--%>
                            <span class="next">
                            <link rel="next" href="/news/culture/${type}?page=${next}" />
                            <a href="/news/culture/${type}?page=${next}">后页&gt;</a>
                        </span>
                            <span class="count">(共${total}页)</span>
                        </div>
                    </c:if>

                    <c:if test="${type < 1}">
                        <div class="paginator">
                            <a href="/news/searchByTitles?page=${pre}">
                            <span class="prev">
                            &lt;前页
                        </span>
                            </a>
                                <%--<span class="thispage" data-total-page="3">1</span>--%>
                            <a href="/news/searchByTitles?page=${current}">${current}</a>
                                <%--<a href="/review/best?start=40">3</a>--%>
                            <span class="next">
                            <link rel="next" href="/news/searchByTitles?page=${next}" />
                            <a href="/news/searchByTitles?page=${next}">后页&gt;</a>
                        </span>
                            <span class="count">(共${total}页)</span>
                        </div>
                    </c:if>

                </div>
                <div class="aside">

                    <!-- douban ad begin -->
                    <div id="dale_review_best_top_right"></div>
                    <!-- douban ad end -->


                    <div class="sidebar-info-wrapper">
                        <div class="sidebar-copy">
                            <a href="/news/culture/3"><p>传统文化</p></a>
                            <a href="/news/culture/4"><p>当代文化</p></a>
                            <a href="/news/culture/6"><p>时尚文化</p></a>
                        </div>
                    </div>

                    <p class="pl">
                        <span class="feed">
                            <a href="">订阅您感兴趣的信息</a>
                        </span>
                    </p>
                </div>
                <div class="extra">

                    <!-- douban ad begin -->
                    <div id="dale_movie_review_best_bottom_banner"></div>
                    <!-- douban ad end -->

                </div>
            </div>
        </div>
    </div>


    <script type="text/javascript">
        (function (global) {
            var newNode = global.document.createElement('script'),
                existingNode = global.document.getElementsByTagName('script')[0],
                adSource = '//erebor.douban.com/',
                userId = '',
                browserId = 'ySGbDKcLHvI',
                criteria = '3:/review/best/?app_name=movie',
                preview = '',
                debug = false,
                adSlots = ['dale_review_best_top_right', 'dale_movie_review_best_bottom_banner'];

            global.DoubanAdRequest = { src: adSource, uid: userId, bid: browserId, crtr: criteria, prv: preview, debug: debug };
            global.DoubanAdSlots = (global.DoubanAdSlots || []).concat(adSlots);

            newNode.setAttribute('type', 'text/javascript');
            newNode.setAttribute('src', 'https://img3.doubanio.com/f/adjs/039f4c0c15b5aa50e8bb29995dd17286658d78b5/ad.release.js');
            newNode.setAttribute('async', true);
            existingNode.parentNode.insertBefore(newNode, existingNode);
        })(this);
    </script>

    <script type="text/javascript">
        var _paq = _paq || [];
        _paq.push(['trackPageView']);
        _paq.push(['enableLinkTracking']);
        (function () {
            var p = (('https:' == document.location.protocol) ? 'https' : 'http'), u = p + '://fundin.douban.com/';
            _paq.push(['setTrackerUrl', u + 'piwik']);
            _paq.push(['setSiteId', '100001']);
            var d = document, g = d.createElement('script'), s = d.getElementsByTagName('script')[0];
            g.type = 'text/javascript';
            g.defer = true;
            g.async = true;
            g.src = p + '://img3.doubanio.com/dae/fundin/piwik.js';
            s.parentNode.insertBefore(g, s);
        })();
    </script>

    <script type="text/javascript">
        var setMethodWithNs = function (namespace) {
            var ns = namespace ? namespace + '.' : ''
                , fn = function (string) {
                    if (!ns) { return string }
                    return ns + string
                }
            return fn
        }

        var gaWithNamespace = function (fn, namespace) {
            var method = setMethodWithNs(namespace)
            fn.call(this, method)
        }

        var _gaq = _gaq || []
            , accounts = [
                { id: 'UA-7019765-1', namespace: 'douban' }
                , { id: 'UA-7019765-19', namespace: '' }
            ]
            , gaInit = function (account) {
                gaWithNamespace(function (method) {
                    gaInitFn.call(this, method, account)
                }, account.namespace)
            }
            , gaInitFn = function (method, account) {
                _gaq.push([method('_setAccount'), account.id]);
                _gaq.push([method('_setSampleRate'), '5']);


                _gaq.push([method('_addOrganic'), 'google', 'q'])
                _gaq.push([method('_addOrganic'), 'baidu', 'wd'])
                _gaq.push([method('_addOrganic'), 'soso', 'w'])
                _gaq.push([method('_addOrganic'), 'youdao', 'q'])
                _gaq.push([method('_addOrganic'), 'so.360.cn', 'q'])
                _gaq.push([method('_addOrganic'), 'sogou', 'query'])
                if (account.namespace) {
                    _gaq.push([method('_addIgnoredOrganic'), '豆瓣'])
                    _gaq.push([method('_addIgnoredOrganic'), 'douban'])
                    _gaq.push([method('_addIgnoredOrganic'), '豆瓣网'])
                    _gaq.push([method('_addIgnoredOrganic'), 'www.douban.com'])
                }

                if (account.namespace === 'douban') {
                    _gaq.push([method('_setDomainName'), '.douban.com'])
                }

                _gaq.push([method('_setCustomVar'), 1, 'responsive_view_mode', 'desktop', 3])

                _gaq.push([method('_setCustomVar'), 2, 'login_status', '0', 2]);

                _gaq.push([method('_trackPageview')])
            }

        for (var i = 0, l = accounts.length; i < l; i++) {
            var account = accounts[i]
            gaInit(account)
        }


        ; (function () {
            var ga = document.createElement('script');
            ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
            ga.setAttribute('async', 'true');
            document.documentElement.firstChild.appendChild(ga);
        })()
    </script>

    <script>_SPLITTEST = ''</script>
</body>

</html>