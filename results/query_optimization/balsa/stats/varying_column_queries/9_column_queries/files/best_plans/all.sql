/*+ HashJoin(c p u)
 HashJoin(c p)
 SeqScan(c)
 SeqScan(p)
 IndexScan(u)
 Leading(((c p) u)) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.PostId = p.Id AND c.UserId = u.Id AND c.Score=0 AND p.PostTypeId=1 AND p.ViewCount<=3320 AND p.AnswerCount>=0 AND p.FavoriteCount<=12 AND u.Reputation>=1 AND u.Reputation<=116 AND u.DownVotes=0 AND u.UpVotes<=201;

/*+ HashJoin(b u v p)
 HashJoin(u v p)
 HashJoin(v p)
 SeqScan(b)
 SeqScan(u)
 SeqScan(v)
 SeqScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND v.BountyAmount<=50 AND p.PostTypeId=1 AND p.ViewCount<=3043 AND p.AnswerCount>=0 AND p.AnswerCount<=8 AND p.CreationDate<='2014-09-03 20:32:50'::timestamp AND u.Reputation<=158 AND u.DownVotes<=26 AND u.UpVotes<=10;

/*+ HashJoin(ph v pl p u b)
 HashJoin(v pl p u b)
 MergeJoin(v pl p u)
 HashJoin(pl p u)
 HashJoin(pl p)
 SeqScan(ph)
 IndexScan(v)
 IndexScan(pl)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((ph ((v ((pl p) u)) b))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph, votes as v, badges as b, users as u WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND u.Id = ph.UserId AND u.Id = v.UserId AND p.PostTypeId=1 AND pl.LinkTypeId=3 AND ph.CreationDate<='2014-06-16 17:44:50'::timestamp AND v.BountyAmount>=0 AND b.Date>='2010-07-20 16:14:11'::timestamp AND u.DownVotes>=0 AND u.DownVotes<=7 AND u.UpVotes>=0 AND u.UpVotes<=625;

/*+ MergeJoin(u p pl)
 HashJoin(p pl)
 IndexScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((u (p pl))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, users as u WHERE p.Id = pl.PostId AND p.OwnerUserId = u.Id AND p.Score>=0 AND p.ViewCount<=2240 AND p.AnswerCount>=0 AND p.AnswerCount<=5 AND p.CommentCount>=0 AND p.FavoriteCount>=0 AND pl.CreationDate<='2014-09-09 22:35:17'::timestamp AND u.DownVotes<=0 AND u.CreationDate>='2011-01-18 19:30:47'::timestamp;

/*+ HashJoin(ph v c p pl u)
 HashJoin(v c p pl u)
 HashJoin(c p pl u)
 HashJoin(c p pl)
 HashJoin(p pl)
 SeqScan(ph)
 SeqScan(v)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 SeqScan(u)
 Leading((ph (v ((c (p pl)) u)))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, votes as v, users as u WHERE p.Id = pl.PostId AND p.Id = ph.PostId AND p.Id = c.PostId AND u.Id = c.UserId AND u.Id = v.UserId AND p.Score<=17 AND p.AnswerCount<=6 AND p.FavoriteCount<=4 AND p.CreationDate>='2010-07-29 07:10:39'::timestamp AND p.CreationDate<='2014-09-10 07:50:32'::timestamp AND pl.CreationDate<='2014-09-13 00:53:35'::timestamp AND v.BountyAmount<=50 AND v.CreationDate>='2010-07-20 00:00:00'::timestamp AND v.CreationDate<='2014-09-02 00:00:00'::timestamp;

/*+ HashJoin(b c u v)
 HashJoin(c u v)
 HashJoin(c u)
 SeqScan(b)
 SeqScan(c)
 SeqScan(u)
 SeqScan(v)
 Leading((b ((c u) v))) */
SELECT COUNT(*) FROM comments as c, votes as v, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND c.Score=0 AND v.BountyAmount>=0 AND v.CreationDate>='2010-07-25 00:00:00'::timestamp AND b.Date>='2010-07-19 20:19:06'::timestamp AND b.Date<='2014-09-11 01:14:41'::timestamp AND u.Views>=0 AND u.Views<=29 AND u.UpVotes<=69 AND u.CreationDate>='2010-10-31 01:05:15'::timestamp;

/*+ HashJoin(b u p pl)
 HashJoin(u p pl)
 HashJoin(p pl)
 SeqScan(b)
 SeqScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((b (u (p pl)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND pl.LinkTypeId=3 AND p.PostTypeId=1 AND p.ViewCount>=0 AND p.AnswerCount>=0 AND p.FavoriteCount<=4 AND u.Reputation>=1 AND u.Reputation<=356 AND u.CreationDate>='2010-07-19 19:08:28'::timestamp AND u.CreationDate<='2014-09-05 19:10:12'::timestamp;

/*+ HashJoin(c p u v b)
 HashJoin(c p u v)
 HashJoin(c p u)
 HashJoin(c p)
 IndexScan(c)
 IndexScan(p)
 SeqScan(u)
 SeqScan(v)
 SeqScan(b)
 Leading(((((c p) u) v) b)) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, badges as b, users as u WHERE u.Id =c.UserId AND c.UserId = p.OwnerUserId AND p.OwnerUserId = v.UserId AND v.UserId = b.UserId AND p.ViewCount>=0 AND p.ViewCount<=4256 AND p.AnswerCount<=11 AND p.CommentCount<=12 AND p.FavoriteCount<=2 AND p.CreationDate>='2010-07-26 21:11:25'::timestamp AND p.CreationDate<='2014-08-27 00:01:05'::timestamp AND b.Date<='2014-08-26 23:15:44'::timestamp AND u.UpVotes=0;

/*+ HashJoin(b v u)
 HashJoin(v u)
 SeqScan(b)
 SeqScan(v)
 SeqScan(u)
 Leading((b (v u))) */
SELECT COUNT(*) FROM votes as v, badges as b, users as u WHERE u.Id = v.UserId AND v.UserId = b.UserId AND v.VoteTypeId=5 AND v.CreationDate<='2014-09-14 00:00:00'::timestamp AND b.Date>='2010-07-19 19:39:09'::timestamp AND u.Views>=0 AND u.Views<=514 AND u.UpVotes>=0 AND u.UpVotes<=55 AND u.CreationDate>='2010-07-28 05:55:31'::timestamp AND u.CreationDate<='2014-08-27 12:43:55'::timestamp;

/*+ HashJoin(c v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(c)
 SeqScan(v)
 SeqScan(u)
 SeqScan(p)
 Leading((c (v (u p)))) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = v.UserId AND p.ViewCount>=0 AND p.ViewCount<=33939 AND p.AnswerCount>=0 AND p.CommentCount>=0 AND p.CommentCount<=24 AND p.FavoriteCount>=0 AND p.FavoriteCount<=13 AND u.Views=11 AND u.UpVotes>=0;

/*+ HashJoin(c u p)
 HashJoin(u p)
 SeqScan(c)
 SeqScan(u)
 SeqScan(p)
 Leading((c (u p))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.UserId = u.Id AND u.Id = p.OwnerUserId AND c.CreationDate<='2014-09-13 17:53:27'::timestamp AND p.Score>=-3 AND p.Score<=14 AND p.ViewCount>=0 AND p.ViewCount<=5706 AND p.CommentCount>=0 AND p.FavoriteCount>=0 AND p.FavoriteCount<=3 AND u.Views=0;

/*+ HashJoin(c p u)
 HashJoin(c p)
 SeqScan(c)
 SeqScan(p)
 SeqScan(u)
 Leading(((c p) u)) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.PostId = p.Id AND c.UserId = u.Id AND c.Score=0 AND p.ViewCount>=0 AND p.ViewCount<=1566 AND p.AnswerCount<=5 AND u.Reputation>=1 AND u.DownVotes>=0 AND u.DownVotes<=1 AND u.UpVotes<=463 AND u.CreationDate>='2010-10-31 16:42:07'::timestamp;

/*+ HashJoin(c p u)
 HashJoin(p u)
 SeqScan(c)
 SeqScan(p)
 SeqScan(u)
 Leading((c (p u))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.UserId = u.Id AND u.Id = p.OwnerUserId AND c.Score=0 AND p.PostTypeId=1 AND p.Score>=-4 AND p.Score<=24 AND p.FavoriteCount<=6 AND p.CreationDate>='2010-07-20 15:21:01'::timestamp AND p.CreationDate<='2014-08-27 13:49:06'::timestamp AND u.Views<=15 AND u.DownVotes<=15;

/*+ MergeJoin(v u p)
 HashJoin(u p)
 IndexScan(v)
 SeqScan(u)
 SeqScan(p)
 Leading((v (u p))) */
SELECT COUNT(*) FROM votes as v, posts as p, users as u WHERE v.UserId = p.OwnerUserId AND p.OwnerUserId = u.Id AND p.Score=1 AND p.AnswerCount>=0 AND p.AnswerCount<=5 AND p.CommentCount<=18 AND p.FavoriteCount<=11 AND p.CreationDate>='2010-07-19 22:31:12'::timestamp AND u.Views>=0 AND u.Views<=18 AND u.DownVotes=0;

/*+ HashJoin(b c u v)
 HashJoin(c u v)
 HashJoin(u v)
 SeqScan(b)
 SeqScan(c)
 SeqScan(u)
 SeqScan(v)
 Leading((b (c (u v)))) */
SELECT COUNT(*) FROM comments as c, votes as v, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND c.Score=2 AND c.CreationDate>='2010-08-30 12:42:22'::timestamp AND b.Date>='2010-11-16 18:25:15'::timestamp AND u.Views>=0 AND u.Views<=227 AND u.DownVotes<=0 AND u.UpVotes>=0 AND u.UpVotes<=70 AND u.CreationDate>='2010-08-10 19:46:30'::timestamp;

/*+ HashJoin(c u p pl b)
 HashJoin(c u p pl)
 HashJoin(u p pl)
 HashJoin(p pl)
 SeqScan(c)
 SeqScan(u)
 SeqScan(p)
 SeqScan(pl)
 SeqScan(b)
 Leading(((c (u (p pl))) b)) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND p.Id = c.PostId AND u.Id = b.UserId AND u.Id = p.OwnerUserId AND c.CreationDate>='2010-10-26 20:06:13'::timestamp AND pl.CreationDate<='2014-09-08 17:52:52'::timestamp AND p.AnswerCount>=0 AND p.AnswerCount<=7 AND u.Views>=0 AND u.DownVotes<=0 AND u.CreationDate<='2014-09-10 07:45:17'::timestamp AND b.Date>='2010-11-05 23:02:35'::timestamp AND b.Date<='2014-09-10 21:08:34'::timestamp;

/*+ HashJoin(b c ph v p pl)
 HashJoin(c ph v p pl)
 HashJoin(ph v p pl)
 HashJoin(v p pl)
 HashJoin(p pl)
 SeqScan(b)
 SeqScan(c)
 SeqScan(ph)
 SeqScan(v)
 SeqScan(p)
 SeqScan(pl)
 Leading((b (c (ph (v (p pl)))))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, votes as v, badges as b WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.Id = ph.PostId AND p.Id = v.PostId AND b.UserId = c.UserId AND c.CreationDate<='2014-09-13 08:08:01'::timestamp AND p.AnswerCount>=0 AND p.CommentCount>=0 AND p.FavoriteCount=0 AND pl.LinkTypeId=1 AND ph.PostHistoryTypeId=2 AND v.BountyAmount<=50 AND b.Date>='2010-07-19 19:39:10'::timestamp AND b.Date<='2014-09-06 08:04:01'::timestamp;

/*+ HashJoin(ph u p)
 HashJoin(ph u)
 SeqScan(ph)
 SeqScan(u)
 SeqScan(p)
 Leading(((ph u) p)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.UserId = p.OwnerUserId AND ph.UserId = u.Id AND p.ViewCount>=0 AND p.ViewCount<=66071 AND p.CommentCount>=0 AND p.CommentCount<=30 AND p.FavoriteCount>=0 AND p.FavoriteCount<=20 AND u.DownVotes>=0 AND u.UpVotes>=0 AND u.UpVotes<=12;

/*+ HashJoin(c u ph)
 HashJoin(c u)
 SeqScan(c)
 SeqScan(u)
 SeqScan(ph)
 Leading(((c u) ph)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND c.Score=0 AND c.CreationDate<='2014-09-12 14:23:56'::timestamp AND ph.PostHistoryTypeId=2 AND ph.CreationDate>='2010-10-13 14:58:24'::timestamp AND ph.CreationDate<='2014-09-11 19:51:26'::timestamp AND u.Views<=3899 AND u.DownVotes>=0 AND u.UpVotes>=0 AND u.CreationDate>='2010-08-25 20:48:41'::timestamp;

/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 SeqScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>=-2 AND p.Score<=50 AND p.ViewCount<=15051 AND p.CommentCount<=16 AND b.Date<='2014-09-03 19:03:56'::timestamp AND u.DownVotes<=0 AND u.UpVotes>=0 AND u.UpVotes<=28 AND u.CreationDate<='2014-08-18 20:53:35'::timestamp;

/*+ HashJoin(ph c u p v)
 MergeJoin(ph c u p)
 HashJoin(c u p)
 HashJoin(c u)
 IndexScan(ph)
 SeqScan(c)
 SeqScan(u)
 SeqScan(p)
 SeqScan(v)
 Leading(((ph ((c u) p)) v)) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph, votes as v, users as u WHERE u.Id = c.UserId AND c.UserId = p.OwnerUserId AND p.OwnerUserId = ph.UserId AND ph.UserId = v.UserId AND c.CreationDate>='2010-07-20 10:11:50'::timestamp AND p.PostTypeId=1 AND p.CommentCount=0 AND p.FavoriteCount<=2 AND p.CreationDate>='2010-08-01 22:38:49'::timestamp AND ph.PostHistoryTypeId=3 AND v.CreationDate>='2010-07-20 00:00:00'::timestamp AND u.DownVotes>=0 AND u.DownVotes<=0;

/*+ HashJoin(ph pl p)
 HashJoin(pl p)
 SeqScan(ph)
 IndexScan(pl)
 SeqScan(p)
 Leading((ph (pl p))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph WHERE p.Id = pl.PostId AND pl.PostId = ph.PostId AND p.PostTypeId=1 AND p.Score>=-9 AND p.Score<=57 AND p.ViewCount>=0 AND p.AnswerCount>=0 AND p.FavoriteCount<=4 AND pl.LinkTypeId=1 AND pl.CreationDate<='2014-08-13 15:39:17'::timestamp AND ph.CreationDate>='2011-01-25 12:11:54'::timestamp;

/*+ HashJoin(ph c p pl v)
 HashJoin(c p pl v)
 HashJoin(c p pl)
 HashJoin(p pl)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 SeqScan(v)
 Leading((ph ((c (p pl)) v))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, votes as v WHERE p.Id = c.PostId AND p.Id = pl.PostId AND p.Id = ph.PostId AND p.Id = v.PostId AND c.CreationDate<='2014-09-05 22:13:15'::timestamp AND p.PostTypeId=1 AND p.ViewCount>=0 AND p.ViewCount<=3486 AND p.CreationDate>='2010-08-01 13:51:19'::timestamp AND p.CreationDate<='2014-09-11 22:27:55'::timestamp AND pl.LinkTypeId=1 AND ph.CreationDate>='2010-07-28 06:31:36'::timestamp AND v.VoteTypeId=2;

/*+ HashJoin(b c u v)
 HashJoin(c u v)
 HashJoin(u v)
 SeqScan(b)
 SeqScan(c)
 SeqScan(u)
 SeqScan(v)
 Leading((b (c (u v)))) */
SELECT COUNT(*) FROM comments as c, votes as v, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND c.Score=0 AND v.BountyAmount>=0 AND v.CreationDate>='2010-07-26 00:00:00'::timestamp AND v.CreationDate<='2014-09-09 00:00:00'::timestamp AND u.Views>=0 AND u.Views<=22 AND u.DownVotes>=0 AND u.UpVotes>=0 AND u.UpVotes<=22;

/*+ HashJoin(v u p pl)
 HashJoin(u p pl)
 HashJoin(p pl)
 SeqScan(v)
 SeqScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((v (u (p pl)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, votes as v, users as u WHERE p.Id = pl.RelatedPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND pl.CreationDate>='2010-09-27 09:27:46'::timestamp AND pl.CreationDate<='2014-08-15 18:42:41'::timestamp AND p.FavoriteCount>=0 AND p.FavoriteCount<=6 AND p.CreationDate>='2010-07-10 18:56:57'::timestamp AND p.CreationDate<='2014-09-11 00:46:29'::timestamp AND v.VoteTypeId=2 AND u.Reputation>=1 AND u.CreationDate>='2011-04-26 09:32:27'::timestamp;

/*+ HashJoin(c u p v)
 HashJoin(u p v)
 HashJoin(p v)
 SeqScan(c)
 SeqScan(u)
 SeqScan(p)
 SeqScan(v)
 Leading((c (u (p v)))) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE p.Id = c.PostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND p.Score>=-6 AND p.AnswerCount>=0 AND p.AnswerCount<=5 AND p.CommentCount>=0 AND p.CommentCount<=19 AND p.CreationDate<='2014-09-01 15:52:46'::timestamp AND v.BountyAmount>=0 AND u.DownVotes<=0 AND u.CreationDate<='2014-08-20 06:04:05'::timestamp;

/*+ HashJoin(u p pl)
 HashJoin(p pl)
 SeqScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((u (p pl))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, users as u WHERE p.Id = pl.PostId AND p.OwnerUserId = u.Id AND p.Score>=-1 AND p.CommentCount>=0 AND p.CommentCount<=15 AND p.FavoriteCount=0 AND u.Reputation>=1 AND u.Reputation<=16108 AND u.Views=0 AND u.DownVotes<=7 AND u.CreationDate>='2010-09-17 23:42:47'::timestamp;

/*+ HashJoin(u p v)
 HashJoin(p v)
 SeqScan(u)
 SeqScan(p)
 SeqScan(v)
 Leading((u (p v))) */
SELECT COUNT(*) FROM votes as v, posts as p, users as u WHERE v.UserId = p.OwnerUserId AND p.OwnerUserId = u.Id AND v.BountyAmount>=0 AND p.Score>=-1 AND p.FavoriteCount>=0 AND p.CreationDate>='2010-07-19 20:32:08'::timestamp AND p.CreationDate<='2014-09-08 15:26:17'::timestamp AND u.Reputation=6 AND u.DownVotes>=0 AND u.DownVotes<=0 AND u.UpVotes>=0;

/*+ HashJoin(b c v u p pl)
 HashJoin(c v u p pl)
 HashJoin(v u p pl)
 HashJoin(u p pl)
 HashJoin(p pl)
 SeqScan(b)
 SeqScan(c)
 SeqScan(v)
 SeqScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((b (c (v (u (p pl)))))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, votes as v, badges as b, users as u WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND c.CreationDate>='2010-07-26 13:37:04'::timestamp AND c.CreationDate<='2014-09-11 15:08:42'::timestamp AND p.CommentCount>=0 AND p.CommentCount<=11 AND pl.LinkTypeId=1 AND v.BountyAmount>=0 AND v.BountyAmount<=50 AND u.CreationDate>='2010-07-26 19:24:47'::timestamp AND u.CreationDate<='2014-08-25 18:36:43'::timestamp;

/*+ HashJoin(ph c v p pl)
 HashJoin(c v p pl)
 HashJoin(v p pl)
 HashJoin(p pl)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(v)
 SeqScan(p)
 SeqScan(pl)
 Leading((ph (c (v (p pl))))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, votes as v WHERE p.Id = c.PostId AND p.Id = pl.PostId AND p.Id = ph.PostId AND p.Id = v.PostId AND c.Score=0 AND p.PostTypeId=1 AND p.AnswerCount>=0 AND p.AnswerCount<=3 AND p.CommentCount>=0 AND p.CommentCount<=12 AND pl.LinkTypeId=1 AND pl.CreationDate>='2011-08-12 17:50:24'::timestamp AND v.BountyAmount<=0;

/*+ HashJoin(p ph c u v)
 HashJoin(p ph c u)
 HashJoin(p ph c)
 HashJoin(p ph)
 IndexScan(p)
 IndexScan(ph)
 SeqScan(c)
 SeqScan(u)
 IndexScan(v)
 Leading(((((p ph) c) u) v)) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph, votes as v, users as u WHERE u.Id = c.UserId AND c.UserId = p.OwnerUserId AND p.OwnerUserId = ph.UserId AND ph.UserId = v.UserId AND c.Score=0 AND p.PostTypeId=2 AND p.ViewCount<=1052 AND ph.PostHistoryTypeId=3 AND v.CreationDate<='2014-09-10 00:00:00'::timestamp AND u.Views<=22 AND u.DownVotes>=0 AND u.DownVotes<=7 AND u.UpVotes>=0;

/*+ HashJoin(c p u ph v)
 HashJoin(c p u ph)
 HashJoin(c p u)
 HashJoin(c p)
 SeqScan(c)
 SeqScan(p)
 SeqScan(u)
 SeqScan(ph)
 SeqScan(v)
 Leading(((((c p) u) ph) v)) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph, votes as v, users as u WHERE u.Id = c.UserId AND c.UserId = p.OwnerUserId AND p.OwnerUserId = ph.UserId AND ph.UserId = v.UserId AND c.Score=0 AND p.PostTypeId=1 AND p.AnswerCount>=0 AND ph.PostHistoryTypeId=24 AND ph.CreationDate>='2010-09-17 08:44:09'::timestamp AND v.BountyAmount>=0 AND v.BountyAmount<=100 AND u.Reputation>=1 AND u.CreationDate<='2014-09-11 16:01:06'::timestamp;

/*+ HashJoin(b p u v)
 HashJoin(p u v)
 HashJoin(u v)
 SeqScan(b)
 SeqScan(p)
 SeqScan(u)
 SeqScan(v)
 Leading((b (p (u v)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE u.Id = v.UserId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>=-1 AND p.AnswerCount=0 AND p.CreationDate>='2010-08-03 20:00:30'::timestamp AND p.CreationDate<='2014-09-10 08:22:43'::timestamp AND u.Reputation>=1 AND u.Reputation<=1190 AND u.Views<=158 AND u.DownVotes>=0 AND u.UpVotes>=0;

/*+ HashJoin(b c p pl u v)
 HashJoin(c p pl u v)
 HashJoin(c p pl u)
 HashJoin(p pl u)
 HashJoin(p pl)
 SeqScan(b)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 SeqScan(u)
 SeqScan(v)
 Leading((b ((c ((p pl) u)) v))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, votes as v, badges as b, users as u WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND c.Score=1 AND c.CreationDate>='2010-07-20 11:07:42'::timestamp AND p.Score<=17 AND p.CommentCount>=0 AND p.CommentCount<=12 AND pl.CreationDate<='2014-08-21 12:54:28'::timestamp AND v.VoteTypeId=2 AND u.Views>=0 AND u.DownVotes<=0;

/*+ HashJoin(u v p pl)
 HashJoin(v p pl)
 HashJoin(p pl)
 SeqScan(u)
 SeqScan(v)
 SeqScan(p)
 SeqScan(pl)
 Leading((u (v (p pl)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, votes as v, users as u WHERE p.Id = pl.RelatedPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND pl.LinkTypeId=1 AND p.Score<=20 AND p.AnswerCount<=3 AND p.CommentCount=2 AND p.FavoriteCount>=0 AND p.FavoriteCount<=5 AND v.BountyAmount>=0 AND u.Views<=74 AND u.UpVotes>=0;

/*+ HashJoin(ph c p pl u)
 HashJoin(c p pl u)
 HashJoin(c p pl)
 HashJoin(p pl)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 SeqScan(u)
 Leading((ph ((c (p pl)) u))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, users as u WHERE p.Id = pl.RelatedPostId AND pl.RelatedPostId = c.PostId AND pl.RelatedPostId = ph.PostId AND u.Id= c.UserId AND c.CreationDate<='2014-09-08 01:00:20'::timestamp AND p.Score=0 AND p.ViewCount>=0 AND p.CommentCount>=0 AND p.CommentCount<=20 AND p.CreationDate>='2010-07-20 16:12:08'::timestamp AND u.Reputation>=1 AND u.Reputation<=442 AND u.DownVotes<=2;

/*+ HashJoin(ph v p u)
 HashJoin(v p u)
 HashJoin(p u)
 SeqScan(ph)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 Leading((ph (v (p u)))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, votes as v, users as u WHERE p.Id = ph.PostId AND u.Id = p.OwnerUserId AND p.Id = v.PostId AND ph.PostHistoryTypeId=3 AND ph.CreationDate>='2010-11-19 11:32:02'::timestamp AND p.ViewCount>=0 AND p.ViewCount<=6568 AND p.CommentCount=5 AND p.FavoriteCount>=0 AND v.VoteTypeId=2 AND u.Reputation<=658 AND u.CreationDate>='2010-08-02 20:31:12'::timestamp;

/*+ HashJoin(ph u p)
 HashJoin(u p)
 SeqScan(ph)
 SeqScan(u)
 SeqScan(p)
 Leading((ph (u p))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.PostId = p.Id AND p.OwnerUserId = u.Id AND ph.CreationDate>='2010-07-21 00:09:09'::timestamp AND ph.CreationDate<='2014-08-17 16:35:42'::timestamp AND p.PostTypeId=1 AND p.ViewCount>=0 AND p.CommentCount>=0 AND p.CommentCount<=17 AND p.FavoriteCount<=7 AND u.UpVotes<=55 AND u.CreationDate>='2010-07-19 19:03:27'::timestamp;

/*+ HashJoin(ph c pl p u)
 HashJoin(c pl p u)
 HashJoin(c pl p)
 HashJoin(pl p)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(pl)
 SeqScan(p)
 SeqScan(u)
 Leading((ph ((c (pl p)) u))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, users as u WHERE p.Id = pl.RelatedPostId AND pl.RelatedPostId = c.PostId AND pl.RelatedPostId = ph.PostId AND u.Id= c.UserId AND c.CreationDate>='2010-07-20 10:53:25'::timestamp AND c.CreationDate<='2014-09-10 22:00:45'::timestamp AND p.PostTypeId=1 AND p.CommentCount=2 AND p.CreationDate>='2010-08-02 22:42:32'::timestamp AND pl.LinkTypeId=1 AND ph.PostHistoryTypeId=1 AND u.Reputation>=1 AND u.Reputation<=1981;

/*+ HashJoin(b c u p v)
 HashJoin(c u p v)
 HashJoin(c u p)
 HashJoin(c u)
 SeqScan(b)
 SeqScan(c)
 SeqScan(u)
 SeqScan(p)
 SeqScan(v)
 Leading((b (((c u) p) v))) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, badges as b, users as u WHERE u.Id =c.UserId AND c.UserId = p.OwnerUserId AND p.OwnerUserId = v.UserId AND v.UserId = b.UserId AND p.AnswerCount<=3 AND p.CommentCount>=0 AND p.CommentCount<=11 AND p.FavoriteCount>=0 AND p.FavoriteCount<=22 AND v.BountyAmount>=0 AND v.CreationDate>='2010-07-19 00:00:00'::timestamp AND u.Reputation=101 AND u.Views=2;

/*+ HashJoin(c p u)
 HashJoin(c p)
 SeqScan(c)
 SeqScan(p)
 SeqScan(u)
 Leading(((c p) u)) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.PostId = p.Id AND c.UserId = u.Id AND p.PostTypeId=1 AND p.Score<=25 AND p.CommentCount<=14 AND p.CreationDate>='2010-07-19 22:37:38'::timestamp AND u.Reputation>=1 AND u.Reputation<=950 AND u.DownVotes>=0 AND u.UpVotes>=0 AND u.CreationDate>='2010-11-03 14:47:03'::timestamp;

/*+ HashJoin(ph u p)
 HashJoin(u p)
 SeqScan(ph)
 SeqScan(u)
 SeqScan(p)
 Leading((ph (u p))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.PostId = p.Id AND p.OwnerUserId = u.Id AND ph.CreationDate>='2010-12-28 22:01:12'::timestamp AND ph.CreationDate<='2014-09-09 19:53:30'::timestamp AND p.ViewCount<=3839 AND p.AnswerCount>=0 AND p.AnswerCount<=5 AND p.FavoriteCount<=6 AND p.CreationDate>='2010-07-22 05:13:17'::timestamp AND p.CreationDate<='2014-08-29 11:14:26'::timestamp AND u.CreationDate<='2014-08-26 21:35:42'::timestamp;

/*+ HashJoin(b u v)
 HashJoin(u v)
 SeqScan(b)
 SeqScan(u)
 SeqScan(v)
 Leading((b (u v))) */
SELECT COUNT(*) FROM votes as v, badges as b, users as u WHERE u.Id = v.UserId AND v.UserId = b.UserId AND v.BountyAmount>=0 AND v.BountyAmount<=50 AND b.Date>='2010-07-20 05:19:09'::timestamp AND b.Date<='2014-08-13 12:03:33'::timestamp AND u.Reputation>=1 AND u.Reputation<=1148 AND u.DownVotes>=0 AND u.CreationDate>='2011-02-08 02:50:22'::timestamp AND u.CreationDate<='2014-09-04 17:25:07'::timestamp;

/*+ HashJoin(u p pl)
 HashJoin(p pl)
 SeqScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((u (p pl))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, users as u WHERE p.Id = pl.PostId AND p.OwnerUserId = u.Id AND p.PostTypeId=1 AND p.CommentCount>=0 AND p.CommentCount<=9 AND u.Reputation>=1 AND u.DownVotes>=0 AND u.DownVotes<=1 AND u.UpVotes>=0 AND u.CreationDate>='2010-08-15 01:26:16'::timestamp AND u.CreationDate<='2014-09-05 22:46:05'::timestamp;

/*+ HashJoin(v u p pl)
 HashJoin(u p pl)
 HashJoin(p pl)
 SeqScan(v)
 SeqScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((v (u (p pl)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, votes as v, users as u WHERE p.Id = pl.RelatedPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND p.PostTypeId=1 AND p.AnswerCount>=0 AND p.AnswerCount<=6 AND p.CommentCount<=15 AND p.CreationDate>='2010-09-18 08:51:04'::timestamp AND p.CreationDate<='2014-09-04 05:17:43'::timestamp AND u.Reputation<=377 AND u.Views>=0 AND u.Views<=15;

/*+ HashJoin(ph b u p c)
 MergeJoin(ph b u p)
 HashJoin(b u p)
 HashJoin(u p)
 IndexScan(ph)
 SeqScan(b)
 SeqScan(u)
 SeqScan(p)
 SeqScan(c)
 Leading(((ph (b (u p))) c)) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = ph.UserId AND u.Id = b.UserId AND p.Score=1 AND p.ViewCount<=2627 AND p.CommentCount>=0 AND p.FavoriteCount=0 AND ph.PostHistoryTypeId=5 AND b.Date>='2010-07-19 20:49:06'::timestamp AND b.Date<='2014-09-10 01:43:11'::timestamp AND u.Views>=0 AND u.DownVotes>=0;

/*+ HashJoin(ph u b v)
 HashJoin(ph u b)
 HashJoin(ph u)
 IndexScan(ph)
 SeqScan(u)
 SeqScan(b)
 SeqScan(v)
 Leading((((ph u) b) v)) */
SELECT COUNT(*) FROM postHistory as ph, votes as v, users as u, badges as b WHERE u.Id = ph.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND ph.PostHistoryTypeId=5 AND u.Reputation>=1 AND u.Reputation<=6216 AND u.DownVotes<=1 AND u.UpVotes<=2122 AND u.CreationDate>='2010-07-27 11:31:20'::timestamp AND u.CreationDate<='2014-08-31 06:43:12'::timestamp AND b.Date>='2010-07-21 06:53:13'::timestamp AND b.Date<='2014-09-04 14:05:16'::timestamp;

/*+ HashJoin(c u p)
 HashJoin(c u)
 SeqScan(c)
 SeqScan(u)
 SeqScan(p)
 Leading(((c u) p)) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.PostId = p.Id AND c.UserId = u.Id AND p.Score>=-1 AND p.Score<=17 AND p.AnswerCount<=4 AND p.CommentCount>=0 AND p.FavoriteCount>=0 AND p.FavoriteCount<=4 AND u.Reputation>=1 AND u.Reputation<=1151 AND u.Views<=31;

/*+ HashJoin(ph b u p c)
 MergeJoin(ph b u p)
 HashJoin(b u p)
 HashJoin(u p)
 IndexScan(ph)
 SeqScan(b)
 SeqScan(u)
 SeqScan(p)
 IndexScan(c)
 Leading(((ph (b (u p))) c)) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = ph.UserId AND u.Id = b.UserId AND c.CreationDate<='2014-09-11 02:42:11'::timestamp AND p.ViewCount>=0 AND p.ViewCount<=7523 AND p.CommentCount=2 AND ph.CreationDate>='2010-07-20 18:17:25'::timestamp AND b.Date<='2014-08-19 13:12:03'::timestamp AND u.Views<=72 AND u.DownVotes<=0 AND u.UpVotes<=128;

/*+ HashJoin(b u p pl)
 HashJoin(u p pl)
 HashJoin(p pl)
 SeqScan(b)
 SeqScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((b (u (p pl)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND pl.LinkTypeId=1 AND p.PostTypeId=1 AND p.Score>=-1 AND p.CommentCount>=0 AND p.CreationDate>='2010-08-04 06:51:12'::timestamp AND p.CreationDate<='2014-09-05 18:12:16'::timestamp AND u.Reputation>=1 AND u.Reputation<=31170 AND u.DownVotes=0;

/*+ HashJoin(ph c u)
 HashJoin(c u)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(u)
 Leading((ph (c u))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND c.Score=1 AND c.CreationDate>='2010-07-25 20:15:33'::timestamp AND c.CreationDate<='2014-09-12 13:06:49'::timestamp AND ph.CreationDate>='2010-09-23 03:57:03'::timestamp AND u.Reputation>=1 AND u.Reputation<=4536 AND u.DownVotes=0 AND u.CreationDate>='2011-01-14 08:56:54'::timestamp AND u.CreationDate<='2014-09-04 07:27:06'::timestamp;

/*+ HashJoin(c u b ph v)
 HashJoin(u b ph v)
 HashJoin(u b ph)
 HashJoin(u b)
 SeqScan(c)
 IndexScan(u)
 SeqScan(b)
 IndexScan(ph)
 IndexScan(v)
 Leading((c (((u b) ph) v))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, votes as v, users as u WHERE u.Id =b.UserId AND b.UserId = ph.UserId AND ph.UserId = v.UserId AND v.UserId = c.UserId AND b.Date>='2010-07-20 14:34:12'::timestamp AND b.Date<='2014-09-02 18:55:37'::timestamp AND v.BountyAmount<=50 AND v.CreationDate>='2010-07-19 00:00:00'::timestamp AND v.CreationDate<='2014-09-13 00:00:00'::timestamp AND u.Reputation>=1 AND u.Views>=0 AND u.Views<=44 AND u.UpVotes=0;

/*+ HashJoin(ph p u b)
 HashJoin(ph p u)
 HashJoin(ph p)
 IndexScan(ph)
 IndexScan(p)
 SeqScan(u)
 SeqScan(b)
 Leading((((ph p) u) b)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u, badges as b WHERE u.Id = p.OwnerUserId AND p.OwnerUserId = ph.UserId AND ph.UserId = b.UserId AND ph.PostHistoryTypeId=2 AND p.AnswerCount<=6 AND p.CommentCount>=0 AND p.CommentCount<=7 AND u.Reputation>=1 AND u.DownVotes>=0 AND u.UpVotes>=0 AND u.UpVotes<=30 AND b.Date<='2014-09-06 20:42:05'::timestamp;

/*+ HashJoin(p ph u)
 HashJoin(ph u)
 SeqScan(p)
 SeqScan(ph)
 SeqScan(u)
 Leading((p (ph u))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.UserId = p.OwnerUserId AND ph.UserId = u.Id AND ph.PostHistoryTypeId=4 AND p.PostTypeId=1 AND p.Score>=-1 AND p.AnswerCount>=0 AND p.CommentCount<=10 AND p.FavoriteCount>=0 AND p.FavoriteCount<=51 AND u.Reputation=1 AND u.DownVotes=0;

/*+ HashJoin(c pl p u)
 HashJoin(pl p u)
 HashJoin(p u)
 SeqScan(c)
 SeqScan(pl)
 SeqScan(p)
 SeqScan(u)
 Leading((c (pl (p u)))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, users as u WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.OwnerUserId = u.Id AND c.CreationDate>='2010-07-20 12:03:37'::timestamp AND p.Score>=-1 AND p.Score<=29 AND p.CreationDate>='2010-07-19 21:53:02'::timestamp AND p.CreationDate<='2014-09-07 18:19:50'::timestamp AND pl.LinkTypeId=1 AND u.Views=0 AND u.DownVotes>=0 AND u.DownVotes<=3;

/*+ HashJoin(c u p ph v)
 HashJoin(c u p ph)
 HashJoin(c u p)
 HashJoin(c u)
 SeqScan(c)
 SeqScan(u)
 SeqScan(p)
 SeqScan(ph)
 SeqScan(v)
 Leading(((((c u) p) ph) v)) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph, votes as v, users as u WHERE u.Id = c.UserId AND c.UserId = p.OwnerUserId AND p.OwnerUserId = ph.UserId AND ph.UserId = v.UserId AND c.CreationDate>='2010-07-19 20:06:56'::timestamp AND p.Score>=-1 AND p.AnswerCount>=0 AND p.FavoriteCount<=2 AND p.CreationDate>='2010-07-20 13:11:50'::timestamp AND ph.PostHistoryTypeId=4 AND u.Reputation<=1148 AND u.UpVotes>=0 AND u.UpVotes<=7;

/*+ HashJoin(c u pl p)
 HashJoin(u pl p)
 HashJoin(pl p)
 SeqScan(c)
 SeqScan(u)
 SeqScan(pl)
 SeqScan(p)
 Leading((c (u (pl p)))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, users as u WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.OwnerUserId = u.Id AND c.Score=0 AND p.Score>=-1 AND p.AnswerCount>=0 AND p.CommentCount<=15 AND p.CreationDate<='2014-09-12 20:55:37'::timestamp AND pl.LinkTypeId=1 AND u.Reputation>=1 AND u.Reputation<=5442 AND u.DownVotes>=0;

/*+ HashJoin(c p u)
 HashJoin(c p)
 SeqScan(c)
 SeqScan(p)
 SeqScan(u)
 Leading(((c p) u)) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.PostId = p.Id AND c.UserId = u.Id AND c.CreationDate>='2010-10-19 16:42:48'::timestamp AND p.Score>=-1 AND p.Score<=41 AND p.FavoriteCount=0 AND u.Reputation>=1 AND u.Views>=0 AND u.Views<=90 AND u.UpVotes>=0 AND u.UpVotes<=40;

/*+ HashJoin(ph c p pl u)
 HashJoin(c p pl u)
 HashJoin(c p pl)
 HashJoin(p pl)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 SeqScan(u)
 Leading((ph ((c (p pl)) u))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, users as u WHERE p.Id = pl.RelatedPostId AND pl.RelatedPostId = c.PostId AND pl.RelatedPostId = ph.PostId AND u.Id= c.UserId AND c.Score=0 AND c.CreationDate>='2010-08-04 13:46:53'::timestamp AND c.CreationDate<='2014-08-22 22:04:57'::timestamp AND p.Score>=-1 AND p.ViewCount>=0 AND p.AnswerCount>=0 AND p.AnswerCount<=4 AND ph.PostHistoryTypeId=2 AND ph.CreationDate<='2014-08-24 05:39:23'::timestamp;

/*+ MergeJoin(v ph p c u)
 HashJoin(ph p c u)
 HashJoin(p c u)
 HashJoin(c u)
 IndexScan(v)
 SeqScan(ph)
 SeqScan(p)
 SeqScan(c)
 SeqScan(u)
 Leading((v (ph (p (c u))))) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph, votes as v, users as u WHERE u.Id = c.UserId AND c.UserId = p.OwnerUserId AND p.OwnerUserId = ph.UserId AND ph.UserId = v.UserId AND c.CreationDate>='2010-07-29 04:15:57'::timestamp AND c.CreationDate<='2014-09-08 21:45:15'::timestamp AND p.PostTypeId=1 AND p.CommentCount>=0 AND p.CommentCount<=9 AND p.CreationDate<='2014-09-09 04:50:10'::timestamp AND ph.CreationDate<='2014-07-06 15:09:55'::timestamp AND u.DownVotes<=3 AND u.CreationDate>='2010-10-27 14:39:11'::timestamp;

/*+ HashJoin(b u p v)
 HashJoin(u p v)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(u)
 SeqScan(p)
 SeqScan(v)
 Leading((b ((u p) v))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE u.Id = v.UserId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.AnswerCount>=0 AND p.CommentCount>=0 AND p.CommentCount<=7 AND p.CreationDate<='2014-08-28 23:18:48'::timestamp AND u.Reputation>=1 AND u.Reputation<=13806 AND u.Views>=0 AND u.Views<=88 AND u.CreationDate<='2014-08-23 21:00:21'::timestamp;

/*+ HashJoin(c p pl u b v)
 HashJoin(c p pl u b)
 HashJoin(c p pl u)
 HashJoin(c p pl)
 HashJoin(c p)
 IndexScan(c)
 IndexScan(p)
 SeqScan(pl)
 SeqScan(u)
 SeqScan(b)
 SeqScan(v)
 Leading((((((c p) pl) u) b) v)) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, votes as v, badges as b, users as u WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND c.Score=0 AND p.ViewCount>=0 AND p.AnswerCount>=0 AND p.CommentCount<=23 AND pl.CreationDate<='2014-08-02 01:46:12'::timestamp AND v.VoteTypeId=2 AND v.CreationDate>='2010-07-20 00:00:00'::timestamp AND b.Date>='2010-07-20 08:54:10'::timestamp AND u.Views>=0;

/*+ HashJoin(c p)
 SeqScan(c)
 SeqScan(p)
 Leading((c p)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND c.CreationDate>='2010-07-19 20:02:25'::timestamp AND p.PostTypeId=1 AND p.Score>=0 AND p.Score<=18 AND p.ViewCount>=0 AND p.ViewCount<=17255 AND p.CommentCount<=8 AND p.CreationDate>='2010-09-01 11:01:01'::timestamp AND p.CreationDate<='2014-07-17 22:39:38'::timestamp;

/*+ HashJoin(ph v p u)
 HashJoin(v p u)
 HashJoin(p u)
 SeqScan(ph)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 Leading((ph (v (p u)))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, votes as v, users as u WHERE p.Id = ph.PostId AND u.Id = p.OwnerUserId AND p.Id = v.PostId AND ph.PostHistoryTypeId=34 AND ph.CreationDate<='2014-08-27 16:34:19'::timestamp AND p.CommentCount>=0 AND p.FavoriteCount>=0 AND p.FavoriteCount<=3 AND p.CreationDate>='2010-07-20 07:33:09'::timestamp AND p.CreationDate<='2014-09-11 11:41:08'::timestamp AND u.DownVotes>=0 AND u.DownVotes<=3;

/*+ HashJoin(ph u p)
 HashJoin(u p)
 SeqScan(ph)
 IndexScan(u)
 SeqScan(p)
 Leading((ph (u p))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.PostId = p.Id AND p.OwnerUserId = u.Id AND ph.PostHistoryTypeId=3 AND p.Score<=7 AND p.AnswerCount<=9 AND p.CommentCount=1 AND p.FavoriteCount=0 AND u.Reputation>=1 AND u.Reputation<=139 AND u.Views>=0 AND u.Views<=73;

/*+ HashJoin(u p pl)
 HashJoin(p pl)
 SeqScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((u (p pl))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, users as u WHERE p.Id = pl.PostId AND p.OwnerUserId = u.Id AND p.Score>=-2 AND p.ViewCount<=8624 AND p.CommentCount>=0 AND p.CommentCount<=16 AND p.CreationDate<='2014-09-05 18:12:16'::timestamp AND pl.LinkTypeId=1 AND u.Views<=94 AND u.CreationDate>='2010-09-16 13:03:52'::timestamp AND u.CreationDate<='2014-09-09 01:43:16'::timestamp;

/*+ HashJoin(c v pl p ph)
 HashJoin(c v pl p)
 HashJoin(v pl p)
 HashJoin(pl p)
 SeqScan(c)
 SeqScan(v)
 IndexScan(pl)
 SeqScan(p)
 SeqScan(ph)
 Leading(((c (v (pl p))) ph)) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, votes as v WHERE p.Id = c.PostId AND p.Id = pl.PostId AND p.Id = ph.PostId AND p.Id = v.PostId AND c.CreationDate>='2010-07-24 02:55:02'::timestamp AND p.ViewCount>=0 AND p.ViewCount<=2362 AND p.CommentCount<=9 AND p.FavoriteCount>=0 AND pl.CreationDate>='2010-09-17 06:40:34'::timestamp AND pl.CreationDate<='2014-08-14 04:29:21'::timestamp AND ph.CreationDate>='2011-05-10 20:50:05'::timestamp AND ph.CreationDate<='2014-08-27 12:18:36'::timestamp;

/*+ HashJoin(u p pl)
 HashJoin(p pl)
 SeqScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((u (p pl))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, users as u WHERE p.Id = pl.PostId AND p.OwnerUserId = u.Id AND p.PostTypeId=1 AND p.ViewCount<=17429 AND p.AnswerCount<=5 AND u.Reputation>=1 AND u.Views<=16 AND u.DownVotes<=4 AND u.UpVotes>=0 AND u.CreationDate>='2010-07-27 11:31:20'::timestamp AND u.CreationDate<='2014-08-13 19:29:41'::timestamp;

/*+ HashJoin(u p)
 SeqScan(u)
 SeqScan(p)
 Leading((u p)) */
SELECT COUNT(*) FROM posts as p, users as u WHERE p.OwnerUserId= u.Id AND p.PostTypeId=1 AND p.Score>=0 AND p.Score<=28 AND p.ViewCount>=0 AND p.ViewCount<=3786 AND p.CreationDate<='2014-09-08 21:43:36'::timestamp AND u.Reputation>=1 AND u.Reputation<=172 AND u.CreationDate>='2011-01-10 22:27:28'::timestamp;

/*+ MergeJoin(b ph u pl p v)
 HashJoin(ph u pl p v)
 HashJoin(ph u pl p)
 HashJoin(u pl p)
 HashJoin(pl p)
 SeqScan(b)
 SeqScan(ph)
 SeqScan(u)
 SeqScan(pl)
 SeqScan(p)
 SeqScan(v)
 Leading((b ((ph (u (pl p))) v))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph, votes as v, badges as b, users as u WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND u.Id = ph.UserId AND u.Id = v.UserId AND p.CommentCount<=17 AND p.FavoriteCount=0 AND pl.LinkTypeId=1 AND pl.CreationDate>='2010-10-02 17:02:16'::timestamp AND pl.CreationDate<='2014-09-08 13:11:30'::timestamp AND v.CreationDate>='2010-07-20 00:00:00'::timestamp AND v.CreationDate<='2014-09-12 00:00:00'::timestamp AND u.Views<=9 AND u.UpVotes<=17;

/*+ HashJoin(c u p)
 HashJoin(u p)
 SeqScan(c)
 SeqScan(u)
 SeqScan(p)
 Leading((c (u p))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.UserId = u.Id AND u.Id = p.OwnerUserId AND c.Score=0 AND p.Score<=16 AND p.ViewCount>=0 AND p.ViewCount<=12640 AND p.CreationDate>='2010-07-20 17:17:21'::timestamp AND p.CreationDate<='2014-08-15 00:27:49'::timestamp AND u.DownVotes>=0 AND u.DownVotes<=0 AND u.UpVotes>=0;

/*+ HashJoin(c v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(c)
 SeqScan(v)
 SeqScan(u)
 SeqScan(p)
 Leading((c (v (u p)))) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = v.UserId AND p.ViewCount>=0 AND p.ViewCount<=5220 AND p.FavoriteCount=0 AND p.CreationDate<='2014-09-11 14:18:16'::timestamp AND v.BountyAmount>=0 AND v.CreationDate<='2014-09-11 00:00:00'::timestamp AND u.DownVotes>=0 AND u.UpVotes>=0 AND u.CreationDate<='2014-09-09 20:26:15'::timestamp;

/*+ HashJoin(b ph c p pl v)
 HashJoin(ph c p pl v)
 HashJoin(c p pl v)
 HashJoin(c p pl)
 HashJoin(p pl)
 SeqScan(b)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 SeqScan(v)
 Leading((b (ph ((c (p pl)) v)))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, votes as v, badges as b WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.Id = ph.PostId AND p.Id = v.PostId AND b.UserId = c.UserId AND c.CreationDate>='2010-07-31 00:13:14'::timestamp AND p.Score<=10 AND p.ViewCount>=0 AND p.ViewCount<=5050 AND ph.CreationDate>='2010-12-30 17:59:52'::timestamp AND ph.CreationDate<='2014-02-08 08:47:14'::timestamp AND v.BountyAmount>=0 AND v.BountyAmount<=50 AND b.Date<='2014-07-26 15:49:59'::timestamp;

/*+ HashJoin(c p u v)
 HashJoin(c p u)
 HashJoin(p u)
 SeqScan(c)
 SeqScan(p)
 SeqScan(u)
 SeqScan(v)
 Leading(((c (p u)) v)) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = v.UserId AND c.Score=0 AND p.ViewCount>=0 AND p.AnswerCount>=0 AND p.CreationDate>='2010-07-19 23:21:05'::timestamp AND v.CreationDate>='2009-04-13 00:00:00'::timestamp AND v.CreationDate<='2014-09-10 00:00:00'::timestamp AND u.UpVotes>=0 AND u.UpVotes<=20 AND u.CreationDate>='2010-07-27 09:24:00'::timestamp;

/*+ HashJoin(c v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(c)
 SeqScan(v)
 SeqScan(u)
 SeqScan(p)
 Leading((c (v (u p)))) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = v.UserId AND c.Score=0 AND p.PostTypeId=1 AND p.ViewCount>=0 AND p.ViewCount<=2210 AND p.AnswerCount=0 AND v.CreationDate>='2010-07-20 00:00:00'::timestamp AND u.Reputation>=1 AND u.Reputation<=798 AND u.CreationDate<='2014-07-26 13:31:19'::timestamp;

/*+ HashJoin(c ph u p b)
 HashJoin(c ph u p)
 HashJoin(ph u p)
 HashJoin(ph u)
 SeqScan(c)
 IndexScan(ph)
 SeqScan(u)
 SeqScan(p)
 IndexScan(b)
 Leading(((c ((ph u) p)) b)) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = ph.UserId AND u.Id = b.UserId AND c.Score=0 AND p.PostTypeId=1 AND p.ViewCount>=0 AND p.FavoriteCount=1 AND p.CreationDate>='2010-07-19 23:17:53'::timestamp AND u.Views<=206 AND u.DownVotes<=0 AND u.UpVotes>=0 AND u.CreationDate<='2014-09-02 11:30:04'::timestamp;

/*+ HashJoin(b ph p pl u v)
 HashJoin(ph p pl u v)
 HashJoin(p pl u v)
 HashJoin(p pl u)
 HashJoin(p pl)
 SeqScan(b)
 SeqScan(ph)
 SeqScan(p)
 SeqScan(pl)
 SeqScan(u)
 SeqScan(v)
 Leading((b (ph (((p pl) u) v)))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph, votes as v, badges as b, users as u WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND u.Id = ph.UserId AND u.Id = v.UserId AND p.PostTypeId=2 AND p.FavoriteCount>=0 AND p.CreationDate<='2014-08-11 17:24:30'::timestamp AND pl.LinkTypeId=1 AND pl.CreationDate>='2011-03-31 22:47:40'::timestamp AND ph.PostHistoryTypeId=1 AND ph.CreationDate<='2014-06-05 04:44:59'::timestamp AND v.BountyAmount<=100 AND v.CreationDate>='2010-07-21 00:00:00'::timestamp;

/*+ HashJoin(c v pl p ph)
 HashJoin(c v pl p)
 HashJoin(v pl p)
 HashJoin(pl p)
 SeqScan(c)
 SeqScan(v)
 IndexScan(pl)
 SeqScan(p)
 SeqScan(ph)
 Leading(((c (v (pl p))) ph)) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, votes as v WHERE p.Id = c.PostId AND p.Id = pl.PostId AND p.Id = ph.PostId AND p.Id = v.PostId AND p.PostTypeId=1 AND p.Score>=-1 AND p.Score<=17 AND p.AnswerCount>=0 AND p.FavoriteCount=0 AND pl.LinkTypeId=1 AND ph.CreationDate>='2011-02-18 00:06:24'::timestamp AND v.CreationDate>='2010-07-19 00:00:00'::timestamp AND v.CreationDate<='2014-09-10 00:00:00'::timestamp;

/*+ HashJoin(b u p pl)
 MergeJoin(u p pl)
 HashJoin(p pl)
 SeqScan(b)
 IndexScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((b (u (p pl)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND pl.LinkTypeId=1 AND p.ViewCount<=8532 AND p.AnswerCount<=4 AND p.CommentCount<=15 AND u.Reputation>=1 AND u.Reputation<=406 AND u.Views<=66 AND u.UpVotes<=7 AND b.Date<='2014-09-08 01:44:36'::timestamp;

/*+ HashJoin(v u p)
 HashJoin(u p)
 SeqScan(v)
 SeqScan(u)
 SeqScan(p)
 Leading((v (u p))) */
SELECT COUNT(*) FROM votes as v, posts as p, users as u WHERE v.UserId = p.OwnerUserId AND p.OwnerUserId = u.Id AND v.BountyAmount>=0 AND v.BountyAmount<=50 AND v.CreationDate<='2014-09-12 00:00:00'::timestamp AND p.PostTypeId=2 AND p.Score=0 AND u.UpVotes>=0 AND u.UpVotes<=9 AND u.CreationDate>='2011-05-01 12:59:37'::timestamp AND u.CreationDate<='2014-08-26 04:36:29'::timestamp;

/*+ HashJoin(c v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(c)
 SeqScan(v)
 SeqScan(u)
 SeqScan(p)
 Leading((c (v (u p)))) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = v.UserId AND c.CreationDate>='2010-08-03 19:20:49'::timestamp AND p.ViewCount<=3353 AND p.FavoriteCount>=0 AND p.FavoriteCount<=3 AND p.CreationDate>='2010-07-22 13:40:30'::timestamp AND p.CreationDate<='2014-08-14 12:54:10'::timestamp AND u.Reputation>=1 AND u.DownVotes<=0 AND u.UpVotes>=0;

/*+ HashJoin(ph p u)
 HashJoin(p u)
 SeqScan(ph)
 SeqScan(p)
 SeqScan(u)
 Leading((ph (p u))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.PostId = p.Id AND p.OwnerUserId = u.Id AND p.PostTypeId=1 AND p.ViewCount>=0 AND p.ViewCount<=2028 AND p.AnswerCount>=0 AND p.AnswerCount<=4 AND u.Views>=0 AND u.Views<=19 AND u.DownVotes>=0 AND u.DownVotes<=0;

/*+ HashJoin(b ph c p pl v)
 HashJoin(ph c p pl v)
 HashJoin(c p pl v)
 HashJoin(c p pl)
 HashJoin(p pl)
 SeqScan(b)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 SeqScan(v)
 Leading((b (ph ((c (p pl)) v)))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, votes as v, badges as b WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.Id = ph.PostId AND p.Id = v.PostId AND b.UserId = c.UserId AND p.Score>=-1 AND p.Score<=29 AND p.ViewCount>=0 AND p.ViewCount<=16587 AND p.CommentCount<=8 AND p.CreationDate<='2014-09-04 12:22:49'::timestamp AND pl.LinkTypeId=1 AND ph.PostHistoryTypeId=10 AND v.BountyAmount>=0;

/*+ HashJoin(ph p u)
 HashJoin(p u)
 SeqScan(ph)
 SeqScan(p)
 SeqScan(u)
 Leading((ph (p u))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.PostId = p.Id AND p.OwnerUserId = u.Id AND p.PostTypeId=1 AND p.AnswerCount<=5 AND p.CommentCount>=0 AND p.FavoriteCount<=18 AND p.CreationDate>='2010-07-20 11:49:27'::timestamp AND u.Reputation<=217 AND u.UpVotes>=0 AND u.UpVotes<=42 AND u.CreationDate<='2014-08-07 00:46:20'::timestamp;

/*+ HashJoin(c p u v)
 HashJoin(c p u)
 HashJoin(p u)
 SeqScan(c)
 IndexScan(p)
 SeqScan(u)
 IndexScan(v)
 Leading(((c (p u)) v)) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = v.UserId AND c.Score=0 AND c.CreationDate<='2014-08-26 19:32:42'::timestamp AND p.ViewCount<=9750 AND p.AnswerCount<=15 AND p.CreationDate>='2009-04-12 07:24:17'::timestamp AND p.CreationDate<='2014-09-10 20:52:30'::timestamp AND u.Reputation>=1 AND u.Reputation<=4957 AND u.DownVotes>=0;

/*+ HashJoin(c pl p)
 HashJoin(pl p)
 SeqScan(c)
 SeqScan(pl)
 SeqScan(p)
 Leading((c (pl p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE c.UserId = p.OwnerUserId AND p.Id = pl.PostId AND c.Score=0 AND c.CreationDate>='2010-07-19 20:58:26'::timestamp AND p.Score>=-1 AND p.AnswerCount>=0 AND p.CommentCount<=9 AND p.FavoriteCount>=0 AND p.FavoriteCount<=18 AND p.CreationDate<='2014-08-28 13:50:47'::timestamp AND pl.LinkTypeId=1;

/*+ HashJoin(c p pl v)
 HashJoin(c p pl)
 HashJoin(c p)
 SeqScan(c)
 SeqScan(p)
 IndexScan(pl)
 SeqScan(v)
 Leading((((c p) pl) v)) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, votes as v WHERE p.Id = c.PostId AND c.PostId = pl.PostId AND pl.PostId = v.PostId AND c.CreationDate<='2014-09-07 15:12:01'::timestamp AND p.Score>=0 AND p.ViewCount>=0 AND p.ViewCount<=9369 AND p.CommentCount<=13 AND p.CreationDate<='2014-09-04 16:26:45'::timestamp AND v.VoteTypeId=5 AND v.CreationDate>='2009-02-02 00:00:00'::timestamp AND v.CreationDate<='2014-09-12 00:00:00'::timestamp;

/*+ HashJoin(u pl p)
 HashJoin(pl p)
 SeqScan(u)
 IndexScan(pl)
 SeqScan(p)
 Leading((u (pl p))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, users as u WHERE p.Id = pl.PostId AND p.OwnerUserId = u.Id AND p.Score>=-1 AND p.Score<=26 AND p.AnswerCount<=3 AND p.FavoriteCount<=12 AND p.CreationDate>='2010-08-20 20:10:24'::timestamp AND pl.LinkTypeId=1 AND u.UpVotes>=0 AND u.UpVotes<=42 AND u.CreationDate<='2014-07-26 14:50:55'::timestamp;

/*+ HashJoin(ph u p)
 HashJoin(u p)
 SeqScan(ph)
 SeqScan(u)
 SeqScan(p)
 Leading((ph (u p))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.PostId = p.Id AND p.OwnerUserId = u.Id AND ph.CreationDate>='2010-08-09 06:57:37'::timestamp AND p.ViewCount>=0 AND p.FavoriteCount>=0 AND p.FavoriteCount<=20 AND u.Reputation>=1 AND u.Views>=0 AND u.DownVotes>=0 AND u.UpVotes<=35 AND u.CreationDate<='2014-09-09 01:14:54'::timestamp;

/*+ HashJoin(ph c p)
 HashJoin(c p)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(p)
 Leading((ph (c p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph WHERE p.Id = c.PostId AND p.Id = ph.PostId AND c.CreationDate<='2014-09-10 21:10:27'::timestamp AND p.PostTypeId=1 AND p.Score>=0 AND p.Score<=10 AND p.ViewCount<=2322 AND p.AnswerCount<=7 AND p.FavoriteCount<=7 AND ph.PostHistoryTypeId=2 AND ph.CreationDate>='2011-10-31 12:13:53'::timestamp;

/*+ HashJoin(b ph u p)
 HashJoin(ph u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(ph)
 SeqScan(u)
 SeqScan(p)
 Leading((b (ph (u p)))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u, badges as b WHERE u.Id = p.OwnerUserId AND p.OwnerUserId = ph.UserId AND ph.UserId = b.UserId AND p.PostTypeId=1 AND p.Score<=40 AND p.ViewCount=1994 AND p.FavoriteCount>=0 AND p.FavoriteCount<=36 AND p.CreationDate>='2010-08-31 16:32:21'::timestamp AND u.DownVotes<=0 AND u.UpVotes<=66 AND u.CreationDate>='2010-12-14 05:16:38'::timestamp;

/*+ HashJoin(ph p u v)
 HashJoin(ph p u)
 HashJoin(p u)
 SeqScan(ph)
 SeqScan(p)
 SeqScan(u)
 SeqScan(v)
 Leading(((ph (p u)) v)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, votes as v, users as u WHERE p.Id = ph.PostId AND u.Id = p.OwnerUserId AND p.Id = v.PostId AND p.PostTypeId=1 AND p.AnswerCount>=0 AND p.CreationDate>='2010-07-20 07:17:58'::timestamp AND p.CreationDate<='2014-08-28 16:59:26'::timestamp AND u.Views>=0 AND u.Views<=40 AND u.UpVotes>=0 AND u.UpVotes<=93 AND u.CreationDate<='2014-09-12 09:59:29'::timestamp;

/*+ HashJoin(ph p pl)
 HashJoin(p pl)
 SeqScan(ph)
 SeqScan(p)
 SeqScan(pl)
 Leading((ph (p pl))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph WHERE p.Id = pl.PostId AND pl.PostId = ph.PostId AND p.PostTypeId=1 AND p.ViewCount>=0 AND p.ViewCount<=10342 AND p.FavoriteCount>=0 AND p.FavoriteCount<=14 AND p.CreationDate>='2010-09-20 04:07:18'::timestamp AND p.CreationDate<='2014-09-11 18:38:03'::timestamp AND pl.CreationDate>='2011-03-04 11:46:01'::timestamp AND pl.CreationDate<='2014-08-28 17:14:42'::timestamp;

/*+ HashJoin(p b)
 SeqScan(p)
 SeqScan(b)
 Leading((p b)) */
SELECT COUNT(*) FROM badges as b, posts as p WHERE b.UserId = p.OwnerUserId AND b.Date='2013-08-04 03:00:16'::timestamp AND p.Score>=-2 AND p.AnswerCount>=0 AND p.CommentCount>=0 AND p.CommentCount<=12 AND p.FavoriteCount>=0 AND p.FavoriteCount<=17 AND p.CreationDate>='2010-08-22 01:22:31'::timestamp AND p.CreationDate<='2014-09-07 01:11:03'::timestamp;

/*+ HashJoin(b c p u pl v)
 HashJoin(c p u pl v)
 HashJoin(c p u pl)
 HashJoin(p u pl)
 HashJoin(p u)
 SeqScan(b)
 SeqScan(c)
 IndexScan(p)
 SeqScan(u)
 SeqScan(pl)
 SeqScan(v)
 Leading((b ((c ((p u) pl)) v))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, votes as v, badges as b, users as u WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND c.Score=0 AND p.ViewCount>=0 AND p.ViewCount<=2218 AND p.CommentCount<=8 AND p.FavoriteCount>=0 AND v.VoteTypeId=2 AND u.Views<=81 AND u.DownVotes<=0 AND u.UpVotes<=113;

/*+ HashJoin(b v u p t)
 HashJoin(v u p t)
 MergeJoin(u p t)
 HashJoin(p t)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 IndexScan(t)
 Leading((b (v (u (p t))))) */
SELECT COUNT(*) FROM tags as t, posts as p, users as u, votes as v, badges as b WHERE p.Id = t.ExcerptPostId AND u.Id = v.UserId AND u.Id = b.UserId AND u.Id = p.OwnerUserId AND p.Score>=-2 AND p.Score<=23 AND p.CommentCount>=0 AND p.FavoriteCount>=0 AND p.FavoriteCount<=4 AND p.CreationDate>='2010-07-28 19:34:00'::timestamp AND p.CreationDate<='2014-09-03 23:05:58'::timestamp AND u.CreationDate<='2014-09-03 22:20:23'::timestamp AND v.CreationDate>='2010-07-21 00:00:00'::timestamp;

/*+ HashJoin(b ph u p)
 HashJoin(ph u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(ph)
 SeqScan(u)
 SeqScan(p)
 Leading((b (ph (u p)))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u, badges as b WHERE u.Id = p.OwnerUserId AND p.OwnerUserId = ph.UserId AND ph.UserId = b.UserId AND ph.PostHistoryTypeId=3 AND p.PostTypeId=1 AND p.Score=1 AND p.FavoriteCount<=2 AND p.CreationDate>='2010-07-26 18:24:35'::timestamp AND p.CreationDate<='2014-09-10 19:39:25'::timestamp AND u.Views<=445 AND u.DownVotes>=0 AND u.DownVotes<=24;

/*+ MergeJoin(u p pl)
 HashJoin(p pl)
 IndexScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((u (p pl))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, users as u WHERE p.Id = pl.PostId AND p.OwnerUserId = u.Id AND p.PostTypeId=1 AND p.ViewCount>=0 AND p.CommentCount<=10 AND p.FavoriteCount>=0 AND p.FavoriteCount<=3 AND p.CreationDate<='2014-09-06 22:46:35'::timestamp AND pl.LinkTypeId=1 AND u.Views<=23 AND u.UpVotes>=0;

/*+ HashJoin(v ph c pl)
 HashJoin(ph c pl)
 HashJoin(c pl)
 SeqScan(v)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(pl)
 Leading((v (ph (c pl)))) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, postHistory as ph, votes as v WHERE pl.PostId = c.PostId AND c.PostId = ph.PostId AND ph.PostId = v.PostId AND c.Score=1 AND c.CreationDate>='2010-10-09 14:22:20'::timestamp AND c.CreationDate<='2014-08-31 14:49:15'::timestamp AND pl.LinkTypeId=1 AND pl.CreationDate>='2012-01-12 17:48:22'::timestamp AND pl.CreationDate<='2014-07-27 23:22:28'::timestamp AND ph.PostHistoryTypeId=2 AND v.VoteTypeId=2 AND v.CreationDate>='2010-07-27 00:00:00'::timestamp;

/*+ HashJoin(b u p v)
 HashJoin(u p v)
 HashJoin(p v)
 SeqScan(b)
 SeqScan(u)
 SeqScan(p)
 SeqScan(v)
 Leading((b (u (p v)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND v.BountyAmount>=0 AND p.PostTypeId=1 AND p.AnswerCount>=0 AND p.AnswerCount<=5 AND p.CreationDate<='2014-09-02 14:50:00'::timestamp AND u.Reputation>=1 AND u.DownVotes>=0 AND u.DownVotes<=0 AND u.UpVotes>=0;

/*+ HashJoin(ph c pl p u)
 HashJoin(c pl p u)
 HashJoin(c pl p)
 HashJoin(pl p)
 SeqScan(ph)
 SeqScan(c)
 IndexScan(pl)
 SeqScan(p)
 IndexScan(u)
 Leading((ph ((c (pl p)) u))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, users as u WHERE p.Id = pl.RelatedPostId AND pl.RelatedPostId = c.PostId AND pl.RelatedPostId = ph.PostId AND u.Id= c.UserId AND c.CreationDate>='2010-07-24 09:10:00'::timestamp AND c.CreationDate<='2014-09-07 15:48:10'::timestamp AND p.FavoriteCount=0 AND p.CreationDate>='2010-07-20 04:19:12'::timestamp AND p.CreationDate<='2014-08-22 20:07:32'::timestamp AND ph.CreationDate<='2014-08-15 17:26:03'::timestamp AND u.Views>=0 AND u.Views<=38 AND u.UpVotes<=10;

/*+ HashJoin(ph u p)
 HashJoin(ph u)
 SeqScan(ph)
 SeqScan(u)
 SeqScan(p)
 Leading(((ph u) p)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.UserId = p.OwnerUserId AND ph.UserId = u.Id AND p.PostTypeId=1 AND p.ViewCount>=0 AND p.ViewCount<=4894 AND p.AnswerCount<=4 AND p.FavoriteCount>=0 AND u.Reputation>=1 AND u.Reputation<=325 AND u.Views>=0 AND u.CreationDate>='2010-08-04 16:51:56'::timestamp;

/*+ HashJoin(ph b u v)
 HashJoin(b u v)
 HashJoin(u v)
 SeqScan(ph)
 SeqScan(b)
 SeqScan(u)
 SeqScan(v)
 Leading((ph (b (u v)))) */
SELECT COUNT(*) FROM postHistory as ph, votes as v, users as u, badges as b WHERE u.Id = ph.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND ph.PostHistoryTypeId=1 AND ph.CreationDate<='2014-08-12 15:00:16'::timestamp AND v.CreationDate>='2010-07-25 00:00:00'::timestamp AND v.CreationDate<='2014-09-09 00:00:00'::timestamp AND u.DownVotes<=1 AND u.CreationDate>='2010-07-26 20:58:01'::timestamp AND u.CreationDate<='2014-09-12 18:13:44'::timestamp AND b.Date>='2010-08-03 20:00:23'::timestamp AND b.Date<='2014-09-01 00:48:03'::timestamp;

/*+ HashJoin(b c ph pl p v)
 HashJoin(c ph pl p v)
 HashJoin(ph pl p v)
 HashJoin(ph pl p)
 HashJoin(pl p)
 SeqScan(b)
 SeqScan(c)
 SeqScan(ph)
 SeqScan(pl)
 SeqScan(p)
 SeqScan(v)
 Leading((b (c ((ph (pl p)) v)))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, votes as v, badges as b WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.Id = ph.PostId AND p.Id = v.PostId AND b.UserId = c.UserId AND c.Score=0 AND p.Score>=0 AND p.AnswerCount<=6 AND p.CommentCount<=16 AND p.FavoriteCount>=0 AND p.FavoriteCount<=15 AND p.CreationDate>='2010-07-24 23:09:05'::timestamp AND ph.PostHistoryTypeId=3 AND b.Date>='2010-07-25 01:38:34'::timestamp;

/*+ HashJoin(b ph v u)
 HashJoin(ph v u)
 HashJoin(v u)
 SeqScan(b)
 SeqScan(ph)
 SeqScan(v)
 SeqScan(u)
 Leading((b (ph (v u)))) */
SELECT COUNT(*) FROM postHistory as ph, votes as v, users as u, badges as b WHERE u.Id = ph.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND ph.CreationDate>='2011-03-24 19:02:00'::timestamp AND v.BountyAmount>=0 AND u.Views>=0 AND u.Views<=74 AND u.DownVotes>=0 AND u.UpVotes<=9 AND u.CreationDate>='2010-09-12 18:56:59'::timestamp AND b.Date>='2010-09-16 02:11:36'::timestamp AND b.Date<='2014-09-11 18:35:08'::timestamp;

/*+ HashJoin(c u b ph)
 HashJoin(c u b)
 HashJoin(c u)
 SeqScan(c)
 SeqScan(u)
 SeqScan(b)
 SeqScan(ph)
 Leading((((c u) b) ph)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = ph.UserId AND u.Id = b.UserId AND c.Score=3 AND c.CreationDate<='2014-09-10 19:53:39'::timestamp AND u.Reputation>=1 AND u.Reputation<=2384 AND u.Views<=153 AND u.DownVotes<=0 AND u.UpVotes>=0 AND u.UpVotes<=10 AND u.CreationDate<='2014-09-10 13:39:25'::timestamp;

/*+ HashJoin(b c u p pl)
 HashJoin(c u p pl)
 HashJoin(u p pl)
 HashJoin(p pl)
 SeqScan(b)
 SeqScan(c)
 SeqScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((b (c (u (p pl))))) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND p.Id = c.PostId AND u.Id = b.UserId AND u.Id = p.OwnerUserId AND c.Score=1 AND pl.LinkTypeId=1 AND p.PostTypeId=1 AND p.Score>=-1 AND p.Score<=11 AND p.ViewCount>=0 AND p.FavoriteCount<=5 AND u.UpVotes=0 AND b.Date>='2011-02-05 16:46:11'::timestamp;

/*+ HashJoin(v u p pl b ph)
 HashJoin(v u p pl b)
 HashJoin(v u p pl)
 HashJoin(v u p)
 HashJoin(v u)
 IndexScan(v)
 SeqScan(u)
 SeqScan(p)
 IndexScan(pl)
 SeqScan(b)
 SeqScan(ph)
 Leading((((((v u) p) pl) b) ph)) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph, votes as v, badges as b, users as u WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND u.Id = ph.UserId AND u.Id = v.UserId AND p.Score>=0 AND p.ViewCount>=0 AND p.CommentCount>=0 AND p.CreationDate>='2010-08-02 05:16:40'::timestamp AND p.CreationDate<='2014-09-12 06:07:33'::timestamp AND ph.PostHistoryTypeId=2 AND u.Reputation>=1 AND u.Reputation<=487 AND u.DownVotes<=55;

/*+ HashJoin(b u p v)
 HashJoin(u p v)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(u)
 SeqScan(p)
 SeqScan(v)
 Leading((b ((u p) v))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND v.BountyAmount<=100 AND v.CreationDate>='2010-07-21 00:00:00'::timestamp AND p.PostTypeId=2 AND p.CreationDate>='2010-07-27 07:24:19'::timestamp AND p.CreationDate<='2014-09-04 13:45:36'::timestamp AND u.Reputation<=5134 AND u.DownVotes>=0 AND u.DownVotes<=6 AND u.UpVotes=0;

/*+ HashJoin(c v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(c)
 SeqScan(v)
 SeqScan(u)
 SeqScan(p)
 Leading((c (v (u p)))) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE p.Id = c.PostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND p.AnswerCount>=0 AND p.AnswerCount<=4 AND p.FavoriteCount>=0 AND p.FavoriteCount<=45 AND p.CreationDate>='2010-08-06 14:10:01'::timestamp AND v.VoteTypeId=2 AND u.Views>=0 AND u.DownVotes<=4 AND u.CreationDate>='2011-07-29 19:20:07'::timestamp;

/*+ HashJoin(v p u pl)
 HashJoin(p u pl)
 HashJoin(p u)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 SeqScan(pl)
 Leading((v ((p u) pl))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, votes as v, users as u WHERE p.Id = pl.RelatedPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND p.PostTypeId=1 AND p.Score>=0 AND p.Score<=22 AND p.AnswerCount>=0 AND p.CommentCount>=0 AND p.CommentCount<=16 AND p.FavoriteCount>=0 AND v.VoteTypeId=2 AND u.DownVotes<=1;

/*+ HashJoin(ph c p pl v)
 HashJoin(c p pl v)
 HashJoin(c p pl)
 HashJoin(p pl)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 SeqScan(v)
 Leading((ph ((c (p pl)) v))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, votes as v WHERE p.Id = c.PostId AND p.Id = pl.PostId AND p.Id = ph.PostId AND p.Id = v.PostId AND c.CreationDate>='2010-07-29 14:11:05'::timestamp AND c.CreationDate<='2014-08-27 19:43:16'::timestamp AND p.Score>=-4 AND p.Score<=8 AND p.ViewCount>=0 AND p.CommentCount>=0 AND v.VoteTypeId=2 AND v.CreationDate>='2010-07-19 00:00:00'::timestamp AND v.CreationDate<='2014-09-12 00:00:00'::timestamp;

/*+ MergeJoin(v u p)
 HashJoin(u p)
 IndexScan(v)
 SeqScan(u)
 SeqScan(p)
 Leading((v (u p))) */
SELECT COUNT(*) FROM votes as v, posts as p, users as u WHERE v.UserId = p.OwnerUserId AND p.OwnerUserId = u.Id AND v.CreationDate>='2010-07-26 00:00:00'::timestamp AND v.CreationDate<='2014-09-09 00:00:00'::timestamp AND p.Score=4 AND p.CommentCount<=16 AND u.Reputation>=1 AND u.Reputation<=461 AND u.DownVotes=0 AND u.CreationDate>='2010-12-28 02:35:22'::timestamp AND u.CreationDate<='2014-07-25 10:53:37'::timestamp;

/*+ HashJoin(ph p u c pl)
 HashJoin(p u c pl)
 HashJoin(u c pl)
 HashJoin(c pl)
 SeqScan(ph)
 SeqScan(p)
 SeqScan(u)
 SeqScan(c)
 SeqScan(pl)
 Leading((ph (p (u (c pl))))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, users as u WHERE p.Id = pl.RelatedPostId AND pl.RelatedPostId = c.PostId AND pl.RelatedPostId = ph.PostId AND u.Id= c.UserId AND c.Score=0 AND c.CreationDate<='2014-09-04 20:04:05'::timestamp AND p.PostTypeId=2 AND p.Score>=-3 AND p.ViewCount<=8456 AND p.CreationDate<='2014-09-11 17:09:42'::timestamp AND pl.LinkTypeId=1 AND ph.PostHistoryTypeId=5 AND u.DownVotes<=0;

/*+ HashJoin(v u p pl b ph)
 HashJoin(v u p pl b)
 HashJoin(v u p pl)
 HashJoin(v u p)
 HashJoin(v u)
 IndexScan(v)
 SeqScan(u)
 SeqScan(p)
 SeqScan(pl)
 SeqScan(b)
 SeqScan(ph)
 Leading((((((v u) p) pl) b) ph)) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph, votes as v, badges as b, users as u WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND u.Id = ph.UserId AND u.Id = v.UserId AND p.Score>=-1 AND p.AnswerCount<=4 AND p.FavoriteCount>=0 AND pl.CreationDate<='2014-08-22 20:04:25'::timestamp AND v.CreationDate<='2014-09-04 00:00:00'::timestamp AND b.Date<='2014-09-02 21:33:28'::timestamp AND u.Views>=0 AND u.DownVotes<=0 AND u.UpVotes>=0;

/*+ HashJoin(b u p pl)
 HashJoin(u p pl)
 HashJoin(p pl)
 SeqScan(b)
 SeqScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((b (u (p pl)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND pl.CreationDate>='2010-12-17 02:04:31'::timestamp AND pl.CreationDate<='2014-09-08 10:24:42'::timestamp AND p.Score>=-1 AND p.Score<=22 AND p.CommentCount>=0 AND p.CommentCount<=21 AND u.Views<=57 AND u.UpVotes<=36 AND u.CreationDate>='2010-08-05 01:08:36'::timestamp;

/*+ HashJoin(ph u p)
 HashJoin(ph u)
 SeqScan(ph)
 SeqScan(u)
 SeqScan(p)
 Leading(((ph u) p)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.UserId = p.OwnerUserId AND ph.UserId = u.Id AND p.PostTypeId=1 AND p.ViewCount<=17198 AND p.AnswerCount<=5 AND p.CreationDate>='2010-07-19 19:33:19'::timestamp AND p.CreationDate<='2014-09-07 20:05:15'::timestamp AND u.Views>=0 AND u.DownVotes>=0 AND u.UpVotes>=0 AND u.UpVotes<=50;

/*+ HashJoin(b c u p pl v)
 HashJoin(c u p pl v)
 HashJoin(c u p pl)
 HashJoin(u p pl)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(c)
 SeqScan(u)
 SeqScan(p)
 SeqScan(pl)
 SeqScan(v)
 Leading((b ((c ((u p) pl)) v))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, votes as v, badges as b, users as u WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND c.CreationDate>='2010-10-02 22:25:22'::timestamp AND c.CreationDate<='2014-09-12 12:00:31'::timestamp AND p.ViewCount<=1305 AND p.FavoriteCount>=0 AND p.FavoriteCount<=4 AND p.CreationDate>='2010-08-04 13:18:12'::timestamp AND p.CreationDate<='2014-08-31 19:40:51'::timestamp AND pl.LinkTypeId=1 AND u.Views<=36;

/*+ HashJoin(b ph v u)
 HashJoin(ph v u)
 HashJoin(v u)
 SeqScan(b)
 SeqScan(ph)
 SeqScan(v)
 SeqScan(u)
 Leading((b (ph (v u)))) */
SELECT COUNT(*) FROM postHistory as ph, votes as v, users as u, badges as b WHERE u.Id = ph.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND ph.PostHistoryTypeId=3 AND ph.CreationDate>='2010-07-28 16:31:04'::timestamp AND ph.CreationDate<='2014-07-16 17:19:18'::timestamp AND v.BountyAmount>=0 AND v.BountyAmount<=50 AND v.CreationDate>='2010-07-29 00:00:00'::timestamp AND v.CreationDate<='2014-09-11 00:00:00'::timestamp AND u.UpVotes<=2219 AND b.Date>='2010-07-20 03:44:08'::timestamp;

/*+ HashJoin(c p u)
 HashJoin(p u)
 SeqScan(c)
 SeqScan(p)
 SeqScan(u)
 Leading((c (p u))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.UserId = u.Id AND u.Id = p.OwnerUserId AND c.Score=0 AND p.AnswerCount>=0 AND p.AnswerCount<=5 AND p.CommentCount>=0 AND u.Reputation>=1 AND u.Reputation<=1589 AND u.Views>=0 AND u.Views<=39 AND u.DownVotes<=0;

/*+ HashJoin(u c p v b)
 HashJoin(u c p v)
 NestLoop(u c p)
 MergeJoin(u c)
 IndexScan(u)
 SeqScan(c)
 IndexScan(p)
 IndexScan(v)
 SeqScan(b)
 Leading(((((u c) p) v) b)) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, badges as b, users as u WHERE u.Id =c.UserId AND c.UserId = p.OwnerUserId AND p.OwnerUserId = v.UserId AND v.UserId = b.UserId AND c.Score=1 AND p.PostTypeId=1 AND p.FavoriteCount>=0 AND v.CreationDate>='2010-07-22 00:00:00'::timestamp AND b.Date>='2010-07-28 11:38:54'::timestamp AND b.Date<='2014-08-29 12:25:32'::timestamp AND u.DownVotes>=0 AND u.UpVotes>=0 AND u.CreationDate>='2011-04-11 16:06:30'::timestamp;

/*+ HashJoin(v c p pl)
 HashJoin(c p pl)
 HashJoin(c p)
 SeqScan(v)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 Leading((v ((c p) pl))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, votes as v WHERE p.Id = c.PostId AND c.PostId = pl.PostId AND pl.PostId = v.PostId AND p.AnswerCount>=0 AND p.AnswerCount<=4 AND p.FavoriteCount<=4 AND p.CreationDate>='2010-08-29 17:15:22'::timestamp AND p.CreationDate<='2014-08-30 15:09:04'::timestamp AND pl.LinkTypeId=1 AND v.VoteTypeId=2 AND v.CreationDate>='2010-07-19 00:00:00'::timestamp AND v.CreationDate<='2014-09-12 00:00:00'::timestamp;

/*+ HashJoin(b u p pl)
 HashJoin(u p pl)
 HashJoin(p pl)
 SeqScan(b)
 SeqScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((b (u (p pl)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND pl.LinkTypeId=1 AND pl.CreationDate<='2014-09-12 14:54:50'::timestamp AND p.ViewCount>=0 AND p.ViewCount<=3382 AND p.FavoriteCount<=4 AND p.CreationDate>='2010-07-27 13:14:19'::timestamp AND p.CreationDate<='2014-08-30 05:12:47'::timestamp AND u.Views<=27 AND u.UpVotes<=81;

/*+ HashJoin(ph c p pl u)
 HashJoin(c p pl u)
 HashJoin(c p pl)
 HashJoin(p pl)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 SeqScan(u)
 Leading((ph ((c (p pl)) u))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, users as u WHERE p.Id = pl.RelatedPostId AND pl.RelatedPostId = c.PostId AND pl.RelatedPostId = ph.PostId AND u.Id= c.UserId AND p.PostTypeId=1 AND p.ViewCount>=0 AND p.ViewCount<=8128 AND p.CreationDate>='2010-07-20 06:03:59'::timestamp AND pl.LinkTypeId=1 AND ph.PostHistoryTypeId=2 AND u.Views>=0 AND u.Views<=98 AND u.DownVotes=0;

/*+ HashJoin(ph c p pl u)
 HashJoin(c p pl u)
 HashJoin(c p pl)
 HashJoin(p pl)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 SeqScan(u)
 Leading((ph ((c (p pl)) u))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, users as u WHERE p.Id = pl.RelatedPostId AND pl.RelatedPostId = c.PostId AND pl.RelatedPostId = ph.PostId AND u.Id= c.UserId AND c.CreationDate>='2010-07-21 14:25:01'::timestamp AND c.CreationDate<='2014-09-10 23:50:12'::timestamp AND p.FavoriteCount>=0 AND ph.CreationDate>='2011-01-13 14:17:53'::timestamp AND u.Views>=0 AND u.DownVotes>=0 AND u.DownVotes<=48 AND u.CreationDate>='2011-08-15 12:47:57'::timestamp AND u.CreationDate<='2014-09-08 23:54:51'::timestamp;

/*+ HashJoin(ph v p u)
 HashJoin(v p u)
 HashJoin(p u)
 SeqScan(ph)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 Leading((ph (v (p u)))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, votes as v, users as u WHERE p.Id = ph.PostId AND u.Id = p.OwnerUserId AND p.Id = v.PostId AND p.Score>=-1 AND v.BountyAmount>=0 AND v.BountyAmount<=100 AND v.CreationDate>='2010-07-20 00:00:00'::timestamp AND v.CreationDate<='2014-09-11 00:00:00'::timestamp AND u.Reputation>=1 AND u.Reputation<=451 AND u.Views>=0 AND u.Views<=14;

/*+ HashJoin(b u p pl)
 MergeJoin(u p pl)
 HashJoin(p pl)
 SeqScan(b)
 IndexScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((b (u (p pl)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND pl.LinkTypeId=1 AND p.AnswerCount>=0 AND p.AnswerCount<=6 AND p.CommentCount>=0 AND p.FavoriteCount<=3 AND u.Views>=0 AND u.DownVotes>=0 AND u.UpVotes=0 AND u.CreationDate>='2010-07-20 01:39:55'::timestamp;

/*+ HashJoin(c p u v)
 HashJoin(c p u)
 HashJoin(p u)
 SeqScan(c)
 SeqScan(p)
 SeqScan(u)
 SeqScan(v)
 Leading(((c (p u)) v)) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE p.Id = c.PostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND p.ViewCount<=2718 AND p.AnswerCount<=5 AND p.CommentCount<=11 AND v.VoteTypeId=5 AND v.CreationDate<='2014-09-07 00:00:00'::timestamp AND u.Reputation>=1 AND u.Reputation<=141 AND u.Views>=0 AND u.Views<=85;

/*+ HashJoin(ph c pl p v b)
 HashJoin(c pl p v b)
 HashJoin(c pl p v)
 HashJoin(pl p v)
 HashJoin(pl p)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(pl)
 SeqScan(p)
 SeqScan(v)
 SeqScan(b)
 Leading((ph ((c ((pl p) v)) b))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, votes as v, badges as b WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.Id = ph.PostId AND p.Id = v.PostId AND b.UserId = c.UserId AND c.CreationDate>='2010-08-11 15:48:04'::timestamp AND c.CreationDate<='2014-09-14 01:45:19'::timestamp AND p.Score=0 AND p.ViewCount>=0 AND p.FavoriteCount>=0 AND p.FavoriteCount<=3 AND p.CreationDate<='2014-09-11 14:26:05'::timestamp AND pl.CreationDate<='2014-09-08 13:12:40'::timestamp AND ph.CreationDate>='2010-10-21 11:44:58'::timestamp;

/*+ MergeJoin(ph p u b)
 HashJoin(ph p u)
 HashJoin(ph p)
 IndexScan(ph)
 IndexScan(p)
 SeqScan(u)
 SeqScan(b)
 Leading((((ph p) u) b)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u, badges as b WHERE u.Id = p.OwnerUserId AND p.OwnerUserId = ph.UserId AND ph.UserId = b.UserId AND ph.PostHistoryTypeId=5 AND ph.CreationDate>='2010-09-15 02:15:32'::timestamp AND ph.CreationDate<='2014-06-24 13:53:34'::timestamp AND p.AnswerCount>=0 AND p.AnswerCount<=4 AND p.CommentCount>=0 AND p.CreationDate>='2010-08-06 03:47:26'::timestamp AND u.Reputation>=1 AND u.UpVotes<=21;

/*+ HashJoin(ph v pl p u b)
 HashJoin(v pl p u b)
 MergeJoin(v pl p u)
 HashJoin(pl p u)
 HashJoin(pl p)
 SeqScan(ph)
 IndexScan(v)
 IndexScan(pl)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((ph ((v ((pl p) u)) b))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph, votes as v, badges as b, users as u WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND u.Id = ph.UserId AND u.Id = v.UserId AND p.AnswerCount<=5 AND pl.LinkTypeId=1 AND pl.CreationDate<='2014-08-28 19:40:27'::timestamp AND ph.CreationDate<='2014-05-13 10:16:08'::timestamp AND v.BountyAmount>=0 AND v.CreationDate<='2014-09-13 00:00:00'::timestamp AND b.Date>='2010-07-19 20:39:06'::timestamp AND b.Date<='2014-09-11 14:11:25'::timestamp AND u.Views<=73;

/*+ HashJoin(c p u v)
 HashJoin(c p u)
 HashJoin(p u)
 SeqScan(c)
 SeqScan(p)
 SeqScan(u)
 SeqScan(v)
 Leading(((c (p u)) v)) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE p.Id = c.PostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND p.PostTypeId=2 AND p.CreationDate<='2014-09-04 23:01:02'::timestamp AND v.BountyAmount>=0 AND v.BountyAmount<=50 AND v.CreationDate>='2010-07-19 00:00:00'::timestamp AND u.Reputation<=113 AND u.DownVotes>=0 AND u.DownVotes<=0 AND u.UpVotes>=0;

/*+ HashJoin(ph c p pl u)
 HashJoin(c p pl u)
 HashJoin(c p pl)
 HashJoin(p pl)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 SeqScan(u)
 Leading((ph ((c (p pl)) u))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, users as u WHERE p.Id = pl.RelatedPostId AND pl.RelatedPostId = c.PostId AND pl.RelatedPostId = ph.PostId AND u.Id= c.UserId AND c.CreationDate>='2010-07-27 19:09:24'::timestamp AND p.ViewCount>=0 AND p.ViewCount<=8479 AND p.FavoriteCount<=5 AND pl.LinkTypeId=1 AND ph.PostHistoryTypeId=1 AND u.Views>=0 AND u.UpVotes<=9 AND u.CreationDate>='2010-09-16 07:57:09'::timestamp;

/*+ HashJoin(b c v u p pl)
 HashJoin(c v u p pl)
 HashJoin(v u p pl)
 HashJoin(u p pl)
 HashJoin(p pl)
 SeqScan(b)
 SeqScan(c)
 SeqScan(v)
 SeqScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((b (c (v (u (p pl)))))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, votes as v, badges as b, users as u WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND c.CreationDate<='2014-09-11 02:17:07'::timestamp AND p.AnswerCount<=4 AND pl.LinkTypeId=1 AND v.BountyAmount>=0 AND v.BountyAmount<=50 AND v.CreationDate>='2009-02-02 00:00:00'::timestamp AND v.CreationDate<='2014-09-12 00:00:00'::timestamp AND b.Date>='2010-07-22 16:08:19'::timestamp AND b.Date<='2014-09-12 03:06:54'::timestamp;

/*+ HashJoin(p b)
 SeqScan(p)
 SeqScan(b)
 Leading((p b)) */
SELECT COUNT(*) FROM badges as b, posts as p WHERE b.UserId = p.OwnerUserId AND p.Score>=-2 AND p.ViewCount>=0 AND p.ViewCount<=3942 AND p.AnswerCount>=0 AND p.AnswerCount<=6 AND p.CommentCount>=0 AND p.CommentCount<=10 AND p.FavoriteCount>=0 AND p.FavoriteCount<=15;

/*+ HashJoin(c p u pl b)
 HashJoin(c p u pl)
 HashJoin(p u pl)
 HashJoin(p u)
 SeqScan(c)
 SeqScan(p)
 SeqScan(u)
 SeqScan(pl)
 SeqScan(b)
 Leading(((c ((p u) pl)) b)) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND p.Id = c.PostId AND u.Id = b.UserId AND u.Id = p.OwnerUserId AND pl.LinkTypeId=1 AND pl.CreationDate>='2011-03-07 16:01:39'::timestamp AND pl.CreationDate<='2014-08-26 09:02:42'::timestamp AND p.ViewCount>=0 AND p.ViewCount<=6705 AND p.AnswerCount>=0 AND u.Reputation=1 AND u.Views>=0 AND u.CreationDate<='2014-09-13 08:32:22'::timestamp;

/*+ HashJoin(c p u)
 HashJoin(p u)
 SeqScan(c)
 SeqScan(p)
 SeqScan(u)
 Leading((c (p u))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.UserId = u.Id AND u.Id = p.OwnerUserId AND c.Score=0 AND p.ViewCount>=0 AND p.AnswerCount>=0 AND p.AnswerCount<=3 AND p.CommentCount>=0 AND p.FavoriteCount<=5 AND p.CreationDate>='2010-07-23 01:44:22'::timestamp AND u.Views>=0 AND u.Views<=112;

/*+ HashJoin(c pl p)
 HashJoin(pl p)
 SeqScan(c)
 IndexScan(pl)
 SeqScan(p)
 Leading((c (pl p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE c.UserId = p.OwnerUserId AND p.Id = pl.PostId AND c.Score=0 AND p.Score<=17 AND p.ViewCount>=0 AND p.ViewCount<=4341 AND p.AnswerCount<=5 AND p.CreationDate>='2010-07-19 20:37:21'::timestamp AND p.CreationDate<='2014-09-14 02:09:23'::timestamp AND pl.CreationDate>='2010-08-26 15:40:23'::timestamp AND pl.CreationDate<='2014-07-31 03:20:24'::timestamp;

/*+ HashJoin(c u p v)
 HashJoin(c u p)
 HashJoin(u p)
 SeqScan(c)
 SeqScan(u)
 SeqScan(p)
 SeqScan(v)
 Leading(((c (u p)) v)) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE p.Id = c.PostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND c.Score=0 AND p.PostTypeId=1 AND p.AnswerCount=1 AND p.CommentCount>=0 AND p.CommentCount<=8 AND p.CreationDate>='2010-08-13 09:50:51'::timestamp AND p.CreationDate<='2014-09-11 15:57:22'::timestamp AND v.CreationDate<='2014-09-12 00:00:00'::timestamp AND u.DownVotes<=1;

/*+ HashJoin(ph b u p c)
 MergeJoin(ph b u p)
 HashJoin(b u p)
 HashJoin(u p)
 IndexScan(ph)
 SeqScan(b)
 SeqScan(u)
 SeqScan(p)
 IndexScan(c)
 Leading(((ph (b (u p))) c)) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = ph.UserId AND u.Id = b.UserId AND c.Score=0 AND c.CreationDate<='2014-09-05 14:01:34'::timestamp AND p.FavoriteCount<=5 AND b.Date>='2010-08-26 09:21:17'::timestamp AND b.Date<='2014-08-10 02:30:44'::timestamp AND u.Reputation<=222 AND u.DownVotes>=0 AND u.CreationDate>='2010-07-19 19:52:18'::timestamp AND u.CreationDate<='2014-09-08 01:24:30'::timestamp;

/*+ HashJoin(ph u p b)
 MergeJoin(ph u p)
 HashJoin(u p)
 IndexScan(ph)
 SeqScan(u)
 SeqScan(p)
 SeqScan(b)
 Leading(((ph (u p)) b)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u, badges as b WHERE u.Id = p.OwnerUserId AND p.OwnerUserId = ph.UserId AND ph.UserId = b.UserId AND ph.PostHistoryTypeId=4 AND ph.CreationDate>='2010-09-19 05:41:03'::timestamp AND ph.CreationDate<='2014-08-20 16:32:54'::timestamp AND p.ViewCount>=0 AND p.ViewCount<=8906 AND p.FavoriteCount>=0 AND p.CreationDate>='2010-07-28 11:31:59'::timestamp AND p.CreationDate<='2014-09-05 12:13:54'::timestamp AND u.UpVotes>=0;

/*+ HashJoin(ph c p)
 HashJoin(c p)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(p)
 Leading((ph (c p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph WHERE p.Id = c.PostId AND p.Id = ph.PostId AND c.CreationDate>='2010-07-23 10:09:35'::timestamp AND c.CreationDate<='2014-09-13 17:52:57'::timestamp AND p.Score>=-1 AND p.ViewCount<=34044 AND p.AnswerCount<=5 AND p.FavoriteCount>=0 AND p.FavoriteCount<=5 AND ph.PostHistoryTypeId=3 AND ph.CreationDate<='2014-07-09 01:25:24'::timestamp;

/*+ HashJoin(ph u p)
 HashJoin(u p)
 SeqScan(ph)
 SeqScan(u)
 SeqScan(p)
 Leading((ph (u p))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.PostId = p.Id AND p.OwnerUserId = u.Id AND ph.CreationDate<='2014-08-22 14:43:39'::timestamp AND p.AnswerCount>=0 AND p.AnswerCount<=6 AND p.CommentCount<=9 AND p.FavoriteCount=0 AND p.CreationDate>='2010-08-13 05:51:02'::timestamp AND p.CreationDate<='2014-09-12 07:47:34'::timestamp AND u.Views>=0 AND u.CreationDate>='2010-11-26 13:15:57'::timestamp;

/*+ HashJoin(ph u p)
 HashJoin(u p)
 SeqScan(ph)
 IndexScan(u)
 SeqScan(p)
 Leading((ph (u p))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.PostId = p.Id AND p.OwnerUserId = u.Id AND ph.PostHistoryTypeId=3 AND ph.CreationDate>='2011-03-17 23:23:33'::timestamp AND ph.CreationDate<='2014-09-09 00:45:19'::timestamp AND p.PostTypeId=1 AND p.CommentCount<=8 AND p.FavoriteCount<=6 AND p.CreationDate>='2010-07-23 15:35:55'::timestamp AND u.DownVotes>=0 AND u.CreationDate<='2014-09-09 06:13:06'::timestamp;

/*+ HashJoin(b p u pl)
 HashJoin(p u pl)
 NestLoop(p u)
 SeqScan(b)
 SeqScan(p)
 IndexScan(u)
 SeqScan(pl)
 Leading((b ((p u) pl))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND pl.CreationDate<='2014-08-25 02:43:01'::timestamp AND p.PostTypeId=1 AND p.Score=1 AND p.FavoriteCount>=0 AND p.FavoriteCount<=19 AND u.Reputation>=1 AND u.Reputation<=306 AND u.DownVotes=0 AND u.CreationDate>='2010-07-28 23:56:00'::timestamp;

/*+ HashJoin(u p pl)
 HashJoin(p pl)
 SeqScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((u (p pl))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, users as u WHERE p.Id = pl.PostId AND p.OwnerUserId = u.Id AND pl.CreationDate>='2010-09-24 22:08:31'::timestamp AND pl.CreationDate<='2014-07-08 07:41:36'::timestamp AND u.Reputation>=1 AND u.Reputation<=334 AND u.Views<=134 AND u.DownVotes>=0 AND u.DownVotes<=0 AND u.UpVotes>=0 AND u.UpVotes<=190;

/*+ MergeJoin(ph u p)
 HashJoin(u p)
 IndexScan(ph)
 SeqScan(u)
 SeqScan(p)
 Leading((ph (u p))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.PostId = p.Id AND p.OwnerUserId = u.Id AND ph.CreationDate>='2010-11-09 13:06:41'::timestamp AND ph.CreationDate<='2014-08-29 08:54:22'::timestamp AND p.Score<=18 AND p.ViewCount>=0 AND p.AnswerCount=0 AND p.CommentCount=2 AND p.FavoriteCount<=4 AND u.Reputation=101 AND u.Views>=0;

/*+ HashJoin(b c v u)
 HashJoin(c v u)
 HashJoin(v u)
 SeqScan(b)
 SeqScan(c)
 SeqScan(v)
 SeqScan(u)
 Leading((b (c (v u)))) */
SELECT COUNT(*) FROM comments as c, votes as v, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND c.Score=0 AND v.CreationDate='2013-05-16 00:00:00'::timestamp AND b.Date>='2010-07-27 09:13:47'::timestamp AND b.Date<='2014-09-07 12:46:58'::timestamp AND u.Reputation<=264 AND u.Views>=0 AND u.Views<=228 AND u.CreationDate>='2011-08-11 08:45:25'::timestamp AND u.CreationDate<='2014-09-12 17:44:54'::timestamp;

/*+ HashJoin(b p v u)
 HashJoin(p v u)
 HashJoin(p v)
 SeqScan(b)
 SeqScan(p)
 SeqScan(v)
 SeqScan(u)
 Leading((b ((p v) u))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND v.CreationDate='2014-08-20 00:00:00'::timestamp AND p.ViewCount<=17534 AND p.FavoriteCount>=0 AND p.CreationDate<='2014-09-12 01:10:45'::timestamp AND u.Views>=0 AND u.Views<=991 AND u.UpVotes>=0 AND u.UpVotes<=62 AND u.CreationDate<='2014-09-10 12:56:38'::timestamp;

/*+ HashJoin(b u p pl)
 HashJoin(u p pl)
 HashJoin(p pl)
 SeqScan(b)
 SeqScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((b (u (p pl)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND pl.LinkTypeId=1 AND pl.CreationDate>='2011-03-26 01:07:46'::timestamp AND p.FavoriteCount>=0 AND p.CreationDate<='2014-09-03 16:46:21'::timestamp AND u.Reputation>=1 AND u.Reputation<=1645 AND u.UpVotes>=0 AND u.UpVotes<=68 AND b.Date<='2014-09-05 19:19:44'::timestamp;

/*+ HashJoin(c u p)
 HashJoin(c u)
 SeqScan(c)
 SeqScan(u)
 SeqScan(p)
 Leading(((c u) p)) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.UserId = u.Id AND u.Id = p.OwnerUserId AND c.Score=0 AND c.CreationDate>='2010-07-23 16:06:37'::timestamp AND c.CreationDate<='2014-09-07 17:11:10'::timestamp AND p.Score>=-2 AND p.CreationDate>='2010-08-12 13:20:13'::timestamp AND p.CreationDate<='2014-09-04 15:48:59'::timestamp AND u.Views>=0 AND u.Views<=260 AND u.UpVotes<=18;

/*+ HashJoin(ph c p pl u)
 HashJoin(c p pl u)
 HashJoin(c p pl)
 HashJoin(p pl)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 SeqScan(u)
 Leading((ph ((c (p pl)) u))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, users as u WHERE p.Id = pl.RelatedPostId AND pl.RelatedPostId = c.PostId AND pl.RelatedPostId = ph.PostId AND u.Id= c.UserId AND p.PostTypeId=1 AND p.ViewCount<=10520 AND p.AnswerCount=0 AND p.CommentCount>=0 AND pl.LinkTypeId=1 AND ph.PostHistoryTypeId=24 AND u.Views>=0 AND u.DownVotes=0 AND u.CreationDate>='2010-07-19 20:02:18'::timestamp;

/*+ HashJoin(v u p)
 HashJoin(u p)
 SeqScan(v)
 SeqScan(u)
 SeqScan(p)
 Leading((v (u p))) */
SELECT COUNT(*) FROM votes as v, posts as p, users as u WHERE v.UserId = p.OwnerUserId AND p.OwnerUserId = u.Id AND v.CreationDate>='2010-07-19 00:00:00'::timestamp AND p.PostTypeId=1 AND p.Score>=-3 AND p.ViewCount>=0 AND p.ViewCount<=2959 AND p.AnswerCount<=4 AND p.CreationDate>='2010-07-22 04:34:32'::timestamp AND u.DownVotes<=1 AND u.UpVotes>=0;

/*+ HashJoin(ph p u)
 HashJoin(p u)
 SeqScan(ph)
 SeqScan(p)
 SeqScan(u)
 Leading((ph (p u))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.PostId = p.Id AND p.OwnerUserId = u.Id AND ph.CreationDate>='2010-11-18 14:22:23'::timestamp AND ph.CreationDate<='2014-08-27 18:17:06'::timestamp AND p.PostTypeId=1 AND p.ViewCount<=4442 AND p.CommentCount<=10 AND p.CreationDate<='2014-08-28 09:31:54'::timestamp AND u.Views>=0 AND u.DownVotes>=0 AND u.DownVotes<=2;

/*+ MergeJoin(ph c u p v)
 MergeJoin(ph c u p)
 HashJoin(c u p)
 HashJoin(c u)
 IndexScan(ph)
 SeqScan(c)
 SeqScan(u)
 SeqScan(p)
 SeqScan(v)
 Leading(((ph ((c u) p)) v)) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph, votes as v, users as u WHERE u.Id = c.UserId AND c.UserId = p.OwnerUserId AND p.OwnerUserId = ph.UserId AND ph.UserId = v.UserId AND p.Score<=16 AND p.FavoriteCount>=0 AND p.FavoriteCount<=3 AND ph.PostHistoryTypeId=1 AND ph.CreationDate>='2011-02-22 19:38:50'::timestamp AND ph.CreationDate<='2014-09-13 02:09:47'::timestamp AND v.BountyAmount<=100 AND u.Reputation=75 AND u.Views=0;

/*+ HashJoin(c u p)
 HashJoin(c u)
 SeqScan(c)
 SeqScan(u)
 SeqScan(p)
 Leading(((c u) p)) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.UserId = u.Id AND u.Id = p.OwnerUserId AND p.PostTypeId=1 AND p.ViewCount<=4294 AND p.AnswerCount=2 AND p.CommentCount>=0 AND p.CommentCount<=13 AND u.Reputation<=377 AND u.Views>=0 AND u.UpVotes=1 AND u.CreationDate<='2014-09-10 10:03:33'::timestamp;

/*+ HashJoin(c p u v b)
 HashJoin(c p u v)
 HashJoin(c p u)
 HashJoin(c p)
 IndexScan(c)
 IndexScan(p)
 SeqScan(u)
 SeqScan(v)
 SeqScan(b)
 Leading(((((c p) u) v) b)) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, badges as b, users as u WHERE u.Id =c.UserId AND c.UserId = p.OwnerUserId AND p.OwnerUserId = v.UserId AND v.UserId = b.UserId AND c.Score=0 AND p.PostTypeId=1 AND p.Score>=-1 AND p.Score<=55 AND p.ViewCount>=0 AND v.BountyAmount>=0 AND v.BountyAmount<=50 AND u.Views>=0 AND u.CreationDate>='2010-11-24 23:59:25'::timestamp;

/*+ HashJoin(c ph u p b)
 HashJoin(c ph u p)
 HashJoin(ph u p)
 HashJoin(u p)
 SeqScan(c)
 SeqScan(ph)
 SeqScan(u)
 SeqScan(p)
 IndexScan(b)
 Leading(((c (ph (u p))) b)) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = ph.UserId AND u.Id = b.UserId AND p.Score>=-2 AND p.CommentCount>=0 AND p.CommentCount<=14 AND p.CreationDate>='2010-09-28 19:02:38'::timestamp AND p.CreationDate<='2014-08-30 16:36:56'::timestamp AND ph.PostHistoryTypeId=2 AND b.Date<='2014-08-25 21:02:47'::timestamp AND u.Reputation>=1 AND u.DownVotes<=0;

/*+ HashJoin(b u p pl)
 HashJoin(u p pl)
 HashJoin(p pl)
 SeqScan(b)
 SeqScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((b (u (p pl)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.PostTypeId=1 AND p.ViewCount>=0 AND p.ViewCount<=2794 AND p.FavoriteCount>=0 AND p.FavoriteCount<=6 AND p.CreationDate<='2014-09-03 20:47:11'::timestamp AND u.DownVotes<=1 AND u.UpVotes<=201 AND b.Date>='2010-07-28 12:53:53'::timestamp;

/*+ MergeJoin(ph c u p v)
 MergeJoin(ph c u p)
 HashJoin(c u p)
 HashJoin(c u)
 IndexScan(ph)
 SeqScan(c)
 SeqScan(u)
 SeqScan(p)
 SeqScan(v)
 Leading(((ph ((c u) p)) v)) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph, votes as v, users as u WHERE u.Id = c.UserId AND c.UserId = p.OwnerUserId AND p.OwnerUserId = ph.UserId AND ph.UserId = v.UserId AND p.PostTypeId=2 AND p.FavoriteCount>=0 AND p.FavoriteCount<=6 AND ph.CreationDate>='2010-08-25 08:33:14'::timestamp AND ph.CreationDate<='2014-08-29 15:06:47'::timestamp AND v.BountyAmount>=0 AND u.Reputation>=1 AND u.Reputation<=235 AND u.CreationDate>='2010-08-22 14:07:01'::timestamp;

/*+ HashJoin(b ph c v p pl)
 HashJoin(ph c v p pl)
 HashJoin(c v p pl)
 HashJoin(v p pl)
 HashJoin(p pl)
 SeqScan(b)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(v)
 SeqScan(p)
 SeqScan(pl)
 Leading((b (ph (c (v (p pl)))))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, votes as v, badges as b WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.Id = ph.PostId AND p.Id = v.PostId AND b.UserId = c.UserId AND c.CreationDate>='2010-07-26 20:03:09'::timestamp AND c.CreationDate<='2014-09-11 23:57:35'::timestamp AND p.PostTypeId=2 AND pl.LinkTypeId=3 AND ph.PostHistoryTypeId=5 AND ph.CreationDate>='2011-02-05 15:42:04'::timestamp AND v.VoteTypeId=2 AND b.Date>='2010-07-29 17:59:10'::timestamp AND b.Date<='2014-09-09 02:46:20'::timestamp;

/*+ HashJoin(ph u p)
 HashJoin(ph u)
 SeqScan(ph)
 SeqScan(u)
 SeqScan(p)
 Leading(((ph u) p)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.UserId = p.OwnerUserId AND ph.UserId = u.Id AND ph.PostHistoryTypeId=5 AND p.Score>=0 AND p.Score<=36 AND p.ViewCount>=0 AND p.AnswerCount=1 AND p.CommentCount<=15 AND p.FavoriteCount>=0 AND u.UpVotes>=0 AND u.UpVotes<=304;

/*+ HashJoin(b ph u p)
 HashJoin(ph u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(ph)
 SeqScan(u)
 SeqScan(p)
 Leading((b (ph (u p)))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u, badges as b WHERE u.Id = p.OwnerUserId AND p.OwnerUserId = ph.UserId AND ph.UserId = b.UserId AND ph.PostHistoryTypeId=1 AND p.PostTypeId=1 AND p.Score>=0 AND p.Score<=42 AND p.FavoriteCount=0 AND u.Reputation>=1 AND u.Views>=0 AND u.CreationDate>='2010-07-27 12:49:09'::timestamp AND u.CreationDate<='2014-08-27 21:37:33'::timestamp;

/*+ HashJoin(b u p pl)
 HashJoin(u p pl)
 HashJoin(p pl)
 SeqScan(b)
 SeqScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((b (u (p pl)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>=0 AND p.Score<=55 AND p.AnswerCount<=3 AND p.CommentCount<=15 AND p.FavoriteCount>=0 AND p.FavoriteCount<=2 AND u.Views>=0 AND u.Views<=51 AND u.UpVotes<=123;

/*+ HashJoin(c u p)
 HashJoin(u p)
 SeqScan(c)
 IndexScan(u)
 SeqScan(p)
 Leading((c (u p))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.UserId = u.Id AND u.Id = p.OwnerUserId AND c.Score=0 AND c.CreationDate<='2014-09-12 18:33:01'::timestamp AND p.AnswerCount=0 AND p.CommentCount>=0 AND p.CommentCount<=13 AND p.FavoriteCount<=34 AND u.DownVotes=0 AND u.UpVotes<=31 AND u.CreationDate>='2010-08-05 10:03:14'::timestamp;

/*+ HashJoin(ph p u b)
 HashJoin(ph p u)
 HashJoin(ph p)
 IndexScan(ph)
 IndexScan(p)
 SeqScan(u)
 SeqScan(b)
 Leading((((ph p) u) b)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u, badges as b WHERE u.Id = p.OwnerUserId AND p.OwnerUserId = ph.UserId AND ph.UserId = b.UserId AND ph.PostHistoryTypeId=2 AND ph.CreationDate<='2014-09-05 01:20:31'::timestamp AND p.Score<=27 AND p.AnswerCount>=0 AND p.CreationDate>='2010-07-19 23:40:01'::timestamp AND p.CreationDate<='2014-09-12 16:54:29'::timestamp AND u.Reputation>=1 AND u.Reputation<=111 AND b.Date>='2010-07-20 05:19:09'::timestamp;

/*+ HashJoin(b p u v)
 HashJoin(p u v)
 HashJoin(u v)
 SeqScan(b)
 SeqScan(p)
 IndexScan(u)
 SeqScan(v)
 Leading((b (p (u v)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE u.Id = v.UserId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND v.BountyAmount>=0 AND v.BountyAmount<=50 AND p.Score>=0 AND p.FavoriteCount>=0 AND p.FavoriteCount<=7 AND u.Views>=0 AND u.Views<=64 AND u.UpVotes>=0 AND u.CreationDate<='2014-08-15 22:35:05'::timestamp;

/*+ HashJoin(u pl p v)
 HashJoin(pl p v)
 HashJoin(p v)
 SeqScan(u)
 SeqScan(pl)
 SeqScan(p)
 SeqScan(v)
 Leading((u (pl (p v)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, votes as v, users as u WHERE p.Id = pl.RelatedPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND pl.LinkTypeId=1 AND pl.CreationDate<='2014-08-05 01:37:58'::timestamp AND p.AnswerCount>=0 AND p.AnswerCount<=8 AND p.FavoriteCount>=0 AND p.FavoriteCount<=10 AND v.BountyAmount<=50 AND v.CreationDate<='2014-09-12 00:00:00'::timestamp AND u.UpVotes<=69;

/*+ HashJoin(b u p pl)
 HashJoin(u p pl)
 HashJoin(p pl)
 SeqScan(b)
 SeqScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((b (u (p pl)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.PostTypeId=1 AND p.AnswerCount>=0 AND p.AnswerCount<=5 AND p.FavoriteCount<=41 AND u.DownVotes>=0 AND u.DownVotes<=0 AND u.UpVotes<=7 AND u.CreationDate<='2014-09-03 01:06:41'::timestamp AND b.Date<='2014-09-09 15:07:14'::timestamp;

/*+ HashJoin(c ph u p b)
 HashJoin(c ph u p)
 HashJoin(ph u p)
 HashJoin(ph u)
 SeqScan(c)
 IndexScan(ph)
 SeqScan(u)
 SeqScan(p)
 IndexScan(b)
 Leading(((c ((ph u) p)) b)) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = ph.UserId AND u.Id = b.UserId AND c.CreationDate<='2014-09-10 16:03:25'::timestamp AND p.PostTypeId=1 AND p.Score<=23 AND p.FavoriteCount>=0 AND p.FavoriteCount<=5 AND ph.CreationDate>='2010-12-07 03:47:50'::timestamp AND b.Date>='2010-08-02 18:00:10'::timestamp AND u.DownVotes<=0 AND u.UpVotes<=683;

/*+ HashJoin(c ph p b u)
 HashJoin(ph p b u)
 HashJoin(p b u)
 HashJoin(b u)
 SeqScan(c)
 SeqScan(ph)
 SeqScan(p)
 IndexScan(b)
 SeqScan(u)
 Leading((c (ph (p (b u))))) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = ph.UserId AND u.Id = b.UserId AND c.Score=0 AND p.PostTypeId=1 AND p.AnswerCount<=3 AND p.CreationDate>='2010-07-24 19:25:59'::timestamp AND p.CreationDate<='2014-09-10 07:41:07'::timestamp AND ph.PostHistoryTypeId=2 AND ph.CreationDate<='2014-09-05 02:54:12'::timestamp AND u.DownVotes>=0 AND u.DownVotes<=7;

/*+ HashJoin(c v p u)
 HashJoin(v p u)
 HashJoin(p u)
 SeqScan(c)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 Leading((c (v (p u)))) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = v.UserId AND c.Score=0 AND c.CreationDate>='2010-07-26 19:55:09'::timestamp AND c.CreationDate<='2014-09-13 18:41:00'::timestamp AND p.PostTypeId=1 AND p.AnswerCount<=7 AND p.CommentCount<=15 AND u.Views=8 AND u.DownVotes>=0 AND u.DownVotes<=0;

/*+ HashJoin(b u ph c v)
 HashJoin(c v)
 HashJoin(b u ph)
 HashJoin(b u)
 SeqScan(b)
 SeqScan(u)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(v)
 Leading((((b u) ph) (c v))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, votes as v, users as u WHERE u.Id =b.UserId AND b.UserId = ph.UserId AND ph.UserId = v.UserId AND v.UserId = c.UserId AND c.Score=2 AND ph.CreationDate>='2010-07-19 20:11:47'::timestamp AND v.BountyAmount>=0 AND v.BountyAmount<=100 AND v.CreationDate>='2010-07-19 00:00:00'::timestamp AND u.DownVotes>=0 AND u.DownVotes<=0 AND u.UpVotes>=0 AND u.UpVotes<=1160;

/*+ HashJoin(ph p u)
 HashJoin(p u)
 SeqScan(ph)
 SeqScan(p)
 SeqScan(u)
 Leading((ph (p u))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.PostId = p.Id AND p.OwnerUserId = u.Id AND ph.CreationDate>='2011-04-24 03:09:20'::timestamp AND p.ViewCount<=4801 AND p.CommentCount>=0 AND p.CommentCount<=13 AND p.FavoriteCount>=0 AND p.CreationDate<='2014-09-10 22:26:15'::timestamp AND u.Reputation>=1 AND u.Views>=0 AND u.Views<=23;

/*+ HashJoin(b u p pl)
 HashJoin(u p pl)
 HashJoin(p pl)
 SeqScan(b)
 SeqScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((b (u (p pl)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.AnswerCount>=0 AND p.AnswerCount<=5 AND p.CommentCount>=0 AND p.CommentCount<=13 AND p.FavoriteCount>=0 AND p.CreationDate>='2010-07-20 15:21:01'::timestamp AND p.CreationDate<='2014-09-12 11:26:25'::timestamp AND u.UpVotes>=0 AND b.Date='2013-09-12 18:54:37'::timestamp;

/*+ HashJoin(c v u)
 NestLoop(v u)
 SeqScan(c)
 SeqScan(v)
 IndexScan(u)
 Leading((c (v u))) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND c.Score=1 AND c.CreationDate>='2010-07-26 13:31:30'::timestamp AND c.CreationDate<='2014-09-10 20:19:08'::timestamp AND v.BountyAmount<=50 AND u.Reputation<=128 AND u.Views<=94 AND u.DownVotes>=0 AND u.DownVotes<=0 AND u.CreationDate<='2014-08-26 23:45:19'::timestamp;

/*+ HashJoin(u v p pl)
 HashJoin(v p pl)
 HashJoin(p pl)
 SeqScan(u)
 SeqScan(v)
 SeqScan(p)
 SeqScan(pl)
 Leading((u (v (p pl)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, votes as v, users as u WHERE p.Id = pl.RelatedPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND pl.CreationDate<='2014-08-21 13:26:05'::timestamp AND p.ViewCount>=0 AND p.ViewCount<=20706 AND p.AnswerCount=0 AND v.CreationDate>='2010-07-29 00:00:00'::timestamp AND v.CreationDate<='2014-09-09 00:00:00'::timestamp AND u.Reputation<=391 AND u.Views>=0 AND u.CreationDate<='2014-09-02 20:07:19'::timestamp;

/*+ HashJoin(c p pl)
 HashJoin(p pl)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 Leading((c (p pl))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE c.UserId = p.OwnerUserId AND p.Id = pl.PostId AND c.Score=1 AND p.Score<=14 AND p.ViewCount>=0 AND p.AnswerCount>=0 AND p.AnswerCount<=3 AND p.CommentCount<=16 AND p.CreationDate>='2010-10-05 09:39:19'::timestamp AND pl.LinkTypeId=1 AND pl.CreationDate>='2011-10-29 18:14:54'::timestamp;

/*+ HashJoin(c u pl p b)
 HashJoin(c u pl p)
 HashJoin(u pl p)
 HashJoin(pl p)
 SeqScan(c)
 SeqScan(u)
 SeqScan(pl)
 SeqScan(p)
 SeqScan(b)
 Leading(((c (u (pl p))) b)) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND p.Id = c.PostId AND u.Id = b.UserId AND u.Id = p.OwnerUserId AND c.CreationDate>='2010-07-30 23:41:56'::timestamp AND c.CreationDate<='2014-08-26 22:52:59'::timestamp AND pl.LinkTypeId=1 AND p.Score<=23 AND p.ViewCount<=75058 AND p.CommentCount>=0 AND p.CommentCount<=14 AND p.CreationDate<='2014-09-08 22:09:43'::timestamp AND u.Views>=0;

/*+ HashJoin(ph u v c)
 HashJoin(ph u v)
 HashJoin(u v)
 SeqScan(ph)
 SeqScan(u)
 SeqScan(v)
 SeqScan(c)
 Leading(((ph (u v)) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v, users as u WHERE u.Id = v.UserId AND v.UserId = ph.UserId AND ph.UserId =c.UserId AND c.CreationDate>='2010-07-20 10:02:05'::timestamp AND ph.PostHistoryTypeId=5 AND ph.CreationDate>='2010-07-20 06:41:13'::timestamp AND v.BountyAmount>=0 AND v.BountyAmount<=100 AND v.CreationDate>='2010-07-26 00:00:00'::timestamp AND u.Reputation>=1 AND u.Reputation<=209 AND u.UpVotes<=51;

/*+ HashJoin(v c p pl)
 HashJoin(c p pl)
 HashJoin(c p)
 SeqScan(v)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 Leading((v ((c p) pl))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, votes as v WHERE p.Id = c.PostId AND c.PostId = pl.PostId AND pl.PostId = v.PostId AND c.CreationDate>='2010-08-19 10:33:16'::timestamp AND c.CreationDate<='2014-08-29 00:08:07'::timestamp AND p.Score<=16 AND p.ViewCount<=6436 AND p.CommentCount>=0 AND p.CommentCount<=9 AND p.FavoriteCount>=0 AND pl.CreationDate<='2014-06-24 15:31:05'::timestamp AND v.VoteTypeId=2;

/*+ HashJoin(c p u v)
 HashJoin(c p u)
 HashJoin(p u)
 SeqScan(c)
 IndexScan(p)
 SeqScan(u)
 SeqScan(v)
 Leading(((c (p u)) v)) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = v.UserId AND c.Score=0 AND p.PostTypeId=2 AND p.Score>=0 AND p.Score<=15 AND u.Reputation>=1 AND u.Reputation<=1396 AND u.UpVotes>=0 AND u.UpVotes<=31 AND u.CreationDate>='2010-10-04 08:24:10'::timestamp;

/*+ MergeJoin(v u p)
 HashJoin(u p)
 IndexScan(v)
 SeqScan(u)
 SeqScan(p)
 Leading((v (u p))) */
SELECT COUNT(*) FROM votes as v, posts as p, users as u WHERE v.UserId = p.OwnerUserId AND p.OwnerUserId = u.Id AND p.Score>=-2 AND p.Score<=23 AND p.FavoriteCount>=0 AND p.FavoriteCount<=5 AND u.Reputation<=158 AND u.DownVotes<=114 AND u.UpVotes>=0 AND u.UpVotes<=16 AND u.CreationDate<='2014-08-28 19:39:00'::timestamp;

/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 SeqScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE u.Id = v.UserId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND v.VoteTypeId=5 AND p.Score>=-1 AND p.Score<=19 AND p.ViewCount=210 AND p.AnswerCount>=0 AND p.AnswerCount<=13 AND p.CommentCount<=14 AND u.Reputation<=148 AND u.DownVotes<=1;

/*+ HashJoin(p u v)
 HashJoin(u v)
 SeqScan(p)
 SeqScan(u)
 SeqScan(v)
 Leading((p (u v))) */
SELECT COUNT(*) FROM votes as v, posts as p, users as u WHERE v.PostId = p.Id AND v.UserId = u.Id AND v.BountyAmount>=0 AND v.BountyAmount<=50 AND p.AnswerCount>=0 AND p.CommentCount>=0 AND p.CommentCount<=14 AND p.CreationDate>='2010-07-19 19:35:04'::timestamp AND p.CreationDate<='2014-08-22 22:59:51'::timestamp AND u.Reputation>=1 AND u.Reputation<=1006;

/*+ HashJoin(b u p pl)
 HashJoin(u p pl)
 HashJoin(p pl)
 SeqScan(b)
 SeqScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((b (u (p pl)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.ViewCount<=4442 AND p.CommentCount=0 AND u.Reputation>=1 AND u.Reputation<=168 AND u.Views>=0 AND u.Views<=217 AND u.DownVotes>=0 AND u.DownVotes<=0 AND u.CreationDate<='2014-08-11 15:28:06'::timestamp;

/*+ HashJoin(c p u)
 HashJoin(c p)
 SeqScan(c)
 SeqScan(p)
 IndexScan(u)
 Leading(((c p) u)) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.PostId = p.Id AND c.UserId = u.Id AND c.CreationDate>='2010-09-01 08:35:28'::timestamp AND c.CreationDate<='2014-09-03 17:28:06'::timestamp AND p.Score>=-1 AND p.Score<=20 AND p.ViewCount<=3690 AND p.CommentCount<=11 AND u.DownVotes>=0 AND u.CreationDate>='2010-12-17 11:10:51'::timestamp AND u.CreationDate<='2014-08-20 08:37:38'::timestamp;

/*+ MergeJoin(u p pl)
 HashJoin(p pl)
 IndexScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((u (p pl))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, users as u WHERE p.Id = pl.PostId AND p.OwnerUserId = u.Id AND p.AnswerCount<=4 AND p.CreationDate>='2010-07-19 19:22:31'::timestamp AND u.Views>=0 AND u.DownVotes>=0 AND u.DownVotes<=6 AND u.UpVotes>=0 AND u.UpVotes<=10 AND u.CreationDate>='2010-07-27 19:48:56'::timestamp AND u.CreationDate<='2014-09-04 12:41:59'::timestamp;

/*+ HashJoin(b u p pl)
 HashJoin(u p pl)
 HashJoin(p pl)
 SeqScan(b)
 SeqScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((b (u (p pl)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.PostTypeId=1 AND p.AnswerCount<=4 AND p.CommentCount>=0 AND p.FavoriteCount=0 AND u.Reputation>=1 AND u.Views>=0 AND u.Views<=148 AND u.DownVotes>=0 AND u.CreationDate>='2011-05-28 10:52:32'::timestamp;

/*+ HashJoin(ph pl p b v u)
 HashJoin(pl p b v u)
 MergeJoin(p b v u)
 MergeJoin(b v u)
 HashJoin(v u)
 SeqScan(ph)
 SeqScan(pl)
 SeqScan(p)
 IndexScan(b)
 IndexScan(v)
 SeqScan(u)
 Leading((ph (pl (p (b (v u)))))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph, votes as v, badges as b, users as u WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND u.Id = ph.UserId AND u.Id = v.UserId AND p.ViewCount>=0 AND p.CommentCount>=0 AND ph.PostHistoryTypeId=2 AND ph.CreationDate>='2010-08-21 05:30:40'::timestamp AND ph.CreationDate<='2014-09-11 20:22:41'::timestamp AND v.CreationDate>='2010-07-20 00:00:00'::timestamp AND b.Date<='2014-09-11 09:15:46'::timestamp AND u.DownVotes<=11 AND u.CreationDate<='2014-09-12 02:25:34'::timestamp;

/*+ MergeJoin(c u b ph v)
 HashJoin(u b ph v)
 HashJoin(u b ph)
 HashJoin(u b)
 SeqScan(c)
 IndexScan(u)
 SeqScan(b)
 IndexScan(ph)
 IndexScan(v)
 Leading((c (((u b) ph) v))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, votes as v, users as u WHERE u.Id =b.UserId AND b.UserId = ph.UserId AND ph.UserId = v.UserId AND v.UserId = c.UserId AND c.Score=0 AND c.CreationDate>='2010-08-13 18:06:57'::timestamp AND c.CreationDate<='2014-09-13 20:54:31'::timestamp AND ph.CreationDate>='2010-10-21 23:47:03'::timestamp AND ph.CreationDate<='2014-09-05 04:31:44'::timestamp AND v.VoteTypeId=5 AND u.Reputation>=1 AND u.Reputation<=191 AND u.UpVotes<=7;

/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 SeqScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE u.Id = v.UserId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.CommentCount>=0 AND p.CommentCount<=9 AND b.Date>='2010-10-23 08:54:47'::timestamp AND b.Date<='2014-09-12 18:21:34'::timestamp AND u.Reputation=104 AND u.DownVotes>=0 AND u.DownVotes<=3 AND u.CreationDate>='2010-07-20 05:58:06'::timestamp AND u.CreationDate<='2014-09-08 05:41:36'::timestamp;

/*+ MergeJoin(c p u)
 HashJoin(c p)
 SeqScan(c)
 SeqScan(p)
 SeqScan(u)
 Leading(((c p) u)) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.PostId = p.Id AND c.UserId = u.Id AND p.AnswerCount>=0 AND p.FavoriteCount<=5 AND p.CreationDate>='2010-08-05 02:57:24'::timestamp AND p.CreationDate<='2014-08-30 17:47:55'::timestamp AND u.Views<=13 AND u.DownVotes>=0 AND u.DownVotes<=34 AND u.UpVotes>=0 AND u.UpVotes<=204;

/*+ HashJoin(ph p u)
 HashJoin(p u)
 SeqScan(ph)
 SeqScan(p)
 IndexScan(u)
 Leading((ph (p u))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.PostId = p.Id AND p.OwnerUserId = u.Id AND ph.PostHistoryTypeId=2 AND ph.CreationDate>='2010-12-12 14:10:55'::timestamp AND ph.CreationDate<='2014-09-09 20:12:41'::timestamp AND p.PostTypeId=1 AND p.AnswerCount=2 AND p.CommentCount<=14 AND u.Reputation<=144 AND u.DownVotes<=2 AND u.UpVotes>=0;

/*+ HashJoin(c p pl u)
 HashJoin(c p pl)
 HashJoin(p pl)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 SeqScan(u)
 Leading(((c (p pl)) u)) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, users as u WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.OwnerUserId = u.Id AND c.Score=0 AND c.CreationDate>='2010-08-04 02:34:10'::timestamp AND p.PostTypeId=1 AND p.Score>=-3 AND p.AnswerCount>=0 AND p.AnswerCount<=7 AND p.CommentCount>=0 AND u.Reputation<=800 AND u.Views>=0;

/*+ HashJoin(ph c v pl p)
 HashJoin(c v pl p)
 HashJoin(v pl p)
 HashJoin(pl p)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(v)
 IndexScan(pl)
 SeqScan(p)
 Leading((ph (c (v (pl p))))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, votes as v WHERE p.Id = c.PostId AND p.Id = pl.PostId AND p.Id = ph.PostId AND p.Id = v.PostId AND c.CreationDate>='2010-08-22 01:30:24'::timestamp AND p.Score>=0 AND p.ViewCount>=0 AND p.AnswerCount>=0 AND p.AnswerCount<=3 AND p.FavoriteCount=0 AND p.CreationDate>='2010-07-19 21:36:12'::timestamp AND ph.PostHistoryTypeId=5 AND ph.CreationDate<='2014-09-04 06:34:02'::timestamp;

/*+ HashJoin(b u p pl)
 HashJoin(u p pl)
 HashJoin(p pl)
 SeqScan(b)
 SeqScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((b (u (p pl)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND pl.CreationDate>='2010-10-19 12:15:32'::timestamp AND p.PostTypeId=1 AND p.ViewCount<=7955 AND p.AnswerCount>=0 AND p.CommentCount>=0 AND p.CommentCount<=8 AND u.CreationDate>='2011-03-04 18:17:26'::timestamp AND u.CreationDate<='2014-08-17 22:02:40'::timestamp AND b.Date<='2014-08-31 09:05:41'::timestamp;

/*+ HashJoin(c p ph)
 HashJoin(c p)
 SeqScan(c)
 SeqScan(p)
 SeqScan(ph)
 Leading(((c p) ph)) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph WHERE p.Id = c.PostId AND p.Id = ph.PostId AND c.Score=0 AND c.CreationDate>='2010-07-10 19:44:06'::timestamp AND p.Score>=0 AND p.Score<=22 AND p.ViewCount>=0 AND p.CommentCount>=0 AND p.CommentCount<=16 AND p.FavoriteCount>=0 AND ph.PostHistoryTypeId=1;

/*+ HashJoin(ph u p b c)
 HashJoin(ph u p b)
 HashJoin(ph u p)
 HashJoin(ph u)
 IndexScan(ph)
 SeqScan(u)
 IndexScan(p)
 SeqScan(b)
 IndexScan(c)
 Leading(((((ph u) p) b) c)) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = ph.UserId AND u.Id = b.UserId AND c.CreationDate<='2014-09-04 13:51:31'::timestamp AND p.Score>=-1 AND p.AnswerCount=1 AND ph.PostHistoryTypeId=3 AND ph.CreationDate>='2011-01-10 14:53:32'::timestamp AND u.Reputation<=150 AND u.DownVotes=0 AND u.UpVotes<=21 AND u.CreationDate<='2014-08-21 14:19:27'::timestamp;

/*+ MergeJoin(v u p)
 HashJoin(u p)
 IndexScan(v)
 SeqScan(u)
 SeqScan(p)
 Leading((v (u p))) */
SELECT COUNT(*) FROM votes as v, posts as p, users as u WHERE v.UserId = p.OwnerUserId AND p.OwnerUserId = u.Id AND v.CreationDate>='2010-07-21 00:00:00'::timestamp AND v.CreationDate<='2014-09-11 00:00:00'::timestamp AND p.Score>=0 AND p.AnswerCount>=0 AND p.AnswerCount<=3 AND p.CommentCount>=0 AND p.CommentCount<=24 AND p.FavoriteCount<=6 AND u.Reputation<=308;

