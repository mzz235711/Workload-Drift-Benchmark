/*+ HashJoin(c v)
 SeqScan(c)
 SeqScan(v)
 Leading((c v)) */
SELECT COUNT(*) FROM comments as c, votes as v WHERE c.UserId = v.UserId AND c.CreationDate>='2010-07-19 19:22:27'::timestamp AND v.BountyAmount>=0 AND v.BountyAmount<=100;

/*+ HashJoin(ph u c)
 HashJoin(u c)
 SeqScan(ph)
 IndexScan(u)
 SeqScan(c)
 Leading((ph (u c))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND u.Views>=0 AND u.Views<=16 AND u.DownVotes<=0 AND u.UpVotes>=0;

/*+ HashJoin(ph u p b)
 MergeJoin(ph u p)
 HashJoin(u p)
 IndexScan(ph)
 IndexScan(u)
 SeqScan(p)
 IndexScan(b)
 Leading(((ph (u p)) b)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u, badges as b WHERE u.Id = p.OwnerUserId AND p.OwnerUserId = ph.UserId AND ph.UserId = b.UserId AND ph.CreationDate>='2011-11-10 17:36:47'::timestamp AND ph.CreationDate<='2014-08-24 19:54:43'::timestamp AND p.PostTypeId=1 AND p.Score<=20 AND p.ViewCount>=0 AND p.AnswerCount<=3 AND u.DownVotes>=0 AND u.DownVotes<=1 AND u.CreationDate>='2010-08-04 15:16:51'::timestamp AND u.CreationDate<='2014-08-11 15:51:30'::timestamp;

/*+ HashJoin(u c b)
 HashJoin(u c)
 IndexScan(u)
 SeqScan(c)
 IndexScan(b)
 Leading(((u c) b)) */
SELECT COUNT(*) FROM comments as c, badges as b, users as u WHERE u.Id = c.UserId AND c.UserId = b.UserId AND c.Score=0;

/*+ HashJoin(ph c v pl p)
 HashJoin(c v pl p)
 HashJoin(v pl p)
 HashJoin(pl p)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(v)
 SeqScan(pl)
 SeqScan(p)
 Leading((ph (c (v (pl p))))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, votes as v WHERE p.Id = c.PostId AND p.Id = pl.PostId AND p.Id = ph.PostId AND p.Id = v.PostId AND c.CreationDate<='2014-09-02 16:53:27'::timestamp AND p.ViewCount<=3565 AND p.CommentCount>=0 AND p.FavoriteCount>=0 AND p.FavoriteCount<=8 AND p.CreationDate>='2010-09-08 05:41:48'::timestamp;

/*+ HashJoin(p ph u)
 MergeJoin(ph u)
 SeqScan(p)
 SeqScan(ph)
 SeqScan(u)
 Leading((p (ph u))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.UserId = p.OwnerUserId AND ph.UserId = u.Id AND ph.PostHistoryTypeId=3 AND ph.CreationDate>='2010-10-01 23:13:10'::timestamp AND ph.CreationDate<='2014-08-29 23:26:20'::timestamp AND p.AnswerCount<=4 AND p.CreationDate>='2010-07-27 18:14:44'::timestamp AND u.Reputation>=1 AND u.Reputation<=8236 AND u.CreationDate>='2010-07-24 20:31:14'::timestamp;

/*+ HashJoin(v u b ph c)
 HashJoin(v u b ph)
 HashJoin(u b ph)
 MergeJoin(u b)
 SeqScan(v)
 IndexScan(u)
 IndexScan(b)
 SeqScan(ph)
 SeqScan(c)
 Leading(((v ((u b) ph)) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, votes as v, users as u WHERE u.Id =b.UserId AND b.UserId = ph.UserId AND ph.UserId = v.UserId AND v.UserId = c.UserId AND b.Date>='2011-02-10 14:22:00'::timestamp AND b.Date<='2014-09-04 01:58:43'::timestamp AND v.BountyAmount<=50 AND v.CreationDate<='2014-09-05 00:00:00'::timestamp AND u.Views<=16 AND u.DownVotes<=0 AND u.UpVotes<=81;

/*+ MergeJoin(b ph u c)
 MergeJoin(b ph u)
 HashJoin(ph u)
 SeqScan(b)
 SeqScan(ph)
 SeqScan(u)
 SeqScan(c)
 Leading(((b (ph u)) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = ph.UserId AND u.Id = b.UserId AND c.Score=0 AND ph.PostHistoryTypeId=5 AND ph.CreationDate<='2014-08-27 10:53:31'::timestamp AND b.Date>='2010-08-03 19:40:21'::timestamp AND u.Reputation=101 AND u.UpVotes>=0;

/*+ HashJoin(b c u)
 HashJoin(c u)
 SeqScan(b)
 SeqScan(c)
 SeqScan(u)
 Leading((b (c u))) */
SELECT COUNT(*) FROM comments as c, badges as b, users as u WHERE u.Id = c.UserId AND c.UserId = b.UserId AND b.Date<='2014-08-25 13:04:53'::timestamp AND u.Reputation<=4128 AND u.DownVotes<=10;

/*+ HashJoin(v u pl p)
 HashJoin(u pl p)
 HashJoin(pl p)
 SeqScan(v)
 SeqScan(u)
 SeqScan(pl)
 SeqScan(p)
 Leading((v (u (pl p)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, votes as v, users as u WHERE p.Id = pl.RelatedPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND pl.LinkTypeId=1 AND p.CreationDate<='2014-09-04 19:57:09'::timestamp AND u.UpVotes<=13;

/*+ HashJoin(v u p)
 HashJoin(u p)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((v (u p))) */
SELECT COUNT(*) FROM votes as v, posts as p, users as u WHERE v.UserId = p.OwnerUserId AND p.OwnerUserId = u.Id AND v.BountyAmount>=0 AND v.CreationDate>='2010-07-22 00:00:00'::timestamp AND v.CreationDate<='2014-09-13 00:00:00'::timestamp AND p.PostTypeId=2 AND u.Reputation<=6140 AND u.DownVotes>=0 AND u.CreationDate>='2010-07-21 20:21:20'::timestamp;

/*+ HashJoin(b u c)
 HashJoin(u c)
 SeqScan(b)
 IndexScan(u)
 SeqScan(c)
 Leading((b (u c))) */
SELECT COUNT(*) FROM comments as c, badges as b, users as u WHERE u.Id = c.UserId AND c.UserId = b.UserId AND c.Score=1 AND u.UpVotes>=0 AND u.CreationDate<='2014-09-10 22:19:11'::timestamp;

/*+ HashJoin(p c v pl)
 HashJoin(c v pl)
 HashJoin(v pl)
 SeqScan(p)
 SeqScan(c)
 SeqScan(v)
 IndexScan(pl)
 Leading((p (c (v pl)))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, votes as v WHERE p.Id = c.PostId AND c.PostId = pl.PostId AND pl.PostId = v.PostId AND p.Score<=17 AND p.ViewCount<=6264 AND p.AnswerCount<=6 AND p.CommentCount>=0 AND pl.LinkTypeId=1;

/*+ HashJoin(ph u c)
 HashJoin(u c)
 SeqScan(ph)
 IndexScan(u)
 SeqScan(c)
 Leading((ph (u c))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND c.CreationDate<='2014-09-10 20:45:43'::timestamp AND ph.CreationDate>='2010-09-02 00:30:48'::timestamp AND ph.CreationDate<='2014-09-09 16:04:31'::timestamp AND u.Reputation>=1 AND u.Views>=0 AND u.Views<=13 AND u.UpVotes>=0;

/*+ HashJoin(ph b v u)
 HashJoin(b v u)
 HashJoin(v u)
 SeqScan(ph)
 SeqScan(b)
 SeqScan(v)
 SeqScan(u)
 Leading((ph (b (v u)))) */
SELECT COUNT(*) FROM postHistory as ph, votes as v, users as u, badges as b WHERE u.Id = ph.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND ph.PostHistoryTypeId=5 AND v.CreationDate>='2010-07-19 00:00:00'::timestamp AND v.CreationDate<='2014-09-11 00:00:00'::timestamp AND u.DownVotes<=0 AND u.UpVotes>=0 AND u.CreationDate<='2014-09-09 04:50:10'::timestamp AND b.Date>='2010-08-03 10:15:16'::timestamp;

/*+ HashJoin(c p u)
 HashJoin(p u)
 SeqScan(c)
 SeqScan(p)
 SeqScan(u)
 Leading((c (p u))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.UserId = u.Id AND u.Id = p.OwnerUserId AND c.Score=0 AND c.CreationDate>='2010-07-20 07:59:54'::timestamp AND c.CreationDate<='2014-09-10 22:24:36'::timestamp AND p.CommentCount>=0 AND p.CommentCount<=8 AND p.CreationDate>='2010-08-27 18:14:14'::timestamp AND p.CreationDate<='2014-09-11 13:43:00'::timestamp AND u.Reputation<=384 AND u.Views>=0 AND u.UpVotes<=50;

/*+ MergeJoin(ph u p)
 MergeJoin(ph u)
 SeqScan(ph)
 SeqScan(u)
 IndexScan(p)
 Leading(((ph u) p)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.UserId = p.OwnerUserId AND ph.UserId = u.Id AND ph.CreationDate>='2010-08-13 01:10:05'::timestamp AND p.PostTypeId=1 AND p.Score<=29 AND u.Reputation>=1 AND u.Reputation<=200 AND u.DownVotes<=0 AND u.CreationDate<='2014-08-22 14:02:42'::timestamp;

/*+ HashJoin(c b)
 SeqScan(c)
 IndexScan(b)
 Leading((c b)) */
SELECT COUNT(*) FROM comments as c, badges as b WHERE c.UserId = b.UserId AND c.Score=0 AND b.Date>='2010-08-06 22:22:27'::timestamp AND b.Date<='2014-08-24 17:33:34'::timestamp;

/*+ HashJoin(c p)
 SeqScan(c)
 SeqScan(p)
 Leading((c p)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND c.CreationDate>='2010-07-26 13:37:04'::timestamp AND p.Score=2 AND p.ViewCount>=0 AND p.ViewCount<=6454 AND p.AnswerCount<=2 AND p.CreationDate>='2009-02-02 14:31:27'::timestamp AND p.CreationDate<='2014-09-12 03:39:00'::timestamp;

/*+ HashJoin(ph c u)
 HashJoin(c u)
 SeqScan(ph)
 SeqScan(c)
 IndexScan(u)
 Leading((ph (c u))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND c.CreationDate>='2010-07-31 19:13:25'::timestamp AND u.Reputation>=1 AND u.Reputation<=672 AND u.DownVotes>=0;

/*+ HashJoin(c ph)
 IndexScan(c)
 SeqScan(ph)
 Leading((c ph)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph WHERE c.UserId = ph.UserId AND c.Score=1 AND c.CreationDate>='2010-07-21 12:39:58'::timestamp AND c.CreationDate<='2014-09-11 22:27:27'::timestamp AND ph.CreationDate<='2014-09-01 20:42:55'::timestamp;

/*+ HashJoin(c b v u)
 MergeJoin(b v u)
 HashJoin(v u)
 SeqScan(c)
 IndexScan(b)
 SeqScan(v)
 SeqScan(u)
 Leading((c (b (v u)))) */
SELECT COUNT(*) FROM comments as c, votes as v, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND v.CreationDate<='2014-09-11 00:00:00'::timestamp AND u.DownVotes<=114;

/*+ HashJoin(ph c u)
 HashJoin(c u)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(u)
 Leading((ph (c u))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND ph.PostHistoryTypeId=5 AND u.Reputation<=143 AND u.Views>=0 AND u.Views<=299 AND u.CreationDate<='2014-08-26 07:30:06'::timestamp;

/*+ HashJoin(ph c u)
 HashJoin(c u)
 SeqScan(ph)
 SeqScan(c)
 IndexScan(u)
 Leading((ph (c u))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND ph.PostHistoryTypeId=5 AND u.DownVotes<=3;

/*+ HashJoin(p u v b)
 HashJoin(p u v)
 HashJoin(u v)
 SeqScan(p)
 SeqScan(u)
 SeqScan(v)
 IndexScan(b)
 Leading(((p (u v)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE u.Id = v.UserId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND v.CreationDate>='2010-07-20 00:00:00'::timestamp AND p.ViewCount<=7939 AND p.FavoriteCount>=0;

/*+ HashJoin(ph u c)
 HashJoin(u c)
 SeqScan(ph)
 IndexScan(u)
 SeqScan(c)
 Leading((ph (u c))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND u.DownVotes<=0 AND u.UpVotes<=23;

/*+ HashJoin(ph c v pl p)
 HashJoin(c v pl p)
 HashJoin(v pl p)
 MergeJoin(pl p)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(v)
 SeqScan(pl)
 SeqScan(p)
 Leading((ph (c (v (pl p))))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, votes as v WHERE p.Id = c.PostId AND p.Id = pl.PostId AND p.Id = ph.PostId AND p.Id = v.PostId AND p.CommentCount<=9 AND p.CreationDate>='2010-09-20 06:05:15'::timestamp AND pl.LinkTypeId=1;

/*+ HashJoin(v ph c pl)
 HashJoin(ph c pl)
 HashJoin(c pl)
 SeqScan(v)
 SeqScan(ph)
 SeqScan(c)
 IndexScan(pl)
 Leading((v (ph (c pl)))) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, postHistory as ph, votes as v WHERE pl.PostId = c.PostId AND c.PostId = ph.PostId AND ph.PostId = v.PostId AND c.Score=0 AND c.CreationDate>='2010-08-06 03:08:39'::timestamp AND c.CreationDate<='2014-09-09 06:57:25'::timestamp AND pl.LinkTypeId=1 AND ph.PostHistoryTypeId=3;

/*+ MergeJoin(c p pl)
 HashJoin(p pl)
 SeqScan(c)
 SeqScan(p)
 IndexScan(pl)
 Leading((c (p pl))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE c.UserId = p.OwnerUserId AND p.Id = pl.PostId AND c.Score=3 AND c.CreationDate>='2010-10-11 18:20:29'::timestamp AND c.CreationDate<='2014-09-06 15:10:14'::timestamp AND p.Score>=0 AND p.ViewCount>=0 AND p.ViewCount<=7536 AND p.CommentCount<=13 AND p.FavoriteCount>=0 AND p.FavoriteCount<=6;

/*+ HashJoin(b p v u)
 HashJoin(p v u)
 HashJoin(v u)
 SeqScan(b)
 SeqScan(p)
 SeqScan(v)
 SeqScan(u)
 Leading((b (p (v u)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE u.Id = v.UserId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>=-1 AND p.CommentCount<=13 AND u.Views=4 AND u.DownVotes<=3;

/*+ HashJoin(ph p u v b pl)
 HashJoin(p u v b pl)
 HashJoin(p u v b)
 HashJoin(u v b)
 HashJoin(u v)
 SeqScan(ph)
 SeqScan(p)
 IndexScan(u)
 IndexScan(v)
 IndexScan(b)
 SeqScan(pl)
 Leading((ph ((p ((u v) b)) pl))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph, votes as v, badges as b, users as u WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND u.Id = ph.UserId AND u.Id = v.UserId AND p.PostTypeId=1 AND p.Score>=-1 AND p.ViewCount>=0 AND p.CommentCount>=0 AND p.CommentCount<=11 AND p.FavoriteCount<=4 AND p.CreationDate<='2014-08-21 19:39:47'::timestamp AND ph.CreationDate<='2014-09-03 17:25:15'::timestamp AND u.DownVotes<=0 AND u.CreationDate>='2010-08-22 17:50:44'::timestamp AND u.CreationDate<='2014-09-11 10:44:05'::timestamp;

/*+ HashJoin(b ph v c p pl)
 MergeJoin(ph v c p pl)
 MergeJoin(v c p pl)
 MergeJoin(c p pl)
 MergeJoin(p pl)
 IndexScan(b)
 SeqScan(ph)
 IndexScan(v)
 SeqScan(c)
 SeqScan(p)
 IndexScan(pl)
 Leading((b (ph (v (c (p pl)))))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, votes as v, badges as b WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.Id = ph.PostId AND p.Id = v.PostId AND b.UserId = c.UserId AND c.Score=0 AND c.CreationDate>='2010-08-18 13:42:31'::timestamp AND p.PostTypeId=1 AND p.Score>=-2 AND p.Score<=17 AND p.FavoriteCount>=0 AND p.FavoriteCount<=6 AND p.CreationDate<='2014-08-14 20:28:11'::timestamp AND pl.LinkTypeId=1 AND b.Date<='2014-09-06 20:42:05'::timestamp;

/*+ HashJoin(c p pl)
 HashJoin(p pl)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 Leading((c (p pl))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE c.UserId = p.OwnerUserId AND p.Id = pl.PostId AND c.Score=0 AND p.FavoriteCount>=0 AND p.CreationDate>='2009-02-02 15:11:56'::timestamp AND pl.LinkTypeId=1;

/*+ HashJoin(ph v c)
 HashJoin(ph v)
 IndexScan(ph)
 SeqScan(v)
 SeqScan(c)
 Leading(((ph v) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v WHERE ph.PostId = c.PostId AND ph.PostId = v.PostId AND c.CreationDate>='2010-10-21 14:53:51'::timestamp AND v.VoteTypeId=2 AND v.CreationDate>='2010-07-20 00:00:00'::timestamp AND v.CreationDate<='2014-09-12 00:00:00'::timestamp;

/*+ MergeJoin(ph c b u p)
 HashJoin(c b u p)
 HashJoin(b u p)
 HashJoin(u p)
 IndexScan(ph)
 SeqScan(c)
 SeqScan(b)
 IndexScan(u)
 SeqScan(p)
 Leading((ph (c (b (u p))))) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = ph.UserId AND u.Id = b.UserId AND c.Score=1 AND p.AnswerCount>=0 AND p.AnswerCount<=7 AND p.CreationDate>='2010-07-20 07:56:06'::timestamp AND p.CreationDate<='2014-08-18 19:54:42'::timestamp AND u.Views=0 AND u.DownVotes>=0 AND u.DownVotes<=1 AND u.CreationDate<='2014-09-02 11:30:04'::timestamp;

/*+ HashJoin(c pl p)
 HashJoin(pl p)
 SeqScan(c)
 IndexScan(pl)
 SeqScan(p)
 Leading((c (pl p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE c.UserId = p.OwnerUserId AND p.Id = pl.PostId AND c.CreationDate>='2010-07-20 16:03:44'::timestamp AND p.ViewCount<=12626 AND p.CommentCount<=11 AND p.CreationDate>='2010-09-13 21:04:03'::timestamp;

/*+ HashJoin(c ph)
 SeqScan(c)
 IndexScan(ph)
 Leading((c ph)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph WHERE c.UserId = ph.UserId AND c.Score=0 AND ph.PostHistoryTypeId=5;

/*+ HashJoin(c p u)
 HashJoin(p u)
 SeqScan(c)
 SeqScan(p)
 IndexScan(u)
 Leading((c (p u))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.UserId = u.Id AND u.Id = p.OwnerUserId AND c.Score=0 AND p.ViewCount>=0 AND p.ViewCount<=2503 AND p.CommentCount<=10;

/*+ HashJoin(c b)
 SeqScan(c)
 SeqScan(b)
 Leading((c b)) */
SELECT COUNT(*) FROM comments as c, badges as b WHERE c.UserId = b.UserId AND c.CreationDate>='2010-08-02 02:14:54'::timestamp AND c.CreationDate<='2014-09-10 15:10:39'::timestamp AND b.Date<='2014-08-26 18:51:40'::timestamp;

/*+ HashJoin(c ph v p pl b)
 HashJoin(c ph v p pl)
 MergeJoin(ph v p pl)
 HashJoin(v p pl)
 HashJoin(v p)
 SeqScan(c)
 IndexScan(ph)
 SeqScan(v)
 SeqScan(p)
 IndexScan(pl)
 SeqScan(b)
 Leading(((c (ph ((v p) pl))) b)) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, votes as v, badges as b WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.Id = ph.PostId AND p.Id = v.PostId AND b.UserId = c.UserId AND p.ViewCount>=0 AND p.CreationDate>='2010-08-03 13:59:03'::timestamp AND p.CreationDate<='2014-09-06 09:02:14'::timestamp AND pl.CreationDate>='2011-02-12 09:00:13'::timestamp AND ph.CreationDate>='2010-09-17 00:14:46'::timestamp AND ph.CreationDate<='2014-09-11 07:14:56'::timestamp AND v.BountyAmount<=50;

/*+ HashJoin(c p b u ph)
 HashJoin(c p b u)
 MergeJoin(p b u)
 HashJoin(b u)
 IndexScan(c)
 SeqScan(p)
 IndexScan(b)
 SeqScan(u)
 SeqScan(ph)
 Leading(((c (p (b u))) ph)) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = ph.UserId AND u.Id = b.UserId AND c.Score=0 AND p.ViewCount>=0 AND p.AnswerCount<=3 AND u.Reputation>=1 AND u.Reputation<=432 AND u.Views<=25 AND u.DownVotes>=0 AND u.CreationDate>='2010-07-27 08:27:51'::timestamp AND u.CreationDate<='2014-08-22 09:26:42'::timestamp;

/*+ HashJoin(ph u c p v)
 MergeJoin(ph u c p)
 MergeJoin(u c p)
 MergeJoin(u c)
 SeqScan(ph)
 IndexScan(u)
 SeqScan(c)
 SeqScan(p)
 SeqScan(v)
 Leading(((ph ((u c) p)) v)) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph, votes as v, users as u WHERE u.Id = c.UserId AND c.UserId = p.OwnerUserId AND p.OwnerUserId = ph.UserId AND ph.UserId = v.UserId AND p.AnswerCount<=3 AND p.FavoriteCount=0 AND p.CreationDate<='2014-09-09 23:47:30'::timestamp AND v.CreationDate>='2010-07-21 00:00:00'::timestamp AND u.Reputation>=1 AND u.Reputation<=328 AND u.Views<=74;

/*+ HashJoin(ph c)
 IndexScan(ph)
 IndexScan(c)
 Leading((ph c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph WHERE c.UserId = ph.UserId AND c.CreationDate>='2010-08-19 10:44:24'::timestamp AND c.CreationDate<='2014-09-08 06:56:53'::timestamp AND ph.PostHistoryTypeId=5;

/*+ HashJoin(ph b pl p v u)
 HashJoin(b pl p v u)
 HashJoin(pl p v u)
 HashJoin(p v u)
 HashJoin(v u)
 SeqScan(ph)
 SeqScan(b)
 SeqScan(pl)
 SeqScan(p)
 SeqScan(v)
 SeqScan(u)
 Leading((ph (b (pl (p (v u)))))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph, votes as v, badges as b, users as u WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND u.Id = ph.UserId AND u.Id = v.UserId AND p.AnswerCount>=0 AND p.AnswerCount<=4 AND p.FavoriteCount=0 AND p.CreationDate<='2014-08-31 17:57:08'::timestamp AND pl.LinkTypeId=1 AND ph.PostHistoryTypeId=1 AND v.BountyAmount>=0 AND u.Views>=0 AND u.DownVotes>=0;

/*+ HashJoin(v b)
 SeqScan(v)
 SeqScan(b)
 Leading((v b)) */
SELECT COUNT(*) FROM badges as b, votes as v WHERE b.UserId = v.UserId AND b.Date>='2010-07-19 19:39:10'::timestamp AND v.CreationDate<='2014-09-07 00:00:00'::timestamp;

/*+ HashJoin(ph p b u c)
 HashJoin(ph p b u)
 MergeJoin(p b u)
 HashJoin(b u)
 SeqScan(ph)
 SeqScan(p)
 IndexScan(b)
 SeqScan(u)
 SeqScan(c)
 Leading(((ph (p (b u))) c)) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = ph.UserId AND u.Id = b.UserId AND c.CreationDate<='2014-09-09 11:59:54'::timestamp AND p.AnswerCount>=0 AND p.AnswerCount<=5 AND p.FavoriteCount>=0 AND ph.CreationDate>='2010-10-23 16:20:20'::timestamp AND ph.CreationDate<='2014-08-11 15:35:20'::timestamp AND u.Reputation<=171 AND u.UpVotes>=0;

/*+ HashJoin(c b)
 SeqScan(c)
 SeqScan(b)
 Leading((c b)) */
SELECT COUNT(*) FROM comments as c, badges as b WHERE c.UserId = b.UserId AND c.Score=1 AND c.CreationDate>='2010-09-02 22:07:06'::timestamp;

/*+ HashJoin(c ph b u)
 MergeJoin(ph b u)
 HashJoin(b u)
 SeqScan(c)
 IndexScan(ph)
 SeqScan(b)
 SeqScan(u)
 Leading((c (ph (b u)))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = ph.UserId AND u.Id = b.UserId AND ph.PostHistoryTypeId=3 AND u.Views>=0 AND u.DownVotes>=0 AND u.DownVotes<=0;

/*+ HashJoin(ph b u v)
 HashJoin(b u v)
 HashJoin(u v)
 SeqScan(ph)
 SeqScan(b)
 IndexScan(u)
 SeqScan(v)
 Leading((ph (b (u v)))) */
SELECT COUNT(*) FROM postHistory as ph, votes as v, users as u, badges as b WHERE u.Id = ph.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND v.BountyAmount>=0 AND u.Reputation>=1 AND u.Reputation<=406;

/*+ HashJoin(c b v u)
 HashJoin(b v u)
 HashJoin(v u)
 SeqScan(c)
 SeqScan(b)
 SeqScan(v)
 SeqScan(u)
 Leading((c (b (v u)))) */
SELECT COUNT(*) FROM comments as c, votes as v, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND c.CreationDate>='2009-02-02 14:45:19'::timestamp AND v.VoteTypeId=5 AND u.Views<=15 AND u.DownVotes>=0 AND u.DownVotes<=1 AND u.UpVotes<=62 AND u.CreationDate>='2010-07-19 19:16:54'::timestamp;

/*+ HashJoin(v p u c)
 HashJoin(v p u)
 HashJoin(v p)
 IndexScan(v)
 SeqScan(p)
 SeqScan(u)
 SeqScan(c)
 Leading((((v p) u) c)) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE p.Id = c.PostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND c.CreationDate<='2014-09-12 15:47:12'::timestamp AND p.CommentCount>=0 AND p.CommentCount<=16 AND p.CreationDate>='2010-07-28 18:17:46'::timestamp AND v.CreationDate<='2014-09-10 00:00:00'::timestamp AND u.DownVotes>=0 AND u.DownVotes<=0 AND u.UpVotes>=0 AND u.UpVotes<=95;

/*+ HashJoin(b u v p)
 HashJoin(u v p)
 HashJoin(v p)
 SeqScan(b)
 SeqScan(u)
 SeqScan(v)
 SeqScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND v.VoteTypeId=2 AND p.PostTypeId=1 AND p.Score<=23 AND p.ViewCount<=5477 AND p.AnswerCount>=0 AND p.AnswerCount<=6 AND p.CommentCount<=14 AND p.FavoriteCount>=0 AND b.Date>='2010-07-27 09:13:45'::timestamp AND u.Reputation>=1 AND u.Reputation<=1570;

/*+ HashJoin(ph u b c)
 MergeJoin(ph u b)
 HashJoin(u b)
 IndexScan(ph)
 IndexScan(u)
 IndexScan(b)
 SeqScan(c)
 Leading(((ph (u b)) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = ph.UserId AND u.Id = b.UserId AND c.CreationDate>='2010-07-22 11:30:13'::timestamp AND c.CreationDate<='2014-09-05 03:05:11'::timestamp AND b.Date<='2014-08-26 18:51:40'::timestamp AND u.Reputation>=1 AND u.UpVotes=0;

/*+ HashJoin(ph b u p c)
 MergeJoin(ph b u p)
 NestLoop(b u p)
 MergeJoin(b u)
 SeqScan(ph)
 IndexScan(b)
 SeqScan(u)
 IndexScan(p)
 SeqScan(c)
 Leading(((ph ((b u) p)) c)) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = ph.UserId AND u.Id = b.UserId AND c.Score=0 AND p.ViewCount>=0 AND p.AnswerCount<=4 AND p.FavoriteCount<=9 AND p.CreationDate>='2010-09-07 23:47:38'::timestamp AND p.CreationDate<='2014-09-13 12:41:48'::timestamp AND b.Date>='2010-07-20 03:29:08'::timestamp AND u.Reputation>=1 AND u.Reputation<=304 AND u.CreationDate>='2011-02-08 02:50:22'::timestamp;

/*+ HashJoin(v b)
 SeqScan(v)
 SeqScan(b)
 Leading((v b)) */
SELECT COUNT(*) FROM badges as b, votes as v WHERE b.UserId = v.UserId;

/*+ HashJoin(ph u p)
 MergeJoin(ph u)
 SeqScan(ph)
 SeqScan(u)
 SeqScan(p)
 Leading(((ph u) p)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.UserId = p.OwnerUserId AND ph.UserId = u.Id AND ph.PostHistoryTypeId=2 AND p.CommentCount<=12 AND u.Reputation>=1 AND u.DownVotes>=0;

/*+ HashJoin(ph v p u)
 HashJoin(v p u)
 HashJoin(v p)
 SeqScan(ph)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 Leading((ph ((v p) u))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, votes as v, users as u WHERE p.Id = ph.PostId AND u.Id = p.OwnerUserId AND p.Id = v.PostId AND p.AnswerCount>=0 AND p.CommentCount>=0 AND u.Views<=63;

/*+ HashJoin(c v p u)
 HashJoin(v p u)
 HashJoin(p u)
 SeqScan(c)
 SeqScan(v)
 IndexScan(p)
 SeqScan(u)
 Leading((c (v (p u)))) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE p.Id = c.PostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND c.Score=0 AND c.CreationDate>='2010-07-19 20:02:25'::timestamp AND p.PostTypeId=1 AND p.Score>=-4 AND p.CommentCount>=0 AND v.CreationDate<='2014-09-12 00:00:00'::timestamp AND u.Views>=0 AND u.Views<=57 AND u.DownVotes<=0;

/*+ HashJoin(c u p b ph)
 HashJoin(c u p b)
 HashJoin(c u p)
 MergeJoin(c u)
 IndexScan(c)
 SeqScan(u)
 SeqScan(p)
 IndexScan(b)
 IndexScan(ph)
 Leading(((((c u) p) b) ph)) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = ph.UserId AND u.Id = b.UserId AND c.CreationDate<='2014-09-09 19:18:05'::timestamp AND p.Score>=0 AND p.Score<=33 AND p.ViewCount<=3369 AND p.AnswerCount<=4 AND p.FavoriteCount>=0 AND p.CreationDate>='2010-08-15 04:54:49'::timestamp AND p.CreationDate<='2014-09-04 23:01:02'::timestamp AND ph.CreationDate<='2014-06-11 08:03:34'::timestamp AND u.DownVotes<=8 AND u.UpVotes>=0;

/*+ HashJoin(b v u)
 MergeJoin(v u)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 Leading((b (v u))) */
SELECT COUNT(*) FROM votes as v, badges as b, users as u WHERE u.Id = v.UserId AND v.UserId = b.UserId AND b.Date>='2010-12-08 17:52:09'::timestamp AND u.Views<=45 AND u.UpVotes>=0 AND u.CreationDate>='2010-09-30 12:50:43'::timestamp;

/*+ HashJoin(ph c u)
 MergeJoin(c u)
 IndexScan(ph)
 SeqScan(c)
 SeqScan(u)
 Leading((ph (c u))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND c.Score=1;

/*+ HashJoin(c b)
 IndexScan(c)
 SeqScan(b)
 Leading((c b)) */
SELECT COUNT(*) FROM comments as c, badges as b WHERE c.UserId = b.UserId AND b.Date<='2014-09-11 22:42:22'::timestamp;

/*+ HashJoin(p v c pl)
 HashJoin(v c pl)
 HashJoin(c pl)
 SeqScan(p)
 SeqScan(v)
 SeqScan(c)
 IndexScan(pl)
 Leading((p (v (c pl)))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, votes as v WHERE p.Id = c.PostId AND c.PostId = pl.PostId AND pl.PostId = v.PostId AND c.Score=0 AND p.ViewCount<=9010 AND p.CommentCount<=21 AND p.CreationDate>='2010-07-27 09:16:48'::timestamp AND p.CreationDate<='2014-08-27 17:38:33'::timestamp AND v.CreationDate<='2014-09-12 00:00:00'::timestamp;

/*+ HashJoin(ph b v u)
 HashJoin(b v u)
 HashJoin(v u)
 SeqScan(ph)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 Leading((ph (b (v u)))) */
SELECT COUNT(*) FROM postHistory as ph, votes as v, users as u, badges as b WHERE u.Id = ph.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND u.Reputation>=1 AND u.Views>=0 AND u.Views<=32 AND u.DownVotes>=0;

/*+ HashJoin(b c u)
 HashJoin(c u)
 SeqScan(b)
 SeqScan(c)
 SeqScan(u)
 Leading((b (c u))) */
SELECT COUNT(*) FROM comments as c, badges as b, users as u WHERE u.Id = c.UserId AND c.UserId = b.UserId AND b.Date<='2014-08-28 09:39:12'::timestamp AND u.Views>=0;

/*+ HashJoin(c pl p)
 HashJoin(pl p)
 SeqScan(c)
 IndexScan(pl)
 SeqScan(p)
 Leading((c (pl p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE c.UserId = p.OwnerUserId AND p.Id = pl.PostId AND c.CreationDate>='2010-07-19 21:30:23'::timestamp AND p.FavoriteCount>=0 AND p.CreationDate>='2010-07-28 01:06:56'::timestamp AND pl.LinkTypeId=1 AND pl.CreationDate>='2010-10-26 18:29:36'::timestamp AND pl.CreationDate<='2014-08-21 12:54:28'::timestamp;

/*+ HashJoin(ph b pl p u v)
 MergeJoin(b pl p u v)
 HashJoin(pl p u v)
 HashJoin(p u v)
 HashJoin(u v)
 SeqScan(ph)
 SeqScan(b)
 SeqScan(pl)
 SeqScan(p)
 IndexScan(u)
 IndexScan(v)
 Leading((ph (b (pl (p (u v)))))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph, votes as v, badges as b, users as u WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND u.Id = ph.UserId AND u.Id = v.UserId AND p.PostTypeId=1 AND p.Score<=59 AND p.AnswerCount=0 AND p.CommentCount>=0 AND p.CommentCount<=11 AND p.CreationDate<='2014-08-30 10:03:37'::timestamp AND pl.CreationDate>='2011-05-02 16:01:55'::timestamp AND ph.PostHistoryTypeId=2 AND ph.CreationDate>='2010-09-15 14:18:53'::timestamp AND ph.CreationDate<='2014-08-28 00:58:13'::timestamp AND b.Date>='2010-07-21 07:13:12'::timestamp AND b.Date<='2014-09-11 16:18:23'::timestamp AND u.DownVotes=0 AND u.CreationDate>='2010-07-19 06:55:26'::timestamp AND u.CreationDate<='2014-08-25 22:57:20'::timestamp;

/*+ MergeJoin(ph u c b)
 NestLoop(u c b)
 NestLoop(u c)
 SeqScan(ph)
 IndexScan(u)
 IndexScan(c)
 IndexScan(b)
 Leading((ph ((u c) b))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = ph.UserId AND u.Id = b.UserId AND ph.CreationDate>='2010-10-05 19:41:51'::timestamp AND ph.CreationDate<='2014-09-03 13:08:10'::timestamp AND u.Views=0 AND u.DownVotes>=0 AND u.DownVotes<=113 AND u.UpVotes>=0;

/*+ HashJoin(c u b ph)
 NestLoop(c u b)
 MergeJoin(c u)
 IndexScan(c)
 SeqScan(u)
 IndexScan(b)
 SeqScan(ph)
 Leading((((c u) b) ph)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = ph.UserId AND u.Id = b.UserId AND c.Score=0 AND ph.PostHistoryTypeId=2 AND b.Date<='2014-09-02 22:25:33'::timestamp AND u.Reputation>=1 AND u.UpVotes<=86;

/*+ HashJoin(ph u b v c)
 HashJoin(ph u b v)
 MergeJoin(ph u b)
 HashJoin(u b)
 IndexScan(ph)
 IndexScan(u)
 IndexScan(b)
 SeqScan(v)
 SeqScan(c)
 Leading((((ph (u b)) v) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, votes as v, users as u WHERE u.Id =b.UserId AND b.UserId = ph.UserId AND ph.UserId = v.UserId AND v.UserId = c.UserId AND c.Score=1 AND c.CreationDate>='2010-07-29 15:11:55'::timestamp AND u.Reputation>=1 AND u.Reputation<=329 AND u.Views>=0 AND u.Views<=108;

/*+ HashJoin(b p)
 SeqScan(b)
 SeqScan(p)
 Leading((b p)) */
SELECT COUNT(*) FROM badges as b, posts as p WHERE b.UserId = p.OwnerUserId AND b.Date>='2010-10-15 01:25:28'::timestamp AND p.Score>=-1 AND p.ViewCount<=4873;

/*+ HashJoin(c v p u)
 HashJoin(v p u)
 HashJoin(p u)
 SeqScan(c)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 Leading((c (v (p u)))) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE p.Id = c.PostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND c.Score=0 AND c.CreationDate<='2014-09-13 21:09:00'::timestamp AND p.PostTypeId=2 AND u.Reputation>=1 AND u.CreationDate>='2011-02-15 01:19:19'::timestamp AND u.CreationDate<='2014-08-28 12:20:29'::timestamp;

/*+ HashJoin(ph c v pl p)
 HashJoin(c v pl p)
 HashJoin(v pl p)
 HashJoin(pl p)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(v)
 SeqScan(pl)
 SeqScan(p)
 Leading((ph (c (v (pl p))))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, votes as v WHERE p.Id = c.PostId AND p.Id = pl.PostId AND p.Id = ph.PostId AND p.Id = v.PostId AND p.Score>=0 AND p.ViewCount>=0 AND pl.CreationDate>='2011-02-08 02:24:03'::timestamp AND v.VoteTypeId=2 AND v.CreationDate>='2010-07-20 00:00:00'::timestamp AND v.CreationDate<='2014-09-11 00:00:00'::timestamp;

/*+ HashJoin(ph p b u v pl)
 HashJoin(p b u v pl)
 HashJoin(p b u v)
 MergeJoin(b u v)
 HashJoin(u v)
 SeqScan(ph)
 SeqScan(p)
 IndexScan(b)
 IndexScan(u)
 IndexScan(v)
 SeqScan(pl)
 Leading((ph ((p (b (u v))) pl))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph, votes as v, badges as b, users as u WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND u.Id = ph.UserId AND u.Id = v.UserId AND p.ViewCount>=0 AND p.ViewCount<=3932 AND p.FavoriteCount<=13 AND p.CreationDate>='2010-08-17 02:52:02'::timestamp AND p.CreationDate<='2014-08-11 11:53:10'::timestamp AND ph.CreationDate>='2010-08-03 07:49:34'::timestamp AND ph.CreationDate<='2014-05-03 13:59:25'::timestamp AND v.CreationDate>='2010-08-13 00:00:00'::timestamp AND v.CreationDate<='2014-09-13 00:00:00'::timestamp AND b.Date>='2010-07-19 21:39:06'::timestamp AND b.Date<='2014-09-04 08:18:17'::timestamp AND u.Reputation<=549 AND u.UpVotes>=0 AND u.CreationDate>='2011-02-25 13:56:51'::timestamp;

/*+ HashJoin(c ph)
 SeqScan(c)
 SeqScan(ph)
 Leading((c ph)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph WHERE c.UserId = ph.UserId AND c.Score=0 AND c.CreationDate<='2014-09-13 13:05:12'::timestamp AND ph.PostHistoryTypeId=2 AND ph.CreationDate>='2010-07-22 10:04:38'::timestamp AND ph.CreationDate<='2014-08-27 18:17:17'::timestamp;

/*+ HashJoin(p u c v b)
 HashJoin(p u c v)
 HashJoin(p u c)
 NestLoop(u c)
 SeqScan(p)
 IndexScan(u)
 IndexScan(c)
 SeqScan(v)
 SeqScan(b)
 Leading((((p (u c)) v) b)) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, badges as b, users as u WHERE u.Id =c.UserId AND c.UserId = p.OwnerUserId AND p.OwnerUserId = v.UserId AND v.UserId = b.UserId AND c.Score=0 AND p.PostTypeId=1 AND p.Score>=0 AND p.Score<=28 AND p.CreationDate<='2014-09-05 08:42:14'::timestamp AND u.Views>=0 AND u.Views<=58;

/*+ HashJoin(c ph u b)
 MergeJoin(ph u b)
 HashJoin(u b)
 SeqScan(c)
 IndexScan(ph)
 IndexScan(u)
 IndexScan(b)
 Leading((c (ph (u b)))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = ph.UserId AND u.Id = b.UserId AND c.Score=0 AND b.Date<='2014-09-02 19:49:37'::timestamp AND u.Reputation=11 AND u.Views>=0;

/*+ MergeJoin(ph u p)
 MergeJoin(ph u)
 SeqScan(ph)
 SeqScan(u)
 IndexScan(p)
 Leading(((ph u) p)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.UserId = p.OwnerUserId AND ph.UserId = u.Id AND ph.CreationDate>='2010-09-02 10:25:32'::timestamp AND ph.CreationDate<='2014-09-01 02:23:01'::timestamp AND p.PostTypeId=2 AND u.Views<=57;

/*+ HashJoin(v b u ph c)
 MergeJoin(v b u ph)
 MergeJoin(b u ph)
 MergeJoin(b u)
 IndexScan(v)
 IndexScan(b)
 IndexScan(u)
 SeqScan(ph)
 IndexScan(c)
 Leading(((v ((b u) ph)) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, votes as v, users as u WHERE u.Id =b.UserId AND b.UserId = ph.UserId AND ph.UserId = v.UserId AND v.UserId = c.UserId AND c.Score=0 AND c.CreationDate<='2014-09-07 16:15:25'::timestamp AND ph.PostHistoryTypeId=5 AND b.Date>='2010-07-20 14:19:12'::timestamp AND b.Date<='2014-08-14 10:12:18'::timestamp AND u.Views<=34;

/*+ HashJoin(v u b ph c)
 HashJoin(v u b ph)
 HashJoin(u b ph)
 HashJoin(u b)
 SeqScan(v)
 IndexScan(u)
 IndexScan(b)
 SeqScan(ph)
 IndexScan(c)
 Leading(((v ((u b) ph)) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, votes as v, users as u WHERE u.Id =b.UserId AND b.UserId = ph.UserId AND ph.UserId = v.UserId AND v.UserId = c.UserId AND ph.CreationDate>='2011-04-27 20:48:00'::timestamp AND ph.CreationDate<='2014-09-12 16:32:43'::timestamp AND u.Views>=0 AND u.DownVotes<=0 AND u.UpVotes<=18 AND u.CreationDate<='2014-09-05 14:51:36'::timestamp;

/*+ HashJoin(c u p)
 MergeJoin(u p)
 SeqScan(c)
 IndexScan(u)
 SeqScan(p)
 Leading((c (u p))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.UserId = u.Id AND u.Id = p.OwnerUserId AND c.Score=2 AND c.CreationDate<='2014-08-26 09:42:58'::timestamp AND p.PostTypeId=2 AND p.Score>=-2 AND u.DownVotes>=0;

/*+ HashJoin(c v pl p)
 HashJoin(c v pl)
 HashJoin(v pl)
 SeqScan(c)
 SeqScan(v)
 IndexScan(pl)
 SeqScan(p)
 Leading(((c (v pl)) p)) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, votes as v WHERE p.Id = c.PostId AND c.PostId = pl.PostId AND pl.PostId = v.PostId AND p.ViewCount>=0 AND pl.LinkTypeId=1;

/*+ HashJoin(c p pl)
 HashJoin(p pl)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 Leading((c (p pl))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE c.UserId = p.OwnerUserId AND p.Id = pl.PostId AND c.CreationDate>='2010-07-20 14:44:45'::timestamp AND c.CreationDate<='2014-08-26 15:24:15'::timestamp AND p.PostTypeId=1 AND p.Score>=0 AND p.Score<=30 AND p.CommentCount>=0 AND p.CommentCount<=14;

/*+ HashJoin(ph v u c pl p)
 HashJoin(v u c pl p)
 HashJoin(u c pl p)
 HashJoin(c pl p)
 HashJoin(pl p)
 SeqScan(ph)
 SeqScan(v)
 SeqScan(u)
 SeqScan(c)
 SeqScan(pl)
 SeqScan(p)
 Leading((ph (v (u (c (pl p)))))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, votes as v, users as u WHERE p.Id = pl.PostId AND p.Id = ph.PostId AND p.Id = c.PostId AND u.Id = c.UserId AND u.Id = v.UserId AND p.Score>=-1 AND p.FavoriteCount>=0 AND p.CreationDate>='2010-08-02 13:53:47'::timestamp AND p.CreationDate<='2014-09-11 14:42:03'::timestamp AND ph.CreationDate>='2011-01-12 08:54:45'::timestamp AND ph.CreationDate<='2014-09-11 08:01:32'::timestamp AND u.UpVotes>=0 AND u.UpVotes<=630;

/*+ HashJoin(c u b p ph)
 MergeJoin(c u b p)
 NestLoop(u b p)
 MergeJoin(u b)
 IndexScan(c)
 IndexScan(u)
 IndexScan(b)
 IndexScan(p)
 SeqScan(ph)
 Leading(((c ((u b) p)) ph)) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = ph.UserId AND u.Id = b.UserId AND p.AnswerCount>=0 AND p.AnswerCount<=3 AND p.FavoriteCount=0 AND ph.CreationDate>='2011-02-24 10:16:34'::timestamp AND ph.CreationDate<='2014-09-01 19:34:48'::timestamp AND u.Reputation<=1917;

/*+ HashJoin(v p pl u c b)
 HashJoin(v p pl u c)
 HashJoin(v p pl u)
 HashJoin(v p pl)
 HashJoin(v p)
 IndexScan(v)
 SeqScan(p)
 IndexScan(pl)
 IndexScan(u)
 SeqScan(c)
 SeqScan(b)
 Leading((((((v p) pl) u) c) b)) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, votes as v, badges as b, users as u WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND c.Score=0 AND p.ViewCount>=0 AND v.VoteTypeId=2 AND v.CreationDate>='2010-07-20 00:00:00'::timestamp AND u.UpVotes<=233;

/*+ HashJoin(ph c)
 SeqScan(ph)
 IndexScan(c)
 Leading((ph c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph WHERE c.UserId = ph.UserId AND c.Score=0 AND c.CreationDate>='2010-08-19 10:00:12'::timestamp;

/*+ MergeJoin(b v u p t)
 HashJoin(v u p t)
 MergeJoin(u p t)
 HashJoin(p t)
 IndexScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 SeqScan(t)
 Leading((b (v (u (p t))))) */
SELECT COUNT(*) FROM tags as t, posts as p, users as u, votes as v, badges as b WHERE p.Id = t.ExcerptPostId AND u.Id = v.UserId AND u.Id = b.UserId AND u.Id = p.OwnerUserId AND p.FavoriteCount>=0 AND p.FavoriteCount<=4 AND p.CreationDate>='2010-07-19 20:23:57'::timestamp AND p.CreationDate<='2014-09-01 13:50:38'::timestamp AND u.UpVotes>=0 AND u.UpVotes<=224 AND v.BountyAmount>=0 AND b.Date>='2010-07-27 17:58:45'::timestamp;

/*+ HashJoin(p u c v b)
 HashJoin(p u c v)
 HashJoin(p u c)
 HashJoin(u c)
 SeqScan(p)
 IndexScan(u)
 IndexScan(c)
 SeqScan(v)
 SeqScan(b)
 Leading((((p (u c)) v) b)) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, badges as b, users as u WHERE u.Id =c.UserId AND c.UserId = p.OwnerUserId AND p.OwnerUserId = v.UserId AND v.UserId = b.UserId AND p.AnswerCount<=4 AND p.CreationDate>='2010-10-26 10:20:01'::timestamp AND p.CreationDate<='2014-09-10 18:52:32'::timestamp AND v.CreationDate>='2010-07-19 00:00:00'::timestamp AND u.Reputation<=181 AND u.Views>=0 AND u.Views<=21 AND u.DownVotes<=0 AND u.UpVotes<=30;

/*+ HashJoin(c v p u)
 HashJoin(v p u)
 HashJoin(v p)
 SeqScan(c)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 Leading((c ((v p) u))) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE p.Id = c.PostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND p.ViewCount>=0 AND p.ViewCount<=6161 AND p.CommentCount>=0 AND p.CommentCount<=16 AND p.CreationDate>='2010-07-22 11:05:55'::timestamp AND p.CreationDate<='2014-09-13 15:56:55'::timestamp AND u.Reputation>=1 AND u.UpVotes>=0 AND u.UpVotes<=65;

/*+ HashJoin(ph c v)
 HashJoin(ph c)
 IndexScan(ph)
 IndexScan(c)
 SeqScan(v)
 Leading(((ph c) v)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v WHERE ph.PostId = c.PostId AND ph.PostId = v.PostId AND c.Score=0;

/*+ HashJoin(c p b u ph)
 HashJoin(c p b u)
 MergeJoin(p b u)
 HashJoin(b u)
 IndexScan(c)
 SeqScan(p)
 IndexScan(b)
 SeqScan(u)
 SeqScan(ph)
 Leading(((c (p (b u))) ph)) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = ph.UserId AND u.Id = b.UserId AND p.ViewCount<=7547 AND p.AnswerCount>=0 AND p.CommentCount<=11 AND ph.PostHistoryTypeId=2 AND ph.CreationDate>='2011-03-02 19:00:15'::timestamp AND u.Reputation<=8164 AND u.Views>=0 AND u.Views<=83 AND u.DownVotes<=0 AND u.CreationDate<='2014-07-24 13:51:53'::timestamp;

/*+ HashJoin(v b)
 SeqScan(v)
 SeqScan(b)
 Leading((v b)) */
SELECT COUNT(*) FROM badges as b, votes as v WHERE b.UserId = v.UserId;

/*+ HashJoin(c ph)
 IndexScan(c)
 SeqScan(ph)
 Leading((c ph)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph WHERE c.UserId = ph.UserId AND c.Score=0;

/*+ HashJoin(c b v u)
 HashJoin(b v u)
 HashJoin(v u)
 SeqScan(c)
 SeqScan(b)
 SeqScan(v)
 SeqScan(u)
 Leading((c (b (v u)))) */
SELECT COUNT(*) FROM comments as c, votes as v, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND v.CreationDate>='2010-07-20 00:00:00'::timestamp AND v.CreationDate<='2014-09-06 00:00:00'::timestamp AND b.Date>='2010-07-19 19:39:09'::timestamp AND u.DownVotes>=0 AND u.UpVotes=0 AND u.CreationDate>='2010-07-19 20:17:05'::timestamp;

/*+ HashJoin(c ph)
 IndexScan(c)
 SeqScan(ph)
 Leading((c ph)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph WHERE c.UserId = ph.UserId AND c.Score=0;

/*+ HashJoin(p b)
 SeqScan(p)
 SeqScan(b)
 Leading((p b)) */
SELECT COUNT(*) FROM badges as b, posts as p WHERE b.UserId = p.OwnerUserId AND p.Score<=17;

/*+ HashJoin(c p pl)
 HashJoin(p pl)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 Leading((c (p pl))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE c.UserId = p.OwnerUserId AND p.Id = pl.PostId AND c.CreationDate<='2014-09-09 10:50:46'::timestamp AND p.Score<=26 AND p.AnswerCount=1 AND p.CommentCount<=8;

/*+ HashJoin(ph u b p c)
 MergeJoin(ph u b p)
 HashJoin(u b p)
 HashJoin(u b)
 IndexScan(ph)
 IndexScan(u)
 IndexScan(b)
 SeqScan(p)
 SeqScan(c)
 Leading(((ph ((u b) p)) c)) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = ph.UserId AND u.Id = b.UserId AND c.Score=0 AND p.ViewCount>=0 AND p.CommentCount=0 AND p.FavoriteCount=0 AND b.Date<='2014-09-02 17:31:42'::timestamp;

/*+ HashJoin(v ph c pl)
 HashJoin(ph c pl)
 HashJoin(c pl)
 SeqScan(v)
 SeqScan(ph)
 SeqScan(c)
 IndexScan(pl)
 Leading((v (ph (c pl)))) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, postHistory as ph, votes as v WHERE pl.PostId = c.PostId AND c.PostId = ph.PostId AND ph.PostId = v.PostId AND pl.CreationDate>='2011-06-23 14:54:12'::timestamp AND pl.CreationDate<='2014-08-05 19:37:54'::timestamp AND ph.CreationDate>='2010-07-23 05:55:44'::timestamp;

/*+ HashJoin(ph u b c)
 MergeJoin(ph u b)
 HashJoin(u b)
 IndexScan(ph)
 IndexScan(u)
 SeqScan(b)
 SeqScan(c)
 Leading(((ph (u b)) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = ph.UserId AND u.Id = b.UserId AND c.Score=0 AND u.DownVotes>=0 AND u.UpVotes<=7;

/*+ HashJoin(p b v u)
 HashJoin(b v u)
 HashJoin(v u)
 SeqScan(p)
 SeqScan(b)
 SeqScan(v)
 SeqScan(u)
 Leading((p (b (v u)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE u.Id = v.UserId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>=-3 AND p.Score<=61 AND p.CommentCount>=0 AND p.CreationDate>='2010-07-21 10:13:25'::timestamp AND p.CreationDate<='2014-08-14 04:41:08'::timestamp AND b.Date>='2010-10-18 19:26:20'::timestamp AND b.Date<='2014-09-12 14:21:22'::timestamp AND u.Reputation=101 AND u.CreationDate<='2014-08-20 12:59:22'::timestamp;

/*+ HashJoin(c u b ph)
 HashJoin(u b ph)
 HashJoin(u b)
 SeqScan(c)
 IndexScan(u)
 SeqScan(b)
 SeqScan(ph)
 Leading((c ((u b) ph))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = ph.UserId AND u.Id = b.UserId AND c.Score=0 AND ph.PostHistoryTypeId=1;

/*+ HashJoin(c ph v u)
 HashJoin(ph v u)
 HashJoin(v u)
 SeqScan(c)
 SeqScan(ph)
 SeqScan(v)
 SeqScan(u)
 Leading((c (ph (v u)))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v, users as u WHERE u.Id = v.UserId AND v.UserId = ph.UserId AND ph.UserId =c.UserId AND c.CreationDate>='2010-08-05 13:18:39'::timestamp AND c.CreationDate<='2014-09-13 01:37:58'::timestamp AND v.BountyAmount>=0 AND u.Reputation>=1 AND u.Reputation<=1815 AND u.Views>=0 AND u.Views<=25 AND u.UpVotes>=0 AND u.UpVotes<=55 AND u.CreationDate>='2010-07-26 21:31:01'::timestamp;

/*+ HashJoin(c u b ph)
 HashJoin(u b ph)
 HashJoin(u b)
 SeqScan(c)
 IndexScan(u)
 SeqScan(b)
 SeqScan(ph)
 Leading((c ((u b) ph))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = ph.UserId AND u.Id = b.UserId AND c.Score=0 AND u.UpVotes>=0 AND u.UpVotes<=225;

/*+ HashJoin(v u b ph c)
 HashJoin(v u b ph)
 HashJoin(u b ph)
 HashJoin(u b)
 SeqScan(v)
 IndexScan(u)
 IndexScan(b)
 SeqScan(ph)
 SeqScan(c)
 Leading(((v ((u b) ph)) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, votes as v, users as u WHERE u.Id =b.UserId AND b.UserId = ph.UserId AND ph.UserId = v.UserId AND v.UserId = c.UserId AND c.CreationDate>='2010-07-20 16:03:44'::timestamp AND c.CreationDate<='2014-09-02 19:32:20'::timestamp AND ph.PostHistoryTypeId=4 AND u.Views>=0 AND u.Views<=111 AND u.DownVotes<=82;

/*+ HashJoin(b c u pl p)
 HashJoin(c u pl p)
 HashJoin(u pl p)
 HashJoin(pl p)
 SeqScan(b)
 SeqScan(c)
 SeqScan(u)
 SeqScan(pl)
 SeqScan(p)
 Leading((b (c (u (pl p))))) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND p.Id = c.PostId AND u.Id = b.UserId AND u.Id = p.OwnerUserId AND c.Score=0 AND p.CommentCount>=0 AND p.CommentCount<=21 AND p.CreationDate>='2010-08-05 01:24:22'::timestamp AND b.Date>='2010-07-20 05:44:09'::timestamp AND b.Date<='2014-08-03 15:39:00'::timestamp;

/*+ HashJoin(b p v u)
 HashJoin(p v u)
 HashJoin(v u)
 SeqScan(b)
 SeqScan(p)
 SeqScan(v)
 IndexScan(u)
 Leading((b (p (v u)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE u.Id = v.UserId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND v.BountyAmount<=50 AND p.Score>=-3 AND p.Score<=12 AND p.ViewCount>=0 AND p.ViewCount<=2761 AND p.AnswerCount>=0 AND p.CommentCount<=10 AND p.FavoriteCount>=0 AND p.FavoriteCount<=6 AND p.CreationDate<='2014-09-05 15:42:39'::timestamp AND b.Date>='2010-07-19 19:39:08'::timestamp AND u.Reputation>=1 AND u.Reputation<=1047 AND u.DownVotes<=0 AND u.CreationDate>='2011-07-18 13:17:03'::timestamp;

/*+ HashJoin(b c u)
 HashJoin(c u)
 SeqScan(b)
 SeqScan(c)
 SeqScan(u)
 Leading((b (c u))) */
SELECT COUNT(*) FROM comments as c, badges as b, users as u WHERE u.Id = c.UserId AND c.UserId = b.UserId AND c.Score=0 AND b.Date>='2010-09-29 17:06:14'::timestamp AND b.Date<='2014-09-04 14:00:19'::timestamp AND u.Views>=0 AND u.UpVotes>=0;

/*+ HashJoin(ph pl p b u v)
 MergeJoin(pl p b u v)
 HashJoin(p b u v)
 MergeJoin(b u v)
 HashJoin(u v)
 SeqScan(ph)
 SeqScan(pl)
 SeqScan(p)
 IndexScan(b)
 IndexScan(u)
 IndexScan(v)
 Leading((ph (pl (p (b (u v)))))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph, votes as v, badges as b, users as u WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND u.Id = ph.UserId AND u.Id = v.UserId AND p.Score>=-1 AND p.AnswerCount>=0 AND p.FavoriteCount>=0 AND p.FavoriteCount<=5 AND pl.LinkTypeId=1 AND v.CreationDate>='2010-07-19 00:00:00'::timestamp AND v.CreationDate<='2014-09-12 00:00:00'::timestamp AND u.DownVotes>=0 AND u.DownVotes<=2;

/*+ HashJoin(b c u)
 HashJoin(c u)
 SeqScan(b)
 SeqScan(c)
 SeqScan(u)
 Leading((b (c u))) */
SELECT COUNT(*) FROM comments as c, badges as b, users as u WHERE u.Id = c.UserId AND c.UserId = b.UserId AND c.CreationDate>='2010-07-21 03:31:11'::timestamp AND c.CreationDate<='2014-08-26 15:33:59'::timestamp;

/*+ HashJoin(c ph)
 IndexScan(c)
 SeqScan(ph)
 Leading((c ph)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph WHERE c.UserId = ph.UserId AND c.Score=0 AND ph.PostHistoryTypeId=2;

/*+ HashJoin(u c p)
 HashJoin(c p)
 SeqScan(u)
 SeqScan(c)
 IndexScan(p)
 Leading((u (c p))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.PostId = p.Id AND c.UserId = u.Id AND c.Score=0 AND p.PostTypeId=1 AND p.Score>=-2 AND p.CommentCount>=0 AND p.CommentCount<=15 AND u.Reputation>=1 AND u.DownVotes>=0;

/*+ HashJoin(ph c v p pl)
 HashJoin(c v p pl)
 HashJoin(v p pl)
 HashJoin(p pl)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(v)
 SeqScan(p)
 IndexScan(pl)
 Leading((ph (c (v (p pl))))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, votes as v WHERE p.Id = c.PostId AND p.Id = pl.PostId AND p.Id = ph.PostId AND p.Id = v.PostId AND c.Score=0 AND c.CreationDate>='2010-08-03 15:14:10'::timestamp AND p.Score>=0 AND p.Score<=25 AND p.ViewCount>=0 AND p.ViewCount<=10357 AND p.AnswerCount>=0 AND p.AnswerCount<=3 AND p.CommentCount<=15 AND p.CreationDate>='2010-08-04 15:11:13'::timestamp AND p.CreationDate<='2014-09-08 19:11:12'::timestamp AND v.CreationDate<='2014-09-12 00:00:00'::timestamp;

/*+ HashJoin(c ph v pl p b)
 HashJoin(c ph v pl p)
 MergeJoin(ph v pl p)
 MergeJoin(v pl p)
 MergeJoin(pl p)
 SeqScan(c)
 SeqScan(ph)
 SeqScan(v)
 SeqScan(pl)
 SeqScan(p)
 IndexScan(b)
 Leading(((c (ph (v (pl p)))) b)) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, votes as v, badges as b WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.Id = ph.PostId AND p.Id = v.PostId AND b.UserId = c.UserId AND c.Score=2 AND p.Score>=-1 AND p.Score<=14 AND p.CommentCount>=0 AND pl.LinkTypeId=1 AND v.CreationDate>='2010-07-20 00:00:00'::timestamp AND v.CreationDate<='2014-09-09 00:00:00'::timestamp;

/*+ HashJoin(b c u)
 HashJoin(c u)
 SeqScan(b)
 SeqScan(c)
 IndexScan(u)
 Leading((b (c u))) */
SELECT COUNT(*) FROM comments as c, badges as b, users as u WHERE u.Id = c.UserId AND c.UserId = b.UserId;

/*+ HashJoin(c b)
 IndexScan(c)
 SeqScan(b)
 Leading((c b)) */
SELECT COUNT(*) FROM comments as c, badges as b WHERE c.UserId = b.UserId AND c.CreationDate<='2014-09-09 17:55:58'::timestamp AND b.Date>='2010-07-26 20:03:42'::timestamp AND b.Date<='2014-09-05 03:54:02'::timestamp;

/*+ HashJoin(u c ph p pl)
 HashJoin(c ph p pl)
 MergeJoin(ph p pl)
 HashJoin(p pl)
 SeqScan(u)
 SeqScan(c)
 IndexScan(ph)
 SeqScan(p)
 IndexScan(pl)
 Leading((u (c (ph (p pl))))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, users as u WHERE p.Id = pl.RelatedPostId AND pl.RelatedPostId = c.PostId AND pl.RelatedPostId = ph.PostId AND u.Id= c.UserId AND c.Score=0 AND p.AnswerCount>=0 AND pl.CreationDate>='2012-03-11 17:30:52'::timestamp AND pl.CreationDate<='2014-07-26 12:05:54'::timestamp AND ph.PostHistoryTypeId=5;

/*+ HashJoin(b p)
 SeqScan(b)
 SeqScan(p)
 Leading((b p)) */
SELECT COUNT(*) FROM badges as b, posts as p WHERE b.UserId = p.OwnerUserId AND p.PostTypeId=1 AND p.Score>=0 AND p.Score<=28 AND p.CommentCount>=0 AND p.CommentCount<=11 AND p.FavoriteCount>=0 AND p.FavoriteCount<=16 AND p.CreationDate>='2010-07-20 08:53:15'::timestamp;

/*+ HashJoin(ph u b p c)
 NestLoop(ph u b p)
 HashJoin(ph u b)
 NestLoop(u b)
 IndexScan(ph)
 IndexScan(u)
 IndexScan(b)
 IndexScan(p)
 SeqScan(c)
 Leading((((ph (u b)) p) c)) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = ph.UserId AND u.Id = b.UserId AND c.Score=0 AND ph.PostHistoryTypeId=2 AND ph.CreationDate>='2011-02-05 01:46:59'::timestamp AND u.Reputation=1;

/*+ HashJoin(c p pl)
 HashJoin(p pl)
 SeqScan(c)
 SeqScan(p)
 IndexScan(pl)
 Leading((c (p pl))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE p.Id = c.PostId AND p.Id = pl.PostId AND c.Score=1 AND p.Score>=0 AND p.AnswerCount>=0 AND p.AnswerCount<=4 AND p.CommentCount<=17 AND pl.LinkTypeId=1;

/*+ HashJoin(ph c v u p pl)
 HashJoin(c v u p pl)
 HashJoin(p pl)
 HashJoin(c v u)
 HashJoin(v u)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(v)
 SeqScan(u)
 SeqScan(p)
 IndexScan(pl)
 Leading((ph ((c (v u)) (p pl)))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, votes as v, users as u WHERE p.Id = pl.PostId AND p.Id = ph.PostId AND p.Id = c.PostId AND u.Id = c.UserId AND u.Id = v.UserId AND c.CreationDate<='2014-09-13 21:08:57'::timestamp AND p.PostTypeId=1 AND p.ViewCount>=0 AND p.ViewCount<=5988 AND p.CommentCount<=15 AND ph.CreationDate>='2011-05-09 04:25:41'::timestamp AND v.CreationDate<='2014-09-12 00:00:00'::timestamp AND u.Views>=0 AND u.DownVotes<=1 AND u.UpVotes<=7;

/*+ HashJoin(ph c u)
 HashJoin(c u)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(u)
 Leading((ph (c u))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND c.Score=0 AND c.CreationDate<='2014-09-02 15:34:22'::timestamp AND ph.CreationDate<='2014-09-11 16:10:32'::timestamp AND u.Reputation>=1 AND u.Reputation<=218 AND u.UpVotes>=0 AND u.UpVotes<=403;

/*+ HashJoin(c b)
 SeqScan(c)
 IndexScan(b)
 Leading((c b)) */
SELECT COUNT(*) FROM comments as c, badges as b WHERE c.UserId = b.UserId AND b.Date<='2014-09-11 22:42:22'::timestamp;

/*+ HashJoin(v ph c pl)
 HashJoin(ph c pl)
 HashJoin(c pl)
 SeqScan(v)
 SeqScan(ph)
 SeqScan(c)
 IndexScan(pl)
 Leading((v (ph (c pl)))) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, postHistory as ph, votes as v WHERE pl.PostId = c.PostId AND c.PostId = ph.PostId AND ph.PostId = v.PostId AND c.Score=0 AND c.CreationDate>='2010-09-14 20:41:59'::timestamp AND c.CreationDate<='2014-09-11 14:46:26'::timestamp AND pl.LinkTypeId=1 AND ph.PostHistoryTypeId=3;

/*+ HashJoin(c v p pl u b)
 HashJoin(c v p pl u)
 HashJoin(v p pl u)
 HashJoin(v p pl)
 HashJoin(v p)
 SeqScan(c)
 SeqScan(v)
 SeqScan(p)
 IndexScan(pl)
 IndexScan(u)
 SeqScan(b)
 Leading(((c (((v p) pl) u)) b)) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, votes as v, badges as b, users as u WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.CommentCount>=0 AND p.FavoriteCount>=0 AND p.FavoriteCount<=4 AND b.Date>='2010-07-28 09:38:54'::timestamp AND b.Date<='2014-09-03 00:13:04'::timestamp;

/*+ HashJoin(ph u c)
 HashJoin(u c)
 SeqScan(ph)
 IndexScan(u)
 SeqScan(c)
 Leading((ph (u c))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND ph.CreationDate<='2014-08-26 18:29:07'::timestamp;

/*+ HashJoin(ph u p b)
 MergeJoin(ph u p)
 HashJoin(u p)
 IndexScan(ph)
 IndexScan(u)
 SeqScan(p)
 IndexScan(b)
 Leading(((ph (u p)) b)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u, badges as b WHERE u.Id = p.OwnerUserId AND p.OwnerUserId = ph.UserId AND ph.UserId = b.UserId AND ph.PostHistoryTypeId=2 AND p.PostTypeId=2 AND p.Score<=18 AND u.Reputation>=1 AND u.Views>=0 AND u.Views<=12 AND u.UpVotes>=0;

/*+ HashJoin(ph u b p c)
 MergeJoin(ph u b p)
 NestLoop(u b p)
 MergeJoin(u b)
 SeqScan(ph)
 IndexScan(u)
 IndexScan(b)
 IndexScan(p)
 SeqScan(c)
 Leading(((ph ((u b) p)) c)) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = ph.UserId AND u.Id = b.UserId AND p.Score<=43 AND p.ViewCount>=0 AND p.ViewCount<=1209 AND p.CommentCount=0 AND p.FavoriteCount=0 AND p.CreationDate>='2010-07-20 04:16:52'::timestamp AND p.CreationDate<='2014-09-11 11:58:50'::timestamp AND ph.CreationDate<='2014-07-23 06:08:13'::timestamp AND u.Views>=0 AND u.DownVotes=0;

/*+ HashJoin(ph v u p pl b)
 HashJoin(ph v u p pl)
 HashJoin(v u p pl)
 MergeJoin(u p pl)
 HashJoin(p pl)
 SeqScan(ph)
 SeqScan(v)
 SeqScan(u)
 IndexScan(p)
 IndexScan(pl)
 SeqScan(b)
 Leading(((ph (v (u (p pl)))) b)) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph, votes as v, badges as b, users as u WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND u.Id = ph.UserId AND u.Id = v.UserId AND p.Score<=19 AND p.ViewCount<=4607 AND p.AnswerCount<=4 AND p.FavoriteCount=0 AND ph.PostHistoryTypeId=2 AND v.CreationDate<='2014-09-12 00:00:00'::timestamp AND u.Reputation<=6764 AND u.Views>=0;

/*+ HashJoin(ph v c)
 HashJoin(ph v)
 IndexScan(ph)
 SeqScan(v)
 SeqScan(c)
 Leading(((ph v) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v WHERE ph.PostId = c.PostId AND ph.PostId = v.PostId;

/*+ HashJoin(ph v u c p pl)
 HashJoin(v u c p pl)
 HashJoin(u c p pl)
 HashJoin(c p pl)
 HashJoin(p pl)
 SeqScan(ph)
 SeqScan(v)
 SeqScan(u)
 SeqScan(c)
 SeqScan(p)
 IndexScan(pl)
 Leading((ph (v (u (c (p pl)))))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, votes as v, users as u WHERE p.Id = pl.PostId AND p.Id = ph.PostId AND p.Id = c.PostId AND u.Id = c.UserId AND u.Id = v.UserId AND c.Score=0 AND p.CreationDate>='2010-07-29 07:05:38'::timestamp AND pl.CreationDate<='2014-09-08 15:54:55'::timestamp AND ph.PostHistoryTypeId=1 AND ph.CreationDate>='2010-12-31 16:02:54'::timestamp AND ph.CreationDate<='2014-08-15 09:28:28'::timestamp AND u.Views>=0 AND u.Views<=108;

/*+ HashJoin(b v p u)
 HashJoin(v p u)
 HashJoin(v p)
 SeqScan(b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 Leading((b ((v p) u))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.AnswerCount>=0 AND p.CommentCount>=0 AND p.CreationDate>='2010-07-27 16:00:22'::timestamp AND b.Date>='2010-08-17 12:53:45'::timestamp AND b.Date<='2014-09-04 17:23:47'::timestamp AND u.Views<=59 AND u.DownVotes>=0 AND u.CreationDate<='2014-09-03 18:12:55'::timestamp;

/*+ HashJoin(c b v u)
 HashJoin(b v u)
 HashJoin(v u)
 SeqScan(c)
 SeqScan(b)
 SeqScan(v)
 SeqScan(u)
 Leading((c (b (v u)))) */
SELECT COUNT(*) FROM comments as c, votes as v, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND c.Score=0 AND c.CreationDate<='2014-09-08 14:51:34'::timestamp AND u.UpVotes>=0;

/*+ HashJoin(c v pl p)
 HashJoin(c v pl)
 HashJoin(v pl)
 SeqScan(c)
 SeqScan(v)
 IndexScan(pl)
 SeqScan(p)
 Leading(((c (v pl)) p)) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, votes as v WHERE p.Id = c.PostId AND c.PostId = pl.PostId AND pl.PostId = v.PostId AND p.Score<=26 AND p.CommentCount>=0 AND p.CommentCount<=11 AND pl.LinkTypeId=1;

/*+ MergeJoin(ph p pl)
 HashJoin(p pl)
 IndexScan(ph)
 SeqScan(p)
 IndexScan(pl)
 Leading((ph (p pl))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph WHERE p.Id = pl.PostId AND pl.PostId = ph.PostId AND p.Score<=13 AND p.CreationDate>='2010-08-16 17:27:28'::timestamp AND pl.LinkTypeId=1;

/*+ HashJoin(c p)
 SeqScan(c)
 SeqScan(p)
 Leading((c p)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND c.CreationDate>='2010-07-28 13:43:41'::timestamp AND c.CreationDate<='2014-09-11 13:21:21'::timestamp AND p.Score>=0 AND p.ViewCount>=0 AND p.ViewCount<=1982 AND p.CommentCount>=0 AND p.CreationDate>='2010-08-04 08:39:21'::timestamp;

/*+ HashJoin(v c u)
 HashJoin(c u)
 SeqScan(v)
 SeqScan(c)
 SeqScan(u)
 Leading((v (c u))) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND c.PostId = v.PostId AND c.Score=0 AND v.VoteTypeId=2 AND u.CreationDate<='2014-09-12 14:52:52'::timestamp;

/*+ HashJoin(v u p c)
 HashJoin(v u p)
 HashJoin(v u)
 SeqScan(v)
 SeqScan(u)
 SeqScan(p)
 SeqScan(c)
 Leading((((v u) p) c)) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = v.UserId AND c.CreationDate<='2014-08-30 04:57:59'::timestamp AND p.Score>=0 AND p.Score<=42 AND p.AnswerCount>=0 AND p.AnswerCount<=6 AND p.CommentCount>=0 AND p.CommentCount<=22 AND p.CreationDate>='2010-07-25 12:36:23'::timestamp AND v.CreationDate>='2010-07-20 00:00:00'::timestamp AND v.CreationDate<='2014-09-12 00:00:00'::timestamp AND u.Reputation>=1 AND u.UpVotes=0 AND u.CreationDate>='2010-07-20 07:04:42'::timestamp AND u.CreationDate<='2014-09-11 00:30:17'::timestamp;

/*+ HashJoin(v c u)
 HashJoin(c u)
 SeqScan(v)
 SeqScan(c)
 SeqScan(u)
 Leading((v (c u))) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND c.PostId = v.PostId AND c.Score=0 AND c.CreationDate>='2010-07-27 15:08:20'::timestamp AND u.Views>=0 AND u.UpVotes>=0 AND u.UpVotes<=7;

/*+ HashJoin(v ph c pl)
 HashJoin(ph c pl)
 HashJoin(c pl)
 SeqScan(v)
 SeqScan(ph)
 SeqScan(c)
 IndexScan(pl)
 Leading((v (ph (c pl)))) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, postHistory as ph, votes as v WHERE pl.PostId = c.PostId AND c.PostId = ph.PostId AND ph.PostId = v.PostId AND c.CreationDate<='2014-09-09 21:40:04'::timestamp AND ph.PostHistoryTypeId=5;

/*+ HashJoin(ph b v u)
 HashJoin(b v u)
 HashJoin(v u)
 SeqScan(ph)
 SeqScan(b)
 SeqScan(v)
 SeqScan(u)
 Leading((ph (b (v u)))) */
SELECT COUNT(*) FROM postHistory as ph, votes as v, users as u, badges as b WHERE u.Id = ph.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND v.BountyAmount<=100;

/*+ HashJoin(ph u p b)
 MergeJoin(ph u p)
 HashJoin(u p)
 IndexScan(ph)
 IndexScan(u)
 SeqScan(p)
 IndexScan(b)
 Leading(((ph (u p)) b)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u, badges as b WHERE u.Id = p.OwnerUserId AND p.OwnerUserId = ph.UserId AND ph.UserId = b.UserId AND p.Score=2 AND p.AnswerCount>=0 AND u.DownVotes>=0 AND u.DownVotes<=1 AND u.CreationDate<='2014-09-04 15:25:33'::timestamp;

/*+ HashJoin(ph u p b)
 MergeJoin(ph u p)
 HashJoin(u p)
 IndexScan(ph)
 IndexScan(u)
 SeqScan(p)
 SeqScan(b)
 Leading(((ph (u p)) b)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u, badges as b WHERE u.Id = p.OwnerUserId AND p.OwnerUserId = ph.UserId AND ph.UserId = b.UserId AND ph.PostHistoryTypeId=1 AND ph.CreationDate<='2014-09-02 05:16:21'::timestamp AND p.PostTypeId=1 AND p.Score>=-2 AND p.AnswerCount>=0 AND p.AnswerCount<=3 AND p.CommentCount>=0 AND p.FavoriteCount<=12 AND p.CreationDate>='2009-04-12 07:26:45'::timestamp AND p.CreationDate<='2014-09-11 07:42:20'::timestamp AND u.DownVotes<=0 AND u.UpVotes<=28 AND b.Date>='2010-08-02 18:00:10'::timestamp AND b.Date<='2014-09-08 18:08:26'::timestamp;

/*+ HashJoin(ph u c)
 HashJoin(u c)
 SeqScan(ph)
 IndexScan(u)
 SeqScan(c)
 Leading((ph (u c))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND c.CreationDate>='2010-10-15 14:42:27'::timestamp AND c.CreationDate<='2014-09-09 16:01:11'::timestamp;

/*+ HashJoin(ph c v u p pl)
 HashJoin(c v u p pl)
 HashJoin(p pl)
 HashJoin(c v u)
 HashJoin(v u)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(v)
 SeqScan(u)
 SeqScan(p)
 IndexScan(pl)
 Leading((ph ((c (v u)) (p pl)))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, votes as v, users as u WHERE p.Id = pl.PostId AND p.Id = ph.PostId AND p.Id = c.PostId AND u.Id = c.UserId AND u.Id = v.UserId AND c.CreationDate>='2010-07-29 18:21:06'::timestamp AND p.PostTypeId=1 AND p.Score>=-3 AND p.Score<=26 AND p.AnswerCount>=0 AND p.AnswerCount<=5 AND p.CommentCount>=0 AND pl.CreationDate<='2014-08-21 19:13:52'::timestamp AND u.UpVotes<=47;

/*+ HashJoin(v b u p pl c)
 HashJoin(v b u p pl)
 MergeJoin(b u p pl)
 MergeJoin(b u p)
 MergeJoin(b u)
 SeqScan(v)
 IndexScan(b)
 IndexScan(u)
 SeqScan(p)
 IndexScan(pl)
 SeqScan(c)
 Leading(((v (((b u) p) pl)) c)) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, votes as v, badges as b, users as u WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>=0 AND p.ViewCount>=0 AND p.AnswerCount>=0 AND p.AnswerCount<=4 AND p.CommentCount>=0 AND p.CommentCount<=11 AND p.CreationDate<='2014-09-04 19:36:06'::timestamp AND pl.LinkTypeId=1 AND pl.CreationDate>='2011-09-26 20:58:32'::timestamp AND b.Date<='2014-09-13 20:15:52'::timestamp;

/*+ HashJoin(ph c v u p pl)
 HashJoin(c v u p pl)
 HashJoin(p pl)
 HashJoin(c v u)
 HashJoin(v u)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(v)
 SeqScan(u)
 SeqScan(p)
 IndexScan(pl)
 Leading((ph ((c (v u)) (p pl)))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, votes as v, users as u WHERE p.Id = pl.PostId AND p.Id = ph.PostId AND p.Id = c.PostId AND u.Id = c.UserId AND u.Id = v.UserId AND c.CreationDate>='2010-08-19 18:54:53'::timestamp AND p.Score>=0 AND p.AnswerCount>=0 AND p.AnswerCount<=6 AND p.CommentCount<=12 AND pl.LinkTypeId=1 AND ph.PostHistoryTypeId=5 AND ph.CreationDate<='2014-09-04 03:39:40'::timestamp AND u.UpVotes>=0 AND u.UpVotes<=34;

/*+ HashJoin(b p v u)
 HashJoin(p v u)
 HashJoin(v u)
 SeqScan(b)
 SeqScan(p)
 SeqScan(v)
 SeqScan(u)
 Leading((b (p (v u)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE u.Id = v.UserId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND v.CreationDate>='2010-07-19 00:00:00'::timestamp AND p.AnswerCount<=3 AND p.FavoriteCount<=31 AND u.Reputation=101 AND u.UpVotes>=0 AND u.CreationDate>='2010-07-20 01:39:55'::timestamp AND u.CreationDate<='2014-08-24 18:13:02'::timestamp;

/*+ HashJoin(c p u)
 HashJoin(p u)
 SeqScan(c)
 SeqScan(p)
 SeqScan(u)
 Leading((c (p u))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.UserId = u.Id AND u.Id = p.OwnerUserId AND c.Score=0 AND p.Score<=30 AND p.CreationDate>='2010-07-20 05:04:40'::timestamp AND u.Views<=26 AND u.CreationDate>='2010-09-19 18:34:42'::timestamp;

/*+ HashJoin(ph v u p)
 MergeJoin(v u p)
 MergeJoin(u p)
 SeqScan(ph)
 IndexScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((ph (v (u p)))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, votes as v, users as u WHERE p.Id = ph.PostId AND u.Id = p.OwnerUserId AND p.Id = v.PostId AND ph.PostHistoryTypeId=1 AND ph.CreationDate<='2014-08-30 07:08:46'::timestamp AND p.CommentCount>=0 AND p.CreationDate>='2010-07-22 18:16:08'::timestamp AND p.CreationDate<='2014-09-11 07:51:18'::timestamp AND v.VoteTypeId=2 AND v.CreationDate>='2010-07-20 00:00:00'::timestamp AND u.DownVotes<=0 AND u.CreationDate<='2014-09-04 08:00:36'::timestamp;

/*+ HashJoin(v u b ph c)
 HashJoin(v u b ph)
 HashJoin(u b ph)
 HashJoin(u b)
 SeqScan(v)
 IndexScan(u)
 IndexScan(b)
 SeqScan(ph)
 IndexScan(c)
 Leading(((v ((u b) ph)) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, votes as v, users as u WHERE u.Id =b.UserId AND b.UserId = ph.UserId AND ph.UserId = v.UserId AND v.UserId = c.UserId AND c.CreationDate<='2014-09-10 00:59:28'::timestamp AND ph.CreationDate>='2010-08-19 13:09:50'::timestamp AND ph.CreationDate<='2014-08-27 15:43:24'::timestamp AND u.Views>=0 AND u.DownVotes>=0 AND u.UpVotes>=0 AND u.UpVotes<=4;

/*+ HashJoin(v c u p pl ph)
 HashJoin(v c u p pl)
 MergeJoin(c u p pl)
 MergeJoin(c u p)
 MergeJoin(c u)
 SeqScan(v)
 IndexScan(c)
 IndexScan(u)
 IndexScan(p)
 IndexScan(pl)
 SeqScan(ph)
 Leading(((v (((c u) p) pl)) ph)) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, votes as v, users as u WHERE p.Id = pl.PostId AND p.Id = ph.PostId AND p.Id = c.PostId AND u.Id = c.UserId AND u.Id = v.UserId AND c.CreationDate<='2014-09-11 12:30:36'::timestamp AND p.ViewCount<=14855 AND pl.CreationDate>='2011-02-12 12:45:45'::timestamp AND pl.CreationDate<='2014-09-12 02:11:22'::timestamp AND ph.CreationDate<='2014-08-22 20:04:25'::timestamp AND u.DownVotes>=0 AND u.CreationDate>='2010-07-19 19:15:49'::timestamp;

/*+ HashJoin(c v u p)
 HashJoin(v u p)
 HashJoin(v u)
 SeqScan(c)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((c ((v u) p))) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = v.UserId AND c.Score=0 AND p.AnswerCount>=0 AND p.AnswerCount<=4 AND u.Views<=37 AND u.DownVotes>=0 AND u.DownVotes<=3 AND u.UpVotes>=0 AND u.UpVotes<=152 AND u.CreationDate>='2010-11-25 21:01:32'::timestamp AND u.CreationDate<='2014-08-04 18:49:55'::timestamp;

/*+ HashJoin(ph u c)
 HashJoin(u c)
 SeqScan(ph)
 IndexScan(u)
 SeqScan(c)
 Leading((ph (u c))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND ph.CreationDate<='2014-08-07 12:10:45'::timestamp AND u.DownVotes<=0;

/*+ HashJoin(c b v u)
 MergeJoin(b v u)
 HashJoin(v u)
 SeqScan(c)
 IndexScan(b)
 SeqScan(v)
 SeqScan(u)
 Leading((c (b (v u)))) */
SELECT COUNT(*) FROM comments as c, votes as v, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND b.Date<='2014-09-02 16:08:44'::timestamp AND u.Reputation>=1 AND u.UpVotes>=0 AND u.CreationDate<='2014-09-03 08:26:11'::timestamp;

/*+ MergeJoin(ph u p)
 MergeJoin(ph u)
 SeqScan(ph)
 SeqScan(u)
 IndexScan(p)
 Leading(((ph u) p)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.UserId = p.OwnerUserId AND ph.UserId = u.Id AND ph.CreationDate>='2011-01-13 14:51:20'::timestamp AND p.Score>=-3 AND p.Score<=152 AND p.ViewCount<=2829 AND p.CommentCount<=12 AND u.Views>=0 AND u.Views<=14 AND u.DownVotes>=0 AND u.DownVotes<=4;

/*+ HashJoin(b p v u)
 HashJoin(p v u)
 HashJoin(v u)
 SeqScan(b)
 SeqScan(p)
 SeqScan(v)
 SeqScan(u)
 Leading((b (p (v u)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE u.Id = v.UserId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND v.CreationDate>='2009-11-10 00:00:00'::timestamp AND p.PostTypeId=1 AND p.Score>=-1 AND p.FavoriteCount>=0 AND u.Views>=0 AND u.Views<=488 AND u.UpVotes>=0 AND u.UpVotes<=44 AND u.CreationDate>='2011-04-12 20:07:30'::timestamp AND u.CreationDate<='2014-09-01 14:06:15'::timestamp;

/*+ HashJoin(c b p u ph)
 HashJoin(c b p u)
 MergeJoin(b p u)
 HashJoin(p u)
 IndexScan(c)
 IndexScan(b)
 SeqScan(p)
 SeqScan(u)
 SeqScan(ph)
 Leading(((c (b (p u))) ph)) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = ph.UserId AND u.Id = b.UserId AND p.AnswerCount<=11 AND p.FavoriteCount>=0 AND p.CreationDate<='2014-08-30 18:08:43'::timestamp AND ph.CreationDate<='2014-09-02 05:16:21'::timestamp AND b.Date>='2010-08-13 18:25:01'::timestamp AND b.Date<='2014-09-05 19:19:44'::timestamp AND u.UpVotes>=0 AND u.UpVotes<=7 AND u.CreationDate<='2014-08-05 06:51:09'::timestamp;

/*+ HashJoin(p c v pl)
 HashJoin(v pl)
 HashJoin(p c)
 IndexScan(p)
 SeqScan(c)
 SeqScan(v)
 IndexScan(pl)
 Leading(((p c) (v pl))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, votes as v WHERE p.Id = c.PostId AND c.PostId = pl.PostId AND pl.PostId = v.PostId AND c.CreationDate>='2010-07-27 13:59:54'::timestamp AND p.Score>=0 AND p.AnswerCount>=0 AND p.AnswerCount<=3 AND p.CommentCount>=0 AND v.VoteTypeId=2;

/*+ HashJoin(v ph c pl)
 HashJoin(ph c pl)
 HashJoin(c pl)
 SeqScan(v)
 SeqScan(ph)
 SeqScan(c)
 IndexScan(pl)
 Leading((v (ph (c pl)))) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, postHistory as ph, votes as v WHERE pl.PostId = c.PostId AND c.PostId = ph.PostId AND ph.PostId = v.PostId AND c.Score=0 AND c.CreationDate>='2010-07-21 12:20:54'::timestamp AND c.CreationDate<='2014-09-12 18:20:25'::timestamp AND pl.LinkTypeId=1 AND ph.PostHistoryTypeId=2 AND ph.CreationDate<='2014-07-25 17:57:24'::timestamp AND v.VoteTypeId=2;

/*+ HashJoin(c ph p)
 HashJoin(ph p)
 SeqScan(c)
 IndexScan(ph)
 SeqScan(p)
 Leading((c (ph p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph WHERE p.Id = c.PostId AND p.Id = ph.PostId AND c.Score=0 AND p.AnswerCount>=0 AND p.CommentCount>=0 AND p.CommentCount<=22 AND p.FavoriteCount>=0 AND p.FavoriteCount<=9 AND p.CreationDate>='2010-07-19 20:34:46'::timestamp;

/*+ HashJoin(c v)
 IndexScan(c)
 SeqScan(v)
 Leading((c v)) */
SELECT COUNT(*) FROM comments as c, votes as v WHERE c.UserId = v.UserId AND c.CreationDate>='2010-08-04 10:09:10'::timestamp AND c.CreationDate<='2014-09-08 18:31:04'::timestamp;

/*+ HashJoin(c b)
 SeqScan(c)
 IndexScan(b)
 Leading((c b)) */
SELECT COUNT(*) FROM comments as c, badges as b WHERE c.UserId = b.UserId AND b.Date>='2010-10-01 05:33:56'::timestamp AND b.Date<='2014-09-09 21:00:32'::timestamp;

/*+ HashJoin(v p pl u)
 HashJoin(v p pl)
 HashJoin(v p)
 SeqScan(v)
 SeqScan(p)
 IndexScan(pl)
 SeqScan(u)
 Leading((((v p) pl) u)) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, votes as v, users as u WHERE p.Id = pl.RelatedPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND p.Score<=20 AND p.ViewCount>=0 AND p.CommentCount>=0 AND p.CommentCount<=16 AND p.CreationDate>='2010-07-22 13:10:57'::timestamp AND v.VoteTypeId=2 AND u.UpVotes>=0;

/*+ HashJoin(ph c v)
 HashJoin(ph c)
 IndexScan(ph)
 IndexScan(c)
 SeqScan(v)
 Leading(((ph c) v)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v WHERE ph.PostId = c.PostId AND ph.PostId = v.PostId AND c.Score=0 AND v.CreationDate>='2010-07-20 00:00:00'::timestamp;

/*+ HashJoin(ph p c u v)
 HashJoin(ph p c u)
 MergeJoin(p c u)
 MergeJoin(c u)
 IndexScan(ph)
 SeqScan(p)
 IndexScan(c)
 SeqScan(u)
 SeqScan(v)
 Leading(((ph (p (c u))) v)) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph, votes as v, users as u WHERE u.Id = c.UserId AND c.UserId = p.OwnerUserId AND p.OwnerUserId = ph.UserId AND ph.UserId = v.UserId AND c.CreationDate>='2010-07-27 15:52:13'::timestamp AND c.CreationDate<='2014-09-12 20:56:21'::timestamp AND p.AnswerCount>=0 AND p.AnswerCount<=4 AND p.CreationDate>='2010-10-13 14:38:26'::timestamp AND ph.PostHistoryTypeId=2 AND v.BountyAmount>=0 AND v.BountyAmount<=50 AND u.DownVotes>=0 AND u.DownVotes<=0 AND u.UpVotes>=0;

/*+ HashJoin(v p u c)
 HashJoin(p u c)
 HashJoin(p u)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(c)
 Leading((v ((p u) c))) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = v.UserId AND p.Score>=-2 AND p.Score<=22 AND v.CreationDate>='2010-07-27 00:00:00'::timestamp AND v.CreationDate<='2014-09-12 00:00:00'::timestamp AND u.Views<=5680;

/*+ HashJoin(p b)
 SeqScan(p)
 SeqScan(b)
 Leading((p b)) */
SELECT COUNT(*) FROM badges as b, posts as p WHERE b.UserId = p.OwnerUserId AND b.Date>='2010-07-26 19:43:42'::timestamp AND p.AnswerCount>=0 AND p.AnswerCount<=4 AND p.CommentCount>=0;

/*+ NestLoop(v u pl p b ph)
 MergeJoin(v u pl p b)
 NestLoop(u pl p b)
 MergeJoin(u pl p)
 NestLoop(pl p)
 IndexScan(v)
 SeqScan(u)
 IndexScan(pl)
 IndexScan(p)
 IndexScan(b)
 IndexScan(ph)
 Leading(((v ((u (pl p)) b)) ph)) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph, votes as v, badges as b, users as u WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND u.Id = ph.UserId AND u.Id = v.UserId AND p.ViewCount>=0 AND p.ViewCount<=9444 AND p.CreationDate>='2010-08-30 18:02:22'::timestamp AND p.CreationDate<='2014-09-12 12:11:31'::timestamp AND pl.CreationDate<='2014-09-08 03:42:34'::timestamp AND ph.CreationDate>='2010-11-09 18:52:16'::timestamp AND v.CreationDate>='2010-07-23 00:00:00'::timestamp AND v.CreationDate<='2014-09-09 00:00:00'::timestamp AND u.Reputation<=746 AND u.UpVotes>=0 AND u.UpVotes<=6 AND u.CreationDate<='2014-09-01 20:19:35'::timestamp;

/*+ HashJoin(c u b ph)
 NestLoop(c u b)
 MergeJoin(c u)
 IndexScan(c)
 SeqScan(u)
 IndexScan(b)
 SeqScan(ph)
 Leading((((c u) b) ph)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = ph.UserId AND u.Id = b.UserId AND c.Score=0 AND ph.PostHistoryTypeId=2 AND b.Date>='2010-09-05 09:24:01'::timestamp AND u.DownVotes>=0 AND u.UpVotes>=0;

/*+ HashJoin(ph c v pl p)
 HashJoin(c v pl p)
 HashJoin(v pl p)
 HashJoin(pl p)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(v)
 SeqScan(pl)
 SeqScan(p)
 Leading((ph (c (v (pl p))))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, votes as v WHERE p.Id = c.PostId AND p.Id = pl.PostId AND p.Id = ph.PostId AND p.Id = v.PostId AND c.Score=0 AND pl.LinkTypeId=1 AND ph.CreationDate>='2010-08-21 05:49:42'::timestamp AND v.CreationDate>='2010-07-19 00:00:00'::timestamp AND v.CreationDate<='2014-09-08 00:00:00'::timestamp;

/*+ HashJoin(c b)
 SeqScan(c)
 SeqScan(b)
 Leading((c b)) */
SELECT COUNT(*) FROM comments as c, badges as b WHERE c.UserId = b.UserId AND c.Score=0;

/*+ HashJoin(v c u)
 HashJoin(c u)
 SeqScan(v)
 SeqScan(c)
 SeqScan(u)
 Leading((v (c u))) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND c.PostId = v.PostId AND c.Score=0 AND v.VoteTypeId=2 AND u.CreationDate>='2010-07-19 23:24:34'::timestamp;

/*+ HashJoin(c ph)
 SeqScan(c)
 SeqScan(ph)
 Leading((c ph)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph WHERE c.UserId = ph.UserId AND c.CreationDate>='2010-08-04 17:43:38'::timestamp AND c.CreationDate<='2014-09-03 19:13:33'::timestamp AND ph.PostHistoryTypeId=2;

/*+ HashJoin(b p)
 IndexScan(b)
 SeqScan(p)
 Leading((b p)) */
SELECT COUNT(*) FROM badges as b, posts as p WHERE b.UserId = p.OwnerUserId;

/*+ HashJoin(c ph)
 SeqScan(c)
 SeqScan(ph)
 Leading((c ph)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph WHERE c.UserId = ph.UserId AND ph.PostHistoryTypeId=2 AND ph.CreationDate>='2010-09-30 08:08:11'::timestamp AND ph.CreationDate<='2014-08-19 11:35:11'::timestamp;

/*+ HashJoin(ph v u p)
 MergeJoin(v u p)
 MergeJoin(u p)
 IndexScan(ph)
 IndexScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((ph (v (u p)))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, votes as v, users as u WHERE p.Id = ph.PostId AND u.Id = p.OwnerUserId AND p.Id = v.PostId AND ph.PostHistoryTypeId=25 AND p.ViewCount>=0 AND p.CommentCount>=0 AND v.CreationDate>='2010-07-20 00:00:00'::timestamp AND u.DownVotes>=0 AND u.DownVotes<=7 AND u.CreationDate<='2014-08-25 15:36:07'::timestamp;

/*+ HashJoin(ph pl b u v p)
 HashJoin(pl b u v p)
 MergeJoin(b u v p)
 HashJoin(b u v)
 NestLoop(u v)
 SeqScan(ph)
 SeqScan(pl)
 IndexScan(b)
 IndexScan(u)
 IndexScan(v)
 SeqScan(p)
 Leading((ph (pl ((b (u v)) p)))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph, votes as v, badges as b, users as u WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND u.Id = ph.UserId AND u.Id = v.UserId AND p.Score>=-3 AND p.ViewCount>=0 AND p.ViewCount<=143055 AND p.AnswerCount>=0 AND pl.LinkTypeId=1 AND ph.CreationDate>='2011-03-12 05:40:11'::timestamp AND ph.CreationDate<='2014-09-01 02:36:14'::timestamp AND v.BountyAmount>=0 AND u.Reputation<=3544 AND u.DownVotes>=0 AND u.DownVotes<=3 AND u.UpVotes>=0;

/*+ HashJoin(v ph c pl)
 HashJoin(ph c pl)
 HashJoin(c pl)
 SeqScan(v)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(pl)
 Leading((v (ph (c pl)))) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, postHistory as ph, votes as v WHERE pl.PostId = c.PostId AND c.PostId = ph.PostId AND ph.PostId = v.PostId AND c.CreationDate>='2010-07-25 19:56:22'::timestamp AND pl.LinkTypeId=1 AND pl.CreationDate>='2011-01-07 17:01:57'::timestamp AND pl.CreationDate<='2014-06-23 18:02:29'::timestamp AND v.CreationDate<='2014-09-11 00:00:00'::timestamp;

/*+ HashJoin(c v p pl u b)
 HashJoin(c v p pl u)
 HashJoin(v p pl u)
 HashJoin(v p pl)
 HashJoin(v p)
 SeqScan(c)
 SeqScan(v)
 SeqScan(p)
 IndexScan(pl)
 IndexScan(u)
 SeqScan(b)
 Leading(((c (((v p) pl) u)) b)) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, votes as v, badges as b, users as u WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND c.Score=0 AND p.AnswerCount<=5 AND p.FavoriteCount>=0 AND pl.CreationDate>='2010-08-11 20:39:16'::timestamp AND v.CreationDate>='2010-07-19 00:00:00'::timestamp AND u.Reputation<=246 AND u.CreationDate<='2014-09-03 23:38:29'::timestamp;

/*+ HashJoin(c p pl)
 HashJoin(p pl)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 Leading((c (p pl))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE c.UserId = p.OwnerUserId AND p.Id = pl.PostId AND c.CreationDate>='2010-08-23 18:37:46'::timestamp AND c.CreationDate<='2014-09-12 00:20:43'::timestamp AND p.PostTypeId=1 AND p.CommentCount<=21 AND p.CreationDate<='2014-09-11 23:26:14'::timestamp AND pl.LinkTypeId=1 AND pl.CreationDate>='2011-04-12 17:33:03'::timestamp;

/*+ HashJoin(c ph)
 SeqScan(c)
 SeqScan(ph)
 Leading((c ph)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph WHERE c.UserId = ph.UserId AND c.CreationDate>='2010-07-21 12:35:50'::timestamp AND c.CreationDate<='2014-09-13 20:54:31'::timestamp AND ph.CreationDate>='2011-02-03 20:23:39'::timestamp AND ph.CreationDate<='2014-09-05 21:20:56'::timestamp;

/*+ HashJoin(c ph)
 SeqScan(c)
 SeqScan(ph)
 Leading((c ph)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph WHERE c.UserId = ph.UserId AND ph.PostHistoryTypeId=2 AND ph.CreationDate>='2010-07-26 17:53:41'::timestamp;

/*+ HashJoin(c ph u b)
 MergeJoin(ph u b)
 HashJoin(u b)
 SeqScan(c)
 IndexScan(ph)
 IndexScan(u)
 SeqScan(b)
 Leading((c (ph (u b)))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = ph.UserId AND u.Id = b.UserId AND c.CreationDate>='2010-09-02 10:25:52'::timestamp AND ph.PostHistoryTypeId=1 AND u.Views>=0 AND u.Views<=126 AND u.CreationDate>='2010-07-26 21:12:37'::timestamp;

/*+ HashJoin(v p u c)
 HashJoin(v p u)
 HashJoin(p u)
 SeqScan(v)
 SeqScan(p)
 IndexScan(u)
 SeqScan(c)
 Leading(((v (p u)) c)) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE p.Id = c.PostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND c.Score=0 AND p.ViewCount<=2593 AND p.CommentCount<=11 AND v.CreationDate>='2010-07-19 00:00:00'::timestamp AND u.Reputation<=231 AND u.Views>=0 AND u.Views<=30 AND u.UpVotes>=0 AND u.UpVotes<=27;

/*+ HashJoin(ph c v pl p)
 HashJoin(c v pl p)
 HashJoin(v pl p)
 HashJoin(pl p)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(v)
 SeqScan(pl)
 SeqScan(p)
 Leading((ph (c (v (pl p))))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, votes as v WHERE p.Id = c.PostId AND p.Id = pl.PostId AND p.Id = ph.PostId AND p.Id = v.PostId AND c.Score=0;

/*+ HashJoin(b p)
 SeqScan(b)
 SeqScan(p)
 Leading((b p)) */
SELECT COUNT(*) FROM badges as b, posts as p WHERE b.UserId = p.OwnerUserId AND b.Date>='2010-07-19 20:34:06'::timestamp AND b.Date<='2014-09-10 22:40:07'::timestamp AND p.PostTypeId=1 AND p.Score<=20 AND p.ViewCount<=7282 AND p.CommentCount>=0 AND p.FavoriteCount>=0 AND p.FavoriteCount<=4;

/*+ HashJoin(c ph v p pl b)
 HashJoin(c ph v p pl)
 MergeJoin(ph v p pl)
 HashJoin(v p pl)
 HashJoin(v p)
 SeqScan(c)
 IndexScan(ph)
 SeqScan(v)
 SeqScan(p)
 IndexScan(pl)
 SeqScan(b)
 Leading(((c (ph ((v p) pl))) b)) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, votes as v, badges as b WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.Id = ph.PostId AND p.Id = v.PostId AND b.UserId = c.UserId AND c.CreationDate>='2010-07-28 11:15:17'::timestamp AND c.CreationDate<='2014-09-09 16:01:11'::timestamp AND p.Score<=16 AND p.AnswerCount>=0 AND pl.LinkTypeId=1 AND pl.CreationDate>='2010-10-20 22:08:02'::timestamp AND pl.CreationDate<='2014-08-09 00:33:54'::timestamp AND v.BountyAmount>=0 AND v.BountyAmount<=100 AND b.Date<='2014-09-12 07:19:35'::timestamp;

/*+ HashJoin(c ph p)
 HashJoin(ph p)
 SeqScan(c)
 SeqScan(ph)
 SeqScan(p)
 Leading((c (ph p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph WHERE p.Id = c.PostId AND p.Id = ph.PostId AND c.CreationDate<='2014-09-10 21:10:27'::timestamp AND p.PostTypeId=1 AND p.Score>=0 AND p.Score<=10 AND p.ViewCount<=2322 AND p.AnswerCount<=7 AND p.FavoriteCount<=7 AND ph.PostHistoryTypeId=2 AND ph.CreationDate>='2011-10-31 12:13:53'::timestamp;

/*+ MergeJoin(ph u p)
 MergeJoin(ph u)
 SeqScan(ph)
 SeqScan(u)
 SeqScan(p)
 Leading(((ph u) p)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.UserId = p.OwnerUserId AND ph.UserId = u.Id AND ph.PostHistoryTypeId=2 AND ph.CreationDate>='2010-11-24 14:31:38'::timestamp AND u.Reputation>=1 AND u.UpVotes>=0;

/*+ HashJoin(ph c)
 IndexScan(ph)
 IndexScan(c)
 Leading((ph c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph WHERE c.UserId = ph.UserId AND c.Score=0 AND ph.CreationDate>='2010-07-21 08:00:10'::timestamp;

/*+ HashJoin(c p pl)
 HashJoin(p pl)
 SeqScan(c)
 SeqScan(p)
 IndexScan(pl)
 Leading((c (p pl))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE c.UserId = p.OwnerUserId AND p.Id = pl.PostId AND p.CommentCount>=0 AND p.CreationDate<='2014-09-11 00:10:27'::timestamp;

/*+ HashJoin(c ph v p pl b)
 HashJoin(c ph v p pl)
 HashJoin(ph v p pl)
 HashJoin(v p pl)
 HashJoin(p pl)
 SeqScan(c)
 SeqScan(ph)
 SeqScan(v)
 SeqScan(p)
 IndexScan(pl)
 SeqScan(b)
 Leading(((c (ph (v (p pl)))) b)) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, votes as v, badges as b WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.Id = ph.PostId AND p.Id = v.PostId AND b.UserId = c.UserId AND c.CreationDate>='2010-07-25 20:10:04'::timestamp AND c.CreationDate<='2014-09-09 19:47:19'::timestamp AND p.Score>=-3 AND p.Score<=16 AND p.ViewCount>=0 AND p.ViewCount<=5620 AND pl.LinkTypeId=1;

/*+ HashJoin(b ph u p)
 HashJoin(ph u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(ph)
 IndexScan(u)
 SeqScan(p)
 Leading((b (ph (u p)))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u, badges as b WHERE u.Id = p.OwnerUserId AND p.OwnerUserId = ph.UserId AND ph.UserId = b.UserId AND p.PostTypeId=1 AND p.CommentCount>=0 AND p.CommentCount<=20 AND u.Reputation>=1 AND u.Reputation<=146 AND u.Views>=0 AND u.Views<=582 AND u.UpVotes>=0 AND u.UpVotes<=10;

/*+ HashJoin(v c u)
 HashJoin(c u)
 SeqScan(v)
 SeqScan(c)
 IndexScan(u)
 Leading((v (c u))) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND c.PostId = v.PostId AND c.CreationDate>='2010-08-18 19:53:40'::timestamp AND c.CreationDate<='2014-09-13 23:27:25'::timestamp AND v.VoteTypeId=5 AND u.Reputation>=1 AND u.Reputation<=911 AND u.Views>=0 AND u.Views<=46;

/*+ HashJoin(ph u b v c)
 HashJoin(ph u b v)
 MergeJoin(ph u b)
 HashJoin(u b)
 IndexScan(ph)
 IndexScan(u)
 SeqScan(b)
 SeqScan(v)
 SeqScan(c)
 Leading((((ph (u b)) v) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, votes as v, users as u WHERE u.Id =b.UserId AND b.UserId = ph.UserId AND ph.UserId = v.UserId AND v.UserId = c.UserId AND c.CreationDate>='2010-08-19 14:41:44'::timestamp AND ph.PostHistoryTypeId=1 AND b.Date<='2014-09-11 11:31:22'::timestamp AND v.BountyAmount<=50 AND v.CreationDate<='2014-09-12 00:00:00'::timestamp AND u.UpVotes>=0 AND u.UpVotes<=42 AND u.CreationDate<='2014-09-11 18:52:02'::timestamp;

/*+ HashJoin(c ph)
 SeqScan(c)
 SeqScan(ph)
 Leading((c ph)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph WHERE c.UserId = ph.UserId AND c.CreationDate>='2010-07-20 08:45:52'::timestamp AND c.CreationDate<='2014-09-12 21:23:33'::timestamp AND ph.CreationDate<='2014-08-07 19:59:48'::timestamp;

/*+ HashJoin(c ph)
 SeqScan(c)
 SeqScan(ph)
 Leading((c ph)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph WHERE c.UserId = ph.UserId AND c.CreationDate>='2010-09-13 20:46:57'::timestamp AND ph.PostHistoryTypeId=1;

/*+ HashJoin(b p)
 SeqScan(b)
 SeqScan(p)
 Leading((b p)) */
SELECT COUNT(*) FROM badges as b, posts as p WHERE b.UserId = p.OwnerUserId AND b.Date>='2010-07-19 19:39:10'::timestamp AND b.Date<='2014-08-27 11:33:10'::timestamp AND p.ViewCount>=0 AND p.CommentCount>=0;

