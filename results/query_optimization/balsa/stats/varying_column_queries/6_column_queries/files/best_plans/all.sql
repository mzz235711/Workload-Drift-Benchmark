/*+ HashJoin(b c u v)
 HashJoin(c u v)
 HashJoin(c u)
 SeqScan(b)
 SeqScan(c)
 IndexScan(u)
 SeqScan(v)
 Leading((b ((c u) v))) */
SELECT COUNT(*) FROM comments as c, votes as v, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND c.Score=1 AND v.BountyAmount<=50 AND v.CreationDate>='2010-07-20 00:00:00'::timestamp AND v.CreationDate<='2014-09-10 00:00:00'::timestamp AND u.Views>=0 AND u.Views<=46;

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
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, votes as v WHERE p.Id = c.PostId AND p.Id = pl.PostId AND p.Id = ph.PostId AND p.Id = v.PostId AND c.CreationDate>='2010-07-19 19:30:24'::timestamp AND c.CreationDate<='2014-09-12 08:18:09'::timestamp AND p.PostTypeId=1 AND p.Score<=24 AND p.CommentCount<=12 AND pl.LinkTypeId=3;

/*+ HashJoin(c ph pl p v)
 HashJoin(ph pl p v)
 HashJoin(pl p v)
 HashJoin(pl p)
 SeqScan(c)
 SeqScan(ph)
 IndexScan(pl)
 SeqScan(p)
 SeqScan(v)
 Leading((c (ph ((pl p) v)))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, votes as v WHERE p.Id = c.PostId AND p.Id = pl.PostId AND p.Id = ph.PostId AND p.Id = v.PostId AND c.CreationDate>='2010-08-18 19:53:40'::timestamp AND c.CreationDate<='2014-09-11 13:56:18'::timestamp AND p.PostTypeId=2 AND p.Score=1 AND p.FavoriteCount<=3 AND p.CreationDate>='2010-08-02 08:14:36'::timestamp;

/*+ HashJoin(ph p u)
 HashJoin(p u)
 SeqScan(ph)
 SeqScan(p)
 SeqScan(u)
 Leading((ph (p u))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.PostId = p.Id AND p.OwnerUserId = u.Id AND ph.PostHistoryTypeId=5 AND ph.CreationDate>='2010-11-15 18:26:07'::timestamp AND ph.CreationDate<='2014-08-05 14:36:34'::timestamp AND p.PostTypeId=1 AND p.ViewCount>=0 AND p.ViewCount<=3410;

/*+ HashJoin(c u b)
 HashJoin(c u)
 SeqScan(c)
 SeqScan(u)
 SeqScan(b)
 Leading(((c u) b)) */
SELECT COUNT(*) FROM comments as c, badges as b, users as u WHERE u.Id = c.UserId AND c.UserId = b.UserId AND c.Score=0 AND b.Date>='2010-07-19 20:39:07'::timestamp AND b.Date<='2014-09-12 15:31:32'::timestamp AND u.Reputation<=2538 AND u.Views>=0 AND u.Views<=15;

/*+ HashJoin(c pl p v ph b)
 HashJoin(c pl p v ph)
 HashJoin(c pl p v)
 HashJoin(c pl p)
 HashJoin(pl p)
 SeqScan(c)
 IndexScan(pl)
 SeqScan(p)
 SeqScan(v)
 SeqScan(ph)
 IndexScan(b)
 Leading(((((c (pl p)) v) ph) b)) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, votes as v, badges as b WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.Id = ph.PostId AND p.Id = v.PostId AND b.UserId = c.UserId AND c.CreationDate<='2014-09-12 13:19:53'::timestamp AND p.ViewCount>=0 AND p.ViewCount<=37144 AND p.AnswerCount<=27 AND ph.CreationDate<='2014-09-08 13:52:41'::timestamp AND v.BountyAmount>=0;

/*+ MergeJoin(u c p)
 HashJoin(c p)
 SeqScan(u)
 SeqScan(c)
 SeqScan(p)
 Leading((u (c p))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.PostId = p.Id AND c.UserId = u.Id AND p.ViewCount=1507 AND p.FavoriteCount>=0 AND p.FavoriteCount<=27 AND u.Views>=0 AND u.CreationDate>='2011-01-08 12:24:04'::timestamp AND u.CreationDate<='2014-08-14 11:00:05'::timestamp;

/*+ HashJoin(v u p pl)
 HashJoin(u p pl)
 HashJoin(p pl)
 SeqScan(v)
 SeqScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((v (u (p pl)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, votes as v, users as u WHERE p.Id = pl.RelatedPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND pl.CreationDate>='2012-04-09 06:02:40'::timestamp AND v.VoteTypeId=2 AND u.Reputation>=1 AND u.Reputation<=789 AND u.DownVotes>=0 AND u.CreationDate<='2014-08-21 09:07:26'::timestamp;

/*+ HashJoin(c p pl)
 HashJoin(p pl)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 Leading((c (p pl))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE c.UserId = p.OwnerUserId AND p.Id = pl.PostId AND p.Score<=13 AND p.ViewCount<=1398 AND p.FavoriteCount>=0 AND p.CreationDate>='2010-07-21 08:19:36'::timestamp AND p.CreationDate<='2014-09-04 21:32:18'::timestamp AND pl.LinkTypeId=1;

/*+ MergeJoin(v u ph c)
 HashJoin(v u ph)
 HashJoin(v u)
 SeqScan(v)
 SeqScan(u)
 SeqScan(ph)
 SeqScan(c)
 Leading((((v u) ph) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v, users as u WHERE u.Id = v.UserId AND v.UserId = ph.UserId AND ph.UserId =c.UserId AND c.Score=0 AND c.CreationDate>='2010-07-29 15:25:23'::timestamp AND c.CreationDate<='2014-09-13 01:37:58'::timestamp AND u.DownVotes>=0 AND u.DownVotes<=0 AND u.UpVotes=0;

/*+ HashJoin(b c u p v)
 HashJoin(c u p v)
 HashJoin(c u p)
 HashJoin(c u)
 SeqScan(b)
 SeqScan(c)
 SeqScan(u)
 IndexScan(p)
 SeqScan(v)
 Leading((b (((c u) p) v))) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, badges as b, users as u WHERE u.Id =c.UserId AND c.UserId = p.OwnerUserId AND p.OwnerUserId = v.UserId AND v.UserId = b.UserId AND p.ViewCount<=1452 AND v.CreationDate='2012-01-18 00:00:00'::timestamp AND u.Reputation>=1 AND u.Reputation<=328 AND u.Views<=25 AND u.UpVotes<=5;

/*+ HashJoin(c u p v b)
 HashJoin(c u p v)
 HashJoin(c u p)
 HashJoin(c u)
 SeqScan(c)
 SeqScan(u)
 IndexScan(p)
 SeqScan(v)
 SeqScan(b)
 Leading(((((c u) p) v) b)) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, badges as b, users as u WHERE u.Id =c.UserId AND c.UserId = p.OwnerUserId AND p.OwnerUserId = v.UserId AND v.UserId = b.UserId AND p.PostTypeId=1 AND p.ViewCount>=0 AND v.BountyAmount>=0 AND u.Reputation>=1 AND u.Reputation<=350 AND u.CreationDate>='2010-07-19 19:09:41'::timestamp;

/*+ HashJoin(ph v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(ph)
 SeqScan(v)
 SeqScan(u)
 SeqScan(p)
 Leading((ph (v (u p)))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, votes as v, users as u WHERE p.Id = ph.PostId AND u.Id = p.OwnerUserId AND p.Id = v.PostId AND p.FavoriteCount>=0 AND p.CreationDate<='2014-09-04 16:26:45'::timestamp AND v.VoteTypeId=2 AND u.Reputation>=1 AND u.Reputation<=881 AND u.UpVotes<=1243;

/*+ HashJoin(c ph p)
 HashJoin(ph p)
 SeqScan(c)
 SeqScan(ph)
 SeqScan(p)
 Leading((c (ph p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph WHERE p.Id = c.PostId AND p.Id = ph.PostId AND p.Score=4 AND p.AnswerCount>=0 AND p.AnswerCount<=5 AND p.CommentCount<=16 AND p.FavoriteCount>=0 AND p.FavoriteCount<=31;

/*+ HashJoin(b p)
 SeqScan(b)
 SeqScan(p)
 Leading((b p)) */
SELECT COUNT(*) FROM badges as b, posts as p WHERE b.UserId = p.OwnerUserId AND p.Score>=-1 AND p.Score<=65 AND p.ViewCount<=19571 AND p.CommentCount<=22 AND p.FavoriteCount<=9 AND p.CreationDate<='2014-09-13 10:39:19'::timestamp;

/*+ HashJoin(c pl p)
 HashJoin(pl p)
 SeqScan(c)
 IndexScan(pl)
 SeqScan(p)
 Leading((c (pl p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE p.Id = c.PostId AND p.Id = pl.PostId AND c.Score=0 AND c.CreationDate<='2014-09-07 14:31:35'::timestamp AND p.Score>=-2 AND p.FavoriteCount>=0 AND p.FavoriteCount<=16 AND p.CreationDate<='2014-09-10 20:19:59'::timestamp;

/*+ HashJoin(v p u)
 HashJoin(p u)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 Leading((v (p u))) */
SELECT COUNT(*) FROM votes as v, posts as p, users as u WHERE v.UserId = p.OwnerUserId AND p.OwnerUserId = u.Id AND p.PostTypeId=1 AND p.Score<=24 AND p.ViewCount>=0 AND p.CommentCount<=15 AND u.Views>=0 AND u.UpVotes>=0;

/*+ HashJoin(c u p pl)
 HashJoin(u p pl)
 HashJoin(p pl)
 SeqScan(c)
 SeqScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((c (u (p pl)))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, users as u WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.OwnerUserId = u.Id AND p.Score>=-1 AND p.Score<=41 AND p.CommentCount>=0 AND u.DownVotes>=0 AND u.UpVotes=9 AND u.CreationDate>='2010-08-06 07:43:09'::timestamp;

/*+ MergeJoin(v ph u b c)
 HashJoin(v ph u b)
 MergeJoin(ph u b)
 MergeJoin(u b)
 SeqScan(v)
 SeqScan(ph)
 IndexScan(u)
 IndexScan(b)
 SeqScan(c)
 Leading(((v (ph (u b))) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, votes as v, users as u WHERE u.Id =b.UserId AND b.UserId = ph.UserId AND ph.UserId = v.UserId AND v.UserId = c.UserId AND c.Score=0 AND ph.CreationDate<='2014-07-21 14:50:57'::timestamp AND u.DownVotes>=0 AND u.DownVotes<=6 AND u.UpVotes>=0 AND u.UpVotes<=17;

/*+ HashJoin(c u p)
 HashJoin(u p)
 SeqScan(c)
 SeqScan(u)
 SeqScan(p)
 Leading((c (u p))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.UserId = u.Id AND u.Id = p.OwnerUserId AND p.Score=2 AND p.ViewCount<=8014 AND u.Reputation>=1 AND u.Views<=12 AND u.DownVotes>=0 AND u.CreationDate>='2010-08-15 01:26:16'::timestamp;

/*+ HashJoin(c u ph b)
 HashJoin(c u ph)
 HashJoin(u ph)
 SeqScan(c)
 SeqScan(u)
 SeqScan(ph)
 IndexScan(b)
 Leading(((c (u ph)) b)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = ph.UserId AND u.Id = b.UserId AND c.Score=0 AND ph.CreationDate<='2014-08-22 13:11:46'::timestamp AND u.Views>=0 AND u.Views<=268 AND u.DownVotes>=0 AND u.CreationDate<='2014-07-28 20:32:56'::timestamp;

/*+ HashJoin(c u v b)
 HashJoin(c u v)
 HashJoin(c u)
 SeqScan(c)
 IndexScan(u)
 SeqScan(v)
 IndexScan(b)
 Leading((((c u) v) b)) */
SELECT COUNT(*) FROM comments as c, votes as v, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND v.BountyAmount<=100 AND b.Date>='2010-07-27 13:18:44'::timestamp AND b.Date<='2014-08-07 05:33:00'::timestamp AND u.DownVotes>=0 AND u.DownVotes<=125 AND u.CreationDate>='2010-07-19 23:43:33'::timestamp;

/*+ MergeJoin(ph c u b)
 HashJoin(c u b)
 HashJoin(c u)
 SeqScan(ph)
 SeqScan(c)
 IndexScan(u)
 SeqScan(b)
 Leading((ph ((c u) b))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = ph.UserId AND u.Id = b.UserId AND c.Score=0 AND ph.PostHistoryTypeId=2 AND ph.CreationDate>='2010-09-16 06:49:06'::timestamp AND b.Date<='2014-07-12 22:44:15'::timestamp AND u.DownVotes<=43 AND u.UpVotes=0;

/*+ HashJoin(ph u v b)
 HashJoin(u v b)
 HashJoin(u v)
 SeqScan(ph)
 IndexScan(u)
 SeqScan(v)
 IndexScan(b)
 Leading((ph ((u v) b))) */
SELECT COUNT(*) FROM postHistory as ph, votes as v, users as u, badges as b WHERE u.Id = ph.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND u.Reputation>=1 AND u.Reputation<=4536 AND u.DownVotes>=0 AND u.CreationDate<='2014-08-25 18:36:43'::timestamp AND b.Date>='2010-07-19 19:39:09'::timestamp AND b.Date<='2014-08-11 15:21:18'::timestamp;

/*+ HashJoin(ph p u)
 HashJoin(ph p)
 SeqScan(ph)
 SeqScan(p)
 SeqScan(u)
 Leading(((ph p) u)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.UserId = p.OwnerUserId AND ph.UserId = u.Id AND ph.PostHistoryTypeId=2 AND p.PostTypeId=1 AND p.AnswerCount>=0 AND p.AnswerCount<=4 AND p.FavoriteCount<=10 AND u.UpVotes<=148;

/*+ HashJoin(ph v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(ph)
 SeqScan(v)
 SeqScan(u)
 SeqScan(p)
 Leading((ph (v (u p)))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, votes as v, users as u WHERE p.Id = ph.PostId AND u.Id = p.OwnerUserId AND p.Id = v.PostId AND p.Score<=24 AND v.BountyAmount>=0 AND u.DownVotes>=0 AND u.DownVotes<=0 AND u.UpVotes<=53 AND u.CreationDate<='2014-09-12 15:43:40'::timestamp;

/*+ HashJoin(p u)
 SeqScan(p)
 IndexScan(u)
 Leading((p u)) */
SELECT COUNT(*) FROM posts as p, users as u WHERE p.OwnerUserId= u.Id AND p.PostTypeId=2 AND p.Score<=56 AND p.CreationDate>='2010-07-27 15:14:22'::timestamp AND p.CreationDate<='2014-09-02 14:05:21'::timestamp AND u.Views<=1604 AND u.UpVotes=3;

/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 SeqScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.PostTypeId=1 AND p.Score>=-4 AND p.CommentCount>=0 AND p.FavoriteCount=0 AND u.Views<=38 AND u.UpVotes>=0;

/*+ HashJoin(ph p u b)
 HashJoin(ph p u)
 HashJoin(p u)
 SeqScan(ph)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading(((ph (p u)) b)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u, badges as b WHERE u.Id = p.OwnerUserId AND p.OwnerUserId = ph.UserId AND ph.UserId = b.UserId AND p.PostTypeId=1 AND p.AnswerCount>=0 AND p.CreationDate<='2014-08-27 11:19:18'::timestamp AND u.Reputation>=1 AND u.Reputation<=1713 AND b.Date<='2014-09-10 18:22:38'::timestamp;

/*+ HashJoin(p b)
 SeqScan(p)
 SeqScan(b)
 Leading((p b)) */
SELECT COUNT(*) FROM badges as b, posts as p WHERE b.UserId = p.OwnerUserId AND b.Date>='2010-08-24 09:40:57'::timestamp AND b.Date<='2014-09-12 15:11:36'::timestamp AND p.ViewCount>=0 AND p.ViewCount<=10503 AND p.CommentCount>=0 AND p.CommentCount<=20;

/*+ HashJoin(u p v)
 HashJoin(u p)
 SeqScan(u)
 SeqScan(p)
 SeqScan(v)
 Leading(((u p) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, users as u WHERE v.UserId = p.OwnerUserId AND p.OwnerUserId = u.Id AND v.BountyAmount>=0 AND p.Score<=16 AND u.Reputation<=1137 AND u.UpVotes>=0 AND u.UpVotes<=5 AND u.CreationDate<='2014-09-04 17:25:07'::timestamp;

/*+ HashJoin(c p pl)
 HashJoin(p pl)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 Leading((c (p pl))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE c.UserId = p.OwnerUserId AND p.Id = pl.PostId AND p.PostTypeId=1 AND p.Score>=0 AND p.Score<=19 AND p.ViewCount<=10802 AND pl.CreationDate>='2011-01-07 17:01:57'::timestamp AND pl.CreationDate<='2014-05-11 17:29:30'::timestamp;

/*+ HashJoin(ph u p)
 HashJoin(ph u)
 SeqScan(ph)
 SeqScan(u)
 SeqScan(p)
 Leading(((ph u) p)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.UserId = p.OwnerUserId AND ph.UserId = u.Id AND p.AnswerCount>=0 AND p.AnswerCount<=6 AND u.Reputation<=8635 AND u.DownVotes>=0 AND u.UpVotes>=0 AND u.UpVotes<=28;

/*+ HashJoin(u c p)
 HashJoin(c p)
 SeqScan(u)
 SeqScan(c)
 SeqScan(p)
 Leading((u (c p))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.PostId = p.Id AND c.UserId = u.Id AND c.Score=0 AND c.CreationDate<='2014-09-12 21:29:46'::timestamp AND p.FavoriteCount=0 AND u.Views<=74 AND u.UpVotes<=47 AND u.CreationDate<='2014-08-28 08:21:55'::timestamp;

/*+ HashJoin(b p)
 SeqScan(b)
 SeqScan(p)
 Leading((b p)) */
SELECT COUNT(*) FROM badges as b, posts as p WHERE b.UserId = p.OwnerUserId AND p.PostTypeId=1 AND p.Score>=-3 AND p.Score<=18 AND p.AnswerCount<=3 AND p.CreationDate>='2010-09-13 20:12:57'::timestamp AND p.CreationDate<='2014-08-29 13:44:21'::timestamp;

/*+ HashJoin(c p u)
 HashJoin(p u)
 SeqScan(c)
 SeqScan(p)
 SeqScan(u)
 Leading((c (p u))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.UserId = u.Id AND u.Id = p.OwnerUserId AND c.Score=1 AND c.CreationDate<='2014-09-10 18:16:29'::timestamp AND p.PostTypeId=1 AND p.CommentCount>=0 AND u.Views>=0 AND u.Views<=382;

/*+ HashJoin(c p u)
 HashJoin(p u)
 SeqScan(c)
 SeqScan(p)
 SeqScan(u)
 Leading((c (p u))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.UserId = u.Id AND u.Id = p.OwnerUserId AND c.CreationDate>='2010-07-27 12:57:59'::timestamp AND p.CreationDate>='2010-07-21 16:50:35'::timestamp AND p.CreationDate<='2014-09-12 14:27:05'::timestamp AND u.Views>=0 AND u.Views<=20 AND u.DownVotes>=0;

/*+ HashJoin(c u b)
 HashJoin(c u)
 SeqScan(c)
 SeqScan(u)
 SeqScan(b)
 Leading(((c u) b)) */
SELECT COUNT(*) FROM comments as c, badges as b, users as u WHERE u.Id = c.UserId AND c.UserId = b.UserId AND c.Score=0 AND c.CreationDate>='2010-08-19 12:44:34'::timestamp AND c.CreationDate<='2014-09-08 04:00:20'::timestamp AND b.Date<='2014-09-09 07:40:39'::timestamp AND u.Reputation>=1 AND u.Reputation<=131;

/*+ HashJoin(c u p)
 HashJoin(u p)
 SeqScan(c)
 SeqScan(u)
 SeqScan(p)
 Leading((c (u p))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.UserId = u.Id AND u.Id = p.OwnerUserId AND c.Score=0 AND p.ViewCount>=0 AND p.CommentCount=10 AND p.CreationDate<='2014-09-13 07:19:09'::timestamp AND u.UpVotes>=0 AND u.UpVotes<=229;

/*+ HashJoin(c p pl)
 HashJoin(p pl)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 Leading((c (p pl))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE c.UserId = p.OwnerUserId AND p.Id = pl.PostId AND c.Score=0 AND p.Score>=-3 AND p.CommentCount<=13 AND p.FavoriteCount<=9 AND p.CreationDate>='2010-09-23 10:59:13'::timestamp AND pl.LinkTypeId=1;

/*+ HashJoin(b u v)
 HashJoin(u v)
 SeqScan(b)
 IndexScan(u)
 SeqScan(v)
 Leading((b (u v))) */
SELECT COUNT(*) FROM votes as v, badges as b, users as u WHERE u.Id = v.UserId AND v.UserId = b.UserId AND v.BountyAmount>=0 AND v.BountyAmount<=50 AND u.Views>=0 AND u.DownVotes>=0 AND u.UpVotes<=17 AND u.CreationDate>='2011-01-02 10:44:09'::timestamp;

/*+ HashJoin(ph c u)
 HashJoin(c u)
 SeqScan(ph)
 SeqScan(c)
 IndexScan(u)
 Leading((ph (c u))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND c.Score=0 AND c.CreationDate<='2014-08-27 18:23:37'::timestamp AND ph.CreationDate>='2010-08-19 15:10:48'::timestamp AND ph.CreationDate<='2014-07-19 19:07:49'::timestamp AND u.UpVotes=1 AND u.CreationDate<='2014-08-22 09:26:42'::timestamp;

/*+ HashJoin(c u ph b)
 HashJoin(c u ph)
 HashJoin(u ph)
 SeqScan(c)
 SeqScan(u)
 SeqScan(ph)
 IndexScan(b)
 Leading(((c (u ph)) b)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = ph.UserId AND u.Id = b.UserId AND c.Score=0 AND ph.CreationDate<='2014-08-28 06:46:50'::timestamp AND b.Date<='2014-09-06 00:12:30'::timestamp AND u.Views>=0 AND u.UpVotes>=0 AND u.UpVotes<=86;

/*+ HashJoin(ph b t p u)
 HashJoin(b t p u)
 HashJoin(t p u)
 HashJoin(t p)
 SeqScan(ph)
 SeqScan(b)
 SeqScan(t)
 SeqScan(p)
 SeqScan(u)
 Leading((ph (b ((t p) u)))) */
SELECT COUNT(*) FROM tags as t, posts as p, users as u, postHistory as ph, badges as b WHERE p.Id = t.ExcerptPostId AND u.Id = ph.UserId AND u.Id = b.UserId AND u.Id = p.OwnerUserId AND t.Count>=1 AND p.CommentCount<=19 AND p.CreationDate<='2014-09-11 14:26:05'::timestamp AND u.Views>=0 AND ph.PostHistoryTypeId=3 AND ph.CreationDate<='2014-09-09 18:57:23'::timestamp;

/*+ HashJoin(p u)
 SeqScan(p)
 SeqScan(u)
 Leading((p u)) */
SELECT COUNT(*) FROM posts as p, users as u WHERE p.OwnerUserId= u.Id AND p.PostTypeId=1 AND p.Score>=0 AND p.Score<=28 AND p.CreationDate<='2014-08-21 15:35:06'::timestamp AND u.DownVotes>=0 AND u.UpVotes<=55;

/*+ MergeJoin(b u t p v)
 HashJoin(u t p v)
 HashJoin(u t p)
 MergeJoin(t p)
 IndexScan(b)
 SeqScan(u)
 SeqScan(t)
 IndexScan(p)
 SeqScan(v)
 Leading((b ((u (t p)) v))) */
SELECT COUNT(*) FROM tags as t, posts as p, users as u, votes as v, badges as b WHERE p.Id = t.ExcerptPostId AND u.Id = v.UserId AND u.Id = b.UserId AND u.Id = p.OwnerUserId AND t.Count>=3 AND p.FavoriteCount>=0 AND p.CreationDate>='2010-07-24 04:54:53'::timestamp AND p.CreationDate<='2014-08-28 17:48:09'::timestamp AND u.Views>=0 AND u.DownVotes=0;

/*+ HashJoin(ph c u)
 HashJoin(c u)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(u)
 Leading((ph (c u))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND c.Score=0 AND c.CreationDate<='2014-09-07 19:32:54'::timestamp AND ph.CreationDate>='2010-09-16 07:11:03'::timestamp AND ph.CreationDate<='2014-05-30 22:20:45'::timestamp AND u.UpVotes>=0 AND u.UpVotes<=31;

/*+ HashJoin(c u pl p)
 HashJoin(u pl p)
 HashJoin(pl p)
 SeqScan(c)
 SeqScan(u)
 SeqScan(pl)
 SeqScan(p)
 Leading((c (u (pl p)))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, users as u WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.OwnerUserId = u.Id AND c.CreationDate<='2014-09-02 19:59:00'::timestamp AND p.PostTypeId=1 AND p.ViewCount>=0 AND p.CreationDate>='2010-08-19 10:29:27'::timestamp AND p.CreationDate<='2014-09-08 12:37:18'::timestamp AND pl.LinkTypeId=1;

/*+ HashJoin(p u)
 SeqScan(p)
 IndexScan(u)
 Leading((p u)) */
SELECT COUNT(*) FROM posts as p, users as u WHERE p.OwnerUserId= u.Id AND p.CommentCount>=0 AND u.Reputation>=1 AND u.Reputation<=131 AND u.UpVotes>=0 AND u.UpVotes<=11 AND u.CreationDate>='2010-11-04 03:26:06'::timestamp;

/*+ HashJoin(b c u v)
 HashJoin(c u v)
 HashJoin(c u)
 SeqScan(b)
 SeqScan(c)
 IndexScan(u)
 SeqScan(v)
 Leading((b ((c u) v))) */
SELECT COUNT(*) FROM comments as c, votes as v, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND c.Score=4 AND b.Date>='2010-07-23 13:53:26'::timestamp AND b.Date<='2014-08-11 16:17:57'::timestamp AND u.Reputation<=423 AND u.CreationDate>='2010-07-19 19:14:51'::timestamp AND u.CreationDate<='2014-08-01 11:26:20'::timestamp;

/*+ HashJoin(c u ph)
 HashJoin(c u)
 SeqScan(c)
 IndexScan(u)
 SeqScan(ph)
 Leading(((c u) ph)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND c.Score=0 AND c.CreationDate>='2010-07-26 18:55:12'::timestamp AND ph.PostHistoryTypeId=1 AND u.DownVotes>=0 AND u.UpVotes>=0 AND u.UpVotes<=26;

/*+ HashJoin(c u v)
 HashJoin(c u)
 SeqScan(c)
 SeqScan(u)
 SeqScan(v)
 Leading(((c u) v)) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND c.PostId = v.PostId AND c.CreationDate>='2010-09-08 17:31:12'::timestamp AND v.VoteTypeId=2 AND u.Reputation>=1 AND u.Reputation<=670 AND u.DownVotes<=0 AND u.UpVotes<=11;

/*+ HashJoin(c u p)
 HashJoin(c u)
 SeqScan(c)
 SeqScan(u)
 SeqScan(p)
 Leading(((c u) p)) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.PostId = p.Id AND c.UserId = u.Id AND c.Score=0 AND p.CommentCount<=19 AND p.CreationDate<='2014-09-10 19:12:33'::timestamp AND u.Views<=27 AND u.UpVotes>=0 AND u.UpVotes<=18;

/*+ HashJoin(c u v b)
 HashJoin(c u v)
 HashJoin(c u)
 SeqScan(c)
 IndexScan(u)
 SeqScan(v)
 SeqScan(b)
 Leading((((c u) v) b)) */
SELECT COUNT(*) FROM comments as c, votes as v, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND c.CreationDate<='2014-09-11 02:42:11'::timestamp AND v.CreationDate<='2014-09-14 00:00:00'::timestamp AND u.DownVotes=0 AND u.UpVotes<=10 AND u.CreationDate>='2010-12-20 22:24:03'::timestamp AND u.CreationDate<='2014-09-10 18:15:53'::timestamp;

/*+ HashJoin(c u ph b)
 HashJoin(c u ph)
 HashJoin(u ph)
 SeqScan(c)
 SeqScan(u)
 SeqScan(ph)
 IndexScan(b)
 Leading(((c (u ph)) b)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = ph.UserId AND u.Id = b.UserId AND c.CreationDate>='2010-07-31 06:19:15'::timestamp AND u.Reputation>=1 AND u.Views>=0 AND u.Views<=150 AND u.CreationDate>='2011-04-19 15:59:49'::timestamp AND u.CreationDate<='2014-08-15 18:11:24'::timestamp;

/*+ HashJoin(c u ph)
 HashJoin(c u)
 SeqScan(c)
 SeqScan(u)
 SeqScan(ph)
 Leading(((c u) ph)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND ph.PostHistoryTypeId=6 AND ph.CreationDate>='2010-09-24 05:24:00'::timestamp AND ph.CreationDate<='2014-09-10 20:48:04'::timestamp AND u.Views>=0 AND u.Views<=113 AND u.DownVotes>=0;

/*+ HashJoin(p c)
 SeqScan(p)
 SeqScan(c)
 Leading((p c)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND c.Score=3 AND c.CreationDate<='2014-08-25 00:45:20'::timestamp AND p.Score<=17 AND p.ViewCount>=0 AND p.ViewCount<=4306 AND p.CommentCount>=0;

/*+ HashJoin(v u p pl)
 HashJoin(u p pl)
 HashJoin(p pl)
 SeqScan(v)
 SeqScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((v (u (p pl)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, votes as v, users as u WHERE p.Id = pl.RelatedPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND pl.CreationDate<='2014-08-13 18:23:05'::timestamp AND p.FavoriteCount>=0 AND u.UpVotes>=0 AND u.UpVotes<=613 AND u.CreationDate>='2010-09-02 21:55:24'::timestamp AND u.CreationDate<='2014-08-05 09:49:10'::timestamp;

/*+ HashJoin(c u ph b)
 HashJoin(c u ph)
 HashJoin(u ph)
 SeqScan(c)
 SeqScan(u)
 SeqScan(ph)
 IndexScan(b)
 Leading(((c (u ph)) b)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = ph.UserId AND u.Id = b.UserId AND ph.CreationDate<='2014-09-10 17:00:11'::timestamp AND b.Date>='2010-12-04 17:26:49'::timestamp AND u.Reputation<=219 AND u.Views<=2342 AND u.CreationDate>='2010-08-10 08:19:24'::timestamp AND u.CreationDate<='2014-09-10 19:39:25'::timestamp;

/*+ HashJoin(ph p pl)
 HashJoin(p pl)
 SeqScan(ph)
 SeqScan(p)
 SeqScan(pl)
 Leading((ph (p pl))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph WHERE p.Id = pl.PostId AND pl.PostId = ph.PostId AND p.AnswerCount>=0 AND p.FavoriteCount>=0 AND pl.CreationDate>='2011-02-13 19:30:44'::timestamp AND pl.CreationDate<='2014-09-06 15:24:08'::timestamp AND ph.PostHistoryTypeId=2 AND ph.CreationDate<='2014-09-08 13:02:29'::timestamp;

/*+ HashJoin(u ph p)
 HashJoin(ph p)
 SeqScan(u)
 SeqScan(ph)
 SeqScan(p)
 Leading((u (ph p))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.UserId = p.OwnerUserId AND ph.UserId = u.Id AND ph.CreationDate>='2010-07-27 15:08:11'::timestamp AND p.Score=4 AND p.FavoriteCount=0 AND u.Reputation<=1313 AND u.UpVotes<=298 AND u.CreationDate<='2014-09-08 14:26:02'::timestamp;

/*+ HashJoin(u c v)
 HashJoin(c v)
 SeqScan(u)
 SeqScan(c)
 SeqScan(v)
 Leading((u (c v))) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND c.PostId = v.PostId AND c.Score=1 AND v.BountyAmount>=0 AND u.Reputation>=1 AND u.Reputation<=2108 AND u.UpVotes<=25 AND u.CreationDate<='2014-09-02 15:24:43'::timestamp;

/*+ HashJoin(c u p v)
 HashJoin(c u p)
 MergeJoin(u p)
 SeqScan(c)
 IndexScan(u)
 SeqScan(p)
 SeqScan(v)
 Leading(((c (u p)) v)) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE p.Id = c.PostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND c.Score=1 AND p.ViewCount>=0 AND p.ViewCount<=4615 AND p.CommentCount>=0 AND v.CreationDate<='2014-09-13 00:00:00'::timestamp AND u.CreationDate>='2010-11-26 13:15:57'::timestamp;

/*+ HashJoin(ph b c u)
 HashJoin(b c u)
 HashJoin(c u)
 SeqScan(ph)
 SeqScan(b)
 SeqScan(c)
 IndexScan(u)
 Leading((ph (b (c u)))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = ph.UserId AND u.Id = b.UserId AND c.Score=0 AND ph.CreationDate>='2011-01-18 00:39:18'::timestamp AND ph.CreationDate<='2014-09-03 07:58:54'::timestamp AND u.UpVotes<=39 AND u.CreationDate>='2010-07-20 00:35:39'::timestamp AND u.CreationDate<='2014-08-30 11:24:01'::timestamp;

/*+ MergeJoin(v ph p u c)
 MergeJoin(p u c)
 MergeJoin(u c)
 MergeJoin(v ph)
 IndexScan(v)
 IndexScan(ph)
 SeqScan(p)
 IndexScan(u)
 SeqScan(c)
 Leading(((v ph) (p (u c)))) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph, votes as v, users as u WHERE u.Id = c.UserId AND c.UserId = p.OwnerUserId AND p.OwnerUserId = ph.UserId AND ph.UserId = v.UserId AND c.Score=0 AND c.CreationDate>='2010-07-21 05:09:44'::timestamp AND c.CreationDate<='2014-09-13 21:02:03'::timestamp AND p.PostTypeId=1 AND u.Reputation<=549 AND u.Views>=0;

/*+ HashJoin(v u p)
 HashJoin(u p)
 SeqScan(v)
 SeqScan(u)
 SeqScan(p)
 Leading((v (u p))) */
SELECT COUNT(*) FROM votes as v, posts as p, users as u WHERE v.UserId = p.OwnerUserId AND p.OwnerUserId = u.Id AND p.PostTypeId=1 AND p.Score>=-4 AND p.CommentCount>=0 AND u.Views<=61 AND u.UpVotes>=0 AND u.UpVotes<=22;

/*+ HashJoin(c u p v)
 HashJoin(u p v)
 HashJoin(p v)
 SeqScan(c)
 SeqScan(u)
 SeqScan(p)
 SeqScan(v)
 Leading((c (u (p v)))) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE p.Id = c.PostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND c.CreationDate<='2014-09-11 18:00:53'::timestamp AND p.ViewCount>=0 AND v.BountyAmount<=100 AND v.CreationDate<='2014-09-14 00:00:00'::timestamp AND u.Views>=0 AND u.CreationDate<='2014-09-01 19:14:11'::timestamp;

/*+ HashJoin(ph b v u p pl)
 HashJoin(b v u p pl)
 HashJoin(v u p pl)
 MergeJoin(u p pl)
 HashJoin(p pl)
 SeqScan(ph)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((ph (b (v (u (p pl)))))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph, votes as v, badges as b, users as u WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND u.Id = ph.UserId AND u.Id = v.UserId AND p.Score=1 AND p.FavoriteCount>=0 AND p.FavoriteCount<=4 AND pl.LinkTypeId=1 AND u.Reputation=11 AND u.DownVotes>=0;

/*+ HashJoin(ph u p)
 HashJoin(u p)
 SeqScan(ph)
 SeqScan(u)
 SeqScan(p)
 Leading((ph (u p))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.PostId = p.Id AND p.OwnerUserId = u.Id AND p.Score>=0 AND p.ViewCount<=3773 AND p.AnswerCount<=4 AND p.CommentCount>=0 AND p.CommentCount<=31 AND u.CreationDate<='2014-09-11 18:52:35'::timestamp;

/*+ HashJoin(ph c pl p u)
 HashJoin(c pl p u)
 HashJoin(c pl p)
 HashJoin(pl p)
 SeqScan(ph)
 SeqScan(c)
 IndexScan(pl)
 SeqScan(p)
 SeqScan(u)
 Leading((ph ((c (pl p)) u))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, users as u WHERE p.Id = pl.RelatedPostId AND pl.RelatedPostId = c.PostId AND pl.RelatedPostId = ph.PostId AND u.Id= c.UserId AND c.CreationDate>='2009-02-02 20:49:38'::timestamp AND c.CreationDate<='2014-09-04 05:14:38'::timestamp AND p.ViewCount<=10344 AND u.DownVotes>=0 AND u.DownVotes<=0 AND u.UpVotes>=0;

/*+ MergeJoin(v u ph c)
 HashJoin(v u ph)
 HashJoin(v u)
 SeqScan(v)
 SeqScan(u)
 SeqScan(ph)
 SeqScan(c)
 Leading((((v u) ph) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v, users as u WHERE u.Id = v.UserId AND v.UserId = ph.UserId AND ph.UserId =c.UserId AND ph.CreationDate>='2011-04-19 00:09:17'::timestamp AND ph.CreationDate<='2014-08-07 10:06:10'::timestamp AND v.CreationDate>='2010-07-24 00:00:00'::timestamp AND v.CreationDate<='2014-09-09 00:00:00'::timestamp AND u.Views<=103 AND u.CreationDate<='2014-08-07 04:33:01'::timestamp;

/*+ HashJoin(ph v p u)
 HashJoin(v p u)
 HashJoin(p u)
 SeqScan(ph)
 SeqScan(v)
 SeqScan(p)
 IndexScan(u)
 Leading((ph (v (p u)))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, votes as v, users as u WHERE p.Id = ph.PostId AND u.Id = p.OwnerUserId AND p.Id = v.PostId AND p.PostTypeId=1 AND p.Score>=-1 AND p.CreationDate<='2014-08-20 18:30:58'::timestamp AND v.CreationDate>='2010-07-20 00:00:00'::timestamp AND u.CreationDate>='2010-11-05 17:09:41'::timestamp AND u.CreationDate<='2014-09-10 08:38:19'::timestamp;

/*+ HashJoin(c u p)
 HashJoin(c u)
 SeqScan(c)
 SeqScan(u)
 SeqScan(p)
 Leading(((c u) p)) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.PostId = p.Id AND c.UserId = u.Id AND c.CreationDate<='2014-09-04 19:54:38'::timestamp AND p.CommentCount>=0 AND p.CommentCount<=19 AND u.Views>=0 AND u.Views<=264 AND u.CreationDate>='2010-10-15 10:42:20'::timestamp;

/*+ HashJoin(u p pl)
 HashJoin(p pl)
 SeqScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((u (p pl))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, users as u WHERE p.Id = pl.PostId AND p.OwnerUserId = u.Id AND p.Score>=0 AND p.CommentCount>=0 AND p.FavoriteCount<=8 AND p.CreationDate>='2010-07-25 15:32:59'::timestamp AND pl.CreationDate<='2014-09-01 16:31:49'::timestamp AND u.CreationDate<='2014-09-11 13:29:18'::timestamp;

/*+ HashJoin(c p pl)
 MergeJoin(p pl)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 Leading((c (p pl))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE p.Id = c.PostId AND p.Id = pl.PostId AND c.CreationDate<='2014-08-29 17:53:36'::timestamp AND p.Score=7 AND p.ViewCount>=0 AND p.ViewCount<=24952 AND p.CommentCount<=17 AND p.CreationDate<='2014-08-29 16:00:56'::timestamp;

/*+ HashJoin(ph b c u p)
 HashJoin(b c u p)
 HashJoin(c u p)
 HashJoin(c u)
 SeqScan(ph)
 SeqScan(b)
 SeqScan(c)
 IndexScan(u)
 IndexScan(p)
 Leading((ph (b ((c u) p)))) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = ph.UserId AND u.Id = b.UserId AND p.PostTypeId=2 AND b.Date>='2010-07-27 09:13:46'::timestamp AND b.Date<='2014-09-04 21:43:43'::timestamp AND u.Reputation=28 AND u.Views<=37 AND u.UpVotes<=4;

/*+ HashJoin(v ph c pl)
 HashJoin(ph c pl)
 HashJoin(c pl)
 SeqScan(v)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(pl)
 Leading((v (ph (c pl)))) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, postHistory as ph, votes as v WHERE pl.PostId = c.PostId AND c.PostId = ph.PostId AND ph.PostId = v.PostId AND c.CreationDate>='2010-09-20 18:40:07'::timestamp AND c.CreationDate<='2014-09-10 22:48:36'::timestamp AND pl.CreationDate<='2014-08-30 18:24:22'::timestamp AND v.BountyAmount<=50 AND v.CreationDate>='2010-07-27 00:00:00'::timestamp AND v.CreationDate<='2014-09-07 00:00:00'::timestamp;

/*+ HashJoin(u c v)
 HashJoin(c v)
 SeqScan(u)
 SeqScan(c)
 SeqScan(v)
 Leading((u (c v))) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND c.PostId = v.PostId AND c.Score=0 AND v.BountyAmount>=0 AND v.CreationDate>='2010-07-19 00:00:00'::timestamp AND u.Views>=0 AND u.CreationDate>='2010-07-19 19:45:41'::timestamp AND u.CreationDate<='2014-09-12 14:08:15'::timestamp;

/*+ HashJoin(b c u v)
 HashJoin(c u v)
 HashJoin(c u)
 SeqScan(b)
 SeqScan(c)
 IndexScan(u)
 SeqScan(v)
 Leading((b ((c u) v))) */
SELECT COUNT(*) FROM comments as c, votes as v, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND v.BountyAmount>=0 AND v.BountyAmount<=50 AND v.CreationDate>='2010-07-19 00:00:00'::timestamp AND b.Date>='2010-07-19 19:39:10'::timestamp AND u.Reputation<=136 AND u.Views=1;

/*+ HashJoin(c u pl p)
 HashJoin(u pl p)
 HashJoin(pl p)
 SeqScan(c)
 SeqScan(u)
 SeqScan(pl)
 SeqScan(p)
 Leading((c (u (pl p)))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, users as u WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.OwnerUserId = u.Id AND c.Score=0 AND pl.CreationDate>='2011-03-14 11:35:52'::timestamp AND pl.CreationDate<='2014-08-13 18:22:13'::timestamp AND u.Reputation<=549 AND u.Views<=24 AND u.CreationDate>='2010-08-31 11:22:52'::timestamp;

/*+ HashJoin(c p pl)
 HashJoin(p pl)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 Leading((c (p pl))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE p.Id = c.PostId AND p.Id = pl.PostId AND p.PostTypeId=1 AND p.Score>=-1 AND p.Score<=21 AND p.AnswerCount<=8 AND p.CreationDate>='2010-07-19 21:11:44'::timestamp AND p.CreationDate<='2014-09-08 14:22:10'::timestamp;

/*+ HashJoin(u p pl)
 HashJoin(p pl)
 SeqScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((u (p pl))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, users as u WHERE p.Id = pl.PostId AND p.OwnerUserId = u.Id AND p.AnswerCount>=0 AND p.AnswerCount<=3 AND p.CommentCount>=0 AND p.CommentCount<=9 AND pl.CreationDate='2013-03-11 16:07:24'::timestamp AND u.Views>=0;

/*+ HashJoin(u p pl)
 HashJoin(p pl)
 SeqScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((u (p pl))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, users as u WHERE p.Id = pl.PostId AND p.OwnerUserId = u.Id AND p.Score<=29 AND p.ViewCount>=0 AND p.ViewCount<=13453 AND pl.CreationDate>='2011-01-03 15:39:49'::timestamp AND pl.CreationDate<='2014-09-09 11:19:45'::timestamp AND u.CreationDate>='2010-09-03 08:36:45'::timestamp;

/*+ HashJoin(v u p)
 HashJoin(u p)
 SeqScan(v)
 SeqScan(u)
 SeqScan(p)
 Leading((v (u p))) */
SELECT COUNT(*) FROM votes as v, posts as p, users as u WHERE v.UserId = p.OwnerUserId AND p.OwnerUserId = u.Id AND p.Score>=-1 AND p.AnswerCount>=0 AND p.AnswerCount<=5 AND u.Reputation>=1 AND u.Reputation<=352 AND u.UpVotes>=0;

/*+ HashJoin(c u p pl)
 HashJoin(u p pl)
 HashJoin(p pl)
 SeqScan(c)
 SeqScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((c (u (p pl)))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, users as u WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.OwnerUserId = u.Id AND p.FavoriteCount=0 AND pl.CreationDate<='2014-06-09 23:20:11'::timestamp AND u.Reputation>=1 AND u.UpVotes=0 AND u.CreationDate>='2010-07-21 20:21:20'::timestamp AND u.CreationDate<='2014-08-15 18:11:24'::timestamp;

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
SELECT COUNT(*) FROM comments as c, postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND p.Id = c.PostId AND u.Id = b.UserId AND u.Id = p.OwnerUserId AND c.Score=0 AND p.ViewCount>=0 AND p.FavoriteCount=0 AND u.Views>=0 AND u.Views<=12 AND u.UpVotes<=67;

/*+ HashJoin(c u p v)
 HashJoin(c u p)
 HashJoin(c u)
 SeqScan(c)
 SeqScan(u)
 SeqScan(p)
 SeqScan(v)
 Leading((((c u) p) v)) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = v.UserId AND c.Score=0 AND p.FavoriteCount>=0 AND v.CreationDate<='2014-09-11 00:00:00'::timestamp AND u.Views<=363 AND u.DownVotes<=0 AND u.CreationDate>='2010-07-27 21:09:02'::timestamp;

/*+ HashJoin(b u p pl)
 HashJoin(u p pl)
 HashJoin(p pl)
 SeqScan(b)
 SeqScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((b (u (p pl)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.AnswerCount>=0 AND p.CommentCount>=0 AND p.CommentCount<=13 AND u.Reputation>=1 AND u.CreationDate>='2010-10-18 00:46:59'::timestamp AND b.Date>='2010-09-17 16:14:06'::timestamp;

/*+ HashJoin(v p pl ph c b)
 MergeJoin(v p pl ph c)
 NestLoop(v p pl ph)
 MergeJoin(v p pl)
 MergeJoin(v p)
 IndexScan(v)
 IndexScan(p)
 SeqScan(pl)
 IndexScan(ph)
 SeqScan(c)
 SeqScan(b)
 Leading((((((v p) pl) ph) c) b)) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, votes as v, badges as b WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.Id = ph.PostId AND p.Id = v.PostId AND b.UserId = c.UserId AND p.CreationDate>='2010-07-27 16:26:53'::timestamp AND p.CreationDate<='2014-08-28 20:59:54'::timestamp AND ph.CreationDate>='2011-04-06 17:35:50'::timestamp AND v.CreationDate>='2010-07-19 00:00:00'::timestamp AND b.Date>='2010-07-21 06:03:13'::timestamp AND b.Date<='2014-08-14 16:05:14'::timestamp;

/*+ HashJoin(u p)
 SeqScan(u)
 SeqScan(p)
 Leading((u p)) */
SELECT COUNT(*) FROM posts as p, users as u WHERE p.OwnerUserId= u.Id AND p.Score<=47 AND p.ViewCount>=0 AND p.CommentCount<=17 AND p.FavoriteCount>=0 AND p.FavoriteCount<=24 AND u.CreationDate<='2014-09-03 13:37:38'::timestamp;

/*+ HashJoin(ph p pl)
 HashJoin(p pl)
 SeqScan(ph)
 SeqScan(p)
 SeqScan(pl)
 Leading((ph (p pl))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph WHERE p.Id = pl.PostId AND pl.PostId = ph.PostId AND p.AnswerCount<=4 AND p.FavoriteCount>=0 AND p.CreationDate>='2010-08-19 06:28:05'::timestamp AND p.CreationDate<='2014-09-10 22:11:03'::timestamp AND pl.CreationDate>='2010-11-20 07:22:34'::timestamp AND ph.PostHistoryTypeId=1;

/*+ HashJoin(c u v)
 HashJoin(c u)
 SeqScan(c)
 IndexScan(u)
 SeqScan(v)
 Leading(((c u) v)) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND c.PostId = v.PostId AND c.Score=0 AND c.CreationDate>='2010-07-23 15:29:16'::timestamp AND v.VoteTypeId=2 AND u.UpVotes>=0 AND u.CreationDate>='2010-07-19 19:16:54'::timestamp AND u.CreationDate<='2014-09-12 00:16:30'::timestamp;

/*+ HashJoin(c p pl)
 HashJoin(p pl)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 Leading((c (p pl))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE c.UserId = p.OwnerUserId AND p.Id = pl.PostId AND p.Score>=-1 AND p.Score<=42 AND p.AnswerCount<=3 AND p.FavoriteCount>=0 AND p.FavoriteCount<=24 AND pl.LinkTypeId=1;

/*+ HashJoin(ph b u v)
 HashJoin(b u v)
 HashJoin(u v)
 SeqScan(ph)
 SeqScan(b)
 SeqScan(u)
 SeqScan(v)
 Leading((ph (b (u v)))) */
SELECT COUNT(*) FROM postHistory as ph, votes as v, users as u, badges as b WHERE u.Id = ph.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND v.BountyAmount<=100 AND u.Reputation>=1 AND u.UpVotes>=0 AND u.UpVotes<=103 AND b.Date>='2010-10-27 13:23:23'::timestamp AND b.Date<='2014-09-04 16:46:09'::timestamp;

/*+ HashJoin(b ph u v)
 HashJoin(ph u v)
 HashJoin(u v)
 SeqScan(b)
 SeqScan(ph)
 IndexScan(u)
 SeqScan(v)
 Leading((b (ph (u v)))) */
SELECT COUNT(*) FROM postHistory as ph, votes as v, users as u, badges as b WHERE u.Id = ph.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND ph.PostHistoryTypeId=5 AND v.BountyAmount<=50 AND u.Views=1 AND u.DownVotes<=0 AND u.UpVotes>=0 AND b.Date<='2014-09-09 12:54:11'::timestamp;

/*+ HashJoin(c u ph)
 HashJoin(c u)
 SeqScan(c)
 IndexScan(u)
 SeqScan(ph)
 Leading(((c u) ph)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND c.CreationDate>='2010-08-03 15:59:18'::timestamp AND ph.PostHistoryTypeId=5 AND u.Reputation>=1 AND u.Reputation<=108 AND u.DownVotes>=0 AND u.CreationDate>='2010-08-19 21:20:00'::timestamp;

/*+ HashJoin(v u ph c)
 HashJoin(v u ph)
 HashJoin(v u)
 SeqScan(v)
 SeqScan(u)
 SeqScan(ph)
 SeqScan(c)
 Leading((((v u) ph) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v, users as u WHERE u.Id = v.UserId AND v.UserId = ph.UserId AND ph.UserId =c.UserId AND c.Score=0 AND c.CreationDate>='2010-08-04 16:10:44'::timestamp AND c.CreationDate<='2014-09-13 10:58:30'::timestamp AND ph.PostHistoryTypeId=4 AND ph.CreationDate>='2010-10-06 14:23:03'::timestamp AND u.Reputation>=1;

/*+ HashJoin(c p u ph b)
 HashJoin(c p u ph)
 HashJoin(c p u)
 HashJoin(p u)
 SeqScan(c)
 IndexScan(p)
 IndexScan(u)
 IndexScan(ph)
 SeqScan(b)
 Leading((((c (p u)) ph) b)) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = ph.UserId AND u.Id = b.UserId AND p.CreationDate<='2014-09-09 05:30:22'::timestamp AND ph.PostHistoryTypeId=6 AND ph.CreationDate<='2014-08-18 08:45:08'::timestamp AND b.Date>='2010-07-27 09:13:44'::timestamp AND u.Views<=39 AND u.CreationDate<='2014-09-11 19:52:54'::timestamp;

/*+ HashJoin(ph c pl p v)
 HashJoin(c pl p v)
 HashJoin(c pl p)
 HashJoin(pl p)
 SeqScan(ph)
 SeqScan(c)
 IndexScan(pl)
 SeqScan(p)
 SeqScan(v)
 Leading((ph ((c (pl p)) v))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, votes as v WHERE p.Id = c.PostId AND p.Id = pl.PostId AND p.Id = ph.PostId AND p.Id = v.PostId AND c.Score=0 AND p.Score=3 AND p.CreationDate>='2010-07-28 04:21:06'::timestamp AND p.CreationDate<='2014-09-08 15:52:06'::timestamp AND pl.LinkTypeId=1 AND v.BountyAmount>=0;

/*+ HashJoin(v ph c pl)
 HashJoin(ph c pl)
 HashJoin(c pl)
 SeqScan(v)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(pl)
 Leading((v (ph (c pl)))) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, postHistory as ph, votes as v WHERE pl.PostId = c.PostId AND c.PostId = ph.PostId AND ph.PostId = v.PostId AND c.Score=0 AND pl.CreationDate>='2011-09-21 00:12:53'::timestamp AND pl.CreationDate<='2014-08-30 08:21:42'::timestamp AND ph.CreationDate>='2010-11-03 19:22:08'::timestamp AND v.CreationDate>='2010-07-19 00:00:00'::timestamp AND v.CreationDate<='2014-09-11 00:00:00'::timestamp;

/*+ MergeJoin(c p u)
 HashJoin(c p)
 SeqScan(c)
 SeqScan(p)
 SeqScan(u)
 Leading(((c p) u)) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.PostId = p.Id AND c.UserId = u.Id AND c.Score=0 AND p.AnswerCount<=5 AND p.FavoriteCount>=0 AND u.DownVotes=0 AND u.UpVotes>=0 AND u.CreationDate<='2014-09-03 18:12:55'::timestamp;

/*+ HashJoin(b c u v)
 HashJoin(c u v)
 HashJoin(c u)
 SeqScan(b)
 SeqScan(c)
 IndexScan(u)
 SeqScan(v)
 Leading((b ((c u) v))) */
SELECT COUNT(*) FROM comments as c, votes as v, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND v.BountyAmount<=50 AND v.CreationDate<='2014-09-09 00:00:00'::timestamp AND b.Date>='2010-07-31 17:54:43'::timestamp AND u.Reputation>=1 AND u.Reputation<=133 AND u.DownVotes<=1;

/*+ HashJoin(c p)
 SeqScan(c)
 IndexScan(p)
 Leading((c p)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND c.CreationDate<='2014-09-08 23:08:03'::timestamp AND p.PostTypeId=1 AND p.ViewCount>=0 AND p.ViewCount<=2718 AND p.CommentCount<=10 AND p.CreationDate<='2014-08-28 15:26:45'::timestamp;

/*+ HashJoin(ph c p)
 HashJoin(c p)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(p)
 Leading((ph (c p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph WHERE p.Id = c.PostId AND p.Id = ph.PostId AND c.CreationDate>='2010-08-05 01:33:43'::timestamp AND c.CreationDate<='2014-09-13 09:51:24'::timestamp AND p.CommentCount>=0 AND p.CommentCount<=13 AND p.FavoriteCount>=0 AND p.FavoriteCount<=2;

/*+ HashJoin(v u p pl)
 HashJoin(u p pl)
 MergeJoin(p pl)
 SeqScan(v)
 SeqScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((v (u (p pl)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, votes as v, users as u WHERE p.Id = pl.RelatedPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND pl.CreationDate>='2011-10-04 18:27:06'::timestamp AND p.ViewCount>=0 AND p.CommentCount<=16 AND p.FavoriteCount>=0 AND v.VoteTypeId=2 AND v.CreationDate<='2014-09-07 00:00:00'::timestamp;

/*+ HashJoin(b u p pl)
 HashJoin(u p pl)
 HashJoin(p pl)
 SeqScan(b)
 SeqScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((b (u (p pl)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.CommentCount>=0 AND p.CommentCount<=9 AND u.Views<=46 AND u.CreationDate>='2010-12-06 00:16:49'::timestamp AND u.CreationDate<='2014-08-30 23:35:22'::timestamp AND b.Date>='2011-02-13 12:57:22'::timestamp;

/*+ HashJoin(c u p v)
 HashJoin(c u p)
 HashJoin(u p)
 SeqScan(c)
 IndexScan(u)
 SeqScan(p)
 SeqScan(v)
 Leading(((c (u p)) v)) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE p.Id = c.PostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND c.CreationDate>='2010-07-24 00:40:50'::timestamp AND c.CreationDate<='2014-09-08 05:54:00'::timestamp AND p.ViewCount>=0 AND p.AnswerCount>=0 AND v.CreationDate>='2010-07-19 00:00:00'::timestamp AND u.DownVotes<=0;

/*+ HashJoin(c p)
 SeqScan(c)
 IndexScan(p)
 Leading((c p)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND p.Score=10 AND p.ViewCount>=0 AND p.ViewCount<=3511 AND p.CommentCount>=0 AND p.CommentCount<=17 AND p.CreationDate<='2014-08-11 09:08:48'::timestamp;

/*+ HashJoin(b p)
 SeqScan(b)
 SeqScan(p)
 Leading((b p)) */
SELECT COUNT(*) FROM badges as b, posts as p WHERE b.UserId = p.OwnerUserId AND b.Date>='2010-08-17 06:13:45'::timestamp AND b.Date<='2014-09-04 03:49:18'::timestamp AND p.ViewCount>=0 AND p.AnswerCount>=0 AND p.AnswerCount<=6 AND p.FavoriteCount<=3;

/*+ HashJoin(c ph b p u)
 HashJoin(ph b p u)
 HashJoin(b p u)
 NestLoop(p u)
 SeqScan(c)
 SeqScan(ph)
 SeqScan(b)
 IndexScan(p)
 IndexScan(u)
 Leading((c (ph (b (p u))))) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = ph.UserId AND u.Id = b.UserId AND p.FavoriteCount>=0 AND ph.PostHistoryTypeId=1 AND ph.CreationDate>='2010-10-29 08:56:14'::timestamp AND ph.CreationDate<='2014-08-23 18:16:01'::timestamp AND u.Reputation>=1 AND u.DownVotes>=0;

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
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, votes as v WHERE p.Id = c.PostId AND p.Id = pl.PostId AND p.Id = ph.PostId AND p.Id = v.PostId AND c.CreationDate<='2014-09-02 16:53:27'::timestamp AND p.ViewCount<=3565 AND p.CommentCount>=0 AND p.FavoriteCount>=0 AND p.FavoriteCount<=8 AND p.CreationDate>='2010-09-08 05:41:48'::timestamp;

/*+ HashJoin(v p u)
 HashJoin(p u)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 Leading((v (p u))) */
SELECT COUNT(*) FROM votes as v, posts as p, users as u WHERE v.UserId = p.OwnerUserId AND p.OwnerUserId = u.Id AND v.BountyAmount>=0 AND v.BountyAmount<=50 AND p.Score>=0 AND p.Score<=15 AND p.CreationDate>='2010-08-09 15:44:50'::timestamp AND p.CreationDate<='2014-09-11 22:27:55'::timestamp;

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
SELECT COUNT(*) FROM comments as c, postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND p.Id = c.PostId AND u.Id = b.UserId AND u.Id = p.OwnerUserId AND c.Score=0 AND c.CreationDate>='2010-08-25 21:25:22'::timestamp AND c.CreationDate<='2014-09-10 21:20:22'::timestamp AND p.PostTypeId=2 AND p.ViewCount<=3162 AND p.CommentCount<=16;

/*+ HashJoin(c p pl)
 HashJoin(p pl)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 Leading((c (p pl))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE p.Id = c.PostId AND p.Id = pl.PostId AND p.AnswerCount>=0 AND p.AnswerCount<=3 AND p.CreationDate>='2010-07-29 12:44:50'::timestamp AND p.CreationDate<='2014-08-15 22:00:20'::timestamp AND pl.LinkTypeId=1 AND pl.CreationDate='2014-06-26 17:16:41'::timestamp;

/*+ HashJoin(c u ph)
 HashJoin(c u)
 SeqScan(c)
 IndexScan(u)
 SeqScan(ph)
 Leading(((c u) ph)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND ph.PostHistoryTypeId=33 AND ph.CreationDate>='2010-11-05 13:34:50'::timestamp AND ph.CreationDate<='2014-09-03 14:19:30'::timestamp AND u.UpVotes>=0 AND u.CreationDate>='2010-07-26 19:17:42'::timestamp AND u.CreationDate<='2014-09-13 20:36:55'::timestamp;

/*+ HashJoin(b u v)
 HashJoin(u v)
 SeqScan(b)
 IndexScan(u)
 SeqScan(v)
 Leading((b (u v))) */
SELECT COUNT(*) FROM votes as v, badges as b, users as u WHERE u.Id = v.UserId AND v.UserId = b.UserId AND v.CreationDate<='2014-09-09 00:00:00'::timestamp AND u.Reputation<=414 AND u.DownVotes>=0 AND u.DownVotes<=0 AND u.UpVotes>=0 AND u.CreationDate>='2010-07-19 19:11:38'::timestamp;

/*+ HashJoin(u p)
 SeqScan(u)
 SeqScan(p)
 Leading((u p)) */
SELECT COUNT(*) FROM posts as p, users as u WHERE p.OwnerUserId= u.Id AND p.PostTypeId=2 AND p.Score>=-1 AND u.UpVotes>=0 AND u.UpVotes<=61 AND u.CreationDate>='2010-07-22 05:56:36'::timestamp AND u.CreationDate<='2014-09-13 05:04:12'::timestamp;

/*+ MergeJoin(ph p pl)
 HashJoin(p pl)
 SeqScan(ph)
 SeqScan(p)
 SeqScan(pl)
 Leading((ph (p pl))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph WHERE p.Id = pl.PostId AND pl.PostId = ph.PostId AND p.PostTypeId=1 AND p.Score<=15 AND p.AnswerCount>=0 AND p.CreationDate>='2010-07-27 15:35:14'::timestamp AND pl.LinkTypeId=1 AND ph.PostHistoryTypeId=3;

/*+ HashJoin(c p)
 SeqScan(c)
 SeqScan(p)
 Leading((c p)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND c.Score=0 AND p.ViewCount>=0 AND p.ViewCount<=2923 AND p.CommentCount>=0 AND p.CommentCount<=11 AND p.FavoriteCount>=0;

/*+ HashJoin(ph u p)
 HashJoin(ph u)
 SeqScan(ph)
 SeqScan(u)
 SeqScan(p)
 Leading(((ph u) p)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.UserId = p.OwnerUserId AND ph.UserId = u.Id AND p.Score>=0 AND p.FavoriteCount<=4 AND p.CreationDate<='2014-08-14 19:48:38'::timestamp AND u.DownVotes>=0 AND u.DownVotes<=0 AND u.CreationDate>='2010-11-06 00:33:36'::timestamp;

/*+ HashJoin(p u)
 SeqScan(p)
 SeqScan(u)
 Leading((p u)) */
SELECT COUNT(*) FROM posts as p, users as u WHERE p.OwnerUserId= u.Id AND p.Score<=47 AND p.AnswerCount>=0 AND p.AnswerCount<=4 AND u.Reputation>=1 AND u.DownVotes>=0 AND u.DownVotes<=16;

/*+ HashJoin(b u v)
 HashJoin(u v)
 SeqScan(b)
 IndexScan(u)
 SeqScan(v)
 Leading((b (u v))) */
SELECT COUNT(*) FROM votes as v, badges as b, users as u WHERE u.Id = v.UserId AND v.UserId = b.UserId AND v.BountyAmount>=0 AND v.BountyAmount<=50 AND b.Date>='2010-07-20 20:47:27'::timestamp AND b.Date<='2014-09-08 01:14:00'::timestamp AND u.Reputation>=1 AND u.Views<=79;

/*+ HashJoin(c u b)
 HashJoin(c u)
 SeqScan(c)
 SeqScan(u)
 SeqScan(b)
 Leading(((c u) b)) */
SELECT COUNT(*) FROM comments as c, badges as b, users as u WHERE u.Id = c.UserId AND c.UserId = b.UserId AND c.CreationDate>='2010-09-02 22:55:42'::timestamp AND u.DownVotes>=0 AND u.DownVotes<=163 AND u.UpVotes>=0 AND u.UpVotes<=8 AND u.CreationDate>='2010-08-25 22:34:45'::timestamp;

/*+ HashJoin(c u p v)
 HashJoin(c u p)
 HashJoin(u p)
 SeqScan(c)
 SeqScan(u)
 SeqScan(p)
 SeqScan(v)
 Leading(((c (u p)) v)) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE p.Id = c.PostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND c.Score=1 AND v.VoteTypeId=5 AND u.Reputation<=365 AND u.DownVotes>=0 AND u.CreationDate>='2010-12-05 01:42:53'::timestamp AND u.CreationDate<='2014-08-12 09:23:11'::timestamp;

/*+ MergeJoin(v u p pl)
 HashJoin(u p pl)
 HashJoin(p pl)
 SeqScan(v)
 SeqScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((v (u (p pl)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, votes as v, users as u WHERE p.Id = pl.RelatedPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND pl.LinkTypeId=1 AND p.Score<=27 AND p.FavoriteCount<=9 AND v.BountyAmount>=0 AND v.BountyAmount<=100 AND u.UpVotes<=10;

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
SELECT COUNT(*) FROM comments as c, postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND p.Id = c.PostId AND u.Id = b.UserId AND u.Id = p.OwnerUserId AND pl.CreationDate<='2014-08-12 23:19:12'::timestamp AND p.Score>=-1 AND p.Score<=24 AND p.AnswerCount<=5 AND p.FavoriteCount<=6 AND u.Views<=16;

/*+ HashJoin(u p pl)
 HashJoin(p pl)
 SeqScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((u (p pl))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, users as u WHERE p.Id = pl.PostId AND p.OwnerUserId = u.Id AND p.Score>=-1 AND p.Score<=29 AND p.CommentCount>=0 AND p.CommentCount<=10 AND pl.LinkTypeId=1 AND u.Reputation=6;

/*+ HashJoin(v c pl p)
 HashJoin(c pl p)
 HashJoin(c pl)
 SeqScan(v)
 SeqScan(c)
 SeqScan(pl)
 SeqScan(p)
 Leading((v ((c pl) p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, votes as v WHERE p.Id = c.PostId AND c.PostId = pl.PostId AND pl.PostId = v.PostId AND c.CreationDate>='2010-07-20 15:01:21'::timestamp AND p.AnswerCount<=3 AND pl.LinkTypeId=1 AND pl.CreationDate>='2010-10-19 15:02:42'::timestamp AND pl.CreationDate<='2014-08-04 09:02:01'::timestamp AND v.BountyAmount<=50;

/*+ HashJoin(c u b)
 HashJoin(c u)
 SeqScan(c)
 SeqScan(u)
 SeqScan(b)
 Leading(((c u) b)) */
SELECT COUNT(*) FROM comments as c, badges as b, users as u WHERE u.Id = c.UserId AND c.UserId = b.UserId AND b.Date>='2010-07-19 19:39:08'::timestamp AND u.Reputation>=1 AND u.Reputation<=10647 AND u.UpVotes<=128 AND u.CreationDate>='2010-07-26 21:47:37'::timestamp AND u.CreationDate<='2014-09-11 12:06:49'::timestamp;

/*+ HashJoin(ph p pl)
 MergeJoin(p pl)
 SeqScan(ph)
 SeqScan(p)
 SeqScan(pl)
 Leading((ph (p pl))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph WHERE p.Id = pl.PostId AND pl.PostId = ph.PostId AND p.AnswerCount>=0 AND p.AnswerCount<=3 AND p.CommentCount<=12 AND p.FavoriteCount=0 AND pl.CreationDate>='2011-01-09 00:52:24'::timestamp AND pl.CreationDate<='2014-07-23 18:52:24'::timestamp;

/*+ HashJoin(v u p)
 HashJoin(u p)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((v (u p))) */
SELECT COUNT(*) FROM votes as v, posts as p, users as u WHERE v.UserId = p.OwnerUserId AND p.OwnerUserId = u.Id AND p.Score>=0 AND p.CommentCount<=12 AND p.FavoriteCount<=15 AND u.Views<=203 AND u.DownVotes>=0 AND u.UpVotes<=36;

/*+ HashJoin(v ph c pl)
 HashJoin(ph c pl)
 HashJoin(c pl)
 SeqScan(v)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(pl)
 Leading((v (ph (c pl)))) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, postHistory as ph, votes as v WHERE pl.PostId = c.PostId AND c.PostId = ph.PostId AND ph.PostId = v.PostId AND c.Score=0 AND pl.LinkTypeId=1 AND pl.CreationDate>='2011-06-16 21:59:53'::timestamp AND pl.CreationDate<='2014-08-08 04:46:39'::timestamp AND v.VoteTypeId=5 AND v.CreationDate<='2014-09-10 00:00:00'::timestamp;

/*+ HashJoin(v c pl p)
 HashJoin(c pl p)
 HashJoin(c pl)
 SeqScan(v)
 SeqScan(c)
 SeqScan(pl)
 SeqScan(p)
 Leading((v ((c pl) p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, votes as v WHERE p.Id = c.PostId AND c.PostId = pl.PostId AND pl.PostId = v.PostId AND p.Score>=0 AND p.ViewCount>=0 AND p.CommentCount=3 AND p.FavoriteCount<=9 AND v.CreationDate>='2010-07-19 00:00:00'::timestamp AND v.CreationDate<='2014-09-10 00:00:00'::timestamp;

/*+ HashJoin(ph c pl p u)
 HashJoin(c pl p u)
 HashJoin(c pl p)
 HashJoin(pl p)
 SeqScan(ph)
 SeqScan(c)
 IndexScan(pl)
 SeqScan(p)
 SeqScan(u)
 Leading((ph ((c (pl p)) u))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, users as u WHERE p.Id = pl.RelatedPostId AND pl.RelatedPostId = c.PostId AND pl.RelatedPostId = ph.PostId AND u.Id= c.UserId AND c.CreationDate>='2010-08-03 21:46:16'::timestamp AND p.CommentCount>=0 AND pl.LinkTypeId=1 AND u.Reputation>=1 AND u.Views<=20 AND u.CreationDate<='2014-08-25 23:45:31'::timestamp;

/*+ HashJoin(c u ph b)
 HashJoin(c u ph)
 HashJoin(u ph)
 SeqScan(c)
 SeqScan(u)
 SeqScan(ph)
 IndexScan(b)
 Leading(((c (u ph)) b)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = ph.UserId AND u.Id = b.UserId AND ph.CreationDate>='2010-11-24 15:01:27'::timestamp AND b.Date>='2010-07-20 05:19:09'::timestamp AND b.Date<='2014-09-13 08:20:50'::timestamp AND u.Views>=0 AND u.DownVotes>=0 AND u.DownVotes<=0;

/*+ HashJoin(c p pl)
 HashJoin(p pl)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 Leading((c (p pl))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE p.Id = c.PostId AND p.Id = pl.PostId AND p.PostTypeId=1 AND p.CommentCount=2 AND p.FavoriteCount>=0 AND p.FavoriteCount<=10 AND pl.LinkTypeId=1 AND pl.CreationDate>='2010-09-19 09:28:15'::timestamp;

/*+ HashJoin(c u p)
 MergeJoin(u p)
 SeqScan(c)
 SeqScan(u)
 SeqScan(p)
 Leading((c (u p))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.UserId = u.Id AND u.Id = p.OwnerUserId AND c.Score=0 AND p.Score<=14 AND p.CreationDate='2011-05-11 10:03:37'::timestamp AND u.Views<=55 AND u.UpVotes<=83 AND u.CreationDate<='2014-09-12 07:04:11'::timestamp;

/*+ HashJoin(u p pl)
 HashJoin(p pl)
 SeqScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((u (p pl))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, users as u WHERE p.Id = pl.PostId AND p.OwnerUserId = u.Id AND p.ViewCount>=0 AND p.AnswerCount>=0 AND p.AnswerCount<=3 AND p.CreationDate>='2010-08-01 06:53:28'::timestamp AND p.CreationDate<='2014-08-09 12:46:12'::timestamp AND u.DownVotes>=0;

/*+ HashJoin(u v p pl)
 HashJoin(v p pl)
 HashJoin(p pl)
 SeqScan(u)
 SeqScan(v)
 SeqScan(p)
 SeqScan(pl)
 Leading((u (v (p pl)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, votes as v, users as u WHERE p.Id = pl.RelatedPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND pl.LinkTypeId=1 AND pl.CreationDate>='2010-09-16 12:31:55'::timestamp AND p.PostTypeId=1 AND v.BountyAmount>=0 AND v.BountyAmount<=50 AND v.CreationDate>='2010-07-21 00:00:00'::timestamp;

/*+ HashJoin(c u b)
 HashJoin(c u)
 SeqScan(c)
 IndexScan(u)
 SeqScan(b)
 Leading(((c u) b)) */
SELECT COUNT(*) FROM comments as c, badges as b, users as u WHERE u.Id = c.UserId AND c.UserId = b.UserId AND c.Score=0 AND u.Reputation=1 AND u.DownVotes=0 AND u.UpVotes>=0 AND u.UpVotes<=49 AND u.CreationDate<='2014-08-27 09:50:08'::timestamp;

/*+ HashJoin(u p v)
 HashJoin(p v)
 SeqScan(u)
 SeqScan(p)
 SeqScan(v)
 Leading((u (p v))) */
SELECT COUNT(*) FROM votes as v, posts as p, users as u WHERE v.PostId = p.Id AND v.UserId = u.Id AND v.BountyAmount>=0 AND v.BountyAmount<=150 AND v.CreationDate<='2014-09-12 00:00:00'::timestamp AND p.AnswerCount>=0 AND u.DownVotes>=0 AND u.DownVotes<=2;

/*+ HashJoin(ph p u b)
 MergeJoin(ph p u)
 MergeJoin(p u)
 SeqScan(ph)
 IndexScan(p)
 IndexScan(u)
 SeqScan(b)
 Leading(((ph (p u)) b)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u, badges as b WHERE u.Id = p.OwnerUserId AND p.OwnerUserId = ph.UserId AND ph.UserId = b.UserId AND ph.PostHistoryTypeId=2 AND ph.CreationDate<='2014-09-09 18:00:05'::timestamp AND p.AnswerCount<=6 AND p.CreationDate>='2010-07-27 19:28:38'::timestamp AND p.CreationDate<='2014-09-12 13:52:50'::timestamp AND u.UpVotes>=0;

/*+ HashJoin(c pl p v ph b)
 HashJoin(c pl p v ph)
 HashJoin(c pl p v)
 MergeJoin(pl p v)
 MergeJoin(pl p)
 SeqScan(c)
 IndexScan(pl)
 SeqScan(p)
 SeqScan(v)
 IndexScan(ph)
 SeqScan(b)
 Leading((((c ((pl p) v)) ph) b)) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, votes as v, badges as b WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.Id = ph.PostId AND p.Id = v.PostId AND b.UserId = c.UserId AND c.CreationDate>='2010-07-20 15:30:58'::timestamp AND p.PostTypeId=1 AND p.CommentCount>=0 AND p.CommentCount<=15 AND v.VoteTypeId=2 AND b.Date>='2010-07-26 20:08:42'::timestamp;

/*+ HashJoin(c u v ph)
 MergeJoin(u v ph)
 HashJoin(u v)
 SeqScan(c)
 SeqScan(u)
 SeqScan(v)
 SeqScan(ph)
 Leading((c ((u v) ph))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v, users as u WHERE u.Id = v.UserId AND v.UserId = ph.UserId AND ph.UserId =c.UserId AND c.Score=0 AND ph.PostHistoryTypeId=16 AND ph.CreationDate<='2014-08-19 22:04:19'::timestamp AND u.Views>=0 AND u.Views<=217 AND u.UpVotes>=0;

/*+ MergeJoin(v b u ph)
 HashJoin(v b u)
 MergeJoin(b u)
 SeqScan(v)
 IndexScan(b)
 IndexScan(u)
 IndexScan(ph)
 Leading(((v (b u)) ph)) */
SELECT COUNT(*) FROM postHistory as ph, votes as v, users as u, badges as b WHERE u.Id = ph.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND ph.CreationDate>='2010-08-03 20:23:34'::timestamp AND ph.CreationDate<='2014-07-02 15:43:19'::timestamp AND u.UpVotes<=283 AND u.CreationDate>='2010-07-19 23:45:56'::timestamp AND u.CreationDate<='2014-08-22 08:31:10'::timestamp AND b.Date='2013-09-02 01:50:57'::timestamp;

/*+ HashJoin(p u)
 SeqScan(p)
 SeqScan(u)
 Leading((p u)) */
SELECT COUNT(*) FROM posts as p, users as u WHERE p.OwnerUserId= u.Id AND p.Score<=21 AND p.ViewCount>=0 AND p.CommentCount>=0 AND u.DownVotes<=0 AND u.UpVotes>=0 AND u.UpVotes<=10;

/*+ HashJoin(ph c p)
 HashJoin(c p)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(p)
 Leading((ph (c p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph WHERE p.Id = c.PostId AND p.Id = ph.PostId AND c.Score=0 AND p.Score>=-2 AND p.Score<=37 AND p.AnswerCount>=0 AND p.CreationDate>='2010-08-06 22:16:01'::timestamp AND p.CreationDate<='2014-08-19 13:02:31'::timestamp;

/*+ HashJoin(ph p u b)
 HashJoin(ph p u)
 MergeJoin(p u)
 SeqScan(ph)
 IndexScan(p)
 SeqScan(u)
 SeqScan(b)
 Leading(((ph (p u)) b)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u, badges as b WHERE u.Id = p.OwnerUserId AND p.OwnerUserId = ph.UserId AND ph.UserId = b.UserId AND ph.PostHistoryTypeId=1 AND p.FavoriteCount>=0 AND u.Reputation>=1 AND u.Reputation<=830 AND u.Views>=0 AND u.DownVotes>=0;

/*+ HashJoin(c b u p pl)
 HashJoin(b u p pl)
 HashJoin(u p pl)
 HashJoin(p pl)
 SeqScan(c)
 SeqScan(b)
 SeqScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((c (b (u (p pl))))) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND p.Id = c.PostId AND u.Id = b.UserId AND u.Id = p.OwnerUserId AND c.CreationDate>='2010-08-05 01:43:35'::timestamp AND pl.CreationDate<='2014-09-13 07:47:24'::timestamp AND p.PostTypeId=2 AND p.Score>=-1 AND p.CommentCount>=0 AND p.CommentCount<=17;

/*+ HashJoin(p u)
 SeqScan(p)
 SeqScan(u)
 Leading((p u)) */
SELECT COUNT(*) FROM posts as p, users as u WHERE p.OwnerUserId= u.Id AND p.Score>=-1 AND p.Score<=24 AND p.ViewCount<=19571 AND p.AnswerCount<=6 AND p.CreationDate<='2014-09-10 21:36:09'::timestamp AND u.DownVotes<=0;

/*+ HashJoin(ph c p pl u)
 HashJoin(c p pl u)
 HashJoin(c p pl)
 HashJoin(p pl)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 IndexScan(u)
 Leading((ph ((c (p pl)) u))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, users as u WHERE p.Id = pl.RelatedPostId AND pl.RelatedPostId = c.PostId AND pl.RelatedPostId = ph.PostId AND u.Id= c.UserId AND c.Score=0 AND p.AnswerCount>=0 AND p.AnswerCount<=5 AND ph.CreationDate>='2010-09-05 16:35:45'::timestamp AND u.DownVotes>=0 AND u.DownVotes<=9;

/*+ HashJoin(ph pl p)
 HashJoin(pl p)
 SeqScan(ph)
 SeqScan(pl)
 SeqScan(p)
 Leading((ph (pl p))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph WHERE p.Id = pl.PostId AND pl.PostId = ph.PostId AND p.AnswerCount<=8 AND p.CommentCount<=11 AND p.FavoriteCount>=0 AND p.FavoriteCount<=8 AND pl.CreationDate<='2014-08-07 08:07:59'::timestamp AND ph.CreationDate<='2014-09-09 20:55:41'::timestamp;

/*+ HashJoin(p b)
 SeqScan(p)
 SeqScan(b)
 Leading((p b)) */
SELECT COUNT(*) FROM badges as b, posts as p WHERE b.UserId = p.OwnerUserId AND p.Score<=12 AND p.ViewCount>=0 AND p.ViewCount<=7111 AND p.CommentCount>=0 AND p.CommentCount<=12 AND p.CreationDate<='2014-09-11 17:09:42'::timestamp;

/*+ HashJoin(ph v u p t)
 HashJoin(v u p t)
 HashJoin(u p t)
 HashJoin(p t)
 SeqScan(ph)
 SeqScan(v)
 SeqScan(u)
 SeqScan(p)
 SeqScan(t)
 Leading((ph (v (u (p t))))) */
SELECT COUNT(*) FROM tags as t, posts as p, postHistory as ph, votes as v, users as u WHERE p.Id = t.ExcerptPostId AND p.Id = ph.PostId AND p.Id = v.PostId AND p.OwnerUserId = u.Id AND t.Count<=140 AND ph.PostHistoryTypeId=5 AND v.VoteTypeId=2 AND u.Views>=0 AND u.Views<=56 AND u.UpVotes>=0;

/*+ HashJoin(b ph u v)
 HashJoin(ph u v)
 HashJoin(u v)
 SeqScan(b)
 SeqScan(ph)
 IndexScan(u)
 SeqScan(v)
 Leading((b (ph (u v)))) */
SELECT COUNT(*) FROM postHistory as ph, votes as v, users as u, badges as b WHERE u.Id = ph.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND ph.PostHistoryTypeId=4 AND ph.CreationDate>='2010-08-09 10:34:57'::timestamp AND v.BountyAmount<=100 AND u.Views<=59 AND b.Date>='2010-10-23 08:54:47'::timestamp AND b.Date<='2014-08-26 18:51:40'::timestamp;

/*+ HashJoin(c u v b)
 HashJoin(c u v)
 HashJoin(c u)
 SeqScan(c)
 SeqScan(u)
 SeqScan(v)
 SeqScan(b)
 Leading((((c u) v) b)) */
SELECT COUNT(*) FROM comments as c, votes as v, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND v.BountyAmount>=0 AND u.Reputation>=1 AND u.Reputation<=236 AND u.DownVotes>=0 AND u.DownVotes<=0 AND u.CreationDate>='2010-10-06 20:56:29'::timestamp;

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
SELECT COUNT(*) FROM comments as c, postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND p.Id = c.PostId AND u.Id = b.UserId AND u.Id = p.OwnerUserId AND pl.LinkTypeId=1 AND p.PostTypeId=2 AND p.CreationDate>='2010-08-04 16:29:26'::timestamp AND p.CreationDate<='2014-09-07 19:02:35'::timestamp AND u.DownVotes>=0 AND u.DownVotes<=3;

/*+ HashJoin(c v ph u b)
 HashJoin(v ph u b)
 HashJoin(ph u b)
 HashJoin(u b)
 SeqScan(c)
 SeqScan(v)
 SeqScan(ph)
 IndexScan(u)
 IndexScan(b)
 Leading((c (v (ph (u b))))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, votes as v, users as u WHERE u.Id =b.UserId AND b.UserId = ph.UserId AND ph.UserId = v.UserId AND v.UserId = c.UserId AND c.CreationDate>='2010-07-26 21:24:35'::timestamp AND ph.PostHistoryTypeId=3 AND v.BountyAmount<=50 AND v.CreationDate>='2010-07-20 00:00:00'::timestamp AND u.DownVotes<=5 AND u.CreationDate<='2014-08-06 21:29:05'::timestamp;

/*+ MergeJoin(ph c u b)
 HashJoin(c u b)
 HashJoin(c u)
 IndexScan(ph)
 SeqScan(c)
 SeqScan(u)
 SeqScan(b)
 Leading((ph ((c u) b))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = ph.UserId AND u.Id = b.UserId AND b.Date<='2014-09-11 23:59:40'::timestamp AND u.Views=0 AND u.DownVotes>=0 AND u.DownVotes<=0 AND u.CreationDate>='2011-03-18 20:00:42'::timestamp AND u.CreationDate<='2014-08-25 14:35:06'::timestamp;

/*+ HashJoin(u ph p)
 HashJoin(u ph)
 SeqScan(u)
 SeqScan(ph)
 SeqScan(p)
 Leading(((u ph) p)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.UserId = p.OwnerUserId AND ph.UserId = u.Id AND ph.PostHistoryTypeId=5 AND p.CommentCount<=10 AND p.FavoriteCount<=3 AND p.CreationDate>='2010-07-19 19:37:31'::timestamp AND u.Views>=0 AND u.Views<=39;

/*+ HashJoin(c p pl)
 HashJoin(p pl)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 Leading((c (p pl))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE p.Id = c.PostId AND p.Id = pl.PostId AND c.Score=0 AND p.AnswerCount>=0 AND p.CommentCount>=0 AND p.FavoriteCount>=0 AND pl.CreationDate>='2011-02-14 08:32:27'::timestamp AND pl.CreationDate<='2014-09-11 10:56:25'::timestamp;

/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 SeqScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND v.BountyAmount>=0 AND v.CreationDate>='2009-02-03 00:00:00'::timestamp AND p.FavoriteCount>=0 AND p.FavoriteCount<=8 AND p.CreationDate>='2010-08-22 10:30:13'::timestamp AND p.CreationDate<='2014-09-10 13:51:39'::timestamp;

/*+ HashJoin(b u p pl)
 HashJoin(u p pl)
 HashJoin(p pl)
 SeqScan(b)
 SeqScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((b (u (p pl)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND pl.LinkTypeId=1 AND pl.CreationDate<='2014-08-18 21:21:07'::timestamp AND p.AnswerCount<=3 AND p.CreationDate>='2010-07-20 05:21:14'::timestamp AND p.CreationDate<='2014-09-04 10:28:33'::timestamp AND u.DownVotes>=0;

/*+ HashJoin(ph p u b)
 HashJoin(ph p u)
 HashJoin(p u)
 SeqScan(ph)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading(((ph (p u)) b)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u, badges as b WHERE u.Id = p.OwnerUserId AND p.OwnerUserId = ph.UserId AND ph.UserId = b.UserId AND p.FavoriteCount<=5 AND p.CreationDate>='2010-10-21 13:21:24'::timestamp AND p.CreationDate<='2014-08-26 22:57:52'::timestamp AND u.DownVotes<=0 AND u.CreationDate>='2010-07-20 14:49:00'::timestamp AND b.Date>='2010-07-20 03:09:08'::timestamp;

/*+ HashJoin(c pl p u b)
 HashJoin(c pl p u)
 HashJoin(pl p u)
 HashJoin(pl p)
 SeqScan(c)
 IndexScan(pl)
 SeqScan(p)
 SeqScan(u)
 SeqScan(b)
 Leading(((c ((pl p) u)) b)) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND p.Id = c.PostId AND u.Id = b.UserId AND u.Id = p.OwnerUserId AND c.Score=0 AND p.CommentCount>=0 AND p.CommentCount<=21 AND p.CreationDate>='2010-08-05 01:24:22'::timestamp AND b.Date>='2010-07-20 05:44:09'::timestamp AND b.Date<='2014-08-03 15:39:00'::timestamp;

/*+ HashJoin(ph p pl)
 HashJoin(p pl)
 SeqScan(ph)
 SeqScan(p)
 SeqScan(pl)
 Leading((ph (p pl))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph WHERE p.Id = pl.PostId AND pl.PostId = ph.PostId AND p.ViewCount<=5220 AND p.AnswerCount>=0 AND p.CommentCount=1 AND p.FavoriteCount<=36 AND pl.LinkTypeId=1 AND ph.PostHistoryTypeId=2;

/*+ HashJoin(c u p)
 HashJoin(c u)
 SeqScan(c)
 SeqScan(u)
 SeqScan(p)
 Leading(((c u) p)) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.UserId = u.Id AND u.Id = p.OwnerUserId AND c.Score=0 AND p.AnswerCount>=0 AND p.CommentCount<=22 AND u.Views>=0 AND u.Views<=75 AND u.DownVotes<=0;

/*+ HashJoin(c p pl)
 HashJoin(p pl)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 Leading((c (p pl))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE p.Id = c.PostId AND p.Id = pl.PostId AND c.Score=0 AND c.CreationDate>='2010-11-04 09:16:26'::timestamp AND p.PostTypeId=1 AND p.AnswerCount>=0 AND p.CommentCount>=0 AND pl.CreationDate>='2012-01-24 20:54:56'::timestamp;

/*+ HashJoin(ph c u b)
 HashJoin(c u b)
 HashJoin(c u)
 SeqScan(ph)
 SeqScan(c)
 IndexScan(u)
 SeqScan(b)
 Leading((ph ((c u) b))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = ph.UserId AND u.Id = b.UserId AND c.CreationDate='2013-04-04 23:12:47'::timestamp AND ph.PostHistoryTypeId=1 AND ph.CreationDate>='2010-08-22 02:10:22'::timestamp AND ph.CreationDate<='2014-06-23 14:14:53'::timestamp AND b.Date<='2014-09-13 23:25:21'::timestamp AND u.Reputation>=1;

/*+ HashJoin(ph pl p)
 HashJoin(pl p)
 SeqScan(ph)
 IndexScan(pl)
 SeqScan(p)
 Leading((ph (pl p))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph WHERE p.Id = pl.PostId AND pl.PostId = ph.PostId AND p.Score=1 AND p.AnswerCount>=0 AND pl.CreationDate>='2011-01-27 16:41:24'::timestamp AND pl.CreationDate<='2014-07-24 17:11:38'::timestamp AND ph.PostHistoryTypeId=3 AND ph.CreationDate>='2010-07-19 19:51:34'::timestamp;

/*+ MergeJoin(c p pl)
 HashJoin(p pl)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 Leading((c (p pl))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE c.UserId = p.OwnerUserId AND p.Id = pl.PostId AND c.Score=2 AND p.Score>=-1 AND p.ViewCount<=4610 AND p.CommentCount<=11 AND p.FavoriteCount>=0 AND p.FavoriteCount<=5;

/*+ HashJoin(u v p pl)
 HashJoin(v p pl)
 HashJoin(p pl)
 SeqScan(u)
 SeqScan(v)
 SeqScan(p)
 SeqScan(pl)
 Leading((u (v (p pl)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, votes as v, users as u WHERE p.Id = pl.RelatedPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND pl.CreationDate>='2010-09-14 14:13:03'::timestamp AND pl.CreationDate<='2014-08-11 09:09:35'::timestamp AND p.CommentCount>=0 AND v.BountyAmount>=0 AND u.DownVotes>=0 AND u.CreationDate>='2010-07-26 20:04:17'::timestamp;

/*+ MergeJoin(u p pl)
 HashJoin(p pl)
 SeqScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((u (p pl))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, users as u WHERE p.Id = pl.PostId AND p.OwnerUserId = u.Id AND p.PostTypeId=1 AND p.CommentCount=0 AND p.CreationDate>='2010-10-06 20:10:59'::timestamp AND p.CreationDate<='2014-09-09 03:36:27'::timestamp AND u.DownVotes>=0 AND u.CreationDate<='2014-06-20 14:44:32'::timestamp;

/*+ HashJoin(c u v ph)
 HashJoin(u v ph)
 HashJoin(u v)
 SeqScan(c)
 IndexScan(u)
 SeqScan(v)
 SeqScan(ph)
 Leading((c ((u v) ph))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v, users as u WHERE u.Id = v.UserId AND v.UserId = ph.UserId AND ph.UserId =c.UserId AND c.CreationDate>='2010-08-03 01:08:43'::timestamp AND ph.PostHistoryTypeId=1 AND ph.CreationDate>='2010-10-12 12:34:08'::timestamp AND ph.CreationDate<='2014-09-02 22:22:30'::timestamp AND u.Reputation<=216 AND u.Views>=0;

/*+ HashJoin(b u p pl)
 HashJoin(u p pl)
 HashJoin(p pl)
 SeqScan(b)
 SeqScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((b (u (p pl)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND pl.LinkTypeId=3 AND p.PostTypeId=1 AND p.Score<=13 AND p.ViewCount>=0 AND p.CreationDate<='2014-09-09 18:14:50'::timestamp AND u.Views<=10;

/*+ HashJoin(c p pl)
 HashJoin(p pl)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 Leading((c (p pl))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE p.Id = c.PostId AND p.Id = pl.PostId AND c.CreationDate>='2010-07-19 20:03:31'::timestamp AND p.PostTypeId=1 AND p.ViewCount<=8147 AND p.CreationDate<='2014-08-26 13:23:31'::timestamp AND pl.CreationDate>='2011-10-17 05:21:10'::timestamp AND pl.CreationDate<='2014-09-04 13:26:44'::timestamp;

/*+ HashJoin(c u v p)
 HashJoin(c u v)
 HashJoin(c u)
 SeqScan(c)
 SeqScan(u)
 SeqScan(v)
 SeqScan(p)
 Leading((((c u) v) p)) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = v.UserId AND c.Score=0 AND c.CreationDate>='2010-07-19 21:38:27'::timestamp AND c.CreationDate<='2014-09-08 14:37:13'::timestamp AND p.PostTypeId=1 AND u.Views>=0 AND u.Views<=42;

/*+ HashJoin(c ph p u b)
 MergeJoin(ph p u b)
 MergeJoin(p u b)
 NestLoop(u b)
 SeqScan(c)
 IndexScan(ph)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((c (ph (p (u b))))) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = ph.UserId AND u.Id = b.UserId AND c.CreationDate>='2010-07-20 23:48:55'::timestamp AND p.AnswerCount<=5 AND p.CreationDate<='2014-09-12 17:26:43'::timestamp AND ph.PostHistoryTypeId=1 AND b.Date>='2010-12-09 01:22:23'::timestamp AND u.UpVotes>=0;

/*+ HashJoin(b u v)
 HashJoin(u v)
 SeqScan(b)
 IndexScan(u)
 SeqScan(v)
 Leading((b (u v))) */
SELECT COUNT(*) FROM votes as v, badges as b, users as u WHERE u.Id = v.UserId AND v.UserId = b.UserId AND v.CreationDate>='2009-03-03 00:00:00'::timestamp AND u.Reputation>=1 AND u.Reputation<=2430 AND u.Views<=34 AND u.DownVotes<=1 AND u.UpVotes>=0;

/*+ HashJoin(ph c u b)
 HashJoin(c u b)
 HashJoin(c u)
 SeqScan(ph)
 SeqScan(c)
 IndexScan(u)
 SeqScan(b)
 Leading((ph ((c u) b))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = ph.UserId AND u.Id = b.UserId AND c.Score=1 AND ph.PostHistoryTypeId=5 AND ph.CreationDate>='2010-07-19 20:58:11'::timestamp AND ph.CreationDate<='2014-06-25 02:13:04'::timestamp AND u.Views<=49 AND u.DownVotes>=0;

/*+ HashJoin(ph u p)
 HashJoin(ph u)
 SeqScan(ph)
 SeqScan(u)
 SeqScan(p)
 Leading(((ph u) p)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.UserId = p.OwnerUserId AND ph.UserId = u.Id AND p.Score>=0 AND p.Score<=15 AND p.ViewCount>=0 AND u.Reputation<=3963 AND u.Views>=0 AND u.UpVotes>=0;

/*+ HashJoin(c u p pl)
 HashJoin(u p pl)
 HashJoin(p pl)
 SeqScan(c)
 SeqScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((c (u (p pl)))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, users as u WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.OwnerUserId = u.Id AND c.Score=0 AND c.CreationDate<='2014-09-05 02:40:00'::timestamp AND p.PostTypeId=1 AND p.FavoriteCount<=11 AND p.CreationDate<='2014-08-27 06:07:22'::timestamp AND u.Reputation>=1;

/*+ HashJoin(c p u v)
 HashJoin(c p u)
 HashJoin(p u)
 SeqScan(c)
 SeqScan(p)
 IndexScan(u)
 SeqScan(v)
 Leading(((c (p u)) v)) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = v.UserId AND p.PostTypeId=1 AND p.Score>=-1 AND p.AnswerCount>=0 AND p.CreationDate<='2014-09-05 04:28:26'::timestamp AND v.BountyAmount>=0 AND u.Reputation<=1460;

/*+ HashJoin(v ph c pl)
 HashJoin(ph c pl)
 HashJoin(c pl)
 SeqScan(v)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(pl)
 Leading((v (ph (c pl)))) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, postHistory as ph, votes as v WHERE pl.PostId = c.PostId AND c.PostId = ph.PostId AND ph.PostId = v.PostId AND c.Score=0 AND pl.CreationDate>='2010-12-23 16:59:38'::timestamp AND ph.PostHistoryTypeId=2 AND ph.CreationDate<='2014-08-31 23:53:54'::timestamp AND v.BountyAmount>=0 AND v.BountyAmount<=150;

/*+ HashJoin(c p)
 SeqScan(c)
 SeqScan(p)
 Leading((c p)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND c.CreationDate>='2010-07-23 17:42:07'::timestamp AND c.CreationDate<='2014-08-28 17:32:18'::timestamp AND p.AnswerCount>=0 AND p.AnswerCount<=21 AND p.FavoriteCount>=0 AND p.CreationDate>='2010-07-21 15:38:46'::timestamp;

/*+ HashJoin(c u v)
 HashJoin(c u)
 SeqScan(c)
 SeqScan(u)
 SeqScan(v)
 Leading(((c u) v)) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND c.PostId = v.PostId AND c.CreationDate>='2010-08-09 12:22:37'::timestamp AND c.CreationDate<='2014-09-08 09:11:37'::timestamp AND v.CreationDate<='2014-09-11 00:00:00'::timestamp AND u.Reputation<=150 AND u.Views<=44 AND u.UpVotes<=116;

/*+ MergeJoin(b v p u)
 HashJoin(v p u)
 HashJoin(p u)
 IndexScan(b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 Leading((b (v (p u)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE u.Id = v.UserId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND v.BountyAmount>=0 AND p.Score=1 AND p.ViewCount<=9741 AND p.AnswerCount>=0 AND b.Date>='2010-07-19 19:39:10'::timestamp AND u.DownVotes<=0;

/*+ MergeJoin(v u p pl)
 HashJoin(u p pl)
 HashJoin(p pl)
 SeqScan(v)
 SeqScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((v (u (p pl)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, votes as v, users as u WHERE p.Id = pl.RelatedPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND p.PostTypeId=1 AND p.AnswerCount<=6 AND p.CreationDate<='2014-08-29 11:55:02'::timestamp AND v.BountyAmount>=0 AND v.CreationDate>='2010-07-19 00:00:00'::timestamp AND u.Views>=0;

/*+ HashJoin(b u p pl)
 HashJoin(u p pl)
 HashJoin(p pl)
 SeqScan(b)
 SeqScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((b (u (p pl)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.PostTypeId=1 AND p.Score=0 AND p.ViewCount<=3251 AND p.CommentCount>=0 AND p.CommentCount<=15 AND u.Reputation>=1;

/*+ HashJoin(c u v b)
 HashJoin(c u v)
 HashJoin(c u)
 SeqScan(c)
 IndexScan(u)
 SeqScan(v)
 IndexScan(b)
 Leading((((c u) v) b)) */
SELECT COUNT(*) FROM comments as c, votes as v, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND c.CreationDate<='2014-09-12 18:29:45'::timestamp AND b.Date>='2010-07-21 06:53:13'::timestamp AND u.DownVotes>=0 AND u.UpVotes>=0 AND u.CreationDate>='2011-05-25 17:07:17'::timestamp AND u.CreationDate<='2014-08-21 03:33:35'::timestamp;

/*+ HashJoin(b u p v)
 HashJoin(u p v)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(u)
 SeqScan(p)
 SeqScan(v)
 Leading((b ((u p) v))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND v.VoteTypeId=5 AND p.CreationDate>='2010-07-22 10:16:18'::timestamp AND b.Date>='2010-07-20 00:14:07'::timestamp AND b.Date<='2014-09-02 07:24:59'::timestamp AND u.Reputation>=1 AND u.Reputation<=3150;

/*+ HashJoin(v c pl p)
 HashJoin(c pl p)
 HashJoin(c pl)
 SeqScan(v)
 SeqScan(c)
 SeqScan(pl)
 SeqScan(p)
 Leading((v ((c pl) p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, votes as v WHERE p.Id = c.PostId AND c.PostId = pl.PostId AND pl.PostId = v.PostId AND p.Score<=50 AND p.AnswerCount<=4 AND p.CommentCount>=0 AND p.CommentCount<=10 AND p.CreationDate<='2014-09-11 14:26:05'::timestamp AND v.CreationDate<='2014-09-11 00:00:00'::timestamp;

/*+ HashJoin(c u v b)
 HashJoin(c u v)
 HashJoin(c u)
 SeqScan(c)
 SeqScan(u)
 SeqScan(v)
 SeqScan(b)
 Leading((((c u) v) b)) */
SELECT COUNT(*) FROM comments as c, votes as v, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND c.CreationDate>='2010-07-27 09:51:43'::timestamp AND c.CreationDate<='2014-09-13 12:01:42'::timestamp AND v.BountyAmount<=100 AND u.Reputation>=1 AND u.Reputation<=164 AND u.UpVotes>=0;

/*+ HashJoin(v u p pl)
 HashJoin(u p pl)
 HashJoin(p pl)
 SeqScan(v)
 SeqScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((v (u (p pl)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, votes as v, users as u WHERE p.Id = pl.RelatedPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND pl.CreationDate<='2014-08-15 21:56:03'::timestamp AND p.AnswerCount>=0 AND v.VoteTypeId=2 AND v.CreationDate>='2009-02-02 00:00:00'::timestamp AND v.CreationDate<='2014-09-10 00:00:00'::timestamp AND u.UpVotes<=6;

/*+ HashJoin(u ph p)
 HashJoin(ph p)
 SeqScan(u)
 SeqScan(ph)
 SeqScan(p)
 Leading((u (ph p))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.UserId = p.OwnerUserId AND ph.UserId = u.Id AND ph.PostHistoryTypeId=13 AND ph.CreationDate>='2011-05-19 13:28:30'::timestamp AND ph.CreationDate<='2014-07-15 11:16:25'::timestamp AND p.AnswerCount>=0 AND p.CommentCount>=0 AND u.Views<=55;

/*+ HashJoin(c u p v)
 HashJoin(c u p)
 HashJoin(u p)
 SeqScan(c)
 SeqScan(u)
 SeqScan(p)
 SeqScan(v)
 Leading(((c (u p)) v)) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = v.UserId AND p.ViewCount<=39118 AND p.FavoriteCount>=0 AND p.FavoriteCount<=3 AND u.Views>=0 AND u.DownVotes>=0 AND u.DownVotes<=1;

/*+ MergeJoin(v ph c pl)
 HashJoin(ph c pl)
 HashJoin(c pl)
 SeqScan(v)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(pl)
 Leading((v (ph (c pl)))) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, postHistory as ph, votes as v WHERE pl.PostId = c.PostId AND c.PostId = ph.PostId AND ph.PostId = v.PostId AND c.Score=1 AND c.CreationDate>='2010-07-29 15:12:12'::timestamp AND c.CreationDate<='2014-08-31 10:50:03'::timestamp AND ph.PostHistoryTypeId=3 AND v.BountyAmount>=0 AND v.BountyAmount<=100;

/*+ HashJoin(p b)
 SeqScan(p)
 SeqScan(b)
 Leading((p b)) */
SELECT COUNT(*) FROM badges as b, posts as p WHERE b.UserId = p.OwnerUserId AND p.Score>=-1 AND p.Score<=16 AND p.AnswerCount<=6 AND p.CommentCount<=21 AND p.FavoriteCount<=15 AND p.CreationDate>='2010-08-05 11:58:42'::timestamp;

/*+ HashJoin(b c v u)
 HashJoin(c v u)
 MergeJoin(v u)
 SeqScan(b)
 SeqScan(c)
 SeqScan(v)
 SeqScan(u)
 Leading((b (c (v u)))) */
SELECT COUNT(*) FROM comments as c, votes as v, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND c.CreationDate>='2010-07-25 04:42:10'::timestamp AND c.CreationDate<='2014-09-10 05:59:19'::timestamp AND v.CreationDate='2013-11-21 00:00:00'::timestamp AND u.Reputation<=345 AND u.UpVotes>=0 AND u.UpVotes<=61;

/*+ MergeJoin(c ph v)
 HashJoin(ph v)
 IndexScan(c)
 SeqScan(ph)
 SeqScan(v)
 Leading((c (ph v))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v WHERE ph.PostId = c.PostId AND ph.PostId = v.PostId AND c.CreationDate>='2010-08-18 15:12:47'::timestamp AND c.CreationDate<='2014-09-12 10:25:47'::timestamp AND ph.CreationDate<='2014-09-13 20:30:39'::timestamp AND v.VoteTypeId=9 AND v.BountyAmount>=0 AND v.BountyAmount<=0;

