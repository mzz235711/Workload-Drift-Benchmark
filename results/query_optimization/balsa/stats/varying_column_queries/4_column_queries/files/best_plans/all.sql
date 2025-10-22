/*+ HashJoin(c ph v)
 HashJoin(c ph)
 IndexScan(c)
 SeqScan(ph)
 SeqScan(v)
 Leading(((c ph) v)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v WHERE ph.PostId = c.PostId AND ph.PostId = v.PostId AND ph.CreationDate>='2010-08-31 14:26:41'::timestamp AND ph.CreationDate<='2014-08-26 19:25:26'::timestamp AND v.VoteTypeId=2 AND v.CreationDate>='2009-02-02 00:00:00'::timestamp;

/*+ HashJoin(c ph v)
 HashJoin(ph v)
 SeqScan(c)
 SeqScan(ph)
 SeqScan(v)
 Leading((c (ph v))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v WHERE ph.PostId = c.PostId AND ph.PostId = v.PostId AND c.Score=0 AND v.BountyAmount>=0 AND v.CreationDate>='2010-07-20 00:00:00'::timestamp AND v.CreationDate<='2014-09-08 00:00:00'::timestamp;

/*+ HashJoin(c v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(c)
 SeqScan(v)
 SeqScan(u)
 IndexScan(p)
 Leading((c (v (u p)))) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = v.UserId AND p.PostTypeId=1 AND p.CommentCount>=0 AND v.BountyAmount>=0 AND v.CreationDate>='2010-07-19 00:00:00'::timestamp;

/*+ HashJoin(c p)
 SeqScan(c)
 SeqScan(p)
 Leading((c p)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND c.Score=0 AND c.CreationDate>='2010-07-19 19:51:06'::timestamp AND p.Score=1 AND p.ViewCount<=7716;

/*+ HashJoin(c u v)
 HashJoin(c u)
 IndexScan(c)
 IndexScan(u)
 SeqScan(v)
 Leading(((c u) v)) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND c.PostId = v.PostId AND c.CreationDate>='2010-07-20 13:42:11'::timestamp AND v.CreationDate>='2010-07-23 00:00:00'::timestamp AND u.DownVotes>=0 AND u.UpVotes<=6;

/*+ HashJoin(c u v)
 HashJoin(c u)
 IndexScan(c)
 IndexScan(u)
 SeqScan(v)
 Leading(((c u) v)) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND c.PostId = v.PostId AND c.Score=0 AND u.DownVotes>=0 AND u.DownVotes<=0 AND u.CreationDate<='2014-09-04 12:40:24'::timestamp;

/*+ HashJoin(c pl)
 SeqScan(c)
 IndexScan(pl)
 Leading((c pl)) */
SELECT COUNT(*) FROM comments as c, postLinks as pl WHERE c.PostId= pl.PostId AND c.Score=0 AND c.CreationDate>='2010-07-24 09:04:44'::timestamp AND pl.LinkTypeId=1 AND pl.CreationDate<='2014-06-16 21:30:52'::timestamp;

/*+ HashJoin(ph u p)
 HashJoin(ph u)
 SeqScan(ph)
 SeqScan(u)
 IndexScan(p)
 Leading(((ph u) p)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.UserId = p.OwnerUserId AND ph.UserId = u.Id AND p.AnswerCount<=4 AND p.CommentCount>=0 AND u.UpVotes>=0 AND u.CreationDate>='2010-11-04 15:56:37'::timestamp;

/*+ NestLoop(p c)
 SeqScan(p)
 IndexScan(c)
 Leading((p c)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND c.CreationDate>='2010-07-27 01:17:13'::timestamp AND c.CreationDate<='2014-09-11 21:36:33'::timestamp AND p.AnswerCount<=4 AND p.FavoriteCount>=0;

/*+ HashJoin(b p)
 SeqScan(b)
 SeqScan(p)
 Leading((b p)) */
SELECT COUNT(*) FROM badges as b, posts as p WHERE b.UserId = p.OwnerUserId AND b.Date>='2010-07-26 19:43:42'::timestamp AND p.AnswerCount>=0 AND p.AnswerCount<=4 AND p.CommentCount>=0;

/*+ HashJoin(ph c u)
 HashJoin(c u)
 SeqScan(ph)
 IndexScan(c)
 SeqScan(u)
 Leading((ph (c u))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND ph.CreationDate>='2010-09-18 02:43:41'::timestamp AND ph.CreationDate<='2014-09-08 22:51:37'::timestamp AND u.UpVotes>=0 AND u.UpVotes<=7;

/*+ HashJoin(v b u)
 MergeJoin(v b)
 IndexScan(v)
 IndexScan(b)
 IndexScan(u)
 Leading(((v b) u)) */
SELECT COUNT(*) FROM votes as v, badges as b, users as u WHERE u.Id = v.UserId AND v.UserId = b.UserId AND v.CreationDate>='2010-07-20 00:00:00'::timestamp AND b.Date>='2010-07-23 12:53:26'::timestamp AND u.Reputation>=1 AND u.CreationDate<='2014-09-08 23:20:04'::timestamp;

/*+ HashJoin(u p pl)
 HashJoin(p pl)
 SeqScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((u (p pl))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, users as u WHERE p.Id = pl.PostId AND p.OwnerUserId = u.Id AND p.Score>=0 AND u.Views>=0 AND u.UpVotes>=0 AND u.UpVotes<=148;

/*+ HashJoin(b u)
 SeqScan(b)
 IndexScan(u)
 Leading((b u)) */
SELECT COUNT(*) FROM badges as b, users as u WHERE b.UserId= u.Id AND b.Date>='2010-08-23 16:30:54'::timestamp AND b.Date<='2014-09-13 03:05:31'::timestamp AND u.DownVotes>=0 AND u.CreationDate<='2014-07-18 18:55:20'::timestamp;

/*+ HashJoin(c ph v)
 HashJoin(c ph)
 IndexScan(c)
 SeqScan(ph)
 SeqScan(v)
 Leading(((c ph) v)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v WHERE ph.PostId = c.PostId AND ph.PostId = v.PostId AND c.CreationDate>='2010-07-28 01:06:13'::timestamp AND c.CreationDate<='2014-09-10 16:30:40'::timestamp AND ph.PostHistoryTypeId=5 AND ph.CreationDate<='2014-09-03 14:40:19'::timestamp;

/*+ HashJoin(b v u p t)
 MergeJoin(v u p t)
 HashJoin(u p t)
 HashJoin(p t)
 IndexScan(b)
 IndexScan(v)
 SeqScan(u)
 IndexScan(p)
 IndexScan(t)
 Leading((b (v (u (p t))))) */
SELECT COUNT(*) FROM tags as t, posts as p, users as u, votes as v, badges as b WHERE p.Id = t.ExcerptPostId AND u.Id = v.UserId AND u.Id = b.UserId AND u.Id = p.OwnerUserId AND p.ViewCount>=0 AND p.ViewCount<=2165 AND p.CreationDate<='2014-08-28 10:24:58'::timestamp AND u.Views<=397;

/*+ HashJoin(c v)
 SeqScan(c)
 SeqScan(v)
 Leading((c v)) */
SELECT COUNT(*) FROM comments as c, votes as v WHERE c.UserId = v.UserId AND c.Score=0 AND c.CreationDate>='2010-07-25 09:04:57'::timestamp AND c.CreationDate<='2014-09-04 08:04:31'::timestamp AND v.BountyAmount<=100;

/*+ HashJoin(c p)
 SeqScan(c)
 SeqScan(p)
 Leading((c p)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND c.Score=0 AND p.ViewCount>=0 AND p.CommentCount>=0 AND p.CreationDate<='2014-09-08 12:48:23'::timestamp;

/*+ HashJoin(b u)
 SeqScan(b)
 IndexScan(u)
 Leading((b u)) */
SELECT COUNT(*) FROM badges as b, users as u WHERE b.UserId= u.Id AND u.Views=0 AND u.DownVotes<=0 AND u.UpVotes>=0 AND u.UpVotes<=14;

/*+ HashJoin(ph p pl)
 MergeJoin(p pl)
 SeqScan(ph)
 SeqScan(p)
 IndexScan(pl)
 Leading((ph (p pl))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph WHERE p.Id = pl.PostId AND pl.PostId = ph.PostId AND p.CommentCount=4 AND ph.PostHistoryTypeId=2 AND ph.CreationDate>='2011-01-10 10:37:10'::timestamp AND ph.CreationDate<='2014-08-20 10:04:12'::timestamp;

/*+ HashJoin(c v u)
 MergeJoin(v u)
 IndexScan(c)
 SeqScan(v)
 IndexScan(u)
 Leading((c (v u))) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND v.CreationDate='2012-08-20 00:00:00'::timestamp AND u.DownVotes>=0 AND u.UpVotes>=0 AND u.UpVotes<=13;

/*+ HashJoin(c p pl u)
 HashJoin(c p pl)
 HashJoin(c p)
 IndexScan(c)
 SeqScan(p)
 SeqScan(pl)
 IndexScan(u)
 Leading((((c p) pl) u)) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, users as u WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.OwnerUserId = u.Id AND p.FavoriteCount<=23 AND u.Views>=0 AND u.DownVotes>=0 AND u.CreationDate<='2014-08-09 18:39:46'::timestamp;

/*+ HashJoin(ph u p)
 HashJoin(ph u)
 SeqScan(ph)
 SeqScan(u)
 IndexScan(p)
 Leading(((ph u) p)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.UserId = p.OwnerUserId AND ph.UserId = u.Id AND p.PostTypeId=2 AND p.CreationDate<='2014-09-11 14:18:16'::timestamp AND u.Reputation>=1 AND u.Reputation<=143;

/*+ HashJoin(u v p)
 HashJoin(u v)
 IndexScan(u)
 SeqScan(v)
 SeqScan(p)
 Leading(((u v) p)) */
SELECT COUNT(*) FROM votes as v, posts as p, users as u WHERE v.PostId = p.Id AND v.UserId = u.Id AND v.CreationDate>='2009-02-03 00:00:00'::timestamp AND p.ViewCount<=6454 AND p.CreationDate>='2010-07-28 04:29:37'::timestamp AND p.CreationDate<='2014-09-10 15:29:29'::timestamp;

/*+ MergeJoin(u ph c p pl)
 HashJoin(ph c p pl)
 HashJoin(c p pl)
 HashJoin(p pl)
 IndexScan(u)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 Leading((u (ph (c (p pl))))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, users as u WHERE p.Id = pl.RelatedPostId AND pl.RelatedPostId = c.PostId AND pl.RelatedPostId = ph.PostId AND u.Id= c.UserId AND p.ViewCount>=0 AND p.ViewCount<=3484 AND p.CreationDate>='2010-08-31 16:32:21'::timestamp AND ph.PostHistoryTypeId=2;

/*+ HashJoin(ph v u b)
 HashJoin(v u b)
 NestLoop(u b)
 SeqScan(ph)
 IndexScan(v)
 SeqScan(u)
 IndexScan(b)
 Leading((ph (v (u b)))) */
SELECT COUNT(*) FROM postHistory as ph, votes as v, users as u, badges as b WHERE u.Id = ph.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND ph.CreationDate>='2010-08-27 15:07:18'::timestamp AND ph.CreationDate<='2014-08-30 23:14:41'::timestamp AND u.UpVotes<=1586 AND u.CreationDate<='2014-09-11 09:08:23'::timestamp;

/*+ HashJoin(c ph v)
 HashJoin(ph v)
 SeqScan(c)
 SeqScan(ph)
 SeqScan(v)
 Leading((c (ph v))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v WHERE ph.PostId = c.PostId AND ph.PostId = v.PostId AND c.CreationDate>='2009-02-02 14:51:49'::timestamp AND v.BountyAmount>=0 AND v.BountyAmount<=50 AND v.CreationDate>='2010-07-26 00:00:00'::timestamp;

/*+ MergeJoin(v p t)
 HashJoin(p t)
 IndexScan(v)
 IndexScan(p)
 IndexScan(t)
 Leading((v (p t))) */
SELECT COUNT(*) FROM posts as p, tags as t, votes as v WHERE p.Id = t.ExcerptPostId AND p.OwnerUserId = v.UserId AND p.Score<=12 AND p.CommentCount>=0 AND v.CreationDate>='2010-07-20 00:00:00'::timestamp AND v.CreationDate<='2014-09-10 00:00:00'::timestamp;

/*+ HashJoin(c ph v u)
 HashJoin(ph v u)
 HashJoin(v u)
 SeqScan(c)
 SeqScan(ph)
 IndexScan(v)
 SeqScan(u)
 Leading((c (ph (v u)))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v, users as u WHERE u.Id = v.UserId AND v.UserId = ph.UserId AND ph.UserId =c.UserId AND v.VoteTypeId=5 AND v.CreationDate>='2010-07-20 00:00:00'::timestamp AND v.CreationDate<='2014-09-09 00:00:00'::timestamp AND u.DownVotes<=0;

/*+ HashJoin(c p pl)
 MergeJoin(p pl)
 SeqScan(c)
 SeqScan(p)
 IndexScan(pl)
 Leading((c (p pl))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE p.Id = c.PostId AND p.Id = pl.PostId AND p.Score<=45 AND p.AnswerCount>=0 AND p.FavoriteCount<=65 AND pl.LinkTypeId=1;

/*+ HashJoin(c ph)
 SeqScan(c)
 IndexScan(ph)
 Leading((c ph)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph WHERE c.UserId = ph.UserId AND c.Score=1 AND c.CreationDate>='2010-09-12 03:56:17'::timestamp AND c.CreationDate<='2014-09-12 02:14:44'::timestamp AND ph.PostHistoryTypeId=2;

/*+ NestLoop(c v u)
 HashJoin(c v)
 IndexScan(c)
 SeqScan(v)
 IndexScan(u)
 Leading(((c v) u)) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND c.PostId = v.PostId AND c.Score=0 AND v.BountyAmount>=0 AND u.DownVotes>=0 AND u.DownVotes<=0;

/*+ NestLoop(c p u)
 MergeJoin(c p)
 IndexScan(c)
 IndexScan(p)
 IndexScan(u)
 Leading(((c p) u)) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.PostId = p.Id AND c.UserId = u.Id AND p.CommentCount>=0 AND p.FavoriteCount=0 AND u.Reputation<=185 AND u.DownVotes<=0;

/*+ MergeJoin(c p u)
 HashJoin(c p)
 IndexScan(c)
 IndexScan(p)
 IndexScan(u)
 Leading(((c p) u)) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.PostId = p.Id AND c.UserId = u.Id AND c.CreationDate>='2010-07-20 16:38:50'::timestamp AND c.CreationDate<='2014-09-03 20:48:27'::timestamp AND p.PostTypeId=1 AND p.FavoriteCount>=0;

/*+ HashJoin(b u)
 SeqScan(b)
 IndexScan(u)
 Leading((b u)) */
SELECT COUNT(*) FROM badges as b, users as u WHERE b.UserId= u.Id AND u.Reputation<=146 AND u.UpVotes>=0 AND u.UpVotes<=44 AND u.CreationDate>='2010-12-23 05:52:09'::timestamp;

/*+ HashJoin(ph c v)
 HashJoin(ph c)
 IndexScan(ph)
 SeqScan(c)
 SeqScan(v)
 Leading(((ph c) v)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v WHERE ph.PostId = c.PostId AND ph.PostId = v.PostId AND ph.CreationDate>='2010-09-23 06:10:48'::timestamp AND ph.CreationDate<='2014-07-13 17:00:56'::timestamp AND v.CreationDate>='2010-07-27 00:00:00'::timestamp AND v.CreationDate<='2014-09-11 00:00:00'::timestamp;

/*+ HashJoin(v u p)
 HashJoin(u p)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((v (u p))) */
SELECT COUNT(*) FROM votes as v, posts as p, users as u WHERE v.UserId = p.OwnerUserId AND p.OwnerUserId = u.Id AND p.ViewCount<=15141 AND p.CommentCount>=0 AND u.Views<=315 AND u.DownVotes>=0;

/*+ HashJoin(ph v u b)
 HashJoin(v u b)
 HashJoin(u b)
 SeqScan(ph)
 SeqScan(v)
 SeqScan(u)
 IndexScan(b)
 Leading((ph (v (u b)))) */
SELECT COUNT(*) FROM postHistory as ph, votes as v, users as u, badges as b WHERE u.Id = ph.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND ph.CreationDate>='2010-08-17 06:22:29'::timestamp AND ph.CreationDate<='2014-08-20 14:56:12'::timestamp AND u.Reputation<=420 AND b.Date<='2014-09-01 20:21:17'::timestamp;

/*+ HashJoin(ph p u)
 HashJoin(ph p)
 SeqScan(ph)
 SeqScan(p)
 SeqScan(u)
 Leading(((ph p) u)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.UserId = p.OwnerUserId AND ph.UserId = u.Id AND p.Score<=18 AND p.FavoriteCount=2 AND u.Views>=0 AND u.DownVotes<=0;

/*+ HashJoin(ph c u)
 HashJoin(c u)
 SeqScan(ph)
 IndexScan(c)
 IndexScan(u)
 Leading((ph (c u))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND ph.PostHistoryTypeId=6 AND u.Reputation>=1 AND u.DownVotes>=0 AND u.DownVotes<=0;

/*+ HashJoin(p c u)
 MergeJoin(c u)
 SeqScan(p)
 SeqScan(c)
 IndexScan(u)
 Leading((p (c u))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.PostId = p.Id AND c.UserId = u.Id AND c.CreationDate='2012-10-11 21:20:05'::timestamp AND p.PostTypeId=1 AND p.ViewCount>=0 AND u.UpVotes>=0;

/*+ HashJoin(v u p)
 HashJoin(v u)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading(((v u) p)) */
SELECT COUNT(*) FROM votes as v, posts as p, users as u WHERE v.PostId = p.Id AND v.UserId = u.Id AND v.CreationDate>='2010-07-19 00:00:00'::timestamp AND p.CommentCount<=15 AND p.FavoriteCount<=11 AND u.UpVotes>=0;

/*+ HashJoin(b u c)
 HashJoin(u c)
 SeqScan(b)
 SeqScan(u)
 SeqScan(c)
 Leading((b (u c))) */
SELECT COUNT(*) FROM comments as c, badges as b, users as u WHERE u.Id = c.UserId AND c.UserId = b.UserId AND u.Reputation<=282 AND u.DownVotes>=0 AND u.CreationDate>='2010-07-20 00:26:58'::timestamp AND u.CreationDate<='2014-08-06 23:00:17'::timestamp;

/*+ HashJoin(p ph pl)
 HashJoin(ph pl)
 SeqScan(p)
 SeqScan(ph)
 IndexScan(pl)
 Leading((p (ph pl))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph WHERE p.Id = pl.PostId AND pl.PostId = ph.PostId AND p.CommentCount<=17 AND pl.LinkTypeId=1 AND ph.PostHistoryTypeId=1 AND ph.CreationDate<='2014-08-10 21:39:59'::timestamp;

/*+ HashJoin(c ph v u)
 HashJoin(ph v u)
 HashJoin(v u)
 SeqScan(c)
 SeqScan(ph)
 SeqScan(v)
 SeqScan(u)
 Leading((c (ph (v u)))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v, users as u WHERE u.Id = v.UserId AND v.UserId = ph.UserId AND ph.UserId =c.UserId AND c.CreationDate<='2014-09-12 13:14:37'::timestamp AND ph.PostHistoryTypeId=2 AND u.Views>=0 AND u.UpVotes<=21;

/*+ HashJoin(c p u v)
 HashJoin(c p u)
 HashJoin(c p)
 IndexScan(c)
 SeqScan(p)
 IndexScan(u)
 SeqScan(v)
 Leading((((c p) u) v)) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE p.Id = c.PostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND c.Score=0 AND p.PostTypeId=2 AND u.Views>=0 AND u.CreationDate>='2010-11-22 18:18:03'::timestamp;

/*+ HashJoin(u b)
 SeqScan(u)
 SeqScan(b)
 Leading((u b)) */
SELECT COUNT(*) FROM badges as b, users as u WHERE b.UserId= u.Id AND b.Date>='2010-07-22 05:13:18'::timestamp AND u.DownVotes<=1 AND u.UpVotes>=0 AND u.UpVotes<=3;

/*+ HashJoin(ph v c)
 HashJoin(ph v)
 SeqScan(ph)
 SeqScan(v)
 SeqScan(c)
 Leading(((ph v) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v WHERE ph.PostId = c.PostId AND ph.PostId = v.PostId AND c.Score=0 AND c.CreationDate<='2014-09-11 21:23:37'::timestamp AND ph.PostHistoryTypeId=2 AND v.CreationDate<='2014-09-13 00:00:00'::timestamp;

/*+ MergeJoin(ph b u c)
 HashJoin(b u c)
 HashJoin(u c)
 SeqScan(ph)
 SeqScan(b)
 SeqScan(u)
 SeqScan(c)
 Leading((ph (b (u c)))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = ph.UserId AND u.Id = b.UserId AND c.Score=0 AND c.CreationDate<='2014-09-12 21:05:43'::timestamp AND ph.PostHistoryTypeId=2 AND u.Reputation<=282;

/*+ HashJoin(c p u)
 HashJoin(c p)
 IndexScan(c)
 SeqScan(p)
 IndexScan(u)
 Leading(((c p) u)) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.PostId = p.Id AND c.UserId = u.Id AND p.PostTypeId=1 AND p.CommentCount<=17 AND p.CreationDate<='2014-09-10 15:29:29'::timestamp AND u.CreationDate>='2010-07-21 10:25:49'::timestamp;

/*+ HashJoin(v ph c pl)
 HashJoin(ph c pl)
 HashJoin(c pl)
 SeqScan(v)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(pl)
 Leading((v (ph (c pl)))) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, postHistory as ph, votes as v WHERE pl.PostId = c.PostId AND c.PostId = ph.PostId AND ph.PostId = v.PostId AND c.Score=0 AND ph.CreationDate>='2010-10-14 19:09:49'::timestamp AND v.CreationDate>='2010-07-19 00:00:00'::timestamp AND v.CreationDate<='2014-09-11 00:00:00'::timestamp;

/*+ HashJoin(c u v)
 HashJoin(c u)
 IndexScan(c)
 IndexScan(u)
 SeqScan(v)
 Leading(((c u) v)) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND c.PostId = v.PostId AND v.VoteTypeId=2 AND v.CreationDate<='2014-09-10 00:00:00'::timestamp AND u.Views>=0 AND u.DownVotes>=0;

/*+ HashJoin(p b)
 SeqScan(p)
 SeqScan(b)
 Leading((p b)) */
SELECT COUNT(*) FROM badges as b, posts as p WHERE b.UserId = p.OwnerUserId AND p.Score<=15 AND p.CommentCount<=15 AND p.FavoriteCount>=0 AND p.FavoriteCount<=12;

/*+ HashJoin(ph c pl v)
 HashJoin(ph c pl)
 HashJoin(c pl)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(pl)
 SeqScan(v)
 Leading(((ph (c pl)) v)) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, postHistory as ph, votes as v WHERE pl.PostId = c.PostId AND c.PostId = ph.PostId AND ph.PostId = v.PostId AND pl.LinkTypeId=1 AND pl.CreationDate<='2014-08-26 13:21:38'::timestamp AND v.CreationDate>='2010-07-20 00:00:00'::timestamp AND v.CreationDate<='2014-09-12 00:00:00'::timestamp;

/*+ HashJoin(b c u)
 HashJoin(c u)
 SeqScan(b)
 IndexScan(c)
 IndexScan(u)
 Leading((b (c u))) */
SELECT COUNT(*) FROM comments as c, badges as b, users as u WHERE u.Id = c.UserId AND c.UserId = b.UserId AND c.Score=0 AND u.Reputation>=1 AND u.Reputation<=22625 AND u.UpVotes>=0;

/*+ HashJoin(ph p u)
 HashJoin(ph p)
 SeqScan(ph)
 IndexScan(p)
 IndexScan(u)
 Leading(((ph p) u)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.PostId = p.Id AND p.OwnerUserId = u.Id AND ph.PostHistoryTypeId=2 AND ph.CreationDate>='2010-10-08 17:12:27'::timestamp AND p.AnswerCount>=0 AND u.UpVotes=0;

/*+ HashJoin(c v u)
 HashJoin(v u)
 SeqScan(c)
 IndexScan(v)
 IndexScan(u)
 Leading((c (v u))) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND v.BountyAmount>=0 AND v.BountyAmount<=50 AND u.Views>=0 AND u.Views<=28;

/*+ HashJoin(b u)
 SeqScan(b)
 IndexScan(u)
 Leading((b u)) */
SELECT COUNT(*) FROM badges as b, users as u WHERE b.UserId= u.Id AND b.Date>='2010-08-18 17:29:06'::timestamp AND b.Date<='2014-09-02 00:16:42'::timestamp AND u.CreationDate>='2010-09-17 23:42:47'::timestamp AND u.CreationDate<='2014-09-12 02:49:02'::timestamp;

/*+ HashJoin(c u b)
 HashJoin(c u)
 IndexScan(c)
 IndexScan(u)
 IndexScan(b)
 Leading(((c u) b)) */
SELECT COUNT(*) FROM comments as c, badges as b, users as u WHERE u.Id = c.UserId AND c.UserId = b.UserId AND c.Score=0 AND u.DownVotes<=1 AND u.UpVotes<=5 AND u.CreationDate<='2014-09-13 05:04:12'::timestamp;

/*+ HashJoin(v ph c pl)
 HashJoin(ph c pl)
 HashJoin(c pl)
 SeqScan(v)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(pl)
 Leading((v (ph (c pl)))) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, postHistory as ph, votes as v WHERE pl.PostId = c.PostId AND c.PostId = ph.PostId AND ph.PostId = v.PostId AND c.CreationDate<='2014-09-12 03:51:18'::timestamp AND pl.LinkTypeId=1 AND pl.CreationDate<='2014-09-11 11:55:33'::timestamp AND ph.PostHistoryTypeId=25;

/*+ HashJoin(c pl p)
 MergeJoin(pl p)
 SeqScan(c)
 SeqScan(pl)
 SeqScan(p)
 Leading((c (pl p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE c.UserId = p.OwnerUserId AND p.Id = pl.PostId AND c.Score=0 AND c.CreationDate>='2010-07-29 02:45:20'::timestamp AND p.AnswerCount<=5 AND pl.LinkTypeId=1;

/*+ HashJoin(b u pl p)
 HashJoin(u pl p)
 HashJoin(pl p)
 SeqScan(b)
 SeqScan(u)
 IndexScan(pl)
 SeqScan(p)
 Leading((b (u (pl p)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND pl.LinkTypeId=3 AND pl.CreationDate<='2014-08-25 13:40:39'::timestamp AND p.CommentCount<=11 AND u.UpVotes>=0;

/*+ HashJoin(c ph v)
 HashJoin(ph v)
 SeqScan(c)
 SeqScan(ph)
 SeqScan(v)
 Leading((c (ph v))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v WHERE ph.PostId = c.PostId AND ph.PostId = v.PostId AND ph.PostHistoryTypeId=5 AND v.BountyAmount>=0 AND v.BountyAmount<=50 AND v.CreationDate<='2014-09-12 00:00:00'::timestamp;

/*+ HashJoin(u p)
 SeqScan(u)
 SeqScan(p)
 Leading((u p)) */
SELECT COUNT(*) FROM posts as p, users as u WHERE p.OwnerUserId= u.Id AND p.PostTypeId=1 AND p.ViewCount>=0 AND p.ViewCount<=6446 AND p.AnswerCount>=0;

/*+ HashJoin(ph v c)
 HashJoin(ph v)
 IndexScan(ph)
 SeqScan(v)
 SeqScan(c)
 Leading(((ph v) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v WHERE ph.PostId = c.PostId AND ph.PostId = v.PostId AND c.CreationDate>='2010-07-23 15:50:47'::timestamp AND ph.CreationDate>='2011-01-20 17:50:00'::timestamp AND v.BountyAmount>=0 AND v.CreationDate>='2009-02-02 00:00:00'::timestamp;

/*+ HashJoin(b v p u)
 HashJoin(v p u)
 HashJoin(p u)
 SeqScan(b)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 Leading((b (v (p u)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND v.CreationDate>='2010-08-11 00:00:00'::timestamp AND b.Date<='2014-09-04 00:12:46'::timestamp AND u.Reputation<=1033 AND u.Views>=0;

/*+ HashJoin(c u p)
 MergeJoin(c u)
 IndexScan(c)
 IndexScan(u)
 SeqScan(p)
 Leading(((c u) p)) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.UserId = u.Id AND u.Id = p.OwnerUserId AND c.Score=0 AND c.CreationDate>='2010-09-13 16:07:00'::timestamp AND c.CreationDate<='2014-09-09 21:08:08'::timestamp AND u.UpVotes<=54;

/*+ HashJoin(ph u c)
 HashJoin(u c)
 SeqScan(ph)
 IndexScan(u)
 SeqScan(c)
 Leading((ph (u c))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND c.CreationDate>='2010-07-25 01:37:03'::timestamp AND ph.CreationDate<='2014-09-01 05:54:47'::timestamp AND u.Reputation>=1 AND u.CreationDate>='2011-04-28 10:29:56'::timestamp;

/*+ HashJoin(b p)
 SeqScan(b)
 SeqScan(p)
 Leading((b p)) */
SELECT COUNT(*) FROM badges as b, posts as p WHERE b.UserId = p.OwnerUserId AND b.Date>='2010-07-19 22:04:06'::timestamp AND b.Date<='2014-09-07 12:46:58'::timestamp AND p.ViewCount<=1608 AND p.AnswerCount=0;

/*+ HashJoin(b ph u p)
 HashJoin(ph u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(ph)
 SeqScan(u)
 SeqScan(p)
 Leading((b (ph (u p)))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u, badges as b WHERE u.Id = p.OwnerUserId AND p.OwnerUserId = ph.UserId AND ph.UserId = b.UserId AND p.PostTypeId=1 AND p.ViewCount<=14287 AND u.Reputation<=187 AND u.Views>=0;

/*+ HashJoin(c p u)
 HashJoin(c p)
 IndexScan(c)
 SeqScan(p)
 IndexScan(u)
 Leading(((c p) u)) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.PostId = p.Id AND c.UserId = u.Id AND p.Score>=-2 AND p.Score<=46 AND p.AnswerCount>=0 AND u.CreationDate<='2014-08-31 11:08:36'::timestamp;

/*+ HashJoin(c u b)
 HashJoin(c u)
 IndexScan(c)
 IndexScan(u)
 IndexScan(b)
 Leading(((c u) b)) */
SELECT COUNT(*) FROM comments as c, badges as b, users as u WHERE u.Id = c.UserId AND c.UserId = b.UserId AND c.CreationDate>='2010-07-21 15:58:58'::timestamp AND b.Date>='2010-07-19 20:19:06'::timestamp AND u.Reputation>=1 AND u.CreationDate>='2010-08-01 09:11:17'::timestamp;

/*+ HashJoin(ph c u v)
 HashJoin(u v)
 HashJoin(ph c)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(u)
 IndexScan(v)
 Leading(((ph c) (u v))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v, users as u WHERE u.Id = v.UserId AND v.UserId = ph.UserId AND ph.UserId =c.UserId AND c.Score=0 AND ph.PostHistoryTypeId=3 AND u.CreationDate>='2011-04-13 11:41:57'::timestamp AND u.CreationDate<='2014-09-12 02:03:20'::timestamp;

/*+ HashJoin(b p)
 SeqScan(b)
 SeqScan(p)
 Leading((b p)) */
SELECT COUNT(*) FROM badges as b, posts as p WHERE b.UserId = p.OwnerUserId AND b.Date<='2014-08-26 14:16:42'::timestamp AND p.Score>=0 AND p.Score<=27 AND p.AnswerCount=1;

/*+ HashJoin(c v u)
 HashJoin(v u)
 SeqScan(c)
 IndexScan(v)
 IndexScan(u)
 Leading((c (v u))) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND c.Score=0 AND v.CreationDate>='2010-07-21 00:00:00'::timestamp AND v.CreationDate<='2014-09-12 00:00:00'::timestamp AND u.DownVotes<=3;

/*+ HashJoin(c v ph b u)
 HashJoin(v ph b u)
 HashJoin(ph b u)
 HashJoin(b u)
 SeqScan(c)
 SeqScan(v)
 SeqScan(ph)
 SeqScan(b)
 SeqScan(u)
 Leading((c (v (ph (b u))))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, votes as v, users as u WHERE u.Id =b.UserId AND b.UserId = ph.UserId AND ph.UserId = v.UserId AND v.UserId = c.UserId AND c.CreationDate>='2010-07-19 19:20:28'::timestamp AND ph.CreationDate<='2014-08-15 19:35:43'::timestamp AND v.CreationDate='2014-06-25 00:00:00'::timestamp AND u.CreationDate>='2010-08-06 21:02:27'::timestamp;

/*+ HashJoin(b u)
 SeqScan(b)
 IndexScan(u)
 Leading((b u)) */
SELECT COUNT(*) FROM badges as b, users as u WHERE b.UserId= u.Id AND b.Date>='2010-08-05 21:26:36'::timestamp AND u.Views>=0 AND u.DownVotes>=0 AND u.DownVotes<=1;

/*+ HashJoin(c v u)
 HashJoin(v u)
 SeqScan(c)
 IndexScan(v)
 IndexScan(u)
 Leading((c (v u))) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND u.Views>=0 AND u.Views<=30 AND u.UpVotes=0 AND u.CreationDate<='2014-08-13 04:10:10'::timestamp;

/*+ HashJoin(c u v)
 HashJoin(c u)
 IndexScan(c)
 IndexScan(u)
 SeqScan(v)
 Leading(((c u) v)) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND c.PostId = v.PostId AND c.Score=0 AND u.Reputation<=393 AND u.Views<=21 AND u.CreationDate<='2014-09-06 03:49:47'::timestamp;

/*+ HashJoin(ph v c)
 HashJoin(ph v)
 SeqScan(ph)
 SeqScan(v)
 IndexScan(c)
 Leading(((ph v) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v WHERE ph.PostId = c.PostId AND ph.PostId = v.PostId AND c.Score=0 AND v.VoteTypeId=2 AND v.CreationDate>='2010-07-19 00:00:00'::timestamp AND v.CreationDate<='2014-09-08 00:00:00'::timestamp;

/*+ HashJoin(c u p)
 HashJoin(u p)
 SeqScan(c)
 SeqScan(u)
 SeqScan(p)
 Leading((c (u p))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.UserId = u.Id AND u.Id = p.OwnerUserId AND p.ViewCount<=10876 AND p.CreationDate>='2010-08-09 15:36:26'::timestamp AND u.Views<=50 AND u.DownVotes>=0;

/*+ HashJoin(c pl)
 SeqScan(c)
 SeqScan(pl)
 Leading((c pl)) */
SELECT COUNT(*) FROM comments as c, postLinks as pl WHERE c.PostId= pl.PostId AND c.Score=0 AND c.CreationDate<='2014-09-10 18:25:45'::timestamp AND pl.LinkTypeId=1 AND pl.CreationDate<='2014-08-26 14:40:37'::timestamp;

/*+ HashJoin(ph v c pl)
 HashJoin(c pl)
 HashJoin(ph v)
 SeqScan(ph)
 SeqScan(v)
 SeqScan(c)
 SeqScan(pl)
 Leading(((ph v) (c pl))) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, postHistory as ph, votes as v WHERE pl.PostId = c.PostId AND c.PostId = ph.PostId AND ph.PostId = v.PostId AND c.CreationDate>='2010-07-27 09:14:39'::timestamp AND c.CreationDate<='2014-09-12 18:33:01'::timestamp AND ph.PostHistoryTypeId=2 AND v.VoteTypeId=5;

/*+ HashJoin(c pl p)
 HashJoin(pl p)
 SeqScan(c)
 SeqScan(pl)
 SeqScan(p)
 Leading((c (pl p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE c.UserId = p.OwnerUserId AND p.Id = pl.PostId AND c.CreationDate<='2014-09-09 10:50:46'::timestamp AND p.Score<=26 AND p.AnswerCount=1 AND p.CommentCount<=8;

/*+ HashJoin(ph u p)
 HashJoin(u p)
 SeqScan(ph)
 SeqScan(u)
 SeqScan(p)
 Leading((ph (u p))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.PostId = p.Id AND p.OwnerUserId = u.Id AND p.AnswerCount>=0 AND p.AnswerCount<=4 AND p.CommentCount<=12 AND u.Views<=32;

/*+ HashJoin(b ph v c p pl)
 HashJoin(ph v c p pl)
 HashJoin(v c p pl)
 HashJoin(c p pl)
 HashJoin(p pl)
 SeqScan(b)
 SeqScan(ph)
 SeqScan(v)
 SeqScan(c)
 IndexScan(p)
 SeqScan(pl)
 Leading((b (ph (v (c (p pl)))))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, votes as v, badges as b WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.Id = ph.PostId AND p.Id = v.PostId AND b.UserId = c.UserId AND c.Score=0 AND p.FavoriteCount<=5 AND pl.LinkTypeId=1 AND v.BountyAmount>=0;

/*+ HashJoin(c b u)
 HashJoin(c b)
 SeqScan(c)
 IndexScan(b)
 SeqScan(u)
 Leading(((c b) u)) */
SELECT COUNT(*) FROM comments as c, badges as b, users as u WHERE u.Id = c.UserId AND c.UserId = b.UserId AND c.Score=0 AND b.Date='2014-02-14 18:58:22'::timestamp AND u.CreationDate>='2010-08-23 08:16:49'::timestamp AND u.CreationDate<='2014-09-12 23:53:42'::timestamp;

/*+ HashJoin(ph p u)
 NestLoop(p u)
 SeqScan(ph)
 SeqScan(p)
 IndexScan(u)
 Leading((ph (p u))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.PostId = p.Id AND p.OwnerUserId = u.Id AND p.PostTypeId=1 AND p.FavoriteCount=0 AND u.Reputation<=101 AND u.UpVotes<=34;

/*+ HashJoin(c p)
 SeqScan(c)
 SeqScan(p)
 Leading((c p)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND c.Score=0 AND p.FavoriteCount>=0 AND p.FavoriteCount<=8 AND p.CreationDate>='2010-08-06 03:22:13'::timestamp;

/*+ HashJoin(v ph c pl)
 HashJoin(ph c pl)
 HashJoin(c pl)
 SeqScan(v)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(pl)
 Leading((v (ph (c pl)))) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, postHistory as ph, votes as v WHERE pl.PostId = c.PostId AND c.PostId = ph.PostId AND ph.PostId = v.PostId AND c.Score=0 AND ph.PostHistoryTypeId=5 AND ph.CreationDate>='2010-08-27 22:00:32'::timestamp AND v.CreationDate>='2010-07-27 00:00:00'::timestamp;

/*+ HashJoin(c p pl)
 MergeJoin(p pl)
 SeqScan(c)
 SeqScan(p)
 IndexScan(pl)
 Leading((c (p pl))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE p.Id = c.PostId AND p.Id = pl.PostId AND c.Score=0 AND p.Score>=0 AND p.FavoriteCount>=0 AND pl.CreationDate>='2010-12-24 09:22:15'::timestamp;

/*+ HashJoin(c ph v u)
 HashJoin(ph v u)
 HashJoin(v u)
 SeqScan(c)
 SeqScan(ph)
 SeqScan(v)
 SeqScan(u)
 Leading((c (ph (v u)))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v, users as u WHERE u.Id = v.UserId AND v.UserId = ph.UserId AND ph.UserId =c.UserId AND ph.PostHistoryTypeId=5 AND ph.CreationDate>='2011-06-06 03:21:50'::timestamp AND u.Reputation>=1 AND u.UpVotes<=6;

/*+ HashJoin(v ph c pl)
 HashJoin(ph c pl)
 HashJoin(c pl)
 SeqScan(v)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(pl)
 Leading((v (ph (c pl)))) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, postHistory as ph, votes as v WHERE pl.PostId = c.PostId AND c.PostId = ph.PostId AND ph.PostId = v.PostId AND c.Score=1 AND v.VoteTypeId=5 AND v.CreationDate>='2010-07-19 00:00:00'::timestamp AND v.CreationDate<='2014-09-10 00:00:00'::timestamp;

/*+ HashJoin(ph v u b)
 HashJoin(v u b)
 HashJoin(u b)
 SeqScan(ph)
 SeqScan(v)
 SeqScan(u)
 IndexScan(b)
 Leading((ph (v (u b)))) */
SELECT COUNT(*) FROM postHistory as ph, votes as v, users as u, badges as b WHERE u.Id = ph.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND v.CreationDate<='2014-09-12 00:00:00'::timestamp AND u.Views>=0 AND u.UpVotes>=0 AND u.UpVotes<=15;

/*+ HashJoin(c p pl u)
 HashJoin(c p pl)
 HashJoin(c p)
 IndexScan(c)
 SeqScan(p)
 SeqScan(pl)
 IndexScan(u)
 Leading((((c p) pl) u)) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, users as u WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.OwnerUserId = u.Id AND c.Score=1 AND p.Score>=-2 AND p.CommentCount<=12 AND u.DownVotes>=0;

/*+ HashJoin(ph pl p)
 HashJoin(pl p)
 SeqScan(ph)
 SeqScan(pl)
 SeqScan(p)
 Leading((ph (pl p))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph WHERE p.Id = pl.PostId AND pl.PostId = ph.PostId AND p.Score=5 AND p.CreationDate<='2014-09-07 17:19:18'::timestamp AND pl.LinkTypeId=1 AND ph.CreationDate>='2010-07-20 23:21:05'::timestamp;

/*+ HashJoin(v b ph pl p c)
 HashJoin(b ph pl p c)
 HashJoin(ph pl p c)
 HashJoin(pl p c)
 NestLoop(p c)
 SeqScan(v)
 SeqScan(b)
 SeqScan(ph)
 SeqScan(pl)
 IndexScan(p)
 IndexScan(c)
 Leading((v (b (ph (pl (p c)))))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, votes as v, badges as b WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.Id = ph.PostId AND p.Id = v.PostId AND b.UserId = c.UserId AND c.Score=0 AND p.AnswerCount>=0 AND p.AnswerCount<=3 AND pl.LinkTypeId=1;

/*+ HashJoin(ph v c pl)
 HashJoin(c pl)
 HashJoin(ph v)
 SeqScan(ph)
 SeqScan(v)
 SeqScan(c)
 SeqScan(pl)
 Leading(((ph v) (c pl))) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, postHistory as ph, votes as v WHERE pl.PostId = c.PostId AND c.PostId = ph.PostId AND ph.PostId = v.PostId AND ph.PostHistoryTypeId=2 AND v.BountyAmount<=50 AND v.CreationDate>='2010-07-22 00:00:00'::timestamp AND v.CreationDate<='2014-09-13 00:00:00'::timestamp;

/*+ HashJoin(ph c)
 SeqScan(ph)
 IndexScan(c)
 Leading((ph c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph WHERE c.UserId = ph.UserId AND c.CreationDate>='2010-07-19 22:39:45'::timestamp AND c.CreationDate<='2014-09-13 17:59:56'::timestamp AND ph.PostHistoryTypeId=5 AND ph.CreationDate>='2010-09-19 20:09:26'::timestamp;

/*+ HashJoin(c ph p)
 HashJoin(ph p)
 SeqScan(c)
 SeqScan(ph)
 SeqScan(p)
 Leading((c (ph p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph WHERE p.Id = c.PostId AND p.Id = ph.PostId AND p.PostTypeId=1 AND p.Score<=19 AND p.CreationDate>='2010-09-03 08:03:15'::timestamp AND ph.PostHistoryTypeId=2;

/*+ HashJoin(c u v)
 HashJoin(c u)
 IndexScan(c)
 SeqScan(u)
 SeqScan(v)
 Leading(((c u) v)) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND c.PostId = v.PostId AND c.CreationDate<='2014-09-10 15:10:39'::timestamp AND v.VoteTypeId=2 AND u.Views>=0 AND u.Views<=29;

/*+ HashJoin(ph c p)
 HashJoin(c p)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(p)
 Leading((ph (c p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph WHERE p.Id = c.PostId AND p.Id = ph.PostId AND p.PostTypeId=1 AND p.AnswerCount<=3 AND p.CommentCount>=0 AND ph.CreationDate<='2014-08-24 20:59:31'::timestamp;

/*+ HashJoin(c u b)
 HashJoin(c u)
 IndexScan(c)
 IndexScan(u)
 IndexScan(b)
 Leading(((c u) b)) */
SELECT COUNT(*) FROM comments as c, badges as b, users as u WHERE u.Id = c.UserId AND c.UserId = b.UserId AND c.CreationDate<='2014-09-08 19:53:33'::timestamp AND u.Reputation>=1 AND u.CreationDate>='2010-08-04 14:12:03'::timestamp AND u.CreationDate<='2014-09-09 16:31:02'::timestamp;

/*+ HashJoin(u b)
 SeqScan(u)
 SeqScan(b)
 Leading((u b)) */
SELECT COUNT(*) FROM badges as b, users as u WHERE b.UserId= u.Id AND b.Date<='2014-09-09 13:53:43'::timestamp AND u.DownVotes<=0 AND u.UpVotes>=0 AND u.UpVotes<=32;

/*+ HashJoin(b u)
 SeqScan(b)
 IndexScan(u)
 Leading((b u)) */
SELECT COUNT(*) FROM badges as b, users as u WHERE b.UserId= u.Id AND b.Date>='2010-07-27 13:38:44'::timestamp AND u.UpVotes<=38 AND u.CreationDate>='2010-09-05 23:52:44'::timestamp AND u.CreationDate<='2014-07-26 02:12:55'::timestamp;

/*+ HashJoin(c p u)
 MergeJoin(c p)
 IndexScan(c)
 IndexScan(p)
 IndexScan(u)
 Leading(((c p) u)) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.PostId = p.Id AND c.UserId = u.Id AND p.ViewCount<=30581 AND p.CommentCount>=0 AND p.CreationDate<='2014-09-14 01:27:54'::timestamp AND u.CreationDate>='2010-09-02 23:42:12'::timestamp;

/*+ HashJoin(b u p v)
 MergeJoin(u p v)
 HashJoin(p v)
 SeqScan(b)
 IndexScan(u)
 SeqScan(p)
 SeqScan(v)
 Leading((b (u (p v)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.CommentCount<=11 AND p.FavoriteCount<=5 AND b.Date<='2014-09-13 19:17:53'::timestamp AND u.UpVotes<=75;

/*+ HashJoin(b u c)
 HashJoin(u c)
 SeqScan(b)
 SeqScan(u)
 SeqScan(c)
 Leading((b (u c))) */
SELECT COUNT(*) FROM comments as c, badges as b, users as u WHERE u.Id = c.UserId AND c.UserId = b.UserId AND c.CreationDate>='2010-07-29 16:24:46'::timestamp AND c.CreationDate<='2014-09-14 01:30:35'::timestamp AND u.Reputation>=1 AND u.DownVotes>=0;

/*+ HashJoin(c ph v)
 HashJoin(ph v)
 SeqScan(c)
 SeqScan(ph)
 SeqScan(v)
 Leading((c (ph v))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v WHERE ph.PostId = c.PostId AND ph.PostId = v.PostId AND ph.CreationDate<='2014-09-03 22:27:52'::timestamp AND v.VoteTypeId=1 AND v.CreationDate>='2010-07-19 00:00:00'::timestamp AND v.CreationDate<='2014-09-07 00:00:00'::timestamp;

/*+ NestLoop(p c)
 SeqScan(p)
 IndexScan(c)
 Leading((p c)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND c.Score=1 AND c.CreationDate<='2014-09-07 10:39:26'::timestamp AND p.AnswerCount=0 AND p.CreationDate='2013-10-01 16:24:42'::timestamp;

/*+ HashJoin(b u)
 SeqScan(b)
 IndexScan(u)
 Leading((b u)) */
SELECT COUNT(*) FROM badges as b, users as u WHERE b.UserId= u.Id AND b.Date>='2010-07-19 22:44:06'::timestamp AND b.Date<='2014-09-11 09:55:58'::timestamp AND u.DownVotes<=1 AND u.CreationDate>='2012-06-06 11:54:36'::timestamp;

/*+ HashJoin(ph c p)
 HashJoin(c p)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(p)
 Leading((ph (c p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph WHERE p.Id = c.PostId AND p.Id = ph.PostId AND c.CreationDate>='2010-07-21 15:02:21'::timestamp AND p.Score>=0 AND p.Score<=38 AND p.FavoriteCount>=0;

/*+ HashJoin(c pl p)
 HashJoin(pl p)
 SeqScan(c)
 SeqScan(pl)
 SeqScan(p)
 Leading((c (pl p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE c.UserId = p.OwnerUserId AND p.Id = pl.PostId AND p.AnswerCount>=0 AND p.AnswerCount<=2 AND p.CommentCount=0 AND p.FavoriteCount>=0;

/*+ HashJoin(b u)
 SeqScan(b)
 IndexScan(u)
 Leading((b u)) */
SELECT COUNT(*) FROM badges as b, users as u WHERE b.UserId= u.Id AND b.Date>='2010-08-17 09:53:45'::timestamp AND b.Date<='2014-08-28 21:09:28'::timestamp AND u.Views>=0 AND u.Views<=5927;

/*+ HashJoin(v ph c pl)
 HashJoin(ph c pl)
 HashJoin(c pl)
 SeqScan(v)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(pl)
 Leading((v (ph (c pl)))) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, postHistory as ph, votes as v WHERE pl.PostId = c.PostId AND c.PostId = ph.PostId AND ph.PostId = v.PostId AND c.Score=0 AND c.CreationDate>='2010-09-25 02:11:12'::timestamp AND ph.PostHistoryTypeId=5 AND v.VoteTypeId=2;

/*+ HashJoin(c v u b)
 HashJoin(v u b)
 HashJoin(v u)
 SeqScan(c)
 IndexScan(v)
 IndexScan(u)
 IndexScan(b)
 Leading((c ((v u) b))) */
SELECT COUNT(*) FROM comments as c, votes as v, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND c.CreationDate>='2010-07-29 16:10:48'::timestamp AND b.Date>='2010-07-27 09:48:44'::timestamp AND u.Reputation<=1406 AND u.DownVotes<=2;

/*+ NestLoop(c ph u)
 HashJoin(c ph)
 IndexScan(c)
 SeqScan(ph)
 IndexScan(u)
 Leading(((c ph) u)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND c.Score=0 AND ph.CreationDate='2014-08-27 04:07:57'::timestamp AND u.Views>=0 AND u.Views<=87;

/*+ HashJoin(ph u p)
 HashJoin(ph u)
 SeqScan(ph)
 IndexScan(u)
 SeqScan(p)
 Leading(((ph u) p)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.UserId = p.OwnerUserId AND ph.UserId = u.Id AND p.FavoriteCount>=0 AND p.FavoriteCount<=6 AND p.CreationDate<='2014-09-05 13:55:05'::timestamp AND u.Reputation<=144;

/*+ HashJoin(c v)
 SeqScan(c)
 SeqScan(v)
 Leading((c v)) */
SELECT COUNT(*) FROM comments as c, votes as v WHERE c.UserId = v.UserId AND c.CreationDate>='2009-04-12 07:49:19'::timestamp AND c.CreationDate<='2014-09-11 18:45:09'::timestamp AND v.BountyAmount>=0 AND v.CreationDate>='2010-07-27 00:00:00'::timestamp;

/*+ HashJoin(c pl p v)
 MergeJoin(c pl p)
 HashJoin(c pl)
 IndexScan(c)
 SeqScan(pl)
 SeqScan(p)
 SeqScan(v)
 Leading((((c pl) p) v)) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, votes as v WHERE p.Id = c.PostId AND c.PostId = pl.PostId AND pl.PostId = v.PostId AND c.CreationDate<='2014-09-01 23:58:55'::timestamp AND p.Score=1 AND p.AnswerCount<=6 AND p.FavoriteCount>=0;

/*+ HashJoin(b ph u p t)
 HashJoin(ph u p t)
 HashJoin(u p t)
 HashJoin(p t)
 SeqScan(b)
 SeqScan(ph)
 SeqScan(u)
 IndexScan(p)
 SeqScan(t)
 Leading((b (ph (u (p t))))) */
SELECT COUNT(*) FROM tags as t, posts as p, users as u, postHistory as ph, badges as b WHERE p.Id = t.ExcerptPostId AND u.Id = ph.UserId AND u.Id = b.UserId AND u.Id = p.OwnerUserId AND p.CreationDate>='2010-09-23 23:10:50'::timestamp AND u.UpVotes<=97 AND ph.PostHistoryTypeId=5 AND b.Date<='2014-09-09 03:59:06'::timestamp;

/*+ HashJoin(ph c u)
 HashJoin(c u)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(u)
 Leading((ph (c u))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND c.Score=0 AND c.CreationDate>='2010-08-13 16:35:07'::timestamp AND u.Reputation<=269 AND u.UpVotes>=0;

/*+ HashJoin(c v u b)
 HashJoin(c v u)
 HashJoin(v u)
 SeqScan(c)
 IndexScan(v)
 IndexScan(u)
 SeqScan(b)
 Leading(((c (v u)) b)) */
SELECT COUNT(*) FROM comments as c, votes as v, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND c.Score=0 AND v.BountyAmount>=0 AND v.BountyAmount<=50 AND u.UpVotes>=0;

/*+ HashJoin(ph p u)
 HashJoin(ph p)
 SeqScan(ph)
 SeqScan(p)
 IndexScan(u)
 Leading(((ph p) u)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.PostId = p.Id AND p.OwnerUserId = u.Id AND ph.PostHistoryTypeId=2 AND p.Score<=164 AND p.CommentCount=0 AND u.DownVotes>=0;

/*+ HashJoin(c p pl)
 MergeJoin(p pl)
 SeqScan(c)
 SeqScan(p)
 IndexScan(pl)
 Leading((c (p pl))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE c.UserId = p.OwnerUserId AND p.Id = pl.PostId AND c.Score=2 AND c.CreationDate<='2014-08-30 18:51:22'::timestamp AND p.FavoriteCount>=0 AND p.FavoriteCount<=9;

/*+ HashJoin(ph b u v)
 HashJoin(b u v)
 HashJoin(u v)
 SeqScan(ph)
 SeqScan(b)
 SeqScan(u)
 SeqScan(v)
 Leading((ph (b (u v)))) */
SELECT COUNT(*) FROM postHistory as ph, votes as v, users as u, badges as b WHERE u.Id = ph.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND v.BountyAmount<=50 AND v.CreationDate>='2009-11-10 00:00:00'::timestamp AND v.CreationDate<='2014-09-10 00:00:00'::timestamp AND u.UpVotes<=43;

/*+ MergeJoin(ph b p u c)
 HashJoin(b p u c)
 HashJoin(p u c)
 HashJoin(u c)
 SeqScan(ph)
 SeqScan(b)
 SeqScan(p)
 SeqScan(u)
 SeqScan(c)
 Leading((ph (b (p (u c))))) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = ph.UserId AND u.Id = b.UserId AND c.Score=0 AND p.ViewCount<=1507 AND u.Reputation<=267 AND u.DownVotes<=1;

/*+ HashJoin(ph b u c)
 HashJoin(b u c)
 HashJoin(u c)
 SeqScan(ph)
 SeqScan(b)
 SeqScan(u)
 SeqScan(c)
 Leading((ph (b (u c)))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = ph.UserId AND u.Id = b.UserId AND c.Score=0 AND ph.PostHistoryTypeId=1 AND ph.CreationDate>='2010-09-19 14:02:26'::timestamp AND u.CreationDate>='2010-09-02 05:43:30'::timestamp;

/*+ HashJoin(c u ph)
 HashJoin(c u)
 IndexScan(c)
 IndexScan(u)
 SeqScan(ph)
 Leading(((c u) ph)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND c.CreationDate<='2014-09-08 19:54:38'::timestamp AND ph.PostHistoryTypeId=6 AND u.Reputation>=1 AND u.CreationDate>='2011-03-05 10:48:05'::timestamp;

/*+ HashJoin(c u b)
 HashJoin(c u)
 SeqScan(c)
 IndexScan(u)
 SeqScan(b)
 Leading(((c u) b)) */
SELECT COUNT(*) FROM comments as c, badges as b, users as u WHERE u.Id = c.UserId AND c.UserId = b.UserId AND c.Score=0 AND c.CreationDate<='2014-09-08 02:02:36'::timestamp AND u.Views=1 AND u.DownVotes>=0;

/*+ HashJoin(v p u)
 HashJoin(p u)
 SeqScan(v)
 SeqScan(p)
 IndexScan(u)
 Leading((v (p u))) */
SELECT COUNT(*) FROM votes as v, posts as p, users as u WHERE v.UserId = p.OwnerUserId AND p.OwnerUserId = u.Id AND u.Reputation>=1 AND u.Reputation<=140 AND u.Views>=0 AND u.Views<=23;

/*+ HashJoin(c v ph b u)
 HashJoin(v ph b u)
 HashJoin(ph b u)
 HashJoin(b u)
 SeqScan(c)
 SeqScan(v)
 SeqScan(ph)
 IndexScan(b)
 SeqScan(u)
 Leading((c (v (ph (b u))))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, votes as v, users as u WHERE u.Id =b.UserId AND b.UserId = ph.UserId AND ph.UserId = v.UserId AND v.UserId = c.UserId AND ph.PostHistoryTypeId=2 AND v.VoteTypeId=5 AND u.Reputation>=1 AND u.UpVotes<=100;

/*+ HashJoin(c pl)
 SeqScan(c)
 SeqScan(pl)
 Leading((c pl)) */
SELECT COUNT(*) FROM comments as c, postLinks as pl WHERE c.PostId= pl.PostId AND c.Score=0 AND c.CreationDate>='2010-10-15 18:25:26'::timestamp AND c.CreationDate<='2014-09-01 12:29:29'::timestamp AND pl.LinkTypeId=1;

/*+ HashJoin(c u v)
 HashJoin(c u)
 IndexScan(c)
 SeqScan(u)
 SeqScan(v)
 Leading(((c u) v)) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND c.PostId = v.PostId AND c.CreationDate>='2010-07-20 05:28:20'::timestamp AND v.VoteTypeId=2 AND u.UpVotes>=0 AND u.CreationDate<='2014-09-12 14:52:52'::timestamp;

/*+ MergeJoin(c u p pl)
 HashJoin(u p pl)
 HashJoin(p pl)
 IndexScan(c)
 SeqScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((c (u (p pl)))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, users as u WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.OwnerUserId = u.Id AND u.Views>=0 AND u.Views<=90 AND u.DownVotes>=0 AND u.UpVotes>=0;

/*+ MergeJoin(c p pl)
 MergeJoin(p pl)
 SeqScan(c)
 SeqScan(p)
 IndexScan(pl)
 Leading((c (p pl))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE c.UserId = p.OwnerUserId AND p.Id = pl.PostId AND c.Score=0 AND c.CreationDate='2013-11-18 00:29:49'::timestamp AND p.AnswerCount=0 AND p.CreationDate<='2014-09-09 14:01:37'::timestamp;

/*+ HashJoin(c u p v)
 HashJoin(c u p)
 MergeJoin(c u)
 IndexScan(c)
 IndexScan(u)
 SeqScan(p)
 SeqScan(v)
 Leading((((c u) p) v)) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = v.UserId AND c.Score=0 AND p.AnswerCount>=0 AND p.FavoriteCount<=30 AND u.CreationDate>='2010-11-09 04:31:58'::timestamp;

/*+ HashJoin(ph v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(ph)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((ph (v (u p)))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, votes as v, users as u WHERE p.Id = ph.PostId AND u.Id = p.OwnerUserId AND p.Id = v.PostId AND p.Score>=-1 AND p.Score<=15 AND v.VoteTypeId=2 AND v.CreationDate<='2014-09-11 00:00:00'::timestamp;

/*+ HashJoin(ph u c)
 HashJoin(u c)
 SeqScan(ph)
 SeqScan(u)
 SeqScan(c)
 Leading((ph (u c))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND c.CreationDate>='2010-09-17 14:46:17'::timestamp AND c.CreationDate<='2014-09-12 05:33:08'::timestamp AND ph.PostHistoryTypeId=2 AND u.CreationDate>='2010-07-27 09:56:56'::timestamp;

/*+ HashJoin(b p)
 IndexScan(b)
 SeqScan(p)
 Leading((b p)) */
SELECT COUNT(*) FROM badges as b, posts as p WHERE b.UserId = p.OwnerUserId AND p.PostTypeId=2 AND p.Score>=0 AND p.Score<=20 AND p.CommentCount>=0;

/*+ HashJoin(b u p pl)
 MergeJoin(u p pl)
 MergeJoin(p pl)
 SeqScan(b)
 IndexScan(u)
 SeqScan(p)
 IndexScan(pl)
 Leading((b (u (p pl)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.AnswerCount>=0 AND p.CommentCount<=10 AND p.CreationDate<='2014-09-02 23:55:31'::timestamp AND u.DownVotes>=0;

/*+ NestLoop(p c)
 SeqScan(p)
 IndexScan(c)
 Leading((p c)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND p.PostTypeId=2 AND p.Score=0 AND p.CommentCount>=0 AND p.CommentCount<=8;

/*+ HashJoin(c pl p)
 HashJoin(pl p)
 SeqScan(c)
 SeqScan(pl)
 SeqScan(p)
 Leading((c (pl p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE c.UserId = p.OwnerUserId AND p.Id = pl.PostId AND c.CreationDate>='2010-08-12 23:17:20'::timestamp AND c.CreationDate<='2014-09-12 18:19:00'::timestamp AND p.AnswerCount=0 AND p.CommentCount>=0;

/*+ HashJoin(v ph c pl)
 HashJoin(ph c pl)
 HashJoin(c pl)
 SeqScan(v)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(pl)
 Leading((v (ph (c pl)))) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, postHistory as ph, votes as v WHERE pl.PostId = c.PostId AND c.PostId = ph.PostId AND ph.PostId = v.PostId AND c.CreationDate>='2010-07-27 18:19:06'::timestamp AND c.CreationDate<='2014-09-13 23:27:25'::timestamp AND pl.LinkTypeId=1 AND v.CreationDate<='2014-09-12 00:00:00'::timestamp;

/*+ HashJoin(ph b c u)
 HashJoin(b c u)
 HashJoin(c u)
 SeqScan(ph)
 SeqScan(b)
 SeqScan(c)
 SeqScan(u)
 Leading((ph (b (c u)))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = ph.UserId AND u.Id = b.UserId AND b.Date>='2010-09-03 18:14:15'::timestamp AND b.Date<='2014-09-07 19:39:41'::timestamp AND u.Views<=53 AND u.UpVotes=0;

/*+ HashJoin(c p pl)
 MergeJoin(p pl)
 SeqScan(c)
 SeqScan(p)
 IndexScan(pl)
 Leading((c (p pl))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE c.UserId = p.OwnerUserId AND p.Id = pl.PostId AND p.ViewCount>=0 AND p.ViewCount<=5855 AND p.FavoriteCount>=0 AND p.FavoriteCount<=10;

/*+ HashJoin(c v u b)
 HashJoin(c v u)
 HashJoin(v u)
 SeqScan(c)
 IndexScan(v)
 IndexScan(u)
 SeqScan(b)
 Leading(((c (v u)) b)) */
SELECT COUNT(*) FROM comments as c, votes as v, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND v.BountyAmount>=0 AND u.Views>=0 AND u.DownVotes<=0 AND u.UpVotes>=0;

/*+ HashJoin(ph v u b)
 HashJoin(v u b)
 HashJoin(u b)
 SeqScan(ph)
 SeqScan(v)
 SeqScan(u)
 IndexScan(b)
 Leading((ph (v (u b)))) */
SELECT COUNT(*) FROM postHistory as ph, votes as v, users as u, badges as b WHERE u.Id = ph.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND ph.CreationDate<='2014-08-11 10:46:05'::timestamp AND v.BountyAmount<=200 AND u.Views>=0 AND b.Date<='2014-09-09 11:51:14'::timestamp;

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
 SeqScan(pl)
 Leading((ph (v (u (c (p pl)))))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, votes as v, users as u WHERE p.Id = pl.PostId AND p.Id = ph.PostId AND p.Id = c.PostId AND u.Id = c.UserId AND u.Id = v.UserId AND p.PostTypeId=1 AND p.Score=2 AND v.CreationDate>='2010-07-20 00:00:00'::timestamp AND u.Views<=93;

/*+ HashJoin(v ph c pl)
 HashJoin(ph c pl)
 HashJoin(c pl)
 SeqScan(v)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(pl)
 Leading((v (ph (c pl)))) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, postHistory as ph, votes as v WHERE pl.PostId = c.PostId AND c.PostId = ph.PostId AND ph.PostId = v.PostId AND c.Score=0 AND pl.LinkTypeId=1 AND pl.CreationDate>='2011-06-29 12:49:23'::timestamp AND v.CreationDate<='2014-09-13 00:00:00'::timestamp;

/*+ HashJoin(v ph c pl)
 HashJoin(ph c pl)
 HashJoin(c pl)
 SeqScan(v)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(pl)
 Leading((v (ph (c pl)))) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, postHistory as ph, votes as v WHERE pl.PostId = c.PostId AND c.PostId = ph.PostId AND ph.PostId = v.PostId AND c.Score=0 AND ph.PostHistoryTypeId=4 AND v.VoteTypeId=2 AND v.CreationDate>='2010-07-20 00:00:00'::timestamp;

/*+ HashJoin(b u)
 SeqScan(b)
 IndexScan(u)
 Leading((b u)) */
SELECT COUNT(*) FROM badges as b, users as u WHERE b.UserId= u.Id AND b.Date>='2010-08-03 00:45:11'::timestamp AND b.Date<='2014-09-03 10:32:14'::timestamp AND u.UpVotes>=0 AND u.CreationDate<='2014-08-31 21:13:51'::timestamp;

/*+ HashJoin(c p)
 SeqScan(c)
 SeqScan(p)
 Leading((c p)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND p.PostTypeId=1 AND p.ViewCount>=0 AND p.AnswerCount<=3 AND p.CommentCount>=0;

/*+ HashJoin(c u b)
 HashJoin(c u)
 IndexScan(c)
 IndexScan(u)
 IndexScan(b)
 Leading(((c u) b)) */
SELECT COUNT(*) FROM comments as c, badges as b, users as u WHERE u.Id = c.UserId AND c.UserId = b.UserId AND u.Reputation>=1 AND u.DownVotes>=0 AND u.DownVotes<=0 AND u.CreationDate<='2014-09-01 16:49:52'::timestamp;

/*+ HashJoin(c pl p)
 MergeJoin(pl p)
 SeqScan(c)
 SeqScan(pl)
 SeqScan(p)
 Leading((c (pl p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE c.UserId = p.OwnerUserId AND p.Id = pl.PostId AND c.Score=0 AND p.ViewCount>=0 AND p.AnswerCount>=0 AND p.CreationDate<='2014-09-06 13:12:24'::timestamp;

/*+ HashJoin(ph c p)
 HashJoin(c p)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(p)
 Leading((ph (c p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph WHERE p.Id = c.PostId AND p.Id = ph.PostId AND c.CreationDate<='2014-09-05 23:01:07'::timestamp AND p.CreationDate<='2014-08-29 14:38:40'::timestamp AND ph.CreationDate>='2010-12-08 04:01:56'::timestamp AND ph.CreationDate<='2014-09-06 15:39:37'::timestamp;

/*+ HashJoin(ph p u)
 HashJoin(p u)
 SeqScan(ph)
 SeqScan(p)
 IndexScan(u)
 Leading((ph (p u))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.PostId = p.Id AND p.OwnerUserId = u.Id AND p.CommentCount<=11 AND p.CreationDate>='2010-07-21 15:38:11'::timestamp AND p.CreationDate<='2014-09-09 18:14:50'::timestamp AND u.Views>=0;

/*+ HashJoin(b u c)
 HashJoin(u c)
 SeqScan(b)
 SeqScan(u)
 SeqScan(c)
 Leading((b (u c))) */
SELECT COUNT(*) FROM comments as c, badges as b, users as u WHERE u.Id = c.UserId AND c.UserId = b.UserId AND c.Score=0 AND u.DownVotes>=0 AND u.UpVotes>=0 AND u.UpVotes<=8;

/*+ MergeJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 IndexScan(b)
 SeqScan(v)
 SeqScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND v.CreationDate<='2014-09-13 00:00:00'::timestamp AND p.FavoriteCount>=0 AND u.Reputation<=315 AND u.DownVotes<=0;

/*+ HashJoin(b p)
 SeqScan(b)
 SeqScan(p)
 Leading((b p)) */
SELECT COUNT(*) FROM badges as b, posts as p WHERE b.UserId = p.OwnerUserId AND p.Score>=-1 AND p.AnswerCount<=35 AND p.CommentCount<=14 AND p.FavoriteCount>=0;

/*+ HashJoin(ph b u c)
 HashJoin(b u c)
 HashJoin(u c)
 SeqScan(ph)
 SeqScan(b)
 SeqScan(u)
 SeqScan(c)
 Leading((ph (b (u c)))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = ph.UserId AND u.Id = b.UserId AND ph.PostHistoryTypeId=5 AND b.Date<='2014-08-29 22:46:51'::timestamp AND u.Views>=0 AND u.Views<=155;

/*+ HashJoin(c p u)
 MergeJoin(c p)
 IndexScan(c)
 IndexScan(p)
 IndexScan(u)
 Leading(((c p) u)) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.PostId = p.Id AND c.UserId = u.Id AND c.Score=0 AND p.PostTypeId=2 AND p.CreationDate>='2010-07-20 23:07:48'::timestamp AND u.CreationDate<='2014-08-09 09:55:16'::timestamp;

/*+ HashJoin(u p)
 SeqScan(u)
 SeqScan(p)
 Leading((u p)) */
SELECT COUNT(*) FROM posts as p, users as u WHERE p.OwnerUserId= u.Id AND p.ViewCount<=3252 AND p.FavoriteCount<=2 AND u.DownVotes=0 AND u.CreationDate>='2010-07-20 19:10:58'::timestamp;

/*+ HashJoin(c p u)
 MergeJoin(c p)
 IndexScan(c)
 IndexScan(p)
 IndexScan(u)
 Leading(((c p) u)) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.PostId = p.Id AND c.UserId = u.Id AND c.CreationDate>='2010-07-28 13:20:05'::timestamp AND p.Score>=0 AND p.CommentCount>=0 AND u.UpVotes<=13;

/*+ MergeJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 IndexScan(b)
 SeqScan(v)
 SeqScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.ViewCount<=11533 AND p.AnswerCount<=3 AND p.CreationDate>='2010-07-25 14:53:50'::timestamp AND u.UpVotes=0;

/*+ HashJoin(p u)
 SeqScan(p)
 SeqScan(u)
 Leading((p u)) */
SELECT COUNT(*) FROM posts as p, users as u WHERE p.OwnerUserId= u.Id AND p.PostTypeId=1 AND p.ViewCount>=0 AND p.CommentCount>=0 AND u.Reputation>=1;

/*+ NestLoop(p c)
 SeqScan(p)
 IndexScan(c)
 Leading((p c)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND p.ViewCount>=0 AND p.FavoriteCount=0 AND p.CreationDate>='2009-02-02 14:24:31'::timestamp AND p.CreationDate<='2014-09-01 08:06:17'::timestamp;

/*+ HashJoin(p b)
 SeqScan(p)
 SeqScan(b)
 Leading((p b)) */
SELECT COUNT(*) FROM badges as b, posts as p WHERE b.UserId = p.OwnerUserId AND b.Date<='2014-09-09 06:15:48'::timestamp AND p.CommentCount>=0 AND p.FavoriteCount>=0 AND p.FavoriteCount<=7;

/*+ HashJoin(ph u p)
 HashJoin(u p)
 SeqScan(ph)
 SeqScan(u)
 SeqScan(p)
 Leading((ph (u p))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.PostId = p.Id AND p.OwnerUserId = u.Id AND ph.CreationDate>='2010-07-31 20:17:03'::timestamp AND p.PostTypeId=1 AND p.ViewCount>=0 AND p.AnswerCount=0;

/*+ MergeJoin(c v ph u b)
 HashJoin(v ph u b)
 HashJoin(ph u b)
 HashJoin(u b)
 IndexScan(c)
 SeqScan(v)
 SeqScan(ph)
 SeqScan(u)
 IndexScan(b)
 Leading((c (v (ph (u b))))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, votes as v, users as u WHERE u.Id =b.UserId AND b.UserId = ph.UserId AND ph.UserId = v.UserId AND v.UserId = c.UserId AND c.CreationDate>='2010-07-22 03:23:01'::timestamp AND ph.PostHistoryTypeId=1 AND b.Date>='2010-07-21 19:38:13'::timestamp AND u.Views<=57;

/*+ NestLoop(p b)
 SeqScan(p)
 IndexScan(b)
 Leading((p b)) */
SELECT COUNT(*) FROM badges as b, posts as p WHERE b.UserId = p.OwnerUserId AND b.Date>='2010-08-12 13:04:57'::timestamp AND p.Score=2 AND p.AnswerCount=0 AND p.FavoriteCount<=4;

/*+ HashJoin(u p)
 SeqScan(u)
 SeqScan(p)
 Leading((u p)) */
SELECT COUNT(*) FROM posts as p, users as u WHERE p.OwnerUserId= u.Id AND p.CreationDate<='2014-09-08 06:43:11'::timestamp AND u.Views<=66 AND u.DownVotes>=0 AND u.CreationDate='2012-11-11 21:46:52'::timestamp;

/*+ HashJoin(ph p pl)
 HashJoin(p pl)
 SeqScan(ph)
 SeqScan(p)
 IndexScan(pl)
 Leading((ph (p pl))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph WHERE p.Id = pl.PostId AND pl.PostId = ph.PostId AND p.AnswerCount>=0 AND p.CommentCount>=0 AND p.CreationDate<='2014-09-11 05:36:53'::timestamp AND pl.LinkTypeId=1;

/*+ HashJoin(c pl p v)
 HashJoin(c pl p)
 HashJoin(c pl)
 IndexScan(c)
 SeqScan(pl)
 SeqScan(p)
 SeqScan(v)
 Leading((((c pl) p) v)) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, votes as v WHERE p.Id = c.PostId AND c.PostId = pl.PostId AND pl.PostId = v.PostId AND c.Score=0 AND p.ViewCount>=0 AND p.ViewCount<=7960 AND pl.LinkTypeId=1;

/*+ HashJoin(ph u c)
 HashJoin(u c)
 SeqScan(ph)
 SeqScan(u)
 IndexScan(c)
 Leading((ph (u c))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND c.Score=0 AND c.CreationDate>='2010-07-19 19:59:04'::timestamp AND u.CreationDate>='2010-07-19 21:41:45'::timestamp AND u.CreationDate<='2014-08-23 23:41:59'::timestamp;

/*+ MergeJoin(c b v u)
 HashJoin(b v u)
 HashJoin(v u)
 IndexScan(c)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 Leading((c (b (v u)))) */
SELECT COUNT(*) FROM comments as c, votes as v, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND c.Score=0 AND c.CreationDate<='2014-09-12 11:10:25'::timestamp AND u.Views=4 AND u.DownVotes>=0;

/*+ HashJoin(ph c pl v)
 HashJoin(ph c pl)
 HashJoin(c pl)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(pl)
 SeqScan(v)
 Leading(((ph (c pl)) v)) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, postHistory as ph, votes as v WHERE pl.PostId = c.PostId AND c.PostId = ph.PostId AND ph.PostId = v.PostId AND c.CreationDate<='2014-09-13 18:41:00'::timestamp AND ph.CreationDate>='2010-08-27 10:10:35'::timestamp AND ph.CreationDate<='2014-09-03 12:07:22'::timestamp AND v.CreationDate>='2010-07-19 00:00:00'::timestamp;

/*+ HashJoin(u p)
 SeqScan(u)
 SeqScan(p)
 Leading((u p)) */
SELECT COUNT(*) FROM posts as p, users as u WHERE p.OwnerUserId= u.Id AND p.Score<=17 AND p.ViewCount>=0 AND p.AnswerCount>=0 AND p.AnswerCount<=6;

/*+ HashJoin(ph v c)
 HashJoin(ph v)
 SeqScan(ph)
 SeqScan(v)
 SeqScan(c)
 Leading(((ph v) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v WHERE ph.PostId = c.PostId AND ph.PostId = v.PostId AND c.Score=1 AND ph.PostHistoryTypeId=2 AND v.BountyAmount>=0 AND v.BountyAmount<=100;

/*+ HashJoin(c v u)
 HashJoin(v u)
 SeqScan(c)
 IndexScan(v)
 IndexScan(u)
 Leading((c (v u))) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND u.Views>=0 AND u.Views<=115 AND u.UpVotes<=100 AND u.CreationDate>='2010-12-03 01:50:07'::timestamp;

/*+ HashJoin(ph v c pl)
 HashJoin(ph v c)
 HashJoin(ph v)
 SeqScan(ph)
 SeqScan(v)
 SeqScan(c)
 SeqScan(pl)
 Leading((((ph v) c) pl)) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, postHistory as ph, votes as v WHERE pl.PostId = c.PostId AND c.PostId = ph.PostId AND ph.PostId = v.PostId AND c.Score=0 AND c.CreationDate>='2010-07-19 20:02:25'::timestamp AND ph.PostHistoryTypeId=2 AND v.CreationDate='2012-04-12 00:00:00'::timestamp;

/*+ HashJoin(u c p pl)
 HashJoin(c p pl)
 HashJoin(p pl)
 SeqScan(u)
 SeqScan(c)
 IndexScan(p)
 SeqScan(pl)
 Leading((u (c (p pl)))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, users as u WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.OwnerUserId = u.Id AND p.PostTypeId=1 AND p.Score<=18 AND pl.LinkTypeId=1 AND u.Reputation>=1;

/*+ HashJoin(b v u)
 MergeJoin(v u)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 Leading((b (v u))) */
SELECT COUNT(*) FROM votes as v, badges as b, users as u WHERE u.Id = v.UserId AND v.UserId = b.UserId AND v.CreationDate>='2010-07-19 00:00:00'::timestamp AND u.Views=2 AND u.DownVotes=0 AND u.UpVotes<=147;

/*+ HashJoin(c pl p)
 HashJoin(pl p)
 SeqScan(c)
 SeqScan(pl)
 SeqScan(p)
 Leading((c (pl p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE c.UserId = p.OwnerUserId AND p.Id = pl.PostId AND c.CreationDate>='2010-07-27 11:04:27'::timestamp AND c.CreationDate<='2014-09-02 19:14:06'::timestamp AND p.PostTypeId=1 AND p.AnswerCount=0;

/*+ MergeJoin(ph u c b)
 HashJoin(ph u c)
 HashJoin(u c)
 SeqScan(ph)
 SeqScan(u)
 IndexScan(c)
 IndexScan(b)
 Leading(((ph (u c)) b)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = ph.UserId AND u.Id = b.UserId AND c.Score=0 AND ph.PostHistoryTypeId=1 AND b.Date>='2010-07-20 05:09:08'::timestamp AND b.Date<='2014-09-01 12:37:54'::timestamp;

/*+ HashJoin(c p u v)
 HashJoin(c p u)
 HashJoin(c p)
 IndexScan(c)
 SeqScan(p)
 IndexScan(u)
 SeqScan(v)
 Leading((((c p) u) v)) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE p.Id = c.PostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Views>=0 AND u.DownVotes<=0 AND u.UpVotes>=0 AND u.UpVotes<=5;

/*+ HashJoin(c pl p)
 HashJoin(pl p)
 SeqScan(c)
 IndexScan(pl)
 SeqScan(p)
 Leading((c (pl p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE p.Id = c.PostId AND p.Id = pl.PostId AND c.CreationDate<='2014-09-11 07:27:31'::timestamp AND p.ViewCount>=0 AND p.AnswerCount<=4 AND pl.LinkTypeId=1;

/*+ HashJoin(c v u b)
 HashJoin(v u b)
 HashJoin(u b)
 SeqScan(c)
 SeqScan(v)
 SeqScan(u)
 IndexScan(b)
 Leading((c (v (u b)))) */
SELECT COUNT(*) FROM comments as c, votes as v, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND c.CreationDate>='2010-08-06 16:25:05'::timestamp AND c.CreationDate<='2014-09-04 00:03:32'::timestamp AND u.Views<=129 AND u.CreationDate>='2010-07-19 20:52:00'::timestamp;

/*+ HashJoin(v b u p)
 HashJoin(b u p)
 HashJoin(u p)
 SeqScan(v)
 SeqScan(b)
 SeqScan(u)
 IndexScan(p)
 Leading((v (b (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE u.Id = v.UserId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND v.CreationDate>='2009-12-06 00:00:00'::timestamp AND p.PostTypeId=2 AND p.CommentCount<=8 AND u.UpVotes>=0;

/*+ HashJoin(ph p pl)
 HashJoin(p pl)
 SeqScan(ph)
 SeqScan(p)
 SeqScan(pl)
 Leading((ph (p pl))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph WHERE p.Id = pl.PostId AND pl.PostId = ph.PostId AND p.PostTypeId=1 AND p.CommentCount>=0 AND pl.LinkTypeId=1 AND pl.CreationDate>='2010-10-22 17:04:53'::timestamp;

/*+ MergeJoin(u v b)
 HashJoin(v b)
 IndexScan(u)
 SeqScan(v)
 SeqScan(b)
 Leading((u (v b))) */
SELECT COUNT(*) FROM votes as v, badges as b, users as u WHERE u.Id = v.UserId AND v.UserId = b.UserId AND v.BountyAmount>=0 AND v.BountyAmount<=100 AND b.Date>='2010-07-21 04:33:12'::timestamp AND b.Date<='2014-09-12 10:47:50'::timestamp;

/*+ MergeJoin(c b v u)
 HashJoin(b v u)
 HashJoin(v u)
 IndexScan(c)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 Leading((c (b (v u)))) */
SELECT COUNT(*) FROM comments as c, votes as v, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND u.Reputation=101 AND u.Views<=10 AND u.DownVotes>=0 AND u.DownVotes<=0;

/*+ HashJoin(ph u b v)
 HashJoin(u b v)
 HashJoin(u b)
 SeqScan(ph)
 IndexScan(u)
 SeqScan(b)
 SeqScan(v)
 Leading((ph ((u b) v))) */
SELECT COUNT(*) FROM postHistory as ph, votes as v, users as u, badges as b WHERE u.Id = ph.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND ph.CreationDate>='2011-04-07 00:09:02'::timestamp AND ph.CreationDate<='2014-08-04 09:58:43'::timestamp AND v.CreationDate>='2010-07-23 00:00:00'::timestamp AND v.CreationDate<='2014-09-09 00:00:00'::timestamp;

/*+ HashJoin(c pl p)
 MergeJoin(pl p)
 SeqScan(c)
 SeqScan(pl)
 SeqScan(p)
 Leading((c (pl p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE c.UserId = p.OwnerUserId AND p.Id = pl.PostId AND c.Score=1 AND p.PostTypeId=1 AND p.ViewCount>=0 AND p.FavoriteCount<=35;

/*+ HashJoin(u b)
 SeqScan(u)
 SeqScan(b)
 Leading((u b)) */
SELECT COUNT(*) FROM badges as b, users as u WHERE b.UserId= u.Id AND b.Date>='2010-07-28 21:08:55'::timestamp AND b.Date<='2014-09-11 14:28:20'::timestamp AND u.CreationDate>='2010-08-19 15:01:20'::timestamp AND u.CreationDate<='2014-08-28 18:26:33'::timestamp;

/*+ HashJoin(u pl p)
 MergeJoin(pl p)
 SeqScan(u)
 SeqScan(pl)
 SeqScan(p)
 Leading((u (pl p))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, users as u WHERE p.Id = pl.PostId AND p.OwnerUserId = u.Id AND p.ViewCount<=2064 AND p.FavoriteCount>=0 AND u.DownVotes>=0 AND u.DownVotes<=0;

/*+ HashJoin(ph c)
 IndexScan(ph)
 IndexScan(c)
 Leading((ph c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph WHERE c.UserId = ph.UserId AND c.CreationDate<='2014-09-12 12:11:24'::timestamp AND ph.PostHistoryTypeId=2 AND ph.CreationDate>='2011-11-28 08:29:02'::timestamp AND ph.CreationDate<='2014-08-10 09:02:58'::timestamp;

/*+ HashJoin(ph c)
 IndexScan(ph)
 IndexScan(c)
 Leading((ph c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph WHERE c.UserId = ph.UserId AND c.CreationDate>='2010-08-06 15:21:35'::timestamp AND c.CreationDate<='2014-09-12 12:36:03'::timestamp AND ph.PostHistoryTypeId=2 AND ph.CreationDate<='2014-08-06 16:00:12'::timestamp;

/*+ MergeJoin(c p u)
 MergeJoin(c p)
 IndexScan(c)
 IndexScan(p)
 IndexScan(u)
 Leading(((c p) u)) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.PostId = p.Id AND c.UserId = u.Id AND p.PostTypeId=1 AND p.FavoriteCount<=3 AND p.CreationDate>='2010-09-12 15:12:02'::timestamp AND u.CreationDate<='2014-08-05 03:44:15'::timestamp;

/*+ HashJoin(b u)
 SeqScan(b)
 IndexScan(u)
 Leading((b u)) */
SELECT COUNT(*) FROM badges as b, users as u WHERE b.UserId= u.Id AND u.UpVotes>=0 AND u.UpVotes<=497 AND u.CreationDate>='2010-08-10 08:19:24'::timestamp AND u.CreationDate<='2014-08-29 01:59:12'::timestamp;

