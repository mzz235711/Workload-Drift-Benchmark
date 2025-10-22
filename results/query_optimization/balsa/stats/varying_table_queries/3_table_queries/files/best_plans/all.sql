/*+ HashJoin(u p pl)
 MergeJoin(p pl)
 IndexScan(u)
 SeqScan(p)
 IndexScan(pl)
 Leading((u (p pl))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, users as u WHERE p.Id = pl.PostId AND p.OwnerUserId = u.Id AND p.FavoriteCount>=0 AND p.FavoriteCount<=5 AND p.CreationDate>='2010-07-29 21:29:57'::timestamp AND u.UpVotes<=24;

/*+ MergeJoin(v p u)
 MergeJoin(p u)
 IndexScan(v)
 IndexScan(p)
 IndexScan(u)
 Leading((v (p u))) */
SELECT COUNT(*) FROM votes as v, posts as p, users as u WHERE v.UserId = p.OwnerUserId AND p.OwnerUserId = u.Id AND p.ViewCount>=0 AND p.ViewCount<=12515 AND p.AnswerCount>=0 AND p.FavoriteCount<=7 AND u.Reputation>=1 AND u.Views<=113 AND u.DownVotes>=0 AND u.CreationDate>='2010-08-04 09:24:36'::timestamp AND u.CreationDate<='2014-07-24 11:36:33'::timestamp;

/*+ HashJoin(ph v c)
 HashJoin(ph v)
 SeqScan(ph)
 SeqScan(v)
 IndexScan(c)
 Leading(((ph v) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v WHERE ph.PostId = c.PostId AND ph.PostId = v.PostId AND c.Score=0 AND c.CreationDate<='2014-09-05 23:55:41'::timestamp AND ph.CreationDate>='2010-08-09 11:12:16'::timestamp AND v.CreationDate<='2014-09-10 00:00:00'::timestamp;

/*+ HashJoin(ph u c)
 HashJoin(u c)
 SeqScan(ph)
 SeqScan(u)
 IndexScan(c)
 Leading((ph (u c))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND c.Score=2 AND c.CreationDate<='2014-09-10 11:29:05'::timestamp AND u.DownVotes<=0 AND u.UpVotes>=0 AND u.UpVotes<=165 AND u.CreationDate>='2010-08-10 04:33:05'::timestamp;

/*+ MergeJoin(ph u p)
 MergeJoin(u p)
 SeqScan(ph)
 IndexScan(u)
 SeqScan(p)
 Leading((ph (u p))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.PostId = p.Id AND p.OwnerUserId = u.Id AND ph.PostHistoryTypeId=2 AND ph.CreationDate>='2010-09-25 09:03:09'::timestamp AND p.ViewCount<=1298 AND p.AnswerCount>=0 AND p.AnswerCount<=5 AND u.Reputation<=18088 AND u.DownVotes>=0 AND u.UpVotes=0;

/*+ HashJoin(b v u)
 MergeJoin(v u)
 SeqScan(b)
 IndexScan(v)
 IndexScan(u)
 Leading((b (v u))) */
SELECT COUNT(*) FROM votes as v, badges as b, users as u WHERE u.Id = v.UserId AND v.UserId = b.UserId AND v.BountyAmount>=0 AND v.BountyAmount<=75 AND v.CreationDate>='2010-07-20 00:00:00'::timestamp AND u.Views<=62;

/*+ HashJoin(c u p)
 MergeJoin(u p)
 IndexScan(c)
 IndexScan(u)
 IndexScan(p)
 Leading((c (u p))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.UserId = u.Id AND u.Id = p.OwnerUserId AND c.Score=0;

/*+ HashJoin(ph pl p)
 MergeJoin(pl p)
 SeqScan(ph)
 IndexScan(pl)
 IndexScan(p)
 Leading((ph (pl p))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph WHERE p.Id = pl.PostId AND pl.PostId = ph.PostId AND p.Score>=0 AND p.CreationDate>='2010-08-18 11:37:10'::timestamp AND p.CreationDate<='2014-09-12 22:49:11'::timestamp AND pl.LinkTypeId=1;

/*+ HashJoin(ph v c)
 HashJoin(ph v)
 SeqScan(ph)
 SeqScan(v)
 IndexScan(c)
 Leading(((ph v) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v WHERE ph.PostId = c.PostId AND ph.PostId = v.PostId AND ph.CreationDate<='2014-09-04 22:02:31'::timestamp AND v.VoteTypeId=2 AND v.CreationDate>='2010-07-19 00:00:00'::timestamp AND v.CreationDate<='2014-09-13 00:00:00'::timestamp;

/*+ MergeJoin(c p u)
 MergeJoin(p u)
 SeqScan(c)
 SeqScan(p)
 IndexScan(u)
 Leading((c (p u))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.UserId = u.Id AND u.Id = p.OwnerUserId AND c.Score=0 AND p.Score>=-1 AND p.AnswerCount<=4 AND p.FavoriteCount>=0 AND u.CreationDate>='2011-02-10 10:53:40'::timestamp;

/*+ MergeJoin(c p u)
 MergeJoin(p u)
 SeqScan(c)
 SeqScan(p)
 IndexScan(u)
 Leading((c (p u))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.UserId = u.Id AND u.Id = p.OwnerUserId AND c.CreationDate>='2010-08-09 18:13:10'::timestamp AND p.Score=6 AND p.AnswerCount<=4 AND p.CommentCount>=0 AND p.CommentCount<=8 AND u.DownVotes<=0 AND u.CreationDate>='2010-10-14 04:52:44'::timestamp;

/*+ HashJoin(b v u)
 MergeJoin(v u)
 IndexScan(b)
 IndexScan(v)
 IndexScan(u)
 Leading((b (v u))) */
SELECT COUNT(*) FROM votes as v, badges as b, users as u WHERE u.Id = v.UserId AND v.UserId = b.UserId AND v.VoteTypeId=5 AND b.Date<='2014-09-13 02:21:44'::timestamp AND u.UpVotes>=0;

/*+ HashJoin(ph u c)
 HashJoin(u c)
 SeqScan(ph)
 SeqScan(u)
 IndexScan(c)
 Leading((ph (u c))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND c.Score=0 AND ph.PostHistoryTypeId=2 AND ph.CreationDate<='2014-08-23 02:22:44'::timestamp AND u.DownVotes>=0 AND u.DownVotes<=55;

/*+ HashJoin(ph c p)
 HashJoin(c p)
 SeqScan(ph)
 IndexScan(c)
 IndexScan(p)
 Leading((ph (c p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph WHERE p.Id = c.PostId AND p.Id = ph.PostId AND p.Score=0 AND p.CommentCount<=13 AND p.CreationDate>='2010-09-01 16:01:33'::timestamp AND p.CreationDate<='2014-09-08 20:16:09'::timestamp;

/*+ HashJoin(c u ph)
 HashJoin(c u)
 IndexScan(c)
 SeqScan(u)
 IndexScan(ph)
 Leading(((c u) ph)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND c.Score=0 AND c.CreationDate<='2014-09-13 20:12:15'::timestamp AND u.Views>=0;

/*+ HashJoin(b v u)
 MergeJoin(v u)
 SeqScan(b)
 IndexScan(v)
 IndexScan(u)
 Leading((b (v u))) */
SELECT COUNT(*) FROM votes as v, badges as b, users as u WHERE u.Id = v.UserId AND v.UserId = b.UserId AND b.Date>='2010-08-26 01:36:10'::timestamp AND b.Date<='2014-07-31 20:16:41'::timestamp AND u.Views>=0 AND u.DownVotes>=0 AND u.DownVotes<=0;

/*+ HashJoin(c u ph)
 HashJoin(c u)
 IndexScan(c)
 SeqScan(u)
 IndexScan(ph)
 Leading(((c u) ph)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND ph.CreationDate>='2010-09-19 15:00:04'::timestamp AND ph.CreationDate<='2014-08-13 10:55:17'::timestamp AND u.Reputation>=1 AND u.Views>=0 AND u.Views<=137 AND u.DownVotes<=0;

/*+ MergeJoin(v p u)
 MergeJoin(p u)
 IndexScan(v)
 IndexScan(p)
 IndexScan(u)
 Leading((v (p u))) */
SELECT COUNT(*) FROM votes as v, posts as p, users as u WHERE v.UserId = p.OwnerUserId AND p.OwnerUserId = u.Id AND v.CreationDate<='2014-09-11 00:00:00'::timestamp AND p.AnswerCount<=5 AND p.CommentCount=0 AND p.CreationDate<='2014-09-04 04:17:30'::timestamp AND u.Reputation>=1 AND u.UpVotes<=625 AND u.CreationDate>='2010-07-19 23:25:07'::timestamp;

/*+ HashJoin(ph pl p)
 MergeJoin(pl p)
 SeqScan(ph)
 IndexScan(pl)
 IndexScan(p)
 Leading((ph (pl p))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph WHERE p.Id = pl.PostId AND pl.PostId = ph.PostId AND p.FavoriteCount>=0 AND ph.PostHistoryTypeId=5 AND ph.CreationDate<='2014-08-25 14:24:53'::timestamp;

/*+ HashJoin(c p u)
 MergeJoin(c p)
 IndexScan(c)
 IndexScan(p)
 SeqScan(u)
 Leading(((c p) u)) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.PostId = p.Id AND c.UserId = u.Id AND c.Score=0 AND p.Score>=-19 AND u.UpVotes>=0 AND u.UpVotes<=20;

/*+ HashJoin(c u b)
 HashJoin(c u)
 IndexScan(c)
 SeqScan(u)
 SeqScan(b)
 Leading(((c u) b)) */
SELECT COUNT(*) FROM comments as c, badges as b, users as u WHERE u.Id = c.UserId AND c.UserId = b.UserId;

/*+ HashJoin(c u ph)
 HashJoin(c u)
 IndexScan(c)
 SeqScan(u)
 IndexScan(ph)
 Leading(((c u) ph)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND ph.CreationDate>='2010-07-23 20:14:05'::timestamp AND ph.CreationDate<='2014-09-06 03:49:47'::timestamp;

/*+ MergeJoin(c u p)
 MergeJoin(u p)
 SeqScan(c)
 IndexScan(u)
 SeqScan(p)
 Leading((c (u p))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.UserId = u.Id AND u.Id = p.OwnerUserId AND p.PostTypeId=1 AND p.FavoriteCount>=0 AND p.FavoriteCount<=14 AND p.CreationDate>='2010-07-29 21:29:57'::timestamp AND p.CreationDate<='2014-08-20 12:32:17'::timestamp AND u.Reputation<=2205;

/*+ HashJoin(c u v)
 MergeJoin(u v)
 SeqScan(c)
 IndexScan(u)
 SeqScan(v)
 Leading((c (u v))) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND c.Score=2 AND c.CreationDate>='2010-07-19 21:38:48'::timestamp AND v.BountyAmount>=0 AND v.CreationDate<='2014-08-28 00:00:00'::timestamp AND u.DownVotes>=0 AND u.DownVotes<=0 AND u.UpVotes>=0 AND u.CreationDate>='2010-09-29 20:22:42'::timestamp AND u.CreationDate<='2014-08-25 13:15:33'::timestamp;

/*+ MergeJoin(u pl p)
 MergeJoin(pl p)
 IndexScan(u)
 IndexScan(pl)
 IndexScan(p)
 Leading((u (pl p))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, users as u WHERE p.Id = pl.PostId AND p.OwnerUserId = u.Id AND pl.CreationDate>='2010-10-24 15:57:33'::timestamp AND pl.CreationDate<='2014-07-22 16:51:20'::timestamp AND u.Reputation>=1 AND u.DownVotes>=0 AND u.UpVotes>=0 AND u.UpVotes<=123;

/*+ HashJoin(ph c p)
 HashJoin(c p)
 SeqScan(ph)
 IndexScan(c)
 IndexScan(p)
 Leading((ph (c p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph WHERE p.Id = c.PostId AND p.Id = ph.PostId AND c.Score=0 AND c.CreationDate>='2010-07-23 15:29:16'::timestamp AND c.CreationDate<='2014-09-10 20:25:49'::timestamp AND p.Score>=0 AND p.Score<=25 AND p.AnswerCount<=4 AND p.CommentCount<=10 AND p.FavoriteCount<=14 AND p.CreationDate>='2010-07-27 06:01:10'::timestamp AND p.CreationDate<='2014-09-07 03:38:41'::timestamp;

/*+ HashJoin(c u b)
 HashJoin(c u)
 IndexScan(c)
 SeqScan(u)
 SeqScan(b)
 Leading(((c u) b)) */
SELECT COUNT(*) FROM comments as c, badges as b, users as u WHERE u.Id = c.UserId AND c.UserId = b.UserId AND c.Score=0 AND u.UpVotes>=0 AND u.UpVotes<=10 AND u.CreationDate>='2010-12-15 20:52:37'::timestamp AND u.CreationDate<='2014-08-01 19:31:00'::timestamp;

/*+ HashJoin(ph v c)
 HashJoin(ph v)
 SeqScan(ph)
 SeqScan(v)
 IndexScan(c)
 Leading(((ph v) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v WHERE ph.PostId = c.PostId AND ph.PostId = v.PostId AND ph.CreationDate<='2014-08-15 19:20:48'::timestamp AND v.CreationDate>='2010-07-27 00:00:00'::timestamp;

/*+ MergeJoin(c pl p)
 MergeJoin(pl p)
 IndexScan(c)
 IndexScan(pl)
 IndexScan(p)
 Leading((c (pl p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE c.UserId = p.OwnerUserId AND p.Id = pl.PostId AND p.Score<=17 AND pl.LinkTypeId=1;

/*+ HashJoin(ph pl p)
 MergeJoin(pl p)
 SeqScan(ph)
 IndexScan(pl)
 IndexScan(p)
 Leading((ph (pl p))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph WHERE p.Id = pl.PostId AND pl.PostId = ph.PostId AND p.AnswerCount>=0 AND p.AnswerCount<=8 AND p.CommentCount>=0 AND pl.LinkTypeId=1 AND ph.CreationDate>='2011-01-19 13:37:31'::timestamp AND ph.CreationDate<='2014-09-10 02:32:36'::timestamp;

/*+ MergeJoin(c p u)
 MergeJoin(p u)
 SeqScan(c)
 SeqScan(p)
 IndexScan(u)
 Leading((c (p u))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.UserId = u.Id AND u.Id = p.OwnerUserId AND c.Score=0 AND c.CreationDate<='2014-09-12 18:33:01'::timestamp AND p.AnswerCount=0 AND p.CommentCount>=0 AND p.CommentCount<=13 AND p.FavoriteCount<=34 AND u.DownVotes=0 AND u.UpVotes<=31 AND u.CreationDate>='2010-08-05 10:03:14'::timestamp;

/*+ HashJoin(ph p u)
 MergeJoin(p u)
 SeqScan(ph)
 IndexScan(p)
 IndexScan(u)
 Leading((ph (p u))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.PostId = p.Id AND p.OwnerUserId = u.Id AND ph.PostHistoryTypeId=1 AND p.ViewCount<=12363 AND p.CreationDate<='2014-09-09 12:30:34'::timestamp AND u.Reputation>=1 AND u.Reputation<=830 AND u.Views>=0 AND u.Views<=23 AND u.DownVotes<=0 AND u.UpVotes>=0 AND u.UpVotes<=23;

/*+ HashJoin(b v u)
 MergeJoin(v u)
 SeqScan(b)
 IndexScan(v)
 IndexScan(u)
 Leading((b (v u))) */
SELECT COUNT(*) FROM votes as v, badges as b, users as u WHERE u.Id = v.UserId AND v.UserId = b.UserId AND v.CreationDate>='2010-07-20 00:00:00'::timestamp AND b.Date<='2014-09-08 22:31:36'::timestamp AND u.Reputation>=1 AND u.Reputation<=238 AND u.DownVotes<=0 AND u.UpVotes>=0 AND u.UpVotes<=37;

/*+ HashJoin(c u b)
 HashJoin(c u)
 IndexScan(c)
 SeqScan(u)
 SeqScan(b)
 Leading(((c u) b)) */
SELECT COUNT(*) FROM comments as c, badges as b, users as u WHERE u.Id = c.UserId AND c.UserId = b.UserId AND u.CreationDate>='2010-07-27 17:15:01'::timestamp AND u.CreationDate<='2014-08-13 16:55:38'::timestamp;

/*+ HashJoin(c pl p)
 MergeJoin(pl p)
 SeqScan(c)
 IndexScan(pl)
 SeqScan(p)
 Leading((c (pl p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE p.Id = c.PostId AND p.Id = pl.PostId AND p.Score>=0 AND p.Score<=18 AND p.ViewCount<=1588 AND p.AnswerCount>=0 AND p.FavoriteCount>=0 AND p.FavoriteCount<=8 AND p.CreationDate>='2010-07-23 16:49:47'::timestamp AND pl.LinkTypeId=1 AND pl.CreationDate<='2014-08-29 03:35:51'::timestamp;

/*+ HashJoin(ph c u)
 MergeJoin(c u)
 SeqScan(ph)
 SeqScan(c)
 IndexScan(u)
 Leading((ph (c u))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND ph.PostHistoryTypeId=13 AND ph.CreationDate>='2011-05-11 19:43:51'::timestamp AND ph.CreationDate<='2014-07-07 14:19:01'::timestamp;

/*+ MergeJoin(v p u)
 MergeJoin(p u)
 IndexScan(v)
 IndexScan(p)
 IndexScan(u)
 Leading((v (p u))) */
SELECT COUNT(*) FROM votes as v, posts as p, users as u WHERE v.UserId = p.OwnerUserId AND p.OwnerUserId = u.Id AND p.Score<=20 AND p.FavoriteCount<=3 AND u.DownVotes>=0;

/*+ HashJoin(ph pl p)
 MergeJoin(pl p)
 SeqScan(ph)
 IndexScan(pl)
 IndexScan(p)
 Leading((ph (pl p))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph WHERE p.Id = pl.PostId AND pl.PostId = ph.PostId AND p.Score>=-4 AND p.ViewCount>=0 AND p.ViewCount<=2804 AND p.AnswerCount=5 AND p.CommentCount>=0 AND pl.LinkTypeId=1 AND pl.CreationDate>='2010-10-15 20:56:50'::timestamp AND pl.CreationDate<='2014-08-07 07:02:39'::timestamp AND ph.CreationDate>='2010-10-29 19:58:12'::timestamp AND ph.CreationDate<='2014-08-27 05:40:08'::timestamp;

/*+ HashJoin(ph c p)
 HashJoin(c p)
 SeqScan(ph)
 IndexScan(c)
 IndexScan(p)
 Leading((ph (c p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph WHERE p.Id = c.PostId AND p.Id = ph.PostId AND c.CreationDate>='2010-07-20 17:11:25'::timestamp AND c.CreationDate<='2014-08-30 17:47:39'::timestamp AND p.PostTypeId=1 AND p.ViewCount<=1655 AND p.FavoriteCount>=0;

/*+ HashJoin(ph c p)
 HashJoin(c p)
 SeqScan(ph)
 IndexScan(c)
 IndexScan(p)
 Leading((ph (c p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph WHERE p.Id = c.PostId AND p.Id = ph.PostId AND c.Score=0 AND p.Score>=0 AND p.Score<=14 AND p.CreationDate>='2010-07-19 21:36:12'::timestamp;

/*+ MergeJoin(ph u p)
 MergeJoin(u p)
 SeqScan(ph)
 IndexScan(u)
 SeqScan(p)
 Leading((ph (u p))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.PostId = p.Id AND p.OwnerUserId = u.Id AND ph.PostHistoryTypeId=1 AND p.Score=1 AND p.CommentCount<=9 AND p.CreationDate<='2014-09-01 13:54:17'::timestamp AND u.DownVotes=0;

/*+ HashJoin(c p pl)
 MergeJoin(p pl)
 SeqScan(c)
 SeqScan(p)
 IndexScan(pl)
 Leading((c (p pl))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE c.UserId = p.OwnerUserId AND p.Id = pl.PostId AND c.Score=0 AND p.PostTypeId=1 AND p.Score>=-1 AND p.Score<=24 AND p.ViewCount<=3142 AND p.AnswerCount=1 AND p.CommentCount>=0 AND p.CommentCount<=15 AND pl.LinkTypeId=1 AND pl.CreationDate<='2014-07-09 15:42:23'::timestamp;

/*+ MergeJoin(u c p)
 MergeJoin(c p)
 IndexScan(u)
 SeqScan(c)
 SeqScan(p)
 Leading((u (c p))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.PostId = p.Id AND c.UserId = u.Id AND c.Score=3 AND p.ViewCount<=16486 AND p.AnswerCount<=3 AND p.CommentCount>=0 AND p.CommentCount<=9 AND p.FavoriteCount=0;

/*+ HashJoin(p u c)
 MergeJoin(u c)
 SeqScan(p)
 IndexScan(u)
 IndexScan(c)
 Leading((p (u c))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.PostId = p.Id AND c.UserId = u.Id AND c.Score=0 AND p.PostTypeId=1 AND p.Score<=20 AND p.ViewCount>=0 AND p.ViewCount<=1836 AND p.AnswerCount>=0 AND p.AnswerCount<=4 AND u.Reputation>=1 AND u.Views<=287 AND u.DownVotes>=0 AND u.UpVotes<=53;

/*+ HashJoin(p u ph)
 MergeJoin(u ph)
 SeqScan(p)
 IndexScan(u)
 SeqScan(ph)
 Leading((p (u ph))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.UserId = p.OwnerUserId AND ph.UserId = u.Id AND ph.PostHistoryTypeId=5 AND ph.CreationDate>='2011-02-02 20:50:36'::timestamp AND ph.CreationDate<='2014-08-29 04:17:00'::timestamp AND p.PostTypeId=1 AND p.CommentCount>=0 AND u.DownVotes>=0 AND u.CreationDate<='2014-09-11 19:55:20'::timestamp;

/*+ HashJoin(u pl p)
 MergeJoin(pl p)
 SeqScan(u)
 IndexScan(pl)
 IndexScan(p)
 Leading((u (pl p))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, users as u WHERE p.Id = pl.PostId AND p.OwnerUserId = u.Id AND p.Score<=17 AND p.AnswerCount<=6 AND u.Reputation<=128 AND u.CreationDate='2011-12-13 17:12:52'::timestamp;

/*+ HashJoin(c pl p)
 MergeJoin(pl p)
 IndexScan(c)
 IndexScan(pl)
 IndexScan(p)
 Leading((c (pl p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE c.UserId = p.OwnerUserId AND p.Id = pl.PostId AND p.PostTypeId=1 AND p.CommentCount<=17 AND pl.CreationDate>='2011-02-04 15:33:38'::timestamp;

/*+ HashJoin(b v u)
 MergeJoin(v u)
 SeqScan(b)
 IndexScan(v)
 IndexScan(u)
 Leading((b (v u))) */
SELECT COUNT(*) FROM votes as v, badges as b, users as u WHERE u.Id = v.UserId AND v.UserId = b.UserId AND u.DownVotes=0 AND u.CreationDate>='2010-12-02 13:17:00'::timestamp;

/*+ HashJoin(p u ph)
 MergeJoin(u ph)
 SeqScan(p)
 IndexScan(u)
 SeqScan(ph)
 Leading((p (u ph))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.UserId = p.OwnerUserId AND ph.UserId = u.Id AND ph.PostHistoryTypeId=5 AND ph.CreationDate>='2010-11-30 07:01:38'::timestamp AND ph.CreationDate<='2014-07-14 16:30:14'::timestamp AND p.CommentCount>=0 AND p.CreationDate>='2010-07-20 06:28:47'::timestamp AND p.CreationDate<='2014-08-30 19:19:00'::timestamp AND u.Reputation<=262 AND u.UpVotes>=0;

/*+ HashJoin(u p pl)
 MergeJoin(p pl)
 IndexScan(u)
 SeqScan(p)
 IndexScan(pl)
 Leading((u (p pl))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, users as u WHERE p.Id = pl.PostId AND p.OwnerUserId = u.Id AND p.ViewCount>=0 AND p.ViewCount<=14325 AND p.AnswerCount>=0 AND p.CommentCount>=0 AND p.FavoriteCount>=0 AND p.FavoriteCount<=8 AND p.CreationDate>='2010-07-27 09:25:00'::timestamp AND p.CreationDate<='2014-09-04 14:50:54'::timestamp AND u.Reputation>=1;

/*+ MergeJoin(pl p u)
 HashJoin(p u)
 IndexScan(pl)
 SeqScan(p)
 SeqScan(u)
 Leading((pl (p u))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, users as u WHERE p.Id = pl.PostId AND p.OwnerUserId = u.Id AND p.Score>=-1 AND p.ViewCount>=0 AND p.AnswerCount>=0 AND p.AnswerCount<=4 AND p.FavoriteCount<=4 AND p.CreationDate>='2010-07-21 17:26:14'::timestamp AND u.Reputation=23 AND u.UpVotes<=19;

/*+ HashJoin(c ph v)
 HashJoin(ph v)
 SeqScan(c)
 IndexScan(ph)
 SeqScan(v)
 Leading((c (ph v))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v WHERE ph.PostId = c.PostId AND ph.PostId = v.PostId AND c.Score=1 AND ph.CreationDate>='2011-06-30 09:49:25'::timestamp AND ph.CreationDate<='2014-08-26 15:38:40'::timestamp AND v.BountyAmount>=0 AND v.BountyAmount<=50;

/*+ HashJoin(ph pl p)
 MergeJoin(pl p)
 SeqScan(ph)
 IndexScan(pl)
 IndexScan(p)
 Leading((ph (pl p))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph WHERE p.Id = pl.PostId AND pl.PostId = ph.PostId AND p.PostTypeId=1 AND p.Score>=0 AND p.ViewCount<=3476 AND p.AnswerCount>=0 AND p.AnswerCount<=3 AND p.FavoriteCount=0 AND pl.CreationDate>='2011-06-05 22:41:40'::timestamp AND pl.CreationDate<='2014-09-12 18:19:20'::timestamp;

/*+ HashJoin(ph pl p)
 MergeJoin(pl p)
 SeqScan(ph)
 IndexScan(pl)
 IndexScan(p)
 Leading((ph (pl p))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph WHERE p.Id = pl.PostId AND pl.PostId = ph.PostId AND p.CommentCount<=12 AND p.FavoriteCount<=15 AND pl.LinkTypeId=1 AND pl.CreationDate>='2011-09-08 14:20:00'::timestamp AND ph.PostHistoryTypeId=5;

/*+ MergeJoin(v p u)
 MergeJoin(v p)
 IndexScan(v)
 SeqScan(p)
 IndexScan(u)
 Leading(((v p) u)) */
SELECT COUNT(*) FROM votes as v, posts as p, users as u WHERE v.UserId = p.OwnerUserId AND p.OwnerUserId = u.Id AND p.PostTypeId=1 AND p.ViewCount=10 AND p.FavoriteCount>=0 AND p.FavoriteCount<=16 AND p.CreationDate<='2014-09-04 13:58:33'::timestamp AND u.Reputation>=1 AND u.UpVotes<=224;

/*+ MergeJoin(c pl p)
 MergeJoin(pl p)
 IndexScan(c)
 IndexScan(pl)
 IndexScan(p)
 Leading((c (pl p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE c.UserId = p.OwnerUserId AND p.Id = pl.PostId AND c.CreationDate>='2010-07-22 13:38:33'::timestamp AND pl.LinkTypeId=1;

/*+ HashJoin(b v u)
 MergeJoin(v u)
 IndexScan(b)
 IndexScan(v)
 IndexScan(u)
 Leading((b (v u))) */
SELECT COUNT(*) FROM votes as v, badges as b, users as u WHERE u.Id = v.UserId AND v.UserId = b.UserId AND v.CreationDate>='2009-02-02 00:00:00'::timestamp AND u.Reputation=31 AND u.Views>=0 AND u.Views<=578 AND u.DownVotes>=0 AND u.DownVotes<=2 AND u.UpVotes<=29;

/*+ HashJoin(c p u)
 HashJoin(c p)
 IndexScan(c)
 IndexScan(p)
 SeqScan(u)
 Leading(((c p) u)) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.PostId = p.Id AND c.UserId = u.Id AND p.FavoriteCount>=0 AND p.FavoriteCount<=10 AND u.DownVotes=0 AND u.UpVotes>=0;

/*+ HashJoin(c ph v)
 HashJoin(ph v)
 SeqScan(c)
 IndexScan(ph)
 SeqScan(v)
 Leading((c (ph v))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v WHERE ph.PostId = c.PostId AND ph.PostId = v.PostId AND c.Score=0 AND c.CreationDate>='2010-07-21 11:58:10'::timestamp AND c.CreationDate<='2014-09-10 00:33:30'::timestamp AND v.CreationDate='2012-09-25 00:00:00'::timestamp;

/*+ HashJoin(ph pl p)
 MergeJoin(pl p)
 SeqScan(ph)
 IndexScan(pl)
 IndexScan(p)
 Leading((ph (pl p))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph WHERE p.Id = pl.PostId AND pl.PostId = ph.PostId AND p.AnswerCount>=0 AND p.AnswerCount<=6 AND p.CommentCount=0 AND pl.LinkTypeId=1 AND ph.PostHistoryTypeId=5;

/*+ MergeJoin(u c p)
 MergeJoin(c p)
 IndexScan(u)
 SeqScan(c)
 SeqScan(p)
 Leading((u (c p))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.PostId = p.Id AND c.UserId = u.Id AND p.AnswerCount>=0 AND p.FavoriteCount=0 AND u.Reputation>=1 AND u.Reputation<=158;

/*+ MergeJoin(v u c)
 MergeJoin(u c)
 IndexScan(v)
 IndexScan(u)
 IndexScan(c)
 Leading((v (u c))) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND c.PostId = v.PostId AND c.Score=0 AND v.CreationDate>='2010-07-21 00:00:00'::timestamp AND v.CreationDate<='2014-09-12 00:00:00'::timestamp AND u.DownVotes>=0 AND u.DownVotes<=0 AND u.UpVotes>=0 AND u.UpVotes<=41;

/*+ HashJoin(c p pl)
 MergeJoin(p pl)
 SeqScan(c)
 SeqScan(p)
 IndexScan(pl)
 Leading((c (p pl))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE p.Id = c.PostId AND p.Id = pl.PostId AND c.Score=3 AND p.PostTypeId=1 AND p.AnswerCount>=0 AND p.FavoriteCount>=0 AND pl.LinkTypeId=3;

/*+ HashJoin(c u b)
 HashJoin(c u)
 IndexScan(c)
 SeqScan(u)
 SeqScan(b)
 Leading(((c u) b)) */
SELECT COUNT(*) FROM comments as c, badges as b, users as u WHERE u.Id = c.UserId AND c.UserId = b.UserId AND c.Score=0 AND c.CreationDate>='2010-07-23 12:05:21'::timestamp AND u.Reputation<=366 AND u.Views>=0 AND u.UpVotes>=0 AND u.UpVotes<=819 AND u.CreationDate>='2010-08-06 13:56:03'::timestamp;

/*+ HashJoin(ph v c)
 HashJoin(ph v)
 SeqScan(ph)
 SeqScan(v)
 IndexScan(c)
 Leading(((ph v) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v WHERE ph.PostId = c.PostId AND ph.PostId = v.PostId AND c.CreationDate>='2010-07-19 19:56:21'::timestamp AND ph.CreationDate>='2010-09-20 23:01:53'::timestamp AND ph.CreationDate<='2014-06-04 23:12:42'::timestamp AND v.VoteTypeId=2 AND v.CreationDate<='2014-09-12 00:00:00'::timestamp;

/*+ MergeJoin(ph u p)
 MergeJoin(u p)
 SeqScan(ph)
 IndexScan(u)
 SeqScan(p)
 Leading((ph (u p))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.PostId = p.Id AND p.OwnerUserId = u.Id AND ph.PostHistoryTypeId=34 AND p.ViewCount>=0 AND p.ViewCount<=2147 AND p.CommentCount<=11 AND u.DownVotes=0;

/*+ HashJoin(ph u c)
 HashJoin(u c)
 SeqScan(ph)
 SeqScan(u)
 IndexScan(c)
 Leading((ph (u c))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND c.CreationDate='2013-02-17 19:56:43'::timestamp AND u.Reputation>=1 AND u.Reputation<=548;

/*+ MergeJoin(ph u p)
 MergeJoin(u p)
 SeqScan(ph)
 IndexScan(u)
 SeqScan(p)
 Leading((ph (u p))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.PostId = p.Id AND p.OwnerUserId = u.Id AND ph.CreationDate<='2014-07-09 13:15:32'::timestamp AND p.Score<=14 AND p.ViewCount>=0 AND p.CommentCount>=0 AND p.FavoriteCount>=0 AND u.Reputation>=1 AND u.Reputation<=231 AND u.DownVotes>=0 AND u.CreationDate>='2010-07-23 15:29:27'::timestamp;

/*+ HashJoin(c u ph)
 HashJoin(c u)
 IndexScan(c)
 SeqScan(u)
 IndexScan(ph)
 Leading(((c u) ph)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND u.Reputation>=1 AND u.Views>=0;

/*+ HashJoin(c pl p)
 MergeJoin(pl p)
 SeqScan(c)
 IndexScan(pl)
 SeqScan(p)
 Leading((c (pl p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE p.Id = c.PostId AND p.Id = pl.PostId AND p.FavoriteCount>=0 AND pl.CreationDate>='2011-06-28 06:17:21'::timestamp;

/*+ HashJoin(c u b)
 HashJoin(c u)
 IndexScan(c)
 SeqScan(u)
 SeqScan(b)
 Leading(((c u) b)) */
SELECT COUNT(*) FROM comments as c, badges as b, users as u WHERE u.Id = c.UserId AND c.UserId = b.UserId AND c.Score=0 AND c.CreationDate>='2010-08-06 16:25:05'::timestamp AND u.Views>=0 AND u.CreationDate<='2014-08-25 17:59:40'::timestamp;

/*+ HashJoin(c pl p)
 MergeJoin(pl p)
 SeqScan(c)
 IndexScan(pl)
 SeqScan(p)
 Leading((c (pl p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE c.UserId = p.OwnerUserId AND p.Id = pl.PostId AND p.Score>=-2 AND p.ViewCount<=8688 AND p.AnswerCount>=0 AND pl.CreationDate<='2014-08-02 14:06:09'::timestamp;

/*+ HashJoin(c pl p)
 MergeJoin(pl p)
 IndexScan(c)
 IndexScan(pl)
 SeqScan(p)
 Leading((c (pl p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE c.UserId = p.OwnerUserId AND p.Id = pl.PostId AND c.CreationDate>='2010-08-11 17:16:09'::timestamp AND p.PostTypeId=1;

/*+ HashJoin(ph u p)
 HashJoin(u p)
 SeqScan(ph)
 IndexScan(u)
 IndexScan(p)
 Leading((ph (u p))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.PostId = p.Id AND p.OwnerUserId = u.Id AND p.FavoriteCount>=0 AND p.CreationDate<='2014-09-04 17:37:11'::timestamp;

/*+ MergeJoin(u pl p)
 MergeJoin(pl p)
 IndexScan(u)
 IndexScan(pl)
 IndexScan(p)
 Leading((u (pl p))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, users as u WHERE p.Id = pl.PostId AND p.OwnerUserId = u.Id AND p.Score>=-1 AND p.ViewCount<=11200 AND u.Reputation<=4767;

/*+ MergeJoin(v t p)
 MergeJoin(t p)
 IndexScan(v)
 IndexScan(t)
 IndexScan(p)
 Leading((v (t p))) */
SELECT COUNT(*) FROM posts as p, tags as t, votes as v WHERE p.Id = t.ExcerptPostId AND p.OwnerUserId = v.UserId AND t.Count>=2 AND v.CreationDate>='2010-07-20 00:00:00'::timestamp;

/*+ HashJoin(p c u)
 MergeJoin(c u)
 IndexScan(p)
 SeqScan(c)
 IndexScan(u)
 Leading((p (c u))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.PostId = p.Id AND c.UserId = u.Id AND c.CreationDate>='2010-08-04 17:35:31'::timestamp AND p.AnswerCount<=4 AND u.Reputation=101 AND u.CreationDate>='2010-08-07 06:40:19'::timestamp;

/*+ HashJoin(c v u)
 MergeJoin(v u)
 SeqScan(c)
 IndexScan(v)
 IndexScan(u)
 Leading((c (v u))) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND c.CreationDate>='2010-07-29 23:32:42'::timestamp AND c.CreationDate<='2014-09-04 17:20:32'::timestamp AND v.BountyAmount>=0 AND v.BountyAmount<=50 AND u.Reputation>=1 AND u.CreationDate>='2011-09-24 11:00:50'::timestamp;

/*+ MergeJoin(c p u)
 MergeJoin(p u)
 SeqScan(c)
 SeqScan(p)
 IndexScan(u)
 Leading((c (p u))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.UserId = u.Id AND u.Id = p.OwnerUserId AND p.AnswerCount=0 AND p.FavoriteCount<=11 AND p.CreationDate<='2014-09-11 21:30:59'::timestamp AND u.DownVotes=0;

/*+ HashJoin(c u b)
 HashJoin(c u)
 IndexScan(c)
 SeqScan(u)
 SeqScan(b)
 Leading(((c u) b)) */
SELECT COUNT(*) FROM comments as c, badges as b, users as u WHERE u.Id = c.UserId AND c.UserId = b.UserId AND c.Score=0 AND c.CreationDate>='2009-04-12 07:38:14'::timestamp AND c.CreationDate<='2014-09-12 21:29:46'::timestamp AND u.Views<=9;

/*+ HashJoin(ph pl p)
 MergeJoin(pl p)
 SeqScan(ph)
 IndexScan(pl)
 IndexScan(p)
 Leading((ph (pl p))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph WHERE p.Id = pl.PostId AND pl.PostId = ph.PostId AND p.FavoriteCount>=0 AND p.FavoriteCount<=7 AND pl.CreationDate<='2014-07-16 14:00:16'::timestamp AND ph.PostHistoryTypeId=3;

/*+ MergeJoin(u c p)
 MergeJoin(c p)
 IndexScan(u)
 SeqScan(c)
 SeqScan(p)
 Leading((u (c p))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.PostId = p.Id AND c.UserId = u.Id AND c.Score=2 AND c.CreationDate>='2010-07-28 18:14:50'::timestamp AND p.ViewCount>=0 AND p.AnswerCount<=7 AND p.CommentCount>=0 AND p.CommentCount<=22 AND p.FavoriteCount<=3 AND p.CreationDate>='2010-07-27 05:04:45'::timestamp AND p.CreationDate<='2014-09-03 13:55:45'::timestamp AND u.Reputation<=151 AND u.DownVotes<=41 AND u.CreationDate<='2014-09-10 15:27:53'::timestamp;

/*+ HashJoin(c ph v)
 HashJoin(ph v)
 SeqScan(c)
 IndexScan(ph)
 SeqScan(v)
 Leading((c (ph v))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v WHERE ph.PostId = c.PostId AND ph.PostId = v.PostId AND ph.PostHistoryTypeId=2 AND v.BountyAmount=0 AND v.CreationDate>='2010-07-20 00:00:00'::timestamp;

/*+ HashJoin(c p u)
 MergeJoin(c p)
 IndexScan(c)
 IndexScan(p)
 SeqScan(u)
 Leading(((c p) u)) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.PostId = p.Id AND c.UserId = u.Id AND c.Score=0 AND c.CreationDate>='2010-08-12 14:31:34'::timestamp AND p.ViewCount<=10344 AND p.AnswerCount<=11 AND u.CreationDate>='2010-07-19 23:17:43'::timestamp;

/*+ HashJoin(ph u c)
 HashJoin(u c)
 SeqScan(ph)
 SeqScan(u)
 IndexScan(c)
 Leading((ph (u c))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND c.Score=1 AND ph.CreationDate<='2014-08-28 05:19:57'::timestamp AND u.CreationDate<='2014-09-04 02:06:59'::timestamp;

/*+ HashJoin(c u p)
 MergeJoin(u p)
 IndexScan(c)
 IndexScan(u)
 IndexScan(p)
 Leading((c (u p))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.UserId = u.Id AND u.Id = p.OwnerUserId AND p.ViewCount>=0 AND p.ViewCount<=15051 AND p.AnswerCount>=0 AND p.AnswerCount<=6 AND u.UpVotes>=0;

/*+ MergeJoin(c u p)
 MergeJoin(u p)
 SeqScan(c)
 IndexScan(u)
 SeqScan(p)
 Leading((c (u p))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.UserId = u.Id AND u.Id = p.OwnerUserId AND c.Score=0 AND p.PostTypeId=1 AND p.Score>=0 AND p.Score<=13 AND p.ViewCount<=25962 AND p.CreationDate>='2010-07-27 17:15:37'::timestamp AND p.CreationDate<='2014-08-21 21:56:13'::timestamp AND u.Views>=0 AND u.Views<=168 AND u.DownVotes<=0 AND u.UpVotes>=0 AND u.CreationDate>='2010-08-26 19:28:33'::timestamp AND u.CreationDate<='2014-09-12 02:20:03'::timestamp;

/*+ HashJoin(ph p u)
 MergeJoin(p u)
 SeqScan(ph)
 IndexScan(p)
 IndexScan(u)
 Leading((ph (p u))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.PostId = p.Id AND p.OwnerUserId = u.Id AND ph.PostHistoryTypeId=2 AND u.DownVotes>=0 AND u.DownVotes<=2;

/*+ MergeJoin(u c p)
 MergeJoin(c p)
 IndexScan(u)
 SeqScan(c)
 SeqScan(p)
 Leading((u (c p))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.PostId = p.Id AND c.UserId = u.Id AND c.Score=1 AND c.CreationDate>='2010-07-21 15:02:21'::timestamp AND p.PostTypeId=1 AND p.FavoriteCount=0 AND p.CreationDate<='2014-09-08 23:56:50'::timestamp AND u.Reputation>=1 AND u.Views>=0 AND u.Views<=268;

/*+ HashJoin(b v u)
 MergeJoin(v u)
 SeqScan(b)
 IndexScan(v)
 IndexScan(u)
 Leading((b (v u))) */
SELECT COUNT(*) FROM votes as v, badges as b, users as u WHERE u.Id = v.UserId AND v.UserId = b.UserId AND v.CreationDate>='2010-07-27 00:00:00'::timestamp AND u.Reputation<=407 AND u.Views<=51 AND u.UpVotes>=0 AND u.UpVotes<=9 AND u.CreationDate>='2010-08-16 21:57:12'::timestamp;

/*+ MergeJoin(ph pl p)
 MergeJoin(pl p)
 SeqScan(ph)
 IndexScan(pl)
 IndexScan(p)
 Leading((ph (pl p))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph WHERE p.Id = pl.PostId AND pl.PostId = ph.PostId AND p.Score>=0 AND p.AnswerCount>=0 AND p.FavoriteCount>=0 AND pl.LinkTypeId=1 AND ph.PostHistoryTypeId=13;

/*+ HashJoin(ph u p)
 HashJoin(u p)
 SeqScan(ph)
 IndexScan(u)
 IndexScan(p)
 Leading((ph (u p))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.PostId = p.Id AND p.OwnerUserId = u.Id AND p.ViewCount>=0 AND p.ViewCount<=3463 AND u.Reputation>=1 AND u.Reputation<=7246 AND u.UpVotes<=104;

/*+ MergeJoin(ph p u)
 MergeJoin(p u)
 SeqScan(ph)
 SeqScan(p)
 IndexScan(u)
 Leading((ph (p u))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.PostId = p.Id AND p.OwnerUserId = u.Id AND ph.PostHistoryTypeId=2 AND p.Score=5 AND p.ViewCount<=3130 AND u.Reputation>=1 AND u.UpVotes>=0 AND u.UpVotes<=17 AND u.CreationDate>='2010-07-27 12:49:59'::timestamp AND u.CreationDate<='2014-09-12 06:02:50'::timestamp;

/*+ MergeJoin(u pl p)
 MergeJoin(pl p)
 IndexScan(u)
 IndexScan(pl)
 IndexScan(p)
 Leading((u (pl p))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, users as u WHERE p.Id = pl.PostId AND p.OwnerUserId = u.Id AND p.AnswerCount>=0 AND p.AnswerCount<=3 AND p.CommentCount>=0 AND p.CommentCount<=9 AND pl.CreationDate='2013-03-11 16:07:24'::timestamp AND u.Views>=0;

/*+ MergeJoin(u ph p)
 MergeJoin(u ph)
 IndexScan(u)
 SeqScan(ph)
 SeqScan(p)
 Leading(((u ph) p)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.UserId = p.OwnerUserId AND ph.UserId = u.Id AND ph.CreationDate>='2010-09-21 23:40:39'::timestamp AND p.ViewCount<=8960 AND p.AnswerCount>=0 AND p.AnswerCount<=3 AND p.CommentCount>=0 AND p.FavoriteCount>=0 AND u.DownVotes>=0 AND u.DownVotes<=1 AND u.UpVotes>=0 AND u.UpVotes<=27;

/*+ HashJoin(ph u p)
 HashJoin(u p)
 SeqScan(ph)
 IndexScan(u)
 IndexScan(p)
 Leading((ph (u p))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.PostId = p.Id AND p.OwnerUserId = u.Id AND p.PostTypeId=1 AND p.Score<=26;

/*+ HashJoin(u c v)
 MergeJoin(c v)
 IndexScan(u)
 SeqScan(c)
 SeqScan(v)
 Leading((u (c v))) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND c.PostId = v.PostId AND v.BountyAmount>=0 AND u.Views>=0 AND u.Views<=91;

/*+ HashJoin(c u b)
 HashJoin(c u)
 IndexScan(c)
 SeqScan(u)
 SeqScan(b)
 Leading(((c u) b)) */
SELECT COUNT(*) FROM comments as c, badges as b, users as u WHERE u.Id = c.UserId AND c.UserId = b.UserId;

/*+ HashJoin(c pl p)
 MergeJoin(pl p)
 SeqScan(c)
 IndexScan(pl)
 SeqScan(p)
 Leading((c (pl p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE p.Id = c.PostId AND p.Id = pl.PostId AND c.Score=0 AND c.CreationDate>='2009-03-03 22:14:44'::timestamp AND c.CreationDate<='2014-09-12 08:20:18'::timestamp AND p.ViewCount>=0 AND p.FavoriteCount>=0 AND p.FavoriteCount<=22 AND p.CreationDate>='2010-09-07 08:04:24'::timestamp AND pl.LinkTypeId=1 AND pl.CreationDate<='2014-08-25 20:27:07'::timestamp;

/*+ HashJoin(p u ph)
 MergeJoin(u ph)
 SeqScan(p)
 IndexScan(u)
 SeqScan(ph)
 Leading((p (u ph))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.UserId = p.OwnerUserId AND ph.UserId = u.Id AND ph.PostHistoryTypeId=3 AND p.CommentCount<=16 AND u.Views<=42;

/*+ HashJoin(c pl p)
 MergeJoin(pl p)
 IndexScan(c)
 IndexScan(pl)
 IndexScan(p)
 Leading((c (pl p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE c.UserId = p.OwnerUserId AND p.Id = pl.PostId AND c.Score=0 AND c.CreationDate>='2010-10-12 20:02:07'::timestamp AND c.CreationDate<='2014-09-12 22:24:22'::timestamp AND p.ViewCount<=10520 AND pl.LinkTypeId=1;

/*+ HashJoin(b v u)
 MergeJoin(v u)
 SeqScan(b)
 IndexScan(v)
 IndexScan(u)
 Leading((b (v u))) */
SELECT COUNT(*) FROM votes as v, badges as b, users as u WHERE u.Id = v.UserId AND v.UserId = b.UserId AND u.UpVotes>=0 AND u.UpVotes<=38 AND u.CreationDate<='2014-08-21 20:27:59'::timestamp;

/*+ HashJoin(ph c p)
 HashJoin(c p)
 SeqScan(ph)
 IndexScan(c)
 IndexScan(p)
 Leading((ph (c p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph WHERE p.Id = c.PostId AND p.Id = ph.PostId AND p.Score=0 AND p.AnswerCount<=4 AND p.FavoriteCount=0 AND p.CreationDate<='2014-09-04 20:47:08'::timestamp;

/*+ HashJoin(b v u)
 MergeJoin(v u)
 IndexScan(b)
 IndexScan(v)
 IndexScan(u)
 Leading((b (v u))) */
SELECT COUNT(*) FROM votes as v, badges as b, users as u WHERE u.Id = v.UserId AND v.UserId = b.UserId AND u.Reputation=11;

/*+ HashJoin(c ph v)
 HashJoin(ph v)
 SeqScan(c)
 IndexScan(ph)
 SeqScan(v)
 Leading((c (ph v))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v WHERE ph.PostId = c.PostId AND ph.PostId = v.PostId AND ph.CreationDate>='2011-01-21 15:32:30'::timestamp AND ph.CreationDate<='2014-09-10 07:43:22'::timestamp AND v.BountyAmount<=200;

/*+ MergeJoin(u ph p)
 HashJoin(ph p)
 IndexScan(u)
 SeqScan(ph)
 IndexScan(p)
 Leading((u (ph p))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.UserId = p.OwnerUserId AND ph.UserId = u.Id AND p.PostTypeId=1 AND p.CommentCount>=0 AND p.CommentCount<=10 AND p.CreationDate='2013-07-20 07:18:15'::timestamp AND u.Reputation<=2031 AND u.DownVotes<=0 AND u.UpVotes<=62 AND u.CreationDate>='2010-07-20 00:16:31'::timestamp AND u.CreationDate<='2014-08-25 08:48:43'::timestamp;

/*+ HashJoin(c u p)
 MergeJoin(u p)
 IndexScan(c)
 IndexScan(u)
 IndexScan(p)
 Leading((c (u p))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.UserId = u.Id AND u.Id = p.OwnerUserId AND c.Score=0 AND p.CreationDate>='2010-08-08 21:57:57'::timestamp AND u.Views<=26 AND u.CreationDate>='2010-07-19 19:19:32'::timestamp AND u.CreationDate<='2014-08-29 17:46:38'::timestamp;

/*+ HashJoin(c pl p)
 MergeJoin(pl p)
 SeqScan(c)
 IndexScan(pl)
 SeqScan(p)
 Leading((c (pl p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE c.UserId = p.OwnerUserId AND p.Id = pl.PostId AND p.FavoriteCount>=0 AND p.CreationDate<='2014-08-25 06:14:57'::timestamp;

/*+ HashJoin(ph pl p)
 MergeJoin(pl p)
 SeqScan(ph)
 IndexScan(pl)
 IndexScan(p)
 Leading((ph (pl p))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph WHERE p.Id = pl.PostId AND pl.PostId = ph.PostId AND p.CommentCount=0 AND p.FavoriteCount<=3;

/*+ HashJoin(ph p u)
 MergeJoin(ph p)
 IndexScan(ph)
 IndexScan(p)
 SeqScan(u)
 Leading(((ph p) u)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.UserId = p.OwnerUserId AND ph.UserId = u.Id AND p.FavoriteCount<=10 AND u.Reputation>=1;

/*+ HashJoin(c pl p)
 MergeJoin(pl p)
 IndexScan(c)
 IndexScan(pl)
 IndexScan(p)
 Leading((c (pl p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE c.UserId = p.OwnerUserId AND p.Id = pl.PostId AND c.Score=0 AND c.CreationDate>='2010-07-21 12:07:43'::timestamp AND c.CreationDate<='2014-09-11 08:52:09'::timestamp AND p.PostTypeId=1 AND p.CommentCount<=11 AND p.CreationDate>='2010-08-18 14:01:19'::timestamp AND pl.CreationDate>='2011-04-05 18:02:10'::timestamp AND pl.CreationDate<='2014-08-10 18:56:29'::timestamp;

/*+ HashJoin(ph p u)
 MergeJoin(p u)
 IndexScan(ph)
 IndexScan(p)
 IndexScan(u)
 Leading((ph (p u))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.PostId = p.Id AND p.OwnerUserId = u.Id AND p.PostTypeId=1 AND p.CommentCount>=0 AND p.CommentCount<=28 AND p.FavoriteCount>=0 AND p.FavoriteCount<=6 AND u.Reputation>=1 AND u.Views=0 AND u.UpVotes>=0 AND u.UpVotes<=6 AND u.CreationDate>='2010-07-27 00:21:02'::timestamp;

/*+ HashJoin(c v u)
 MergeJoin(v u)
 IndexScan(c)
 IndexScan(v)
 IndexScan(u)
 Leading((c (v u))) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND v.BountyAmount<=50 AND u.Reputation=101 AND u.Views>=0;

/*+ HashJoin(u p pl)
 MergeJoin(p pl)
 IndexScan(u)
 SeqScan(p)
 IndexScan(pl)
 Leading((u (p pl))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, users as u WHERE p.Id = pl.PostId AND p.OwnerUserId = u.Id AND p.FavoriteCount>=0 AND pl.LinkTypeId=1 AND u.Views>=0 AND u.Views<=83 AND u.CreationDate>='2011-03-08 13:16:00'::timestamp;

/*+ HashJoin(ph c p)
 HashJoin(c p)
 SeqScan(ph)
 IndexScan(c)
 IndexScan(p)
 Leading((ph (c p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph WHERE p.Id = c.PostId AND p.Id = ph.PostId AND p.AnswerCount<=7 AND p.CommentCount>=0 AND p.FavoriteCount>=0 AND p.FavoriteCount<=4 AND p.CreationDate>='2010-07-22 09:17:27'::timestamp AND p.CreationDate<='2014-08-30 20:13:50'::timestamp AND ph.PostHistoryTypeId=1;

/*+ HashJoin(c pl p)
 MergeJoin(pl p)
 SeqScan(c)
 IndexScan(pl)
 IndexScan(p)
 Leading((c (pl p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE c.UserId = p.OwnerUserId AND p.Id = pl.PostId AND p.PostTypeId=1 AND p.ViewCount>=0 AND p.FavoriteCount>=0 AND pl.LinkTypeId=1;

/*+ HashJoin(c u b)
 HashJoin(c u)
 IndexScan(c)
 SeqScan(u)
 SeqScan(b)
 Leading(((c u) b)) */
SELECT COUNT(*) FROM comments as c, badges as b, users as u WHERE u.Id = c.UserId AND c.UserId = b.UserId AND u.Reputation>=1 AND u.Reputation<=3536 AND u.Views>=0;

/*+ HashJoin(ph u c)
 MergeJoin(u c)
 IndexScan(ph)
 SeqScan(u)
 IndexScan(c)
 Leading((ph (u c))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND c.CreationDate>='2010-08-24 17:52:21'::timestamp AND c.CreationDate<='2014-09-09 16:35:33'::timestamp AND u.Reputation<=477 AND u.Views>=0 AND u.Views<=38 AND u.DownVotes=0 AND u.CreationDate<='2014-08-23 21:40:59'::timestamp;

/*+ HashJoin(c u p)
 MergeJoin(u p)
 IndexScan(c)
 IndexScan(u)
 IndexScan(p)
 Leading((c (u p))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.UserId = u.Id AND u.Id = p.OwnerUserId AND c.CreationDate>='2010-08-09 12:22:15'::timestamp AND p.Score>=-2 AND p.Score<=28 AND u.Views<=18;

/*+ HashJoin(ph u c)
 HashJoin(u c)
 SeqScan(ph)
 SeqScan(u)
 IndexScan(c)
 Leading((ph (u c))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND ph.CreationDate>='2010-08-19 17:09:15'::timestamp AND ph.CreationDate<='2014-09-09 14:34:18'::timestamp AND u.Reputation=1 AND u.CreationDate>='2010-12-08 21:18:58'::timestamp AND u.CreationDate<='2014-09-02 07:36:02'::timestamp;

/*+ MergeJoin(c u p)
 MergeJoin(u p)
 SeqScan(c)
 IndexScan(u)
 SeqScan(p)
 Leading((c (u p))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.UserId = u.Id AND u.Id = p.OwnerUserId AND p.Score>=-1 AND p.AnswerCount>=0 AND p.CommentCount<=16 AND p.CreationDate>='2010-07-19 21:48:52'::timestamp AND p.CreationDate<='2014-09-08 18:43:37'::timestamp AND u.Reputation=131 AND u.CreationDate>='2010-08-06 21:02:27'::timestamp AND u.CreationDate<='2014-08-22 18:39:59'::timestamp;

/*+ HashJoin(c p u)
 MergeJoin(c p)
 IndexScan(c)
 IndexScan(p)
 SeqScan(u)
 Leading(((c p) u)) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.PostId = p.Id AND c.UserId = u.Id AND p.Score>=-2 AND p.ViewCount>=0 AND p.CommentCount<=13 AND u.UpVotes>=0 AND u.UpVotes<=21;

/*+ MergeJoin(v p u)
 MergeJoin(p u)
 IndexScan(v)
 IndexScan(p)
 IndexScan(u)
 Leading((v (p u))) */
SELECT COUNT(*) FROM votes as v, posts as p, users as u WHERE v.UserId = p.OwnerUserId AND p.OwnerUserId = u.Id AND u.Reputation<=764 AND u.Views>=0;

/*+ HashJoin(c ph v)
 HashJoin(ph v)
 SeqScan(c)
 IndexScan(ph)
 SeqScan(v)
 Leading((c (ph v))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v WHERE ph.PostId = c.PostId AND ph.PostId = v.PostId AND v.BountyAmount>=0;

/*+ MergeJoin(v u p)
 MergeJoin(v u)
 IndexScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading(((v u) p)) */
SELECT COUNT(*) FROM votes as v, posts as p, users as u WHERE v.PostId = p.Id AND v.UserId = u.Id AND v.CreationDate>='2010-07-26 00:00:00'::timestamp AND v.CreationDate<='2014-09-10 00:00:00'::timestamp AND p.PostTypeId=1 AND p.Score=4;

/*+ MergeJoin(pl p u)
 HashJoin(p u)
 IndexScan(pl)
 SeqScan(p)
 SeqScan(u)
 Leading((pl (p u))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, users as u WHERE p.Id = pl.PostId AND p.OwnerUserId = u.Id AND p.AnswerCount>=0 AND p.AnswerCount<=2 AND p.CommentCount=3 AND p.FavoriteCount=1 AND pl.CreationDate>='2011-11-02 10:57:03'::timestamp AND pl.CreationDate<='2014-08-15 10:43:50'::timestamp AND u.Reputation=13;

/*+ MergeJoin(p ph u)
 MergeJoin(ph u)
 IndexScan(p)
 SeqScan(ph)
 IndexScan(u)
 Leading((p (ph u))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.UserId = p.OwnerUserId AND ph.UserId = u.Id AND ph.PostHistoryTypeId=5 AND ph.CreationDate='2014-06-25 12:34:46'::timestamp AND p.PostTypeId=1 AND p.ViewCount>=0 AND p.CreationDate>='2010-09-12 16:24:34'::timestamp AND p.CreationDate<='2014-09-01 13:41:17'::timestamp AND u.Reputation<=111 AND u.Views>=0 AND u.CreationDate<='2014-08-19 01:07:19'::timestamp;

/*+ HashJoin(ph c u)
 HashJoin(c u)
 SeqScan(ph)
 IndexScan(c)
 SeqScan(u)
 Leading((ph (c u))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND ph.PostHistoryTypeId=3 AND u.DownVotes>=0 AND u.UpVotes>=0 AND u.UpVotes<=6;

/*+ MergeJoin(u c v)
 MergeJoin(c v)
 IndexScan(u)
 SeqScan(c)
 SeqScan(v)
 Leading((u (c v))) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND c.PostId = v.PostId AND c.Score=2 AND v.BountyAmount<=100 AND v.CreationDate>='2010-07-23 00:00:00'::timestamp AND v.CreationDate<='2014-09-12 00:00:00'::timestamp AND u.UpVotes>=0 AND u.UpVotes<=50;

/*+ HashJoin(c u b)
 HashJoin(c u)
 IndexScan(c)
 SeqScan(u)
 SeqScan(b)
 Leading(((c u) b)) */
SELECT COUNT(*) FROM comments as c, badges as b, users as u WHERE u.Id = c.UserId AND c.UserId = b.UserId AND c.Score=0 AND c.CreationDate>='2010-08-24 22:46:09'::timestamp AND c.CreationDate<='2014-09-13 15:55:09'::timestamp AND b.Date>='2010-08-09 20:29:49'::timestamp AND u.UpVotes>=0;

/*+ MergeJoin(ph u p)
 HashJoin(u p)
 IndexScan(ph)
 SeqScan(u)
 IndexScan(p)
 Leading((ph (u p))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.PostId = p.Id AND p.OwnerUserId = u.Id AND ph.CreationDate>='2011-06-02 12:39:14'::timestamp AND ph.CreationDate<='2014-08-10 11:57:09'::timestamp AND p.Score>=0 AND p.AnswerCount<=3 AND p.FavoriteCount<=18 AND p.CreationDate<='2014-08-28 08:56:16'::timestamp AND u.DownVotes>=0 AND u.DownVotes<=0;

/*+ MergeJoin(v p u)
 MergeJoin(p u)
 IndexScan(v)
 IndexScan(p)
 IndexScan(u)
 Leading((v (p u))) */
SELECT COUNT(*) FROM votes as v, posts as p, users as u WHERE v.UserId = p.OwnerUserId AND p.OwnerUserId = u.Id AND v.BountyAmount>=0 AND v.BountyAmount<=50 AND v.CreationDate<='2014-09-10 00:00:00'::timestamp AND u.Reputation<=2052 AND u.DownVotes<=0 AND u.CreationDate>='2010-07-19 19:34:45'::timestamp;

/*+ HashJoin(u pl p)
 MergeJoin(pl p)
 IndexScan(u)
 IndexScan(pl)
 IndexScan(p)
 Leading((u (pl p))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, users as u WHERE p.Id = pl.PostId AND p.OwnerUserId = u.Id AND p.AnswerCount>=0 AND p.AnswerCount<=6 AND pl.CreationDate>='2011-12-21 08:58:44'::timestamp AND pl.CreationDate<='2014-07-27 23:18:51'::timestamp AND u.CreationDate>='2010-07-20 05:57:22'::timestamp AND u.CreationDate<='2014-09-09 06:05:25'::timestamp;

/*+ HashJoin(c p u)
 HashJoin(p u)
 SeqScan(c)
 IndexScan(p)
 SeqScan(u)
 Leading((c (p u))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.UserId = u.Id AND u.Id = p.OwnerUserId AND p.ViewCount<=12112 AND p.AnswerCount>=0 AND p.CommentCount>=0 AND p.CommentCount<=11 AND p.FavoriteCount>=0 AND p.FavoriteCount<=27 AND u.DownVotes<=18;

/*+ HashJoin(ph u p)
 HashJoin(u p)
 SeqScan(ph)
 IndexScan(u)
 IndexScan(p)
 Leading((ph (u p))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.PostId = p.Id AND p.OwnerUserId = u.Id AND p.PostTypeId=2 AND p.Score>=-2 AND p.Score<=22 AND u.Views>=0 AND u.DownVotes>=0 AND u.DownVotes<=2;

/*+ HashJoin(u p pl)
 MergeJoin(p pl)
 IndexScan(u)
 SeqScan(p)
 IndexScan(pl)
 Leading((u (p pl))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, users as u WHERE p.Id = pl.PostId AND p.OwnerUserId = u.Id AND p.FavoriteCount>=0 AND p.FavoriteCount<=5 AND pl.CreationDate>='2010-10-24 15:57:33'::timestamp;

/*+ HashJoin(c pl p)
 MergeJoin(pl p)
 SeqScan(c)
 IndexScan(pl)
 SeqScan(p)
 Leading((c (pl p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE p.Id = c.PostId AND p.Id = pl.PostId AND p.Score>=-1 AND p.AnswerCount<=7 AND p.CommentCount<=10 AND p.FavoriteCount<=10;

/*+ MergeJoin(u ph p)
 MergeJoin(u ph)
 IndexScan(u)
 SeqScan(ph)
 SeqScan(p)
 Leading(((u ph) p)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.UserId = p.OwnerUserId AND ph.UserId = u.Id AND p.PostTypeId=1 AND p.ViewCount>=0 AND p.ViewCount<=7024 AND p.CommentCount>=0 AND p.FavoriteCount>=0 AND u.DownVotes<=4 AND u.CreationDate>='2011-07-11 09:46:48'::timestamp AND u.CreationDate<='2014-08-28 17:32:05'::timestamp;

/*+ HashJoin(c u p)
 MergeJoin(u p)
 IndexScan(c)
 IndexScan(u)
 IndexScan(p)
 Leading((c (u p))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.UserId = u.Id AND u.Id = p.OwnerUserId AND c.CreationDate<='2014-09-13 11:04:33'::timestamp AND p.ViewCount>=0 AND p.ViewCount<=22354 AND u.UpVotes>=0 AND u.CreationDate>='2010-08-19 02:23:45'::timestamp;

/*+ HashJoin(u p pl)
 MergeJoin(p pl)
 IndexScan(u)
 SeqScan(p)
 IndexScan(pl)
 Leading((u (p pl))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, users as u WHERE p.Id = pl.PostId AND p.OwnerUserId = u.Id AND p.Score=1 AND p.ViewCount>=0 AND p.ViewCount<=23738 AND p.CommentCount>=0 AND pl.LinkTypeId=1 AND u.UpVotes>=0 AND u.CreationDate>='2010-08-04 07:01:46'::timestamp AND u.CreationDate<='2014-09-11 02:22:41'::timestamp;

/*+ MergeJoin(v u c)
 MergeJoin(v u)
 IndexScan(v)
 IndexScan(u)
 SeqScan(c)
 Leading(((v u) c)) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND c.Score=0 AND c.CreationDate='2011-04-30 16:23:39'::timestamp;

/*+ MergeJoin(ph u p)
 MergeJoin(u p)
 SeqScan(ph)
 IndexScan(u)
 SeqScan(p)
 Leading((ph (u p))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.PostId = p.Id AND p.OwnerUserId = u.Id AND ph.PostHistoryTypeId=5 AND ph.CreationDate<='2014-08-16 20:23:42'::timestamp AND p.CommentCount<=24 AND p.FavoriteCount<=7 AND p.CreationDate>='2010-08-07 18:10:02'::timestamp AND p.CreationDate<='2014-09-13 23:15:00'::timestamp AND u.Reputation>=1 AND u.DownVotes<=0 AND u.CreationDate>='2010-09-08 03:52:35'::timestamp;

/*+ MergeJoin(b c u)
 MergeJoin(c u)
 SeqScan(b)
 SeqScan(c)
 IndexScan(u)
 Leading((b (c u))) */
SELECT COUNT(*) FROM comments as c, badges as b, users as u WHERE u.Id = c.UserId AND c.UserId = b.UserId AND c.Score=1 AND c.CreationDate>='2010-07-25 20:20:36'::timestamp AND c.CreationDate<='2014-09-08 17:36:58'::timestamp AND u.Views=0 AND u.UpVotes>=0 AND u.CreationDate<='2014-09-01 15:28:38'::timestamp;

/*+ HashJoin(ph pl p)
 MergeJoin(pl p)
 SeqScan(ph)
 IndexScan(pl)
 IndexScan(p)
 Leading((ph (pl p))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph WHERE p.Id = pl.PostId AND pl.PostId = ph.PostId AND p.CommentCount>=0 AND pl.CreationDate<='2014-08-21 14:14:46'::timestamp AND ph.PostHistoryTypeId=2 AND ph.CreationDate>='2011-03-05 20:38:55'::timestamp;

/*+ MergeJoin(u c v)
 HashJoin(c v)
 IndexScan(u)
 IndexScan(c)
 SeqScan(v)
 Leading((u (c v))) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND c.PostId = v.PostId AND c.Score=0 AND c.CreationDate>='2010-08-09 08:06:15'::timestamp AND c.CreationDate<='2014-09-07 13:53:42'::timestamp AND v.BountyAmount=0;

/*+ MergeJoin(b u c)
 HashJoin(u c)
 IndexScan(b)
 SeqScan(u)
 SeqScan(c)
 Leading((b (u c))) */
SELECT COUNT(*) FROM comments as c, badges as b, users as u WHERE u.Id = c.UserId AND c.UserId = b.UserId AND c.CreationDate<='2014-09-05 13:02:28'::timestamp AND b.Date='2014-03-08 15:23:03'::timestamp AND u.Views<=238;

/*+ HashJoin(c p u)
 HashJoin(p u)
 SeqScan(c)
 IndexScan(p)
 SeqScan(u)
 Leading((c (p u))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.UserId = u.Id AND u.Id = p.OwnerUserId AND p.PostTypeId=1 AND p.Score<=75 AND p.AnswerCount>=0 AND p.FavoriteCount<=4 AND p.CreationDate>='2010-09-01 12:21:52'::timestamp AND u.Views>=0 AND u.UpVotes>=0 AND u.CreationDate>='2011-06-22 20:00:28'::timestamp;

/*+ HashJoin(c pl p)
 MergeJoin(pl p)
 SeqScan(c)
 IndexScan(pl)
 IndexScan(p)
 Leading((c (pl p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE p.Id = c.PostId AND p.Id = pl.PostId AND c.Score=0 AND p.PostTypeId=1 AND p.Score>=0 AND p.Score<=14 AND p.AnswerCount>=0 AND p.CreationDate<='2014-09-09 18:38:08'::timestamp AND pl.CreationDate='2013-11-13 19:20:55'::timestamp;

/*+ HashJoin(c u ph)
 HashJoin(c u)
 IndexScan(c)
 SeqScan(u)
 IndexScan(ph)
 Leading(((c u) ph)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND ph.CreationDate<='2014-09-12 06:18:59'::timestamp AND u.Views<=19 AND u.UpVotes<=19 AND u.CreationDate>='2010-07-26 19:08:57'::timestamp;

/*+ HashJoin(ph c p)
 HashJoin(c p)
 SeqScan(ph)
 IndexScan(c)
 IndexScan(p)
 Leading((ph (c p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph WHERE p.Id = c.PostId AND p.Id = ph.PostId AND c.Score=0 AND p.AnswerCount<=4 AND p.FavoriteCount>=0 AND p.CreationDate<='2014-09-03 07:09:09'::timestamp AND ph.PostHistoryTypeId=2 AND ph.CreationDate>='2010-11-15 20:28:53'::timestamp AND ph.CreationDate<='2014-08-19 23:23:36'::timestamp;

/*+ MergeJoin(v ph c)
 MergeJoin(v ph)
 IndexScan(v)
 SeqScan(ph)
 SeqScan(c)
 Leading(((v ph) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v WHERE ph.PostId = c.PostId AND ph.PostId = v.PostId AND c.Score=0 AND ph.PostHistoryTypeId=5 AND v.VoteTypeId=2 AND v.CreationDate<='2014-09-12 00:00:00'::timestamp;

/*+ HashJoin(c p u)
 MergeJoin(p u)
 SeqScan(c)
 SeqScan(p)
 IndexScan(u)
 Leading((c (p u))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.UserId = u.Id AND u.Id = p.OwnerUserId AND c.Score=2 AND p.Score>=-1 AND p.ViewCount<=1563 AND p.CommentCount=0 AND p.FavoriteCount<=42 AND u.Reputation<=1775;

/*+ HashJoin(c pl p)
 MergeJoin(pl p)
 IndexScan(c)
 IndexScan(pl)
 IndexScan(p)
 Leading((c (pl p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE p.Id = c.PostId AND p.Id = pl.PostId AND p.ViewCount<=15260 AND pl.CreationDate>='2011-12-03 11:11:05'::timestamp;

/*+ HashJoin(ph pl p)
 MergeJoin(pl p)
 SeqScan(ph)
 IndexScan(pl)
 IndexScan(p)
 Leading((ph (pl p))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph WHERE p.Id = pl.PostId AND pl.PostId = ph.PostId AND p.Score<=22;

/*+ HashJoin(u c p)
 HashJoin(c p)
 SeqScan(u)
 SeqScan(c)
 IndexScan(p)
 Leading((u (c p))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.PostId = p.Id AND c.UserId = u.Id AND c.Score=0 AND c.CreationDate<='2014-09-13 02:21:33'::timestamp AND p.Score<=28 AND p.ViewCount>=0 AND p.ViewCount<=5595 AND p.AnswerCount<=4 AND p.CommentCount>=0 AND p.CommentCount<=17 AND p.FavoriteCount>=0 AND u.Views<=195 AND u.UpVotes>=0;

/*+ HashJoin(c v u)
 HashJoin(c v)
 IndexScan(c)
 SeqScan(v)
 SeqScan(u)
 Leading(((c v) u)) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND c.PostId = v.PostId AND c.Score=0 AND u.DownVotes<=0;

/*+ HashJoin(ph pl p)
 MergeJoin(pl p)
 SeqScan(ph)
 IndexScan(pl)
 IndexScan(p)
 Leading((ph (pl p))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph WHERE p.Id = pl.PostId AND pl.PostId = ph.PostId AND p.Score=4 AND p.CommentCount>=0 AND p.FavoriteCount<=24 AND pl.CreationDate>='2011-09-06 21:40:25'::timestamp AND pl.CreationDate<='2014-08-13 03:42:04'::timestamp;

/*+ HashJoin(ph v c)
 HashJoin(ph v)
 SeqScan(ph)
 SeqScan(v)
 IndexScan(c)
 Leading(((ph v) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v WHERE ph.PostId = c.PostId AND ph.PostId = v.PostId AND c.Score=0 AND v.CreationDate>='2010-08-11 00:00:00'::timestamp;

/*+ MergeJoin(c u p)
 MergeJoin(u p)
 SeqScan(c)
 IndexScan(u)
 SeqScan(p)
 Leading((c (u p))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.UserId = u.Id AND u.Id = p.OwnerUserId AND p.Score>=-4 AND p.Score<=15 AND p.CommentCount<=11 AND p.FavoriteCount>=0 AND p.FavoriteCount<=5 AND u.DownVotes>=0 AND u.UpVotes<=23;

/*+ HashJoin(c pl p)
 MergeJoin(pl p)
 SeqScan(c)
 IndexScan(pl)
 SeqScan(p)
 Leading((c (pl p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE c.UserId = p.OwnerUserId AND p.Id = pl.PostId AND c.Score=0 AND p.PostTypeId=1 AND p.Score>=-1 AND p.AnswerCount>=0 AND p.AnswerCount<=8 AND p.CreationDate>='2010-07-19 19:33:13'::timestamp AND p.CreationDate<='2014-09-12 16:26:35'::timestamp AND pl.LinkTypeId=1;

/*+ HashJoin(c pl p)
 MergeJoin(pl p)
 IndexScan(c)
 IndexScan(pl)
 IndexScan(p)
 Leading((c (pl p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE p.Id = c.PostId AND p.Id = pl.PostId AND c.Score=0 AND c.CreationDate>='2010-08-19 15:14:29'::timestamp AND p.PostTypeId=1 AND p.Score>=-1 AND p.Score<=16 AND pl.CreationDate>='2010-12-08 10:43:56'::timestamp;

/*+ HashJoin(c u ph)
 HashJoin(c u)
 IndexScan(c)
 SeqScan(u)
 IndexScan(ph)
 Leading(((c u) ph)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND ph.CreationDate<='2014-08-17 08:00:33'::timestamp AND u.DownVotes>=0 AND u.DownVotes<=1;

/*+ HashJoin(ph v c)
 HashJoin(ph v)
 SeqScan(ph)
 SeqScan(v)
 IndexScan(c)
 Leading(((ph v) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v WHERE ph.PostId = c.PostId AND ph.PostId = v.PostId AND c.CreationDate<='2014-09-13 08:31:02'::timestamp AND v.CreationDate<='2014-09-10 00:00:00'::timestamp;

/*+ HashJoin(c u b)
 HashJoin(c u)
 IndexScan(c)
 SeqScan(u)
 SeqScan(b)
 Leading(((c u) b)) */
SELECT COUNT(*) FROM comments as c, badges as b, users as u WHERE u.Id = c.UserId AND c.UserId = b.UserId AND c.Score=0 AND c.CreationDate<='2014-09-12 21:05:43'::timestamp AND u.Views=0 AND u.DownVotes>=0;

/*+ HashJoin(c u b)
 HashJoin(c u)
 IndexScan(c)
 SeqScan(u)
 SeqScan(b)
 Leading(((c u) b)) */
SELECT COUNT(*) FROM comments as c, badges as b, users as u WHERE u.Id = c.UserId AND c.UserId = b.UserId AND b.Date<='2014-09-10 06:16:32'::timestamp AND u.Reputation<=131 AND u.DownVotes<=0 AND u.CreationDate>='2010-07-19 21:51:32'::timestamp AND u.CreationDate<='2014-09-07 19:43:01'::timestamp;

/*+ HashJoin(c u b)
 HashJoin(c u)
 IndexScan(c)
 SeqScan(u)
 IndexScan(b)
 Leading(((c u) b)) */
SELECT COUNT(*) FROM comments as c, badges as b, users as u WHERE u.Id = c.UserId AND c.UserId = b.UserId AND c.CreationDate>='2010-09-13 19:47:02'::timestamp AND c.CreationDate<='2014-09-02 11:10:48'::timestamp AND u.Reputation=11;

/*+ HashJoin(c u p)
 MergeJoin(u p)
 IndexScan(c)
 IndexScan(u)
 IndexScan(p)
 Leading((c (u p))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.UserId = u.Id AND u.Id = p.OwnerUserId AND p.Score>=-4 AND p.Score<=22 AND p.ViewCount>=0 AND p.CommentCount<=10 AND p.CreationDate>='2010-09-26 09:41:18'::timestamp AND u.DownVotes>=0 AND u.DownVotes<=0;

/*+ HashJoin(u pl p)
 MergeJoin(pl p)
 IndexScan(u)
 IndexScan(pl)
 IndexScan(p)
 Leading((u (pl p))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, users as u WHERE p.Id = pl.PostId AND p.OwnerUserId = u.Id AND p.Score>=-2 AND p.Score<=50 AND p.ViewCount<=6703 AND u.Views<=98 AND u.UpVotes<=14;

/*+ HashJoin(c u b)
 HashJoin(c u)
 IndexScan(c)
 SeqScan(u)
 SeqScan(b)
 Leading(((c u) b)) */
SELECT COUNT(*) FROM comments as c, badges as b, users as u WHERE u.Id = c.UserId AND c.UserId = b.UserId AND u.Reputation<=1033;

/*+ HashJoin(b v u)
 MergeJoin(v u)
 IndexScan(b)
 IndexScan(v)
 IndexScan(u)
 Leading((b (v u))) */
SELECT COUNT(*) FROM votes as v, badges as b, users as u WHERE u.Id = v.UserId AND v.UserId = b.UserId AND b.Date>='2010-09-12 19:00:41'::timestamp AND b.Date<='2014-09-06 04:28:10'::timestamp AND u.Reputation=101 AND u.UpVotes<=236 AND u.CreationDate<='2014-09-11 01:07:42'::timestamp;

/*+ MergeJoin(c u v)
 MergeJoin(u v)
 IndexScan(c)
 IndexScan(u)
 SeqScan(v)
 Leading((c (u v))) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND c.Score=0;

/*+ HashJoin(ph c p)
 HashJoin(c p)
 SeqScan(ph)
 IndexScan(c)
 IndexScan(p)
 Leading((ph (c p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph WHERE p.Id = c.PostId AND p.Id = ph.PostId AND c.Score=0 AND p.ViewCount<=37288 AND p.AnswerCount<=4 AND p.CommentCount>=0 AND ph.PostHistoryTypeId=24 AND ph.CreationDate>='2010-10-18 17:19:09'::timestamp;

/*+ HashJoin(c p u)
 MergeJoin(p u)
 SeqScan(c)
 SeqScan(p)
 IndexScan(u)
 Leading((c (p u))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.UserId = u.Id AND u.Id = p.OwnerUserId AND c.Score=2 AND p.FavoriteCount>=0 AND p.CreationDate>='2010-07-21 01:23:00'::timestamp AND u.CreationDate>='2011-02-15 06:35:57'::timestamp AND u.CreationDate<='2014-08-28 19:09:27'::timestamp;

/*+ MergeJoin(u ph p)
 MergeJoin(u ph)
 IndexScan(u)
 SeqScan(ph)
 SeqScan(p)
 Leading(((u ph) p)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.UserId = p.OwnerUserId AND ph.UserId = u.Id AND ph.CreationDate<='2014-07-28 15:22:44'::timestamp AND p.PostTypeId=1 AND p.ViewCount>=0 AND p.AnswerCount<=9 AND p.CommentCount<=16 AND p.FavoriteCount>=0 AND u.DownVotes<=12 AND u.CreationDate>='2010-11-20 21:43:56'::timestamp;

/*+ MergeJoin(u p pl)
 MergeJoin(p pl)
 IndexScan(u)
 SeqScan(p)
 IndexScan(pl)
 Leading((u (p pl))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, users as u WHERE p.Id = pl.PostId AND p.OwnerUserId = u.Id AND p.Score>=0 AND p.Score<=17 AND p.AnswerCount>=0 AND p.AnswerCount<=3 AND p.FavoriteCount>=0 AND p.FavoriteCount<=5 AND p.CreationDate>='2010-07-26 22:22:21'::timestamp AND pl.LinkTypeId=1 AND pl.CreationDate>='2011-08-08 16:04:39'::timestamp AND u.Reputation<=5564 AND u.Views>=0 AND u.Views<=220;

/*+ HashJoin(c u b)
 HashJoin(c u)
 IndexScan(c)
 SeqScan(u)
 SeqScan(b)
 Leading(((c u) b)) */
SELECT COUNT(*) FROM comments as c, badges as b, users as u WHERE u.Id = c.UserId AND c.UserId = b.UserId AND c.Score=0;

/*+ HashJoin(u pl p)
 MergeJoin(pl p)
 IndexScan(u)
 IndexScan(pl)
 IndexScan(p)
 Leading((u (pl p))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, users as u WHERE p.Id = pl.PostId AND p.OwnerUserId = u.Id AND p.Score>=-1 AND p.Score<=26 AND p.AnswerCount>=0 AND p.CommentCount>=0 AND p.CommentCount<=16 AND p.CreationDate>='2010-07-21 16:42:43'::timestamp AND u.Views>=0 AND u.Views<=540 AND u.DownVotes>=0 AND u.DownVotes<=2;

/*+ HashJoin(c p u)
 MergeJoin(c p)
 IndexScan(c)
 IndexScan(p)
 SeqScan(u)
 Leading(((c p) u)) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.PostId = p.Id AND c.UserId = u.Id AND c.CreationDate>='2010-08-09 07:24:50'::timestamp AND c.CreationDate<='2014-08-20 21:15:11'::timestamp AND p.ViewCount<=2218 AND p.CommentCount>=0 AND u.UpVotes>=0;

/*+ MergeJoin(ph p u)
 MergeJoin(p u)
 SeqScan(ph)
 SeqScan(p)
 IndexScan(u)
 Leading((ph (p u))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.PostId = p.Id AND p.OwnerUserId = u.Id AND ph.PostHistoryTypeId=2 AND ph.CreationDate>='2010-08-17 13:10:29'::timestamp AND p.PostTypeId=1 AND p.FavoriteCount=0 AND u.Reputation>=1 AND u.Reputation<=306;

/*+ HashJoin(c pl p)
 MergeJoin(pl p)
 IndexScan(c)
 IndexScan(pl)
 IndexScan(p)
 Leading((c (pl p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE c.UserId = p.OwnerUserId AND p.Id = pl.PostId AND p.Score<=38 AND p.AnswerCount<=5 AND p.CommentCount>=0 AND pl.CreationDate>='2010-09-18 02:43:41'::timestamp;

/*+ HashJoin(c v u)
 HashJoin(c v)
 IndexScan(c)
 SeqScan(v)
 SeqScan(u)
 Leading(((c v) u)) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND c.PostId = v.PostId AND c.Score=0 AND u.CreationDate<='2014-09-10 13:04:39'::timestamp;

/*+ HashJoin(c u ph)
 HashJoin(c u)
 IndexScan(c)
 SeqScan(u)
 IndexScan(ph)
 Leading(((c u) ph)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND c.Score=0 AND ph.CreationDate>='2011-02-10 14:59:26'::timestamp AND ph.CreationDate<='2014-09-09 05:49:40'::timestamp AND u.Reputation>=1 AND u.Reputation<=1036 AND u.UpVotes>=0 AND u.UpVotes<=152 AND u.CreationDate<='2014-08-27 15:48:10'::timestamp;

/*+ HashJoin(ph u p)
 MergeJoin(u p)
 SeqScan(ph)
 IndexScan(u)
 SeqScan(p)
 Leading((ph (u p))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.PostId = p.Id AND p.OwnerUserId = u.Id AND p.AnswerCount<=6 AND p.CommentCount<=10 AND p.CreationDate<='2014-09-03 15:42:42'::timestamp AND u.UpVotes=1;

/*+ HashJoin(c p u)
 MergeJoin(c p)
 IndexScan(c)
 IndexScan(p)
 SeqScan(u)
 Leading(((c p) u)) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.PostId = p.Id AND c.UserId = u.Id AND p.AnswerCount>=0 AND p.AnswerCount<=8 AND p.CommentCount>=0 AND p.CreationDate>='2010-08-13 05:51:00'::timestamp AND p.CreationDate<='2014-09-12 16:40:29'::timestamp AND u.Reputation>=1 AND u.Reputation<=918 AND u.Views>=0 AND u.Views<=19;

/*+ HashJoin(ph u p)
 HashJoin(u p)
 SeqScan(ph)
 IndexScan(u)
 IndexScan(p)
 Leading((ph (u p))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.PostId = p.Id AND p.OwnerUserId = u.Id AND ph.CreationDate<='2014-09-12 10:28:39'::timestamp AND p.ViewCount>=0 AND p.CreationDate>='2010-07-20 06:35:21'::timestamp;

/*+ HashJoin(c u b)
 HashJoin(c u)
 IndexScan(c)
 SeqScan(u)
 SeqScan(b)
 Leading(((c u) b)) */
SELECT COUNT(*) FROM comments as c, badges as b, users as u WHERE u.Id = c.UserId AND c.UserId = b.UserId AND u.Reputation<=121 AND u.DownVotes>=0;

/*+ HashJoin(ph u c)
 HashJoin(u c)
 SeqScan(ph)
 SeqScan(u)
 IndexScan(c)
 Leading((ph (u c))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND ph.PostHistoryTypeId=2 AND u.Reputation<=175 AND u.Views<=24 AND u.UpVotes<=25;

/*+ HashJoin(c u p)
 MergeJoin(u p)
 IndexScan(c)
 IndexScan(u)
 IndexScan(p)
 Leading((c (u p))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.UserId = u.Id AND u.Id = p.OwnerUserId AND p.PostTypeId=1 AND p.CreationDate>='2010-07-28 16:15:07'::timestamp AND p.CreationDate<='2014-09-08 11:25:43'::timestamp;

/*+ HashJoin(b v u)
 MergeJoin(v u)
 SeqScan(b)
 IndexScan(v)
 IndexScan(u)
 Leading((b (v u))) */
SELECT COUNT(*) FROM votes as v, badges as b, users as u WHERE u.Id = v.UserId AND v.UserId = b.UserId AND v.CreationDate>='2010-07-23 00:00:00'::timestamp AND b.Date>='2010-07-31 19:29:43'::timestamp AND b.Date<='2014-09-09 07:25:40'::timestamp AND u.Reputation<=357 AND u.UpVotes>=0 AND u.UpVotes<=78;

/*+ HashJoin(c u ph)
 HashJoin(c u)
 IndexScan(c)
 SeqScan(u)
 IndexScan(ph)
 Leading(((c u) ph)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND c.Score=0 AND ph.CreationDate<='2014-09-08 16:01:17'::timestamp AND u.Reputation<=6431 AND u.Views>=0 AND u.Views<=216 AND u.UpVotes>=0 AND u.UpVotes<=44 AND u.CreationDate>='2010-11-03 09:30:32'::timestamp;

/*+ HashJoin(ph pl p)
 MergeJoin(pl p)
 SeqScan(ph)
 IndexScan(pl)
 IndexScan(p)
 Leading((ph (pl p))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph WHERE p.Id = pl.PostId AND pl.PostId = ph.PostId AND p.ViewCount>=0 AND p.ViewCount<=9207 AND p.AnswerCount>=0 AND p.FavoriteCount>=0 AND pl.LinkTypeId=1 AND ph.PostHistoryTypeId=5;

/*+ MergeJoin(u c v)
 HashJoin(c v)
 IndexScan(u)
 IndexScan(c)
 SeqScan(v)
 Leading((u (c v))) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND c.PostId = v.PostId AND c.Score=0 AND c.CreationDate>='2010-08-02 21:42:06'::timestamp AND c.CreationDate<='2014-09-13 20:06:21'::timestamp AND v.BountyAmount>=0 AND u.Views<=87 AND u.DownVotes<=0;

/*+ HashJoin(ph pl p)
 MergeJoin(pl p)
 SeqScan(ph)
 IndexScan(pl)
 IndexScan(p)
 Leading((ph (pl p))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph WHERE p.Id = pl.PostId AND pl.PostId = ph.PostId AND p.PostTypeId=1 AND p.ViewCount<=16090 AND p.CommentCount<=10 AND p.CreationDate<='2014-08-27 06:16:51'::timestamp AND pl.LinkTypeId=1 AND pl.CreationDate>='2011-02-13 19:34:36'::timestamp;

/*+ HashJoin(u p v)
 MergeJoin(p v)
 IndexScan(u)
 SeqScan(p)
 SeqScan(v)
 Leading((u (p v))) */
SELECT COUNT(*) FROM votes as v, posts as p, users as u WHERE v.PostId = p.Id AND v.UserId = u.Id AND v.BountyAmount<=50 AND p.CommentCount<=9 AND p.FavoriteCount>=0 AND u.Reputation>=1 AND u.Reputation<=758 AND u.CreationDate>='2010-10-22 08:15:41'::timestamp AND u.CreationDate<='2014-08-08 12:09:59'::timestamp;

/*+ HashJoin(c pl p)
 MergeJoin(pl p)
 SeqScan(c)
 IndexScan(pl)
 IndexScan(p)
 Leading((c (pl p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE c.UserId = p.OwnerUserId AND p.Id = pl.PostId AND c.Score=0 AND p.Score>=-1 AND p.Score<=25 AND p.CommentCount>=0 AND p.CommentCount<=12 AND p.FavoriteCount>=0 AND p.FavoriteCount<=3 AND pl.LinkTypeId=3 AND pl.CreationDate>='2010-10-02 00:22:45'::timestamp;

/*+ HashJoin(c p u)
 HashJoin(c p)
 IndexScan(c)
 IndexScan(p)
 SeqScan(u)
 Leading(((c p) u)) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.PostId = p.Id AND c.UserId = u.Id AND c.Score=0 AND p.PostTypeId=2 AND p.Score>=-1 AND p.CommentCount<=15 AND p.CreationDate>='2010-08-11 22:10:15'::timestamp AND p.CreationDate<='2014-09-08 10:31:11'::timestamp AND u.Views<=28 AND u.DownVotes=0;

/*+ HashJoin(c pl p)
 MergeJoin(pl p)
 IndexScan(c)
 IndexScan(pl)
 IndexScan(p)
 Leading((c (pl p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE p.Id = c.PostId AND p.Id = pl.PostId AND c.CreationDate<='2014-09-01 09:07:32'::timestamp AND pl.LinkTypeId=1 AND pl.CreationDate='2014-03-01 04:32:17'::timestamp;

/*+ HashJoin(u p v)
 MergeJoin(p v)
 IndexScan(u)
 SeqScan(p)
 SeqScan(v)
 Leading((u (p v))) */
SELECT COUNT(*) FROM votes as v, posts as p, users as u WHERE v.UserId = p.OwnerUserId AND p.OwnerUserId = u.Id AND v.BountyAmount<=100 AND p.PostTypeId=1 AND p.ViewCount<=2156 AND p.AnswerCount<=4 AND u.Reputation>=1 AND u.Reputation<=153 AND u.CreationDate>='2011-06-16 07:07:36'::timestamp;

/*+ HashJoin(p v u)
 MergeJoin(v u)
 SeqScan(p)
 IndexScan(v)
 IndexScan(u)
 Leading((p (v u))) */
SELECT COUNT(*) FROM votes as v, posts as p, users as u WHERE v.PostId = p.Id AND v.UserId = u.Id AND p.PostTypeId=1 AND p.Score>=-2 AND u.DownVotes>=0 AND u.DownVotes<=4 AND u.UpVotes>=0 AND u.CreationDate>='2011-01-13 18:25:59'::timestamp;

/*+ HashJoin(ph p u)
 MergeJoin(p u)
 SeqScan(ph)
 IndexScan(p)
 IndexScan(u)
 Leading((ph (p u))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.PostId = p.Id AND p.OwnerUserId = u.Id AND ph.PostHistoryTypeId=5 AND p.Score>=0 AND u.Views>=0 AND u.Views<=49;

