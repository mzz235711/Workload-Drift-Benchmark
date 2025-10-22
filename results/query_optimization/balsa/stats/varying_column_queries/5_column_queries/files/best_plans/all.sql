/*+ HashJoin(c ph v u)
 HashJoin(ph v u)
 HashJoin(v u)
 SeqScan(c)
 SeqScan(ph)
 SeqScan(v)
 IndexScan(u)
 Leading((c (ph (v u)))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v, users as u WHERE u.Id = v.UserId AND v.UserId = ph.UserId AND ph.UserId =c.UserId AND v.BountyAmount>=0 AND v.BountyAmount<=100 AND v.CreationDate<='2014-09-11 00:00:00'::timestamp AND u.Reputation=101 AND u.UpVotes>=0;

/*+ HashJoin(ph c u)
 HashJoin(c u)
 SeqScan(ph)
 SeqScan(c)
 IndexScan(u)
 Leading((ph (c u))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND c.CreationDate>='2010-08-13 16:35:07'::timestamp AND c.CreationDate<='2014-09-07 22:36:29'::timestamp AND u.Reputation<=141 AND u.Views>=0 AND u.UpVotes=0;

/*+ HashJoin(v p u c b)
 HashJoin(v p u c)
 HashJoin(p u c)
 HashJoin(u c)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 SeqScan(c)
 SeqScan(b)
 Leading(((v (p (u c))) b)) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, badges as b, users as u WHERE u.Id =c.UserId AND c.UserId = p.OwnerUserId AND p.OwnerUserId = v.UserId AND v.UserId = b.UserId AND p.ViewCount<=15823 AND v.BountyAmount<=100 AND v.CreationDate>='2010-07-20 00:00:00'::timestamp AND b.Date<='2014-09-09 07:40:39'::timestamp AND u.DownVotes>=0;

/*+ HashJoin(v p u)
 MergeJoin(p u)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 Leading((v (p u))) */
SELECT COUNT(*) FROM votes as v, posts as p, users as u WHERE v.UserId = p.OwnerUserId AND p.OwnerUserId = u.Id AND p.Score>=-1 AND p.ViewCount>=0 AND p.ViewCount<=33939 AND p.FavoriteCount>=0 AND u.CreationDate<='2014-09-11 15:23:26'::timestamp;

/*+ HashJoin(b c u)
 HashJoin(c u)
 SeqScan(b)
 SeqScan(c)
 IndexScan(u)
 Leading((b (c u))) */
SELECT COUNT(*) FROM comments as c, badges as b, users as u WHERE u.Id = c.UserId AND c.UserId = b.UserId AND c.Score=0 AND b.Date>='2010-07-19 20:54:06'::timestamp AND u.Reputation>=1 AND u.DownVotes>=0 AND u.DownVotes<=7;

/*+ HashJoin(v u p pl)
 HashJoin(u p pl)
 MergeJoin(p pl)
 SeqScan(v)
 SeqScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((v (u (p pl)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, votes as v, users as u WHERE p.Id = pl.RelatedPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND p.Score>=-2 AND p.Score<=24 AND p.CommentCount>=0 AND u.UpVotes<=53 AND u.CreationDate<='2014-09-02 11:30:04'::timestamp;

/*+ HashJoin(v p pl c)
 HashJoin(p pl c)
 HashJoin(pl c)
 SeqScan(v)
 SeqScan(p)
 SeqScan(pl)
 SeqScan(c)
 Leading((v (p (pl c)))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, votes as v WHERE p.Id = c.PostId AND c.PostId = pl.PostId AND pl.PostId = v.PostId AND p.ViewCount<=2232 AND p.AnswerCount<=4 AND p.CommentCount>=0 AND p.CommentCount<=11 AND p.FavoriteCount<=5;

/*+ HashJoin(b v c u)
 HashJoin(v c u)
 HashJoin(c u)
 SeqScan(b)
 SeqScan(v)
 SeqScan(c)
 IndexScan(u)
 Leading((b (v (c u)))) */
SELECT COUNT(*) FROM comments as c, votes as v, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND c.Score=0 AND v.BountyAmount>=0 AND v.BountyAmount<=50 AND u.UpVotes>=0 AND u.UpVotes<=72;

/*+ HashJoin(p v u)
 HashJoin(v u)
 SeqScan(p)
 SeqScan(v)
 SeqScan(u)
 Leading((p (v u))) */
SELECT COUNT(*) FROM votes as v, posts as p, users as u WHERE v.PostId = p.Id AND v.UserId = u.Id AND p.ViewCount<=2451 AND p.FavoriteCount>=0 AND u.Reputation=101 AND u.DownVotes>=0 AND u.UpVotes=2;

/*+ HashJoin(c u p)
 HashJoin(c u)
 SeqScan(c)
 IndexScan(u)
 SeqScan(p)
 Leading(((c u) p)) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.PostId = p.Id AND c.UserId = u.Id AND p.PostTypeId=1 AND p.ViewCount>=0 AND p.AnswerCount<=4 AND p.FavoriteCount<=11 AND u.CreationDate<='2014-09-06 17:30:06'::timestamp;

/*+ HashJoin(v p pl c)
 HashJoin(p pl c)
 HashJoin(pl c)
 SeqScan(v)
 SeqScan(p)
 SeqScan(pl)
 SeqScan(c)
 Leading((v (p (pl c)))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, votes as v WHERE p.Id = c.PostId AND c.PostId = pl.PostId AND pl.PostId = v.PostId AND p.Score<=17 AND p.ViewCount<=6264 AND p.AnswerCount<=6 AND p.CommentCount>=0 AND pl.LinkTypeId=1;

/*+ HashJoin(v c u)
 HashJoin(c u)
 SeqScan(v)
 SeqScan(c)
 IndexScan(u)
 Leading((v (c u))) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND c.PostId = v.PostId AND v.VoteTypeId=2 AND v.CreationDate>='2010-07-21 00:00:00'::timestamp AND v.CreationDate<='2014-09-10 00:00:00'::timestamp AND u.DownVotes<=0 AND u.UpVotes>=0;

/*+ HashJoin(u b)
 IndexScan(u)
 SeqScan(b)
 Leading((u b)) */
SELECT COUNT(*) FROM badges as b, users as u WHERE b.UserId= u.Id AND b.Date<='2014-09-11 13:50:04'::timestamp AND u.Views>=0 AND u.Views<=16 AND u.CreationDate>='2011-07-08 22:37:15'::timestamp AND u.CreationDate<='2014-09-12 17:26:43'::timestamp;

/*+ HashJoin(c p pl)
 HashJoin(p pl)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 Leading((c (p pl))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE p.Id = c.PostId AND p.Id = pl.PostId AND p.Score<=21 AND p.ViewCount>=0 AND p.ViewCount<=1687 AND p.CreationDate>='2010-10-19 14:27:51'::timestamp AND pl.LinkTypeId=1;

/*+ HashJoin(ph u b v)
 HashJoin(u b v)
 HashJoin(u b)
 SeqScan(ph)
 IndexScan(u)
 SeqScan(b)
 IndexScan(v)
 Leading((ph ((u b) v))) */
SELECT COUNT(*) FROM postHistory as ph, votes as v, users as u, badges as b WHERE u.Id = ph.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND ph.PostHistoryTypeId=1 AND ph.CreationDate<='2014-08-17 11:47:06'::timestamp AND v.CreationDate<='2014-09-09 00:00:00'::timestamp AND u.Views>=0 AND u.Views<=82;

/*+ HashJoin(ph u c)
 HashJoin(u c)
 SeqScan(ph)
 IndexScan(u)
 SeqScan(c)
 Leading((ph (u c))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND c.CreationDate>='2010-07-28 23:06:39'::timestamp AND c.CreationDate<='2014-09-04 23:45:58'::timestamp AND u.Views<=19 AND u.CreationDate>='2010-07-27 07:02:54'::timestamp AND u.CreationDate<='2014-07-24 21:05:37'::timestamp;

/*+ HashJoin(b pl u p)
 HashJoin(pl u p)
 MergeJoin(u p)
 SeqScan(b)
 SeqScan(pl)
 IndexScan(u)
 SeqScan(p)
 Leading((b (pl (u p)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.ViewCount>=0 AND p.ViewCount<=10063 AND p.AnswerCount<=4 AND u.Views<=1245 AND u.UpVotes<=61;

/*+ HashJoin(c p pl)
 HashJoin(p pl)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 Leading((c (p pl))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE p.Id = c.PostId AND p.Id = pl.PostId AND p.ViewCount<=10214 AND p.AnswerCount>=0 AND p.CommentCount>=0 AND p.FavoriteCount>=0 AND pl.CreationDate<='2014-05-18 13:23:04'::timestamp;

/*+ HashJoin(v b u c)
 HashJoin(b u c)
 HashJoin(u c)
 SeqScan(v)
 SeqScan(b)
 SeqScan(u)
 SeqScan(c)
 Leading((v (b (u c)))) */
SELECT COUNT(*) FROM comments as c, votes as v, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND c.Score=4 AND c.CreationDate<='2014-09-07 15:19:41'::timestamp AND u.Views>=0 AND u.DownVotes=0 AND u.UpVotes<=288;

/*+ HashJoin(v ph pl c)
 HashJoin(ph pl c)
 HashJoin(pl c)
 SeqScan(v)
 SeqScan(ph)
 SeqScan(pl)
 SeqScan(c)
 Leading((v (ph (pl c)))) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, postHistory as ph, votes as v WHERE pl.PostId = c.PostId AND c.PostId = ph.PostId AND ph.PostId = v.PostId AND c.CreationDate>='2010-08-05 21:46:47'::timestamp AND c.CreationDate<='2014-09-07 16:14:31'::timestamp AND pl.CreationDate>='2010-08-04 15:57:30'::timestamp AND pl.CreationDate<='2014-08-12 16:20:24'::timestamp AND v.VoteTypeId=2;

/*+ HashJoin(ph v u p t)
 HashJoin(v u p t)
 HashJoin(u p t)
 MergeJoin(p t)
 SeqScan(ph)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 IndexScan(t)
 Leading((ph (v (u (p t))))) */
SELECT COUNT(*) FROM tags as t, posts as p, postHistory as ph, votes as v, users as u WHERE p.Id = t.ExcerptPostId AND p.Id = ph.PostId AND p.Id = v.PostId AND p.OwnerUserId = u.Id AND p.CreationDate<='2014-08-31 06:20:31'::timestamp AND ph.PostHistoryTypeId=2 AND ph.CreationDate>='2011-01-14 13:55:33'::timestamp AND u.Views>=0 AND u.DownVotes<=0;

/*+ HashJoin(c u ph pl p)
 HashJoin(ph pl p)
 MergeJoin(pl p)
 HashJoin(c u)
 SeqScan(c)
 SeqScan(u)
 IndexScan(ph)
 SeqScan(pl)
 IndexScan(p)
 Leading(((c u) (ph (pl p)))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, users as u WHERE p.Id = pl.RelatedPostId AND pl.RelatedPostId = c.PostId AND pl.RelatedPostId = ph.PostId AND u.Id= c.UserId AND c.CreationDate>='2010-07-19 22:31:13'::timestamp AND c.CreationDate<='2014-09-08 19:25:49'::timestamp AND p.CommentCount<=18 AND ph.PostHistoryTypeId=4 AND u.UpVotes>=0;

/*+ HashJoin(ph p u b)
 HashJoin(ph p u)
 HashJoin(p u)
 SeqScan(ph)
 SeqScan(p)
 SeqScan(u)
 SeqScan(b)
 Leading(((ph (p u)) b)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u, badges as b WHERE u.Id = p.OwnerUserId AND p.OwnerUserId = ph.UserId AND ph.UserId = b.UserId AND ph.PostHistoryTypeId=3 AND p.FavoriteCount>=0 AND p.CreationDate>='2010-07-20 13:08:42'::timestamp AND p.CreationDate<='2014-09-12 20:44:52'::timestamp AND u.UpVotes>=0;

/*+ HashJoin(v p u)
 MergeJoin(p u)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 Leading((v (p u))) */
SELECT COUNT(*) FROM votes as v, posts as p, users as u WHERE v.UserId = p.OwnerUserId AND p.OwnerUserId = u.Id AND v.CreationDate>='2010-07-19 00:00:00'::timestamp AND p.PostTypeId=1 AND p.ViewCount<=12291 AND p.FavoriteCount>=0 AND p.FavoriteCount<=4;

/*+ HashJoin(v ph pl c)
 HashJoin(ph pl c)
 HashJoin(pl c)
 SeqScan(v)
 SeqScan(ph)
 SeqScan(pl)
 SeqScan(c)
 Leading((v (ph (pl c)))) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, postHistory as ph, votes as v WHERE pl.PostId = c.PostId AND c.PostId = ph.PostId AND ph.PostId = v.PostId AND c.CreationDate>='2010-08-03 15:40:01'::timestamp AND c.CreationDate<='2014-09-09 13:10:01'::timestamp AND pl.LinkTypeId=1 AND ph.PostHistoryTypeId=3 AND ph.CreationDate<='2014-09-10 03:30:23'::timestamp;

/*+ HashJoin(c pl p)
 MergeJoin(pl p)
 SeqScan(c)
 SeqScan(pl)
 IndexScan(p)
 Leading((c (pl p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE c.UserId = p.OwnerUserId AND p.Id = pl.PostId AND p.Score>=-1 AND p.CommentCount>=0 AND p.CreationDate>='2010-11-08 16:13:13'::timestamp AND pl.LinkTypeId=1 AND pl.CreationDate>='2011-03-22 23:34:52'::timestamp;

/*+ HashJoin(ph v c p pl)
 HashJoin(v c p pl)
 HashJoin(c p pl)
 HashJoin(p pl)
 SeqScan(ph)
 SeqScan(v)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 Leading((ph (v (c (p pl))))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, votes as v WHERE p.Id = c.PostId AND p.Id = pl.PostId AND p.Id = ph.PostId AND p.Id = v.PostId AND c.Score=0 AND p.FavoriteCount=0 AND pl.LinkTypeId=1 AND ph.CreationDate>='2010-10-26 10:34:12'::timestamp AND v.BountyAmount<=100;

/*+ HashJoin(u b)
 IndexScan(u)
 SeqScan(b)
 Leading((u b)) */
SELECT COUNT(*) FROM badges as b, users as u WHERE b.UserId= u.Id AND b.Date<='2014-09-09 18:54:45'::timestamp AND u.Reputation>=1 AND u.DownVotes>=0 AND u.UpVotes>=0 AND u.UpVotes<=70;

/*+ HashJoin(v p t)
 HashJoin(p t)
 SeqScan(v)
 SeqScan(p)
 IndexScan(t)
 Leading((v (p t))) */
SELECT COUNT(*) FROM posts as p, tags as t, votes as v WHERE p.Id = t.ExcerptPostId AND p.OwnerUserId = v.UserId AND p.Score>=-4 AND t.Count>=2 AND v.BountyAmount>=0 AND v.BountyAmount<=400 AND v.CreationDate>='2010-07-19 00:00:00'::timestamp;

/*+ HashJoin(b c v u)
 HashJoin(c v u)
 HashJoin(v u)
 SeqScan(b)
 SeqScan(c)
 SeqScan(v)
 SeqScan(u)
 Leading((b (c (v u)))) */
SELECT COUNT(*) FROM comments as c, votes as v, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND c.CreationDate<='2014-09-13 13:16:17'::timestamp AND v.BountyAmount>=0 AND v.BountyAmount<=150 AND u.Views>=0 AND u.DownVotes<=0;

/*+ HashJoin(ph u b c)
 HashJoin(u b c)
 HashJoin(u b)
 SeqScan(ph)
 IndexScan(u)
 SeqScan(b)
 SeqScan(c)
 Leading((ph ((u b) c))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = ph.UserId AND u.Id = b.UserId AND ph.CreationDate>='2010-07-22 11:58:21'::timestamp AND ph.CreationDate<='2014-09-04 03:10:42'::timestamp AND u.Views>=0 AND u.Views<=141 AND u.UpVotes>=0;

/*+ HashJoin(v c p u)
 HashJoin(c p u)
 MergeJoin(p u)
 SeqScan(v)
 SeqScan(c)
 SeqScan(p)
 IndexScan(u)
 Leading((v (c (p u)))) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE p.Id = c.PostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND p.Score<=15 AND p.ViewCount>=0 AND p.FavoriteCount>=0 AND u.Reputation<=176 AND u.CreationDate<='2014-09-11 10:13:46'::timestamp;

/*+ HashJoin(u p)
 IndexScan(u)
 SeqScan(p)
 Leading((u p)) */
SELECT COUNT(*) FROM posts as p, users as u WHERE p.OwnerUserId= u.Id AND p.PostTypeId=1 AND p.CreationDate>='2010-07-19 19:25:39'::timestamp AND p.CreationDate<='2014-09-09 16:04:31'::timestamp AND u.Reputation<=213 AND u.DownVotes>=0;

/*+ HashJoin(p b)
 SeqScan(p)
 SeqScan(b)
 Leading((p b)) */
SELECT COUNT(*) FROM badges as b, posts as p WHERE b.UserId = p.OwnerUserId AND b.Date<='2014-09-11 22:37:38'::timestamp AND p.Score>=-1 AND p.AnswerCount<=3 AND p.CreationDate>='2010-07-23 06:49:38'::timestamp AND p.CreationDate<='2014-08-19 00:36:13'::timestamp;

/*+ HashJoin(b u c)
 HashJoin(u c)
 SeqScan(b)
 IndexScan(u)
 SeqScan(c)
 Leading((b (u c))) */
SELECT COUNT(*) FROM comments as c, badges as b, users as u WHERE u.Id = c.UserId AND c.UserId = b.UserId AND c.CreationDate='2014-09-05 17:31:16'::timestamp AND b.Date>='2010-07-20 07:04:08'::timestamp AND b.Date<='2014-09-10 20:05:25'::timestamp AND u.Reputation>=1 AND u.Views>=0;

/*+ HashJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 SeqScan(b)
 IndexScan(u)
 SeqScan(v)
 SeqScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND v.BountyAmount<=50 AND p.ViewCount>=0 AND p.ViewCount<=2717 AND p.CommentCount<=9 AND u.Reputation<=708;

/*+ HashJoin(c p pl)
 HashJoin(p pl)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 Leading((c (p pl))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE p.Id = c.PostId AND p.Id = pl.PostId AND p.Score>=-2 AND p.Score<=53 AND p.AnswerCount>=0 AND p.CommentCount>=0 AND p.CreationDate<='2014-09-14 02:03:28'::timestamp;

/*+ HashJoin(c p)
 SeqScan(c)
 SeqScan(p)
 Leading((c p)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND c.Score=0 AND p.Score<=109 AND p.FavoriteCount>=0 AND p.FavoriteCount<=18 AND p.CreationDate>='2010-11-02 16:49:01'::timestamp;

/*+ HashJoin(pl p u)
 HashJoin(p u)
 SeqScan(pl)
 SeqScan(p)
 SeqScan(u)
 Leading((pl (p u))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, users as u WHERE p.Id = pl.PostId AND p.OwnerUserId = u.Id AND u.Reputation=6 AND u.Views>=0 AND u.Views<=66 AND u.UpVotes<=368 AND u.CreationDate<='2014-09-08 15:48:59'::timestamp;

/*+ HashJoin(ph pl p c b v)
 HashJoin(ph pl p c b)
 HashJoin(ph pl p c)
 MergeJoin(ph pl p)
 HashJoin(pl p)
 IndexScan(ph)
 SeqScan(pl)
 SeqScan(p)
 IndexScan(c)
 SeqScan(b)
 IndexScan(v)
 Leading(((((ph (pl p)) c) b) v)) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, votes as v, badges as b WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.Id = ph.PostId AND p.Id = v.PostId AND b.UserId = c.UserId AND c.CreationDate<='2014-09-10 20:16:37'::timestamp AND p.PostTypeId=1 AND p.AnswerCount>=0 AND p.FavoriteCount<=10 AND v.CreationDate<='2014-09-08 00:00:00'::timestamp;

/*+ HashJoin(p u)
 SeqScan(p)
 SeqScan(u)
 Leading((p u)) */
SELECT COUNT(*) FROM posts as p, users as u WHERE p.OwnerUserId= u.Id AND p.AnswerCount>=0 AND p.CommentCount<=16 AND p.FavoriteCount>=0 AND u.UpVotes<=95 AND u.CreationDate<='2014-08-24 16:31:46'::timestamp;

/*+ HashJoin(c p)
 SeqScan(c)
 SeqScan(p)
 Leading((c p)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND c.Score=0 AND p.ViewCount>=0 AND p.ViewCount<=5274 AND p.AnswerCount>=0 AND p.CommentCount>=0;

/*+ HashJoin(ph p pl)
 HashJoin(p pl)
 SeqScan(ph)
 SeqScan(p)
 SeqScan(pl)
 Leading((ph (p pl))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph WHERE p.Id = pl.PostId AND pl.PostId = ph.PostId AND p.Score>=-2 AND p.ViewCount>=0 AND p.AnswerCount>=0 AND pl.LinkTypeId=1 AND pl.CreationDate='2012-08-15 11:11:31'::timestamp;

/*+ HashJoin(ph c u)
 HashJoin(c u)
 SeqScan(ph)
 SeqScan(c)
 IndexScan(u)
 Leading((ph (c u))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND c.CreationDate>='2010-08-10 15:21:27'::timestamp AND u.Views>=0 AND u.Views<=66 AND u.CreationDate>='2010-07-20 14:01:51'::timestamp AND u.CreationDate<='2014-08-31 18:09:49'::timestamp;

/*+ HashJoin(ph p u b)
 HashJoin(ph p u)
 HashJoin(p u)
 SeqScan(ph)
 SeqScan(p)
 SeqScan(u)
 SeqScan(b)
 Leading(((ph (p u)) b)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u, badges as b WHERE u.Id = p.OwnerUserId AND p.OwnerUserId = ph.UserId AND ph.UserId = b.UserId AND ph.PostHistoryTypeId=5 AND p.FavoriteCount>=0 AND u.Reputation<=377 AND u.Views>=0 AND u.UpVotes<=298;

/*+ HashJoin(u c p pl)
 HashJoin(c p pl)
 MergeJoin(p pl)
 SeqScan(u)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 Leading((u (c (p pl)))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, users as u WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.OwnerUserId = u.Id AND p.ViewCount<=2845 AND p.CommentCount<=17 AND p.CreationDate>='2010-08-05 15:27:49'::timestamp AND p.CreationDate<='2014-09-06 15:36:18'::timestamp AND u.DownVotes=0;

/*+ HashJoin(c p pl)
 HashJoin(p pl)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 Leading((c (p pl))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE c.UserId = p.OwnerUserId AND p.Id = pl.PostId AND c.CreationDate<='2014-09-04 19:50:08'::timestamp AND p.PostTypeId=1 AND p.AnswerCount>=0 AND pl.LinkTypeId=1 AND pl.CreationDate>='2011-03-11 10:29:29'::timestamp;

/*+ HashJoin(v ph pl c)
 HashJoin(ph pl c)
 HashJoin(pl c)
 SeqScan(v)
 SeqScan(ph)
 SeqScan(pl)
 SeqScan(c)
 Leading((v (ph (pl c)))) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, postHistory as ph, votes as v WHERE pl.PostId = c.PostId AND c.PostId = ph.PostId AND ph.PostId = v.PostId AND c.CreationDate>='2010-08-24 16:25:59'::timestamp AND pl.LinkTypeId=1 AND pl.CreationDate>='2011-05-10 17:09:25'::timestamp AND pl.CreationDate<='2014-08-02 02:18:07'::timestamp AND v.VoteTypeId=2;

/*+ HashJoin(c p)
 SeqScan(c)
 SeqScan(p)
 Leading((c p)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND p.CommentCount>=0 AND p.CommentCount<=15 AND p.FavoriteCount<=4 AND p.CreationDate>='2010-07-23 08:18:52'::timestamp AND p.CreationDate<='2014-09-05 14:29:49'::timestamp;

/*+ HashJoin(b c u)
 HashJoin(c u)
 SeqScan(b)
 SeqScan(c)
 IndexScan(u)
 Leading((b (c u))) */
SELECT COUNT(*) FROM comments as c, badges as b, users as u WHERE u.Id = c.UserId AND c.UserId = b.UserId AND c.CreationDate>='2010-09-19 10:29:29'::timestamp AND c.CreationDate<='2014-09-09 17:38:10'::timestamp AND u.Reputation<=126 AND u.DownVotes<=0 AND u.UpVotes<=25;

/*+ HashJoin(v p u c)
 HashJoin(p u c)
 HashJoin(u c)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 SeqScan(c)
 Leading((v (p (u c)))) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = v.UserId AND c.Score=0 AND p.PostTypeId=1 AND p.Score<=11 AND v.CreationDate>='2010-07-26 00:00:00'::timestamp AND u.Views<=74;

/*+ HashJoin(c p pl)
 HashJoin(p pl)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 Leading((c (p pl))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE c.UserId = p.OwnerUserId AND p.Id = pl.PostId AND c.Score=0 AND p.ViewCount>=0 AND pl.LinkTypeId=1 AND pl.CreationDate>='2012-07-18 18:53:06'::timestamp AND pl.CreationDate<='2014-08-21 15:33:17'::timestamp;

/*+ HashJoin(c pl p)
 MergeJoin(pl p)
 SeqScan(c)
 SeqScan(pl)
 IndexScan(p)
 Leading((c (pl p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE c.UserId = p.OwnerUserId AND p.Id = pl.PostId AND p.PostTypeId=1 AND p.Score<=20 AND p.AnswerCount=0 AND p.FavoriteCount<=22 AND pl.CreationDate>='2010-10-08 20:11:54'::timestamp;

/*+ HashJoin(c v u)
 HashJoin(v u)
 SeqScan(c)
 SeqScan(v)
 SeqScan(u)
 Leading((c (v u))) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND v.VoteTypeId=5 AND u.Reputation>=1 AND u.Views<=75 AND u.DownVotes>=0 AND u.DownVotes<=6;

/*+ HashJoin(ph pl p)
 HashJoin(pl p)
 SeqScan(ph)
 SeqScan(pl)
 SeqScan(p)
 Leading((ph (pl p))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph WHERE p.Id = pl.PostId AND pl.PostId = ph.PostId AND p.ViewCount<=3100 AND p.CommentCount<=11 AND p.FavoriteCount>=0 AND p.FavoriteCount<=5 AND pl.CreationDate<='2014-07-22 17:03:21'::timestamp;

/*+ HashJoin(c p u)
 HashJoin(p u)
 SeqScan(c)
 SeqScan(p)
 IndexScan(u)
 Leading((c (p u))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.UserId = u.Id AND u.Id = p.OwnerUserId AND p.Score<=57 AND u.Reputation>=1 AND u.UpVotes=0 AND u.CreationDate>='2010-07-26 17:50:10'::timestamp AND u.CreationDate<='2014-07-17 15:38:19'::timestamp;

/*+ HashJoin(c p)
 SeqScan(c)
 SeqScan(p)
 Leading((c p)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND p.PostTypeId=1 AND p.Score<=25 AND p.AnswerCount<=8 AND p.CommentCount>=0 AND p.CommentCount<=16;

/*+ HashJoin(u v c b)
 HashJoin(u v c)
 HashJoin(u v)
 IndexScan(u)
 IndexScan(v)
 SeqScan(c)
 SeqScan(b)
 Leading((((u v) c) b)) */
SELECT COUNT(*) FROM comments as c, votes as v, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND v.CreationDate<='2014-09-12 00:00:00'::timestamp AND u.Views>=0 AND u.UpVotes>=0 AND u.UpVotes<=37 AND u.CreationDate<='2014-09-01 09:02:47'::timestamp;

/*+ HashJoin(v u p b)
 HashJoin(u p b)
 HashJoin(u p)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 SeqScan(b)
 Leading((v ((u p) b))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND v.CreationDate>='2010-01-13 00:00:00'::timestamp AND v.CreationDate<='2014-09-12 00:00:00'::timestamp AND u.Views>=0 AND u.UpVotes>=0 AND u.UpVotes<=138;

/*+ HashJoin(v pl c p u b)
 HashJoin(v pl c p u)
 HashJoin(pl c p u)
 HashJoin(c p u)
 MergeJoin(p u)
 SeqScan(v)
 SeqScan(pl)
 SeqScan(c)
 SeqScan(p)
 IndexScan(u)
 SeqScan(b)
 Leading(((v (pl (c (p u)))) b)) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, votes as v, badges as b, users as u WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND c.CreationDate<='2014-09-12 13:37:53'::timestamp AND p.Score>=-2 AND p.CommentCount>=0 AND p.CreationDate>='2010-08-05 04:58:19'::timestamp AND u.CreationDate<='2014-09-09 21:12:44'::timestamp;

/*+ HashJoin(u c p pl)
 HashJoin(c p pl)
 MergeJoin(p pl)
 SeqScan(u)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 Leading((u (c (p pl)))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, users as u WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.OwnerUserId = u.Id AND p.PostTypeId=2 AND p.CommentCount>=0 AND p.CommentCount<=9 AND u.Views>=0 AND u.CreationDate<='2014-08-06 08:21:49'::timestamp;

/*+ HashJoin(v u t p)
 MergeJoin(u t p)
 MergeJoin(t p)
 SeqScan(v)
 IndexScan(u)
 IndexScan(t)
 SeqScan(p)
 Leading((v (u (t p)))) */
SELECT COUNT(*) FROM tags as t, posts as p, votes as v, users as u WHERE p.Id = t.ExcerptPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND p.CommentCount<=19 AND p.CreationDate>='2010-07-19 20:30:23'::timestamp AND v.CreationDate<='2014-09-11 00:00:00'::timestamp AND u.UpVotes>=0 AND u.UpVotes<=9;

/*+ HashJoin(ph u c p pl)
 HashJoin(u c p pl)
 HashJoin(c p pl)
 MergeJoin(p pl)
 SeqScan(ph)
 SeqScan(u)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 Leading((ph (u (c (p pl))))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, users as u WHERE p.Id = pl.RelatedPostId AND pl.RelatedPostId = c.PostId AND pl.RelatedPostId = ph.PostId AND u.Id= c.UserId AND c.Score=2 AND pl.CreationDate>='2011-04-02 10:27:54'::timestamp AND u.Reputation>=1 AND u.UpVotes>=0 AND u.UpVotes<=11;

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
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, votes as v WHERE p.Id = c.PostId AND p.Id = pl.PostId AND p.Id = ph.PostId AND p.Id = v.PostId AND p.ViewCount>=0 AND p.ViewCount<=3021 AND ph.PostHistoryTypeId=5 AND v.BountyAmount<=50 AND v.CreationDate<='2014-09-09 00:00:00'::timestamp;

/*+ HashJoin(c u p)
 HashJoin(c u)
 SeqScan(c)
 IndexScan(u)
 SeqScan(p)
 Leading(((c u) p)) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.PostId = p.Id AND c.UserId = u.Id AND c.CreationDate<='2014-09-09 02:17:46'::timestamp AND p.PostTypeId=1 AND p.ViewCount<=10215 AND p.AnswerCount>=0 AND p.FavoriteCount>=0;

/*+ HashJoin(c p u)
 HashJoin(p u)
 SeqScan(c)
 SeqScan(p)
 IndexScan(u)
 Leading((c (p u))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.UserId = u.Id AND u.Id = p.OwnerUserId AND p.ViewCount<=15219 AND p.CreationDate>='2010-07-20 07:17:58'::timestamp AND u.Views>=0 AND u.Views<=635 AND u.UpVotes=0;

/*+ HashJoin(ph b c u p)
 HashJoin(b c u p)
 HashJoin(c u p)
 HashJoin(u p)
 SeqScan(ph)
 SeqScan(b)
 SeqScan(c)
 IndexScan(u)
 SeqScan(p)
 Leading((ph (b (c (u p))))) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = ph.UserId AND u.Id = b.UserId AND c.Score=1 AND p.PostTypeId=1 AND p.AnswerCount<=11 AND u.Reputation=26 AND u.Views=0;

/*+ HashJoin(u b)
 SeqScan(u)
 SeqScan(b)
 Leading((u b)) */
SELECT COUNT(*) FROM badges as b, users as u WHERE b.UserId= u.Id AND u.Reputation=4 AND u.Views<=65 AND u.UpVotes>=0 AND u.CreationDate>='2011-01-13 19:57:10'::timestamp AND u.CreationDate<='2014-09-13 10:48:35'::timestamp;

/*+ HashJoin(u p)
 IndexScan(u)
 SeqScan(p)
 Leading((u p)) */
SELECT COUNT(*) FROM posts as p, users as u WHERE p.OwnerUserId= u.Id AND p.PostTypeId=2 AND u.Reputation>=1 AND u.Reputation<=378 AND u.UpVotes>=0 AND u.UpVotes<=21;

/*+ HashJoin(c pl p)
 MergeJoin(pl p)
 SeqScan(c)
 SeqScan(pl)
 IndexScan(p)
 Leading((c (pl p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE c.UserId = p.OwnerUserId AND p.Id = pl.PostId AND c.Score=0 AND c.CreationDate>='2010-07-28 17:49:37'::timestamp AND c.CreationDate<='2014-09-13 17:30:10'::timestamp AND p.CreationDate>='2010-07-21 03:48:55'::timestamp AND p.CreationDate<='2014-09-11 14:00:38'::timestamp;

/*+ HashJoin(c u pl p)
 MergeJoin(u pl p)
 MergeJoin(pl p)
 SeqScan(c)
 IndexScan(u)
 SeqScan(pl)
 IndexScan(p)
 Leading((c (u (pl p)))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, users as u WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.OwnerUserId = u.Id AND c.Score=0 AND p.CommentCount>=0 AND p.CreationDate>='2010-07-21 15:21:33'::timestamp AND u.UpVotes<=10 AND u.CreationDate>='2011-02-25 21:56:01'::timestamp;

/*+ HashJoin(v b u c)
 MergeJoin(b u c)
 HashJoin(u c)
 IndexScan(v)
 SeqScan(b)
 IndexScan(u)
 SeqScan(c)
 Leading((v (b (u c)))) */
SELECT COUNT(*) FROM comments as c, votes as v, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND c.Score=0 AND c.CreationDate>='2010-07-27 17:18:46'::timestamp AND b.Date>='2010-07-20 11:14:11'::timestamp AND b.Date<='2014-09-12 15:43:52'::timestamp AND u.CreationDate<='2014-09-11 14:43:34'::timestamp;

/*+ HashJoin(ph b pl p c v)
 HashJoin(ph b pl p c)
 HashJoin(b pl p c)
 HashJoin(pl p c)
 HashJoin(pl p)
 SeqScan(ph)
 SeqScan(b)
 SeqScan(pl)
 SeqScan(p)
 SeqScan(c)
 IndexScan(v)
 Leading(((ph (b ((pl p) c))) v)) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, votes as v, badges as b WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.Id = ph.PostId AND p.Id = v.PostId AND b.UserId = c.UserId AND p.ViewCount>=0 AND p.ViewCount<=6412 AND p.AnswerCount>=0 AND p.AnswerCount<=6 AND pl.LinkTypeId=1;

/*+ HashJoin(ph u b c)
 HashJoin(u b c)
 HashJoin(u b)
 SeqScan(ph)
 SeqScan(u)
 SeqScan(b)
 SeqScan(c)
 Leading((ph ((u b) c))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = ph.UserId AND u.Id = b.UserId AND c.Score=0 AND ph.PostHistoryTypeId=2 AND b.Date>='2010-09-05 09:24:01'::timestamp AND u.DownVotes>=0 AND u.UpVotes>=0;

/*+ HashJoin(v u p pl)
 HashJoin(u p pl)
 MergeJoin(p pl)
 SeqScan(v)
 SeqScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((v (u (p pl)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, votes as v, users as u WHERE p.Id = pl.RelatedPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND pl.LinkTypeId=1 AND p.PostTypeId=2 AND p.CreationDate>='2010-08-02 04:40:22'::timestamp AND p.CreationDate<='2014-09-03 23:05:58'::timestamp AND u.Reputation<=8814;

/*+ HashJoin(u c p pl)
 HashJoin(c p pl)
 MergeJoin(p pl)
 SeqScan(u)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 Leading((u (c (p pl)))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, users as u WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.OwnerUserId = u.Id AND c.CreationDate>='2010-07-19 20:46:12'::timestamp AND c.CreationDate<='2014-09-07 01:21:47'::timestamp AND p.PostTypeId=1 AND p.Score<=16 AND pl.LinkTypeId=3;

/*+ HashJoin(v p c pl)
 MergeJoin(p c pl)
 HashJoin(c pl)
 SeqScan(v)
 SeqScan(p)
 SeqScan(c)
 SeqScan(pl)
 Leading((v (p (c pl)))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, votes as v WHERE p.Id = c.PostId AND c.PostId = pl.PostId AND pl.PostId = v.PostId AND c.Score=0 AND p.CommentCount>=0 AND p.FavoriteCount>=0 AND v.VoteTypeId=2 AND v.CreationDate<='2014-09-10 00:00:00'::timestamp;

/*+ HashJoin(b c u)
 HashJoin(c u)
 SeqScan(b)
 SeqScan(c)
 SeqScan(u)
 Leading((b (c u))) */
SELECT COUNT(*) FROM comments as c, badges as b, users as u WHERE u.Id = c.UserId AND c.UserId = b.UserId AND c.Score=0 AND b.Date>='2010-07-27 00:48:43'::timestamp AND u.Views>=0 AND u.DownVotes<=0 AND u.CreationDate<='2014-09-04 08:00:36'::timestamp;

/*+ HashJoin(v p c pl)
 HashJoin(p c pl)
 MergeJoin(c pl)
 SeqScan(v)
 SeqScan(p)
 SeqScan(c)
 SeqScan(pl)
 Leading((v (p (c pl)))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, votes as v WHERE p.Id = c.PostId AND c.PostId = pl.PostId AND pl.PostId = v.PostId AND c.Score=4 AND c.CreationDate<='2014-09-08 01:24:37'::timestamp AND p.CreationDate<='2014-09-11 11:08:35'::timestamp AND pl.CreationDate>='2010-07-27 16:00:22'::timestamp AND v.VoteTypeId=2;

/*+ HashJoin(b u c)
 HashJoin(u c)
 SeqScan(b)
 IndexScan(u)
 SeqScan(c)
 Leading((b (u c))) */
SELECT COUNT(*) FROM comments as c, badges as b, users as u WHERE u.Id = c.UserId AND c.UserId = b.UserId AND c.Score=1 AND c.CreationDate>='2010-07-19 19:38:30'::timestamp AND b.Date<='2014-09-10 03:09:53'::timestamp AND u.DownVotes<=0 AND u.UpVotes>=0;

/*+ HashJoin(p b)
 SeqScan(p)
 SeqScan(b)
 Leading((p b)) */
SELECT COUNT(*) FROM badges as b, posts as p WHERE b.UserId = p.OwnerUserId AND p.PostTypeId=1 AND p.Score>=-1 AND p.Score<=15 AND p.CommentCount=0 AND p.FavoriteCount=0;

/*+ HashJoin(ph u b v c)
 HashJoin(ph u b v)
 HashJoin(ph u b)
 HashJoin(u b)
 SeqScan(ph)
 IndexScan(u)
 SeqScan(b)
 IndexScan(v)
 SeqScan(c)
 Leading((((ph (u b)) v) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, votes as v, users as u WHERE u.Id =b.UserId AND b.UserId = ph.UserId AND ph.UserId = v.UserId AND v.UserId = c.UserId AND c.Score=1 AND u.Reputation>=1 AND u.Reputation<=452 AND u.DownVotes>=0 AND u.CreationDate<='2014-08-25 22:57:20'::timestamp;

/*+ HashJoin(ph pl p)
 HashJoin(pl p)
 SeqScan(ph)
 SeqScan(pl)
 IndexScan(p)
 Leading((ph (pl p))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph WHERE p.Id = pl.PostId AND pl.PostId = ph.PostId AND p.Score>=0 AND p.FavoriteCount<=15 AND p.CreationDate<='2014-08-07 15:33:16'::timestamp AND ph.PostHistoryTypeId=2 AND ph.CreationDate>='2010-11-23 07:50:07'::timestamp;

/*+ HashJoin(v b u p t)
 MergeJoin(b u p t)
 HashJoin(u p t)
 MergeJoin(p t)
 SeqScan(v)
 SeqScan(b)
 IndexScan(u)
 SeqScan(p)
 IndexScan(t)
 Leading((v (b (u (p t))))) */
SELECT COUNT(*) FROM tags as t, posts as p, users as u, votes as v, badges as b WHERE p.Id = t.ExcerptPostId AND u.Id = v.UserId AND u.Id = b.UserId AND u.Id = p.OwnerUserId AND p.CommentCount>=0 AND u.Views>=0 AND u.DownVotes>=0 AND u.DownVotes<=3 AND u.CreationDate<='2014-07-29 05:05:37'::timestamp;

/*+ HashJoin(p c)
 SeqScan(p)
 SeqScan(c)
 Leading((p c)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND c.Score=1 AND p.ViewCount<=5717 AND p.CommentCount=1 AND p.FavoriteCount<=4 AND p.CreationDate>='2010-07-27 14:14:10'::timestamp;

/*+ HashJoin(ph u b v)
 HashJoin(u b v)
 HashJoin(u b)
 SeqScan(ph)
 IndexScan(u)
 SeqScan(b)
 IndexScan(v)
 Leading((ph ((u b) v))) */
SELECT COUNT(*) FROM postHistory as ph, votes as v, users as u, badges as b WHERE u.Id = ph.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND u.Views>=0 AND u.Views<=64 AND u.CreationDate>='2010-10-09 14:16:05'::timestamp AND b.Date>='2010-09-05 13:14:18'::timestamp AND b.Date<='2014-09-09 05:17:41'::timestamp;

/*+ HashJoin(p ph u)
 MergeJoin(ph u)
 SeqScan(p)
 IndexScan(ph)
 IndexScan(u)
 Leading((p (ph u))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.UserId = p.OwnerUserId AND ph.UserId = u.Id AND ph.PostHistoryTypeId=2 AND p.Score>=-1 AND u.DownVotes<=0 AND u.UpVotes>=0 AND u.UpVotes<=33;

/*+ HashJoin(v u b)
 HashJoin(v u)
 SeqScan(v)
 IndexScan(u)
 SeqScan(b)
 Leading(((v u) b)) */
SELECT COUNT(*) FROM votes as v, badges as b, users as u WHERE u.Id = v.UserId AND v.UserId = b.UserId AND v.CreationDate>='2010-07-19 00:00:00'::timestamp AND b.Date>='2010-08-22 17:05:45'::timestamp AND b.Date<='2014-09-07 02:28:34'::timestamp AND u.Views<=56 AND u.DownVotes>=0;

/*+ MergeJoin(p c u)
 HashJoin(c u)
 SeqScan(p)
 SeqScan(c)
 SeqScan(u)
 Leading((p (c u))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.PostId = p.Id AND c.UserId = u.Id AND p.Score<=11 AND p.AnswerCount=2 AND p.FavoriteCount<=5 AND u.Views<=14 AND u.CreationDate<='2014-09-02 20:07:19'::timestamp;

/*+ HashJoin(v u b)
 HashJoin(v u)
 SeqScan(v)
 IndexScan(u)
 SeqScan(b)
 Leading(((v u) b)) */
SELECT COUNT(*) FROM votes as v, badges as b, users as u WHERE u.Id = v.UserId AND v.UserId = b.UserId AND u.Reputation>=1 AND u.Reputation<=9604 AND u.Views>=0 AND u.Views<=31 AND u.CreationDate<='2014-09-08 05:55:03'::timestamp;

/*+ HashJoin(c p)
 SeqScan(c)
 SeqScan(p)
 Leading((c p)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND p.Score>=-2 AND p.Score<=15 AND p.CommentCount<=11 AND p.FavoriteCount<=9 AND p.CreationDate>='2010-07-19 20:23:22'::timestamp;

/*+ HashJoin(ph p c)
 HashJoin(p c)
 SeqScan(ph)
 SeqScan(p)
 SeqScan(c)
 Leading((ph (p c))) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph WHERE p.Id = c.PostId AND p.Id = ph.PostId AND c.Score=1 AND p.ViewCount<=41652 AND p.AnswerCount>=0 AND p.CommentCount<=12 AND ph.PostHistoryTypeId=16;

/*+ HashJoin(ph c p)
 HashJoin(c p)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(p)
 Leading((ph (c p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph WHERE p.Id = c.PostId AND p.Id = ph.PostId AND c.Score=0 AND c.CreationDate<='2014-09-12 01:51:44'::timestamp AND p.Score>=-1 AND p.CommentCount>=0 AND p.CreationDate<='2014-09-05 08:42:14'::timestamp;

/*+ HashJoin(c ph p)
 HashJoin(ph p)
 SeqScan(c)
 IndexScan(ph)
 SeqScan(p)
 Leading((c (ph p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph WHERE p.Id = c.PostId AND p.Id = ph.PostId AND c.Score=0 AND p.ViewCount<=1851 AND p.CommentCount<=12 AND p.CreationDate>='2010-10-01 03:25:35'::timestamp AND ph.CreationDate='2013-11-03 22:20:23'::timestamp;

/*+ HashJoin(b v u)
 HashJoin(v u)
 SeqScan(b)
 SeqScan(v)
 SeqScan(u)
 Leading((b (v u))) */
SELECT COUNT(*) FROM votes as v, badges as b, users as u WHERE u.Id = v.UserId AND v.UserId = b.UserId AND v.BountyAmount>=0 AND v.BountyAmount<=200 AND u.Views<=15 AND u.UpVotes<=55 AND u.CreationDate<='2014-09-06 03:31:02'::timestamp;

/*+ HashJoin(p pl ph)
 HashJoin(pl ph)
 SeqScan(p)
 SeqScan(pl)
 SeqScan(ph)
 Leading((p (pl ph))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph WHERE p.Id = pl.PostId AND pl.PostId = ph.PostId AND p.AnswerCount>=0 AND p.CommentCount>=0 AND p.CommentCount<=11 AND pl.LinkTypeId=1 AND ph.PostHistoryTypeId=5;

/*+ HashJoin(ph u pl p b v)
 HashJoin(u pl p b v)
 HashJoin(u pl p b)
 HashJoin(u pl p)
 HashJoin(pl p)
 SeqScan(ph)
 SeqScan(u)
 SeqScan(pl)
 SeqScan(p)
 SeqScan(b)
 IndexScan(v)
 Leading((ph (((u (pl p)) b) v))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph, votes as v, badges as b, users as u WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND u.Id = ph.UserId AND u.Id = v.UserId AND p.FavoriteCount>=0 AND p.FavoriteCount<=15 AND p.CreationDate<='2014-08-22 17:35:03'::timestamp AND pl.CreationDate<='2014-08-26 15:36:58'::timestamp AND ph.PostHistoryTypeId=4;

/*+ HashJoin(ph p u b t)
 HashJoin(p u b t)
 HashJoin(p u b)
 HashJoin(u b)
 SeqScan(ph)
 SeqScan(p)
 SeqScan(u)
 SeqScan(b)
 IndexScan(t)
 Leading((ph ((p (u b)) t))) */
SELECT COUNT(*) FROM tags as t, posts as p, users as u, postHistory as ph, badges as b WHERE p.Id = t.ExcerptPostId AND u.Id = ph.UserId AND u.Id = b.UserId AND u.Id = p.OwnerUserId AND t.Count>=1 AND t.Count<=581 AND p.Score<=77 AND u.Views>=0 AND u.CreationDate<='2014-09-12 04:56:25'::timestamp;

/*+ HashJoin(c p)
 SeqScan(c)
 SeqScan(p)
 Leading((c p)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND c.CreationDate<='2014-09-04 23:21:07'::timestamp AND p.ViewCount<=2657 AND p.CommentCount>=0 AND p.FavoriteCount>=0 AND p.FavoriteCount<=6;

/*+ HashJoin(b c u)
 HashJoin(c u)
 SeqScan(b)
 SeqScan(c)
 SeqScan(u)
 Leading((b (c u))) */
SELECT COUNT(*) FROM comments as c, badges as b, users as u WHERE u.Id = c.UserId AND c.UserId = b.UserId AND c.Score=0 AND b.Date>='2010-07-19 22:44:06'::timestamp AND b.Date<='2014-09-10 20:05:25'::timestamp AND u.Views=1 AND u.DownVotes<=0;

/*+ HashJoin(ph v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(ph)
 SeqScan(v)
 SeqScan(u)
 SeqScan(p)
 Leading((ph (v (u p)))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, votes as v, users as u WHERE p.Id = ph.PostId AND u.Id = p.OwnerUserId AND p.Id = v.PostId AND ph.CreationDate>='2011-07-28 22:48:07'::timestamp AND p.PostTypeId=1 AND p.AnswerCount>=0 AND v.VoteTypeId=2 AND u.UpVotes>=0;

/*+ HashJoin(ph u p pl c)
 HashJoin(u p pl c)
 HashJoin(p pl c)
 HashJoin(pl c)
 SeqScan(ph)
 SeqScan(u)
 SeqScan(p)
 SeqScan(pl)
 SeqScan(c)
 Leading((ph (u (p (pl c))))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, users as u WHERE p.Id = pl.RelatedPostId AND pl.RelatedPostId = c.PostId AND pl.RelatedPostId = ph.PostId AND u.Id= c.UserId AND c.Score=0 AND p.AnswerCount>=0 AND p.FavoriteCount<=9 AND u.Views<=96 AND u.UpVotes<=23;

/*+ HashJoin(ph c u)
 HashJoin(c u)
 SeqScan(ph)
 SeqScan(c)
 IndexScan(u)
 Leading((ph (c u))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND u.Reputation<=156 AND u.Views>=0 AND u.DownVotes>=0 AND u.UpVotes>=0 AND u.UpVotes<=34;

/*+ HashJoin(pl p u)
 MergeJoin(p u)
 SeqScan(pl)
 SeqScan(p)
 IndexScan(u)
 Leading((pl (p u))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, users as u WHERE p.Id = pl.PostId AND p.OwnerUserId = u.Id AND p.ViewCount>=0 AND p.ViewCount<=2536 AND p.CommentCount<=8 AND p.CreationDate>='2010-07-21 16:04:18'::timestamp AND p.CreationDate<='2014-09-10 23:33:28'::timestamp;

/*+ HashJoin(v c u p)
 HashJoin(c u p)
 HashJoin(u p)
 SeqScan(v)
 SeqScan(c)
 SeqScan(u)
 SeqScan(p)
 Leading((v (c (u p)))) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE p.Id = c.PostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND c.CreationDate>='2010-09-11 16:37:35'::timestamp AND p.PostTypeId=2 AND p.Score<=18 AND u.DownVotes>=0 AND u.CreationDate>='2010-07-27 19:11:21'::timestamp;

/*+ HashJoin(u b)
 IndexScan(u)
 SeqScan(b)
 Leading((u b)) */
SELECT COUNT(*) FROM badges as b, users as u WHERE b.UserId= u.Id AND u.Reputation>=1 AND u.Reputation<=2496 AND u.DownVotes<=0 AND u.UpVotes<=121 AND u.CreationDate<='2014-08-24 03:48:13'::timestamp;

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
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, votes as v WHERE p.Id = c.PostId AND p.Id = pl.PostId AND p.Id = ph.PostId AND p.Id = v.PostId AND c.CreationDate>='2010-08-04 17:25:16'::timestamp AND p.PostTypeId=1 AND p.ViewCount<=67396 AND p.FavoriteCount>=0 AND v.BountyAmount=0;

/*+ HashJoin(b c u)
 HashJoin(c u)
 SeqScan(b)
 SeqScan(c)
 IndexScan(u)
 Leading((b (c u))) */
SELECT COUNT(*) FROM comments as c, badges as b, users as u WHERE u.Id = c.UserId AND c.UserId = b.UserId AND c.CreationDate>='2010-08-06 18:46:05'::timestamp AND c.CreationDate<='2014-09-10 15:17:42'::timestamp AND b.Date<='2014-08-18 00:53:29'::timestamp AND u.Reputation<=683 AND u.Views<=523;

/*+ HashJoin(v c u)
 HashJoin(c u)
 SeqScan(v)
 SeqScan(c)
 IndexScan(u)
 Leading((v (c u))) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND c.PostId = v.PostId AND v.CreationDate<='2014-09-13 00:00:00'::timestamp AND u.Reputation=1 AND u.Views=0 AND u.CreationDate>='2010-08-09 09:24:09'::timestamp AND u.CreationDate<='2014-08-26 13:19:59'::timestamp;

/*+ HashJoin(v p c pl)
 MergeJoin(p c pl)
 HashJoin(c pl)
 SeqScan(v)
 SeqScan(p)
 SeqScan(c)
 SeqScan(pl)
 Leading((v (p (c pl)))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, votes as v WHERE p.Id = c.PostId AND c.PostId = pl.PostId AND pl.PostId = v.PostId AND p.Score<=18 AND p.ViewCount<=8413 AND p.AnswerCount=0 AND p.CommentCount>=0 AND pl.LinkTypeId=1;

/*+ HashJoin(b c u)
 HashJoin(c u)
 SeqScan(b)
 SeqScan(c)
 IndexScan(u)
 Leading((b (c u))) */
SELECT COUNT(*) FROM comments as c, badges as b, users as u WHERE u.Id = c.UserId AND c.UserId = b.UserId AND u.Reputation<=388 AND u.DownVotes<=0 AND u.UpVotes>=0 AND u.CreationDate>='2010-08-17 12:01:44'::timestamp AND u.CreationDate<='2014-09-11 10:56:25'::timestamp;

/*+ HashJoin(ph v b pl p c)
 MergeJoin(v b pl p c)
 HashJoin(b pl p c)
 HashJoin(pl p c)
 HashJoin(p c)
 SeqScan(ph)
 IndexScan(v)
 SeqScan(b)
 SeqScan(pl)
 SeqScan(p)
 SeqScan(c)
 Leading((ph (v (b (pl (p c)))))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, votes as v, badges as b WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.Id = ph.PostId AND p.Id = v.PostId AND b.UserId = c.UserId AND p.PostTypeId=1 AND p.Score=2 AND p.CommentCount>=0 AND ph.CreationDate>='2011-02-03 18:14:11'::timestamp AND ph.CreationDate<='2014-08-23 14:21:04'::timestamp;

/*+ HashJoin(c p u)
 MergeJoin(p u)
 SeqScan(c)
 SeqScan(p)
 IndexScan(u)
 Leading((c (p u))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.UserId = u.Id AND u.Id = p.OwnerUserId AND p.ViewCount<=3214 AND p.AnswerCount<=24 AND p.FavoriteCount>=0 AND p.FavoriteCount<=7 AND u.UpVotes<=26;

/*+ MergeJoin(p b)
 SeqScan(p)
 SeqScan(b)
 Leading((p b)) */
SELECT COUNT(*) FROM badges as b, posts as p WHERE b.UserId = p.OwnerUserId AND b.Date<='2014-09-03 12:54:54'::timestamp AND p.Score>=0 AND p.ViewCount<=7243 AND p.CommentCount>=0 AND p.CommentCount<=12;

/*+ MergeJoin(b v c u)
 HashJoin(v c u)
 HashJoin(c u)
 SeqScan(b)
 SeqScan(v)
 SeqScan(c)
 IndexScan(u)
 Leading((b (v (c u)))) */
SELECT COUNT(*) FROM comments as c, votes as v, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND v.CreationDate>='2010-08-10 00:00:00'::timestamp AND v.CreationDate<='2014-09-11 00:00:00'::timestamp AND b.Date<='2014-08-27 09:09:27'::timestamp AND u.Views<=18 AND u.DownVotes>=0;

/*+ HashJoin(ph u b v c)
 HashJoin(ph u b v)
 HashJoin(ph u b)
 HashJoin(u b)
 SeqScan(ph)
 SeqScan(u)
 SeqScan(b)
 IndexScan(v)
 SeqScan(c)
 Leading((((ph (u b)) v) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, votes as v, users as u WHERE u.Id =b.UserId AND b.UserId = ph.UserId AND ph.UserId = v.UserId AND v.UserId = c.UserId AND ph.PostHistoryTypeId=3 AND b.Date>='2010-07-26 20:23:42'::timestamp AND b.Date<='2014-08-26 09:10:56'::timestamp AND v.BountyAmount>=0 AND u.CreationDate>='2010-07-27 02:48:57'::timestamp;

/*+ HashJoin(v ph b u c)
 HashJoin(v ph b u)
 HashJoin(ph b u)
 NestLoop(b u)
 SeqScan(v)
 IndexScan(ph)
 SeqScan(b)
 IndexScan(u)
 SeqScan(c)
 Leading(((v (ph (b u))) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, votes as v, users as u WHERE u.Id =b.UserId AND b.UserId = ph.UserId AND ph.UserId = v.UserId AND v.UserId = c.UserId AND c.CreationDate>='2010-09-30 15:20:13'::timestamp AND u.Reputation>=1 AND u.Views>=0 AND u.Views<=64 AND u.CreationDate>='2010-07-19 21:55:38'::timestamp;

/*+ HashJoin(v ph pl c)
 HashJoin(ph pl c)
 HashJoin(pl c)
 SeqScan(v)
 SeqScan(ph)
 SeqScan(pl)
 SeqScan(c)
 Leading((v (ph (pl c)))) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, postHistory as ph, votes as v WHERE pl.PostId = c.PostId AND c.PostId = ph.PostId AND ph.PostId = v.PostId AND c.Score=0 AND c.CreationDate>='2010-08-06 03:08:39'::timestamp AND c.CreationDate<='2014-09-09 06:57:25'::timestamp AND pl.LinkTypeId=1 AND ph.PostHistoryTypeId=3;

/*+ HashJoin(ph c)
 SeqScan(ph)
 SeqScan(c)
 Leading((ph c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph WHERE c.UserId = ph.UserId AND c.Score=1 AND c.CreationDate>='2010-08-09 17:13:21'::timestamp AND c.CreationDate<='2014-09-13 21:09:00'::timestamp AND ph.CreationDate>='2010-08-30 18:42:30'::timestamp AND ph.CreationDate<='2014-09-10 07:50:32'::timestamp;

/*+ HashJoin(b c u)
 HashJoin(c u)
 SeqScan(b)
 SeqScan(c)
 SeqScan(u)
 Leading((b (c u))) */
SELECT COUNT(*) FROM comments as c, badges as b, users as u WHERE u.Id = c.UserId AND c.UserId = b.UserId AND c.CreationDate>='2010-07-19 20:32:02'::timestamp AND c.CreationDate<='2014-09-08 02:11:32'::timestamp AND u.Reputation<=898 AND u.DownVotes<=2 AND u.UpVotes>=0;

/*+ HashJoin(c pl p)
 HashJoin(pl p)
 SeqScan(c)
 SeqScan(pl)
 SeqScan(p)
 Leading((c (pl p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE p.Id = c.PostId AND p.Id = pl.PostId AND c.CreationDate>='2010-08-07 09:32:00'::timestamp AND c.CreationDate<='2014-09-13 20:54:31'::timestamp AND p.AnswerCount<=3 AND p.FavoriteCount>=0 AND pl.LinkTypeId=1;

/*+ HashJoin(p u)
 SeqScan(p)
 SeqScan(u)
 Leading((p u)) */
SELECT COUNT(*) FROM posts as p, users as u WHERE p.OwnerUserId= u.Id AND p.ViewCount<=13526 AND p.AnswerCount>=0 AND u.UpVotes>=0 AND u.UpVotes<=652 AND u.CreationDate<='2014-08-25 06:02:11'::timestamp;

/*+ HashJoin(v ph c pl)
 MergeJoin(ph c pl)
 HashJoin(c pl)
 SeqScan(v)
 IndexScan(ph)
 SeqScan(c)
 SeqScan(pl)
 Leading((v (ph (c pl)))) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, postHistory as ph, votes as v WHERE pl.PostId = c.PostId AND c.PostId = ph.PostId AND ph.PostId = v.PostId AND c.Score=0 AND c.CreationDate>='2010-07-19 20:03:30'::timestamp AND ph.PostHistoryTypeId=4 AND ph.CreationDate>='2010-08-12 13:24:12'::timestamp AND v.VoteTypeId=2;

/*+ HashJoin(ph v u c p pl)
 HashJoin(v u c p pl)
 HashJoin(u c p pl)
 HashJoin(c p pl)
 MergeJoin(p pl)
 SeqScan(ph)
 SeqScan(v)
 SeqScan(u)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 Leading((ph (v (u (c (p pl)))))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, votes as v, users as u WHERE p.Id = pl.PostId AND p.Id = ph.PostId AND p.Id = c.PostId AND u.Id = c.UserId AND u.Id = v.UserId AND c.Score=0 AND ph.PostHistoryTypeId=25 AND ph.CreationDate<='2014-09-02 01:52:48'::timestamp AND v.CreationDate='2010-09-24 00:00:00'::timestamp AND u.Views>=0;

/*+ HashJoin(ph c p)
 HashJoin(c p)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(p)
 Leading((ph (c p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph WHERE p.Id = c.PostId AND p.Id = ph.PostId AND p.AnswerCount>=0 AND p.FavoriteCount>=0 AND p.FavoriteCount<=23 AND ph.PostHistoryTypeId=2 AND ph.CreationDate>='2010-07-29 01:45:55'::timestamp;

/*+ HashJoin(c u v b)
 NestLoop(c u v)
 NestLoop(c u)
 SeqScan(c)
 IndexScan(u)
 IndexScan(v)
 SeqScan(b)
 Leading((((c u) v) b)) */
SELECT COUNT(*) FROM comments as c, votes as v, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND c.Score=0 AND c.CreationDate>='2010-07-27 15:22:18'::timestamp AND c.CreationDate<='2014-09-01 13:22:36'::timestamp AND v.CreationDate>='2010-07-19 00:00:00'::timestamp AND v.CreationDate<='2014-09-10 00:00:00'::timestamp;

/*+ HashJoin(ph u c)
 HashJoin(u c)
 SeqScan(ph)
 IndexScan(u)
 SeqScan(c)
 Leading((ph (u c))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND c.Score=0 AND ph.PostHistoryTypeId=5 AND u.Views<=24 AND u.CreationDate>='2010-08-21 22:57:18'::timestamp AND u.CreationDate<='2014-09-10 20:00:25'::timestamp;

/*+ HashJoin(v c u)
 HashJoin(c u)
 SeqScan(v)
 SeqScan(c)
 SeqScan(u)
 Leading((v (c u))) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND c.PostId = v.PostId AND v.BountyAmount>=0 AND u.Reputation>=1 AND u.Reputation<=1646 AND u.DownVotes>=0 AND u.CreationDate<='2014-09-11 11:49:17'::timestamp;

/*+ HashJoin(ph u c)
 HashJoin(u c)
 SeqScan(ph)
 IndexScan(u)
 SeqScan(c)
 Leading((ph (u c))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND ph.PostHistoryTypeId=2 AND ph.CreationDate>='2010-08-10 00:33:26'::timestamp AND u.Reputation>=1 AND u.Reputation<=225 AND u.CreationDate<='2014-07-17 14:40:14'::timestamp;

/*+ MergeJoin(ph pl p c v)
 HashJoin(ph pl p c)
 HashJoin(pl p c)
 HashJoin(pl p)
 SeqScan(ph)
 SeqScan(pl)
 SeqScan(p)
 SeqScan(c)
 SeqScan(v)
 Leading(((ph ((pl p) c)) v)) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, votes as v WHERE p.Id = c.PostId AND p.Id = pl.PostId AND p.Id = ph.PostId AND p.Id = v.PostId AND p.PostTypeId=2 AND pl.CreationDate<='2014-07-03 07:21:44'::timestamp AND v.VoteTypeId=2 AND v.CreationDate>='2010-07-19 00:00:00'::timestamp AND v.CreationDate<='2014-09-12 00:00:00'::timestamp;

/*+ MergeJoin(v u b c)
 HashJoin(u b c)
 HashJoin(u b)
 IndexScan(v)
 SeqScan(u)
 SeqScan(b)
 IndexScan(c)
 Leading((v ((u b) c))) */
SELECT COUNT(*) FROM comments as c, votes as v, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND c.Score=0 AND b.Date>='2010-07-19 19:39:10'::timestamp AND b.Date<='2014-08-28 08:50:39'::timestamp AND u.DownVotes>=0 AND u.DownVotes<=0;

/*+ HashJoin(v u p b)
 HashJoin(u p b)
 HashJoin(u p)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 SeqScan(b)
 Leading((v ((u p) b))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND v.CreationDate<='2014-09-05 00:00:00'::timestamp AND p.Score<=16 AND p.CreationDate<='2014-09-10 12:59:41'::timestamp AND u.Views>=0 AND u.CreationDate>='2010-07-21 03:28:48'::timestamp;

/*+ HashJoin(v ph c)
 HashJoin(ph c)
 SeqScan(v)
 SeqScan(ph)
 SeqScan(c)
 Leading((v (ph c))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v WHERE ph.PostId = c.PostId AND ph.PostId = v.PostId AND c.Score=0 AND ph.PostHistoryTypeId=2 AND ph.CreationDate>='2010-10-13 11:31:21'::timestamp AND v.VoteTypeId=2 AND v.CreationDate='2013-09-24 00:00:00'::timestamp;

/*+ HashJoin(ph u c)
 HashJoin(u c)
 SeqScan(ph)
 SeqScan(u)
 SeqScan(c)
 Leading((ph (u c))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND c.CreationDate>='2009-02-02 14:45:19'::timestamp AND c.CreationDate<='2014-08-28 12:00:41'::timestamp AND u.Reputation>=1 AND u.Reputation<=526 AND u.Views<=337;

/*+ HashJoin(v u ph c)
 HashJoin(v u ph)
 HashJoin(v u)
 SeqScan(v)
 IndexScan(u)
 SeqScan(ph)
 SeqScan(c)
 Leading((((v u) ph) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v, users as u WHERE u.Id = v.UserId AND v.UserId = ph.UserId AND ph.UserId =c.UserId AND c.Score=0 AND ph.CreationDate>='2012-01-27 15:59:22'::timestamp AND ph.CreationDate<='2014-09-13 08:02:51'::timestamp AND v.BountyAmount>=0 AND u.DownVotes<=0;

/*+ HashJoin(ph b u c)
 HashJoin(b u c)
 HashJoin(u c)
 SeqScan(ph)
 SeqScan(b)
 SeqScan(u)
 SeqScan(c)
 Leading((ph (b (u c)))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = ph.UserId AND u.Id = b.UserId AND ph.PostHistoryTypeId=3 AND u.Reputation<=211 AND u.Views>=0 AND u.UpVotes>=0 AND u.CreationDate>='2010-10-08 09:14:10'::timestamp;

/*+ HashJoin(v u p b)
 HashJoin(u p b)
 HashJoin(u p)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 SeqScan(b)
 Leading((v ((u p) b))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND v.CreationDate>='2010-07-21 00:00:00'::timestamp AND p.Score<=26 AND u.Reputation<=143 AND u.DownVotes<=3 AND u.CreationDate<='2014-08-18 08:06:23'::timestamp;

/*+ HashJoin(v p u)
 HashJoin(v p)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 Leading(((v p) u)) */
SELECT COUNT(*) FROM votes as v, posts as p, users as u WHERE v.PostId = p.Id AND v.UserId = u.Id AND p.PostTypeId=1 AND p.ViewCount>=0 AND p.CommentCount>=0 AND p.FavoriteCount=0 AND p.CreationDate>='2010-07-30 00:55:20'::timestamp;

/*+ HashJoin(c p u)
 MergeJoin(p u)
 SeqScan(c)
 SeqScan(p)
 IndexScan(u)
 Leading((c (p u))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.UserId = u.Id AND u.Id = p.OwnerUserId AND p.Score>=-1 AND p.ViewCount>=0 AND p.CommentCount=2 AND p.CreationDate>='2010-07-20 08:05:04'::timestamp AND p.CreationDate<='2014-09-10 23:18:19'::timestamp;

/*+ HashJoin(v u ph c)
 HashJoin(v u ph)
 HashJoin(v u)
 SeqScan(v)
 IndexScan(u)
 SeqScan(ph)
 SeqScan(c)
 Leading((((v u) ph) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v, users as u WHERE u.Id = v.UserId AND v.UserId = ph.UserId AND ph.UserId =c.UserId AND c.CreationDate>='2010-09-08 06:25:25'::timestamp AND ph.PostHistoryTypeId=3 AND ph.CreationDate<='2014-09-13 07:12:49'::timestamp AND u.Reputation>=1 AND u.DownVotes>=0;

/*+ HashJoin(ph pl p c v)
 HashJoin(ph pl p c)
 HashJoin(pl p c)
 HashJoin(pl p)
 SeqScan(ph)
 SeqScan(pl)
 SeqScan(p)
 SeqScan(c)
 SeqScan(v)
 Leading(((ph ((pl p) c)) v)) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, votes as v WHERE p.Id = c.PostId AND p.Id = pl.PostId AND p.Id = ph.PostId AND p.Id = v.PostId AND c.Score=0 AND pl.LinkTypeId=1 AND ph.CreationDate>='2010-08-21 05:49:42'::timestamp AND v.CreationDate>='2010-07-19 00:00:00'::timestamp AND v.CreationDate<='2014-09-08 00:00:00'::timestamp;

/*+ HashJoin(c p)
 SeqScan(c)
 SeqScan(p)
 Leading((c p)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND c.CreationDate>='2010-08-06 18:30:34'::timestamp AND p.ViewCount>=0 AND p.ViewCount<=5960 AND p.AnswerCount<=5 AND p.CommentCount>=0;

/*+ HashJoin(b c u)
 HashJoin(b c)
 SeqScan(b)
 SeqScan(c)
 SeqScan(u)
 Leading(((b c) u)) */
SELECT COUNT(*) FROM comments as c, badges as b, users as u WHERE u.Id = c.UserId AND c.UserId = b.UserId AND c.CreationDate='2014-01-30 16:22:58'::timestamp AND u.Reputation>=1 AND u.Views>=0 AND u.Views<=653 AND u.CreationDate>='2010-10-27 10:08:08'::timestamp;

/*+ HashJoin(b u c)
 HashJoin(u c)
 SeqScan(b)
 SeqScan(u)
 SeqScan(c)
 Leading((b (u c))) */
SELECT COUNT(*) FROM comments as c, badges as b, users as u WHERE u.Id = c.UserId AND c.UserId = b.UserId AND c.Score=1 AND b.Date>='2010-07-31 10:39:37'::timestamp AND b.Date<='2014-09-10 07:01:12'::timestamp AND u.Views>=0 AND u.Views<=49;

/*+ HashJoin(ph u c)
 HashJoin(u c)
 SeqScan(ph)
 SeqScan(u)
 SeqScan(c)
 Leading((ph (u c))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND c.CreationDate>='2010-07-22 16:25:36'::timestamp AND u.Reputation>=1 AND u.Reputation<=670 AND u.DownVotes<=0 AND u.UpVotes<=19;

/*+ HashJoin(ph p u)
 HashJoin(p u)
 SeqScan(ph)
 SeqScan(p)
 SeqScan(u)
 Leading((ph (p u))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.PostId = p.Id AND p.OwnerUserId = u.Id AND p.PostTypeId=1 AND p.AnswerCount>=0 AND p.CommentCount<=21 AND u.Views>=0 AND u.Views<=18;

/*+ HashJoin(p pl ph)
 HashJoin(pl ph)
 SeqScan(p)
 SeqScan(pl)
 SeqScan(ph)
 Leading((p (pl ph))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph WHERE p.Id = pl.PostId AND pl.PostId = ph.PostId AND p.PostTypeId=1 AND p.FavoriteCount>=0 AND p.FavoriteCount<=63 AND pl.LinkTypeId=1 AND ph.PostHistoryTypeId=24;

/*+ HashJoin(b ph p u)
 HashJoin(p u)
 HashJoin(b ph)
 SeqScan(b)
 SeqScan(ph)
 SeqScan(p)
 SeqScan(u)
 Leading(((b ph) (p u))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u, badges as b WHERE u.Id = p.OwnerUserId AND p.OwnerUserId = ph.UserId AND ph.UserId = b.UserId AND ph.CreationDate='2014-02-13 08:02:31'::timestamp AND p.CreationDate<='2014-08-17 04:15:47'::timestamp AND u.Views>=0 AND u.Views<=42 AND u.CreationDate>='2010-07-19 20:21:35'::timestamp;

/*+ HashJoin(p u)
 SeqScan(p)
 SeqScan(u)
 Leading((p u)) */
SELECT COUNT(*) FROM posts as p, users as u WHERE p.OwnerUserId= u.Id AND p.PostTypeId=1 AND p.Score<=72 AND p.ViewCount>=0 AND p.AnswerCount<=6 AND u.UpVotes<=19;

/*+ HashJoin(c p pl)
 HashJoin(p pl)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 Leading((c (p pl))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE c.UserId = p.OwnerUserId AND p.Id = pl.PostId AND p.Score>=0 AND p.Score<=15 AND p.ViewCount<=2822 AND p.AnswerCount>=0 AND p.AnswerCount<=3;

/*+ HashJoin(ph u p)
 HashJoin(ph u)
 SeqScan(ph)
 SeqScan(u)
 SeqScan(p)
 Leading(((ph u) p)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.UserId = p.OwnerUserId AND ph.UserId = u.Id AND p.Score<=28 AND p.ViewCount>=0 AND p.CommentCount>=0 AND p.CommentCount<=16 AND u.DownVotes>=0;

/*+ HashJoin(p v u)
 MergeJoin(v u)
 SeqScan(p)
 SeqScan(v)
 IndexScan(u)
 Leading((p (v u))) */
SELECT COUNT(*) FROM votes as v, posts as p, users as u WHERE v.PostId = p.Id AND v.UserId = u.Id AND v.CreationDate>='2010-07-19 00:00:00'::timestamp AND u.DownVotes>=0 AND u.UpVotes>=0 AND u.CreationDate>='2010-08-11 05:14:30'::timestamp AND u.CreationDate<='2014-08-11 11:19:59'::timestamp;

/*+ HashJoin(p pl u)
 HashJoin(p pl)
 SeqScan(p)
 SeqScan(pl)
 SeqScan(u)
 Leading(((p pl) u)) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, users as u WHERE p.Id = pl.PostId AND p.OwnerUserId = u.Id AND p.FavoriteCount<=6 AND p.CreationDate>='2010-07-20 14:21:37'::timestamp AND pl.LinkTypeId=1 AND u.Views>=0 AND u.Views<=51;

/*+ HashJoin(v b u p)
 HashJoin(b u p)
 MergeJoin(u p)
 SeqScan(v)
 SeqScan(b)
 IndexScan(u)
 SeqScan(p)
 Leading((v (b (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND v.BountyAmount<=50 AND p.FavoriteCount=0 AND u.Reputation>=1 AND u.Reputation<=1200 AND u.UpVotes<=121;

/*+ HashJoin(v p u)
 MergeJoin(p u)
 SeqScan(v)
 SeqScan(p)
 IndexScan(u)
 Leading((v (p u))) */
SELECT COUNT(*) FROM votes as v, posts as p, users as u WHERE v.UserId = p.OwnerUserId AND p.OwnerUserId = u.Id AND p.ViewCount>=0 AND p.ViewCount<=5286 AND p.AnswerCount>=0 AND p.AnswerCount<=4 AND p.CreationDate>='2010-07-20 09:45:18'::timestamp;

/*+ HashJoin(ph b u p t)
 MergeJoin(b u p t)
 HashJoin(u p t)
 MergeJoin(p t)
 SeqScan(ph)
 SeqScan(b)
 SeqScan(u)
 SeqScan(p)
 IndexScan(t)
 Leading((ph (b (u (p t))))) */
SELECT COUNT(*) FROM tags as t, posts as p, users as u, postHistory as ph, badges as b WHERE p.Id = t.ExcerptPostId AND u.Id = ph.UserId AND u.Id = b.UserId AND u.Id = p.OwnerUserId AND t.Count>=3 AND p.CommentCount>=0 AND p.CommentCount<=11 AND u.DownVotes>=0 AND b.Date='2012-07-03 18:56:37'::timestamp;

/*+ HashJoin(ph p u b)
 HashJoin(ph p u)
 HashJoin(p u)
 SeqScan(ph)
 SeqScan(p)
 SeqScan(u)
 SeqScan(b)
 Leading(((ph (p u)) b)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u, badges as b WHERE u.Id = p.OwnerUserId AND p.OwnerUserId = ph.UserId AND ph.UserId = b.UserId AND p.CommentCount<=22 AND p.FavoriteCount>=0 AND p.FavoriteCount<=10 AND u.UpVotes<=44 AND b.Date>='2010-07-29 02:28:59'::timestamp;

/*+ HashJoin(ph p u)
 HashJoin(p u)
 SeqScan(ph)
 SeqScan(p)
 SeqScan(u)
 Leading((ph (p u))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.PostId = p.Id AND p.OwnerUserId = u.Id AND ph.CreationDate>='2010-09-24 04:16:19'::timestamp AND p.Score>=-2 AND p.CreationDate>='2010-09-07 02:04:47'::timestamp AND p.CreationDate<='2014-09-11 04:40:16'::timestamp AND u.Views<=36;

/*+ HashJoin(b u)
 SeqScan(b)
 IndexScan(u)
 Leading((b u)) */
SELECT COUNT(*) FROM badges as b, users as u WHERE b.UserId= u.Id AND b.Date>='2010-07-20 10:14:09'::timestamp AND b.Date<='2014-08-23 21:48:32'::timestamp AND u.Reputation>=1 AND u.Reputation<=787 AND u.UpVotes=0;

/*+ HashJoin(b v c u pl p)
 HashJoin(v c u pl p)
 HashJoin(c u pl p)
 MergeJoin(u pl p)
 HashJoin(pl p)
 SeqScan(b)
 SeqScan(v)
 SeqScan(c)
 IndexScan(u)
 SeqScan(pl)
 SeqScan(p)
 Leading((b (v (c (u (pl p)))))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, votes as v, badges as b, users as u WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.CommentCount<=17 AND pl.LinkTypeId=1 AND v.BountyAmount<=50 AND u.Reputation<=128 AND u.UpVotes>=0;

/*+ HashJoin(ph u c)
 HashJoin(u c)
 SeqScan(ph)
 IndexScan(u)
 SeqScan(c)
 Leading((ph (u c))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND ph.PostHistoryTypeId=5 AND u.Views<=105 AND u.DownVotes>=0 AND u.DownVotes<=1 AND u.CreationDate>='2010-09-30 13:11:57'::timestamp;

/*+ HashJoin(v p pl c)
 HashJoin(p pl c)
 HashJoin(pl c)
 SeqScan(v)
 SeqScan(p)
 SeqScan(pl)
 SeqScan(c)
 Leading((v (p (pl c)))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, votes as v WHERE p.Id = c.PostId AND c.PostId = pl.PostId AND pl.PostId = v.PostId AND c.CreationDate<='2014-09-13 21:55:37'::timestamp AND p.CommentCount<=17 AND p.CreationDate<='2014-08-23 14:02:33'::timestamp AND pl.LinkTypeId=1 AND pl.CreationDate<='2014-08-10 00:22:09'::timestamp;

/*+ HashJoin(p pl ph)
 HashJoin(pl ph)
 SeqScan(p)
 SeqScan(pl)
 SeqScan(ph)
 Leading((p (pl ph))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph WHERE p.Id = pl.PostId AND pl.PostId = ph.PostId AND p.Score<=10 AND p.CommentCount>=0 AND p.CommentCount<=13 AND p.FavoriteCount>=0 AND ph.PostHistoryTypeId=5;

/*+ HashJoin(v u b c)
 HashJoin(u b c)
 HashJoin(u b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(b)
 SeqScan(c)
 Leading((v ((u b) c))) */
SELECT COUNT(*) FROM comments as c, votes as v, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND c.Score=1 AND v.CreationDate>='2010-07-20 00:00:00'::timestamp AND b.Date<='2014-09-11 17:53:13'::timestamp AND u.CreationDate>='2010-07-26 22:33:49'::timestamp AND u.CreationDate<='2014-09-10 22:57:19'::timestamp;

/*+ HashJoin(c pl p)
 MergeJoin(pl p)
 SeqScan(c)
 SeqScan(pl)
 IndexScan(p)
 Leading((c (pl p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE p.Id = c.PostId AND p.Id = pl.PostId AND c.CreationDate<='2014-09-11 01:01:20'::timestamp AND p.CreationDate>='2010-10-08 13:41:22'::timestamp AND p.CreationDate<='2014-08-29 11:20:53'::timestamp AND pl.LinkTypeId=1 AND pl.CreationDate>='2011-06-23 14:54:12'::timestamp;

/*+ HashJoin(v b u p)
 HashJoin(b u p)
 MergeJoin(u p)
 SeqScan(v)
 SeqScan(b)
 IndexScan(u)
 SeqScan(p)
 Leading((v (b (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND v.BountyAmount>=0 AND p.CommentCount=6 AND p.FavoriteCount>=0 AND u.UpVotes<=106 AND u.CreationDate>='2011-02-03 09:16:10'::timestamp;

/*+ HashJoin(v u ph c)
 HashJoin(v u ph)
 HashJoin(v u)
 SeqScan(v)
 IndexScan(u)
 SeqScan(ph)
 SeqScan(c)
 Leading((((v u) ph) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v, users as u WHERE u.Id = v.UserId AND v.UserId = ph.UserId AND ph.UserId =c.UserId AND c.Score=1 AND c.CreationDate>='2010-07-25 11:24:42'::timestamp AND v.CreationDate<='2014-09-13 00:00:00'::timestamp AND u.UpVotes>=0 AND u.CreationDate>='2010-07-26 19:24:47'::timestamp;

/*+ HashJoin(ph u b v)
 HashJoin(u b v)
 HashJoin(u b)
 SeqScan(ph)
 SeqScan(u)
 SeqScan(b)
 IndexScan(v)
 Leading((ph ((u b) v))) */
SELECT COUNT(*) FROM postHistory as ph, votes as v, users as u, badges as b WHERE u.Id = ph.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND ph.CreationDate>='2010-09-21 17:19:53'::timestamp AND ph.CreationDate<='2014-09-09 20:10:25'::timestamp AND v.CreationDate>='2010-07-19 00:00:00'::timestamp AND u.Views<=83 AND b.Date>='2010-08-01 23:04:55'::timestamp;

/*+ HashJoin(v c u)
 HashJoin(c u)
 SeqScan(v)
 SeqScan(c)
 SeqScan(u)
 Leading((v (c u))) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND c.PostId = v.PostId AND v.BountyAmount<=100 AND u.DownVotes<=6 AND u.UpVotes>=0 AND u.UpVotes<=52 AND u.CreationDate<='2014-09-03 13:57:09'::timestamp;

/*+ HashJoin(v c u)
 HashJoin(c u)
 SeqScan(v)
 SeqScan(c)
 SeqScan(u)
 Leading((v (c u))) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND c.PostId = v.PostId AND v.BountyAmount>=0 AND v.BountyAmount<=25 AND u.Reputation>=1 AND u.Views<=29 AND u.DownVotes<=3;

/*+ HashJoin(v ph c pl)
 HashJoin(ph c pl)
 MergeJoin(c pl)
 SeqScan(v)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(pl)
 Leading((v (ph (c pl)))) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, postHistory as ph, votes as v WHERE pl.PostId = c.PostId AND c.PostId = ph.PostId AND ph.PostId = v.PostId AND c.CreationDate>='2010-08-26 01:08:43'::timestamp AND c.CreationDate<='2014-08-29 13:21:08'::timestamp AND pl.CreationDate<='2014-08-20 20:25:38'::timestamp AND v.VoteTypeId=2 AND v.CreationDate>='2010-07-25 00:00:00'::timestamp;

/*+ HashJoin(ph c u)
 HashJoin(c u)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(u)
 Leading((ph (c u))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND c.Score=0 AND ph.PostHistoryTypeId=5 AND u.DownVotes<=0 AND u.UpVotes>=0 AND u.UpVotes<=110;

/*+ HashJoin(u p)
 IndexScan(u)
 SeqScan(p)
 Leading((u p)) */
SELECT COUNT(*) FROM posts as p, users as u WHERE p.OwnerUserId= u.Id AND p.AnswerCount<=5 AND p.FavoriteCount>=0 AND p.CreationDate>='2009-02-02 14:21:12'::timestamp AND p.CreationDate<='2014-09-10 15:21:57'::timestamp AND u.CreationDate<='2014-08-15 05:17:41'::timestamp;

/*+ HashJoin(c u p)
 HashJoin(c u)
 SeqScan(c)
 IndexScan(u)
 SeqScan(p)
 Leading(((c u) p)) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.UserId = u.Id AND u.Id = p.OwnerUserId AND c.Score=0 AND p.PostTypeId=1 AND p.AnswerCount>=0 AND u.DownVotes<=3 AND u.CreationDate<='2014-08-24 15:03:32'::timestamp;

/*+ HashJoin(ph u b v c)
 HashJoin(ph u b v)
 HashJoin(ph u b)
 HashJoin(u b)
 SeqScan(ph)
 IndexScan(u)
 SeqScan(b)
 IndexScan(v)
 SeqScan(c)
 Leading((((ph (u b)) v) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, votes as v, users as u WHERE u.Id =b.UserId AND b.UserId = ph.UserId AND ph.UserId = v.UserId AND v.UserId = c.UserId AND c.Score=0 AND ph.CreationDate>='2010-10-15 20:17:13'::timestamp AND v.CreationDate<='2014-09-12 00:00:00'::timestamp AND u.Reputation=1 AND u.DownVotes<=0;

/*+ HashJoin(ph c p)
 HashJoin(c p)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(p)
 Leading((ph (c p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph WHERE p.Id = c.PostId AND p.Id = ph.PostId AND p.PostTypeId=2 AND p.CommentCount>=0 AND p.CreationDate>='2010-08-10 18:25:52'::timestamp AND p.CreationDate<='2014-09-07 14:43:13'::timestamp AND ph.CreationDate<='2014-08-28 20:00:22'::timestamp;

/*+ HashJoin(p u)
 SeqScan(p)
 SeqScan(u)
 Leading((p u)) */
SELECT COUNT(*) FROM posts as p, users as u WHERE p.OwnerUserId= u.Id AND p.PostTypeId=2 AND p.CreationDate>='2010-09-12 11:22:28'::timestamp AND u.Views<=48 AND u.UpVotes>=0 AND u.UpVotes<=25;

/*+ HashJoin(ph p u b)
 HashJoin(ph p u)
 HashJoin(p u)
 SeqScan(ph)
 SeqScan(p)
 SeqScan(u)
 SeqScan(b)
 Leading(((ph (p u)) b)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u, badges as b WHERE u.Id = p.OwnerUserId AND p.OwnerUserId = ph.UserId AND ph.UserId = b.UserId AND ph.CreationDate>='2010-07-22 09:53:52'::timestamp AND p.PostTypeId=1 AND u.DownVotes>=0 AND u.CreationDate<='2014-08-22 10:33:24'::timestamp AND b.Date='2014-05-20 13:17:45'::timestamp;

/*+ HashJoin(p u)
 SeqScan(p)
 IndexScan(u)
 Leading((p u)) */
SELECT COUNT(*) FROM posts as p, users as u WHERE p.OwnerUserId= u.Id AND p.Score=1 AND p.CommentCount>=0 AND u.Views>=0 AND u.UpVotes<=8 AND u.CreationDate>='2010-08-18 02:42:21'::timestamp;

/*+ HashJoin(p c)
 SeqScan(p)
 SeqScan(c)
 Leading((p c)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND p.ViewCount>=0 AND p.CommentCount>=0 AND p.CommentCount<=14 AND p.FavoriteCount>=0 AND p.CreationDate<='2014-07-30 00:22:24'::timestamp;

/*+ HashJoin(b v c u)
 HashJoin(v c u)
 HashJoin(c u)
 SeqScan(b)
 SeqScan(v)
 SeqScan(c)
 IndexScan(u)
 Leading((b (v (c u)))) */
SELECT COUNT(*) FROM comments as c, votes as v, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND c.Score=0 AND c.CreationDate>='2010-07-23 13:32:48'::timestamp AND v.BountyAmount>=0 AND u.Reputation>=1 AND u.UpVotes<=5;

/*+ HashJoin(ph c p)
 HashJoin(c p)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(p)
 Leading((ph (c p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph WHERE p.Id = c.PostId AND p.Id = ph.PostId AND c.Score=0 AND p.AnswerCount<=2 AND p.FavoriteCount<=14 AND ph.CreationDate>='2010-11-04 03:08:14'::timestamp AND ph.CreationDate<='2014-08-21 07:16:17'::timestamp;

/*+ HashJoin(pl p c)
 HashJoin(pl p)
 SeqScan(pl)
 SeqScan(p)
 SeqScan(c)
 Leading(((pl p) c)) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE p.Id = c.PostId AND p.Id = pl.PostId AND c.Score=1 AND p.PostTypeId=1 AND p.ViewCount>=0 AND p.ViewCount<=2599 AND p.AnswerCount>=0;

/*+ HashJoin(ph u b c)
 HashJoin(u b c)
 HashJoin(u b)
 SeqScan(ph)
 SeqScan(u)
 SeqScan(b)
 SeqScan(c)
 Leading((ph ((u b) c))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = ph.UserId AND u.Id = b.UserId AND c.CreationDate>='2010-08-02 19:29:21'::timestamp AND c.CreationDate<='2014-09-09 20:55:27'::timestamp AND u.Views>=0 AND u.UpVotes>=0 AND u.UpVotes<=9;

/*+ HashJoin(ph u p)
 HashJoin(u p)
 SeqScan(ph)
 IndexScan(u)
 SeqScan(p)
 Leading((ph (u p))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.PostId = p.Id AND p.OwnerUserId = u.Id AND ph.CreationDate>='2010-10-15 14:40:46'::timestamp AND p.CreationDate>='2010-07-19 21:15:20'::timestamp AND u.Reputation<=1713 AND u.Views<=75 AND u.UpVotes>=0;

/*+ HashJoin(ph pl c v)
 HashJoin(ph pl c)
 HashJoin(pl c)
 SeqScan(ph)
 SeqScan(pl)
 SeqScan(c)
 SeqScan(v)
 Leading(((ph (pl c)) v)) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, postHistory as ph, votes as v WHERE pl.PostId = c.PostId AND c.PostId = ph.PostId AND ph.PostId = v.PostId AND c.CreationDate<='2014-09-11 19:04:35'::timestamp AND pl.LinkTypeId=1 AND ph.CreationDate<='2014-09-03 09:09:27'::timestamp AND v.CreationDate>='2010-07-19 00:00:00'::timestamp AND v.CreationDate<='2014-09-11 00:00:00'::timestamp;

/*+ HashJoin(v p u b)
 HashJoin(v p u)
 HashJoin(p u)
 SeqScan(v)
 SeqScan(p)
 IndexScan(u)
 SeqScan(b)
 Leading(((v (p u)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE u.Id = v.UserId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND v.CreationDate<='2014-09-12 00:00:00'::timestamp AND p.ViewCount>=0 AND p.ViewCount<=4949 AND p.FavoriteCount<=21 AND u.DownVotes<=82;

/*+ HashJoin(p pl u)
 HashJoin(p pl)
 SeqScan(p)
 SeqScan(pl)
 SeqScan(u)
 Leading(((p pl) u)) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, users as u WHERE p.Id = pl.PostId AND p.OwnerUserId = u.Id AND p.Score<=68 AND p.CreationDate>='2010-08-09 19:53:30'::timestamp AND p.CreationDate<='2014-09-10 19:39:25'::timestamp AND u.UpVotes>=0 AND u.CreationDate<='2014-08-27 16:20:59'::timestamp;

/*+ HashJoin(b u c v)
 HashJoin(b u c)
 HashJoin(b u)
 SeqScan(b)
 SeqScan(u)
 SeqScan(c)
 SeqScan(v)
 Leading((((b u) c) v)) */
SELECT COUNT(*) FROM comments as c, votes as v, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND c.Score=0 AND v.BountyAmount>=0 AND v.BountyAmount<=50 AND u.Reputation<=146 AND u.CreationDate<='2014-08-07 17:50:12'::timestamp;

/*+ HashJoin(ph c u)
 HashJoin(c u)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(u)
 Leading((ph (c u))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND c.CreationDate>='2010-07-25 20:07:35'::timestamp AND ph.CreationDate>='2010-10-02 22:12:51'::timestamp AND ph.CreationDate<='2014-09-14 02:46:55'::timestamp AND u.Reputation<=776 AND u.Views=0;

/*+ HashJoin(c u p)
 HashJoin(c u)
 SeqScan(c)
 IndexScan(u)
 SeqScan(p)
 Leading(((c u) p)) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.PostId = p.Id AND c.UserId = u.Id AND c.CreationDate<='2014-09-13 00:34:12'::timestamp AND p.AnswerCount>=0 AND p.CreationDate>='2010-07-23 16:36:50'::timestamp AND p.CreationDate<='2014-09-12 17:31:41'::timestamp AND u.UpVotes>=0;

/*+ HashJoin(ph p pl)
 HashJoin(p pl)
 SeqScan(ph)
 SeqScan(p)
 SeqScan(pl)
 Leading((ph (p pl))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph WHERE p.Id = pl.PostId AND pl.PostId = ph.PostId AND p.ViewCount>=0 AND p.ViewCount<=14325 AND p.AnswerCount<=5 AND p.CreationDate>='2010-08-18 07:36:59'::timestamp AND ph.CreationDate<='2014-03-08 13:53:22'::timestamp;

/*+ HashJoin(b c u p pl)
 HashJoin(c u p pl)
 MergeJoin(u p pl)
 HashJoin(p pl)
 SeqScan(b)
 SeqScan(c)
 IndexScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((b (c (u (p pl))))) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND p.Id = c.PostId AND u.Id = b.UserId AND u.Id = p.OwnerUserId AND pl.LinkTypeId=1 AND p.AnswerCount<=19 AND u.Reputation<=526 AND u.DownVotes>=0 AND b.Date<='2014-09-11 08:55:52'::timestamp;

/*+ HashJoin(ph p pl)
 HashJoin(p pl)
 SeqScan(ph)
 SeqScan(p)
 SeqScan(pl)
 Leading((ph (p pl))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph WHERE p.Id = pl.PostId AND pl.PostId = ph.PostId AND p.PostTypeId=1 AND p.Score>=-2 AND p.Score<=68 AND p.ViewCount>=0 AND p.ViewCount<=1062;

/*+ MergeJoin(ph p u)
 MergeJoin(p u)
 IndexScan(ph)
 SeqScan(p)
 IndexScan(u)
 Leading((ph (p u))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.PostId = p.Id AND p.OwnerUserId = u.Id AND ph.PostHistoryTypeId=2 AND p.PostTypeId=2 AND p.CreationDate='2011-11-28 05:36:15'::timestamp AND u.DownVotes>=0 AND u.DownVotes<=0;

/*+ HashJoin(b u)
 SeqScan(b)
 IndexScan(u)
 Leading((b u)) */
SELECT COUNT(*) FROM badges as b, users as u WHERE b.UserId= u.Id AND b.Date>='2010-07-27 15:48:44'::timestamp AND b.Date<='2014-09-11 02:19:16'::timestamp AND u.Reputation>=1 AND u.Reputation<=151 AND u.Views>=0;

/*+ HashJoin(ph p u)
 HashJoin(ph p)
 SeqScan(ph)
 SeqScan(p)
 SeqScan(u)
 Leading(((ph p) u)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.UserId = p.OwnerUserId AND ph.UserId = u.Id AND ph.PostHistoryTypeId=3 AND p.FavoriteCount>=0 AND u.DownVotes<=5 AND u.UpVotes>=0 AND u.UpVotes<=17;

/*+ HashJoin(v c)
 SeqScan(v)
 SeqScan(c)
 Leading((v c)) */
SELECT COUNT(*) FROM comments as c, votes as v WHERE c.UserId = v.UserId AND c.Score=0 AND v.BountyAmount>=0 AND v.BountyAmount<=50 AND v.CreationDate>='2010-07-23 00:00:00'::timestamp AND v.CreationDate<='2014-09-12 00:00:00'::timestamp;

/*+ HashJoin(u p)
 IndexScan(u)
 SeqScan(p)
 Leading((u p)) */
SELECT COUNT(*) FROM posts as p, users as u WHERE p.OwnerUserId= u.Id AND p.PostTypeId=2 AND p.Score>=0 AND p.CommentCount>=0 AND u.Views<=30 AND u.UpVotes=0;

/*+ HashJoin(b u c)
 HashJoin(u c)
 SeqScan(b)
 SeqScan(u)
 SeqScan(c)
 Leading((b (u c))) */
SELECT COUNT(*) FROM comments as c, badges as b, users as u WHERE u.Id = c.UserId AND c.UserId = b.UserId AND u.Reputation<=1530 AND u.Views>=0 AND u.DownVotes=0 AND u.UpVotes>=0 AND u.UpVotes<=44;

