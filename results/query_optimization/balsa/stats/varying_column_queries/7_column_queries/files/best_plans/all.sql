/*+ MergeJoin(p u)
 SeqScan(p)
 SeqScan(u)
 Leading((p u)) */
SELECT COUNT(*) FROM posts as p, users as u WHERE p.OwnerUserId= u.Id AND p.Score>=-1 AND p.Score<=27 AND p.ViewCount<=10291 AND p.FavoriteCount>=0 AND u.DownVotes>=0 AND u.DownVotes<=0 AND u.UpVotes>=0;

/*+ HashJoin(c p pl)
 HashJoin(p pl)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 Leading((c (p pl))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE p.Id = c.PostId AND p.Id = pl.PostId AND c.CreationDate>='2010-07-19 19:58:20'::timestamp AND c.CreationDate<='2014-09-10 09:02:56'::timestamp AND p.FavoriteCount>=0 AND p.CreationDate>='2010-08-20 13:54:04'::timestamp AND pl.LinkTypeId=1 AND pl.CreationDate>='2010-10-05 18:08:48'::timestamp AND pl.CreationDate<='2014-07-01 08:09:51'::timestamp;

/*+ HashJoin(p u)
 SeqScan(p)
 IndexScan(u)
 Leading((p u)) */
SELECT COUNT(*) FROM posts as p, users as u WHERE p.OwnerUserId= u.Id AND p.AnswerCount>=0 AND p.AnswerCount<=6 AND p.FavoriteCount<=44 AND u.Reputation>=1 AND u.Reputation<=287 AND u.Views>=0 AND u.CreationDate<='2014-09-09 23:32:58'::timestamp;

/*+ HashJoin(b ph u p)
 HashJoin(ph u p)
 MergeJoin(u p)
 SeqScan(b)
 SeqScan(ph)
 IndexScan(u)
 SeqScan(p)
 Leading((b (ph (u p)))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u, badges as b WHERE u.Id = p.OwnerUserId AND p.OwnerUserId = ph.UserId AND ph.UserId = b.UserId AND ph.CreationDate>='2010-08-08 23:24:20'::timestamp AND p.ViewCount>=0 AND p.FavoriteCount>=0 AND p.CreationDate>='2010-08-04 16:29:26'::timestamp AND u.Reputation>=1 AND u.Reputation<=161 AND u.CreationDate<='2014-09-02 09:26:33'::timestamp;

/*+ HashJoin(c ph pl p v b)
 NestLoop(c ph pl p v)
 MergeJoin(c ph pl p)
 HashJoin(ph pl p)
 MergeJoin(pl p)
 SeqScan(c)
 IndexScan(ph)
 IndexScan(pl)
 SeqScan(p)
 IndexScan(v)
 SeqScan(b)
 Leading((((c (ph (pl p))) v) b)) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, votes as v, badges as b WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.Id = ph.PostId AND p.Id = v.PostId AND b.UserId = c.UserId AND c.Score=0 AND p.AnswerCount>=0 AND p.AnswerCount<=5 AND ph.PostHistoryTypeId=1 AND ph.CreationDate>='2011-02-06 17:33:19'::timestamp AND v.CreationDate<='2014-09-11 00:00:00'::timestamp AND b.Date>='2010-09-02 12:39:06'::timestamp;

/*+ HashJoin(b ph u p)
 HashJoin(ph u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(ph)
 IndexScan(u)
 SeqScan(p)
 Leading((b (ph (u p)))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u, badges as b WHERE u.Id = p.OwnerUserId AND p.OwnerUserId = ph.UserId AND ph.UserId = b.UserId AND ph.PostHistoryTypeId=1 AND p.Score<=29 AND p.FavoriteCount>=0 AND p.CreationDate<='2014-09-01 18:44:30'::timestamp AND u.Views=1 AND u.UpVotes>=0 AND u.UpVotes<=267;

/*+ HashJoin(ph u c p pl)
 MergeJoin(u c p pl)
 HashJoin(c p pl)
 HashJoin(p pl)
 SeqScan(ph)
 IndexScan(u)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 Leading((ph (u (c (p pl))))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, users as u WHERE p.Id = pl.RelatedPostId AND pl.RelatedPostId = c.PostId AND pl.RelatedPostId = ph.PostId AND u.Id= c.UserId AND c.Score=0 AND p.Score<=16 AND p.CommentCount<=11 AND p.CreationDate>='2010-07-20 09:30:18'::timestamp AND u.Reputation<=231 AND u.CreationDate>='2011-10-23 07:43:58'::timestamp AND u.CreationDate<='2014-08-27 03:12:43'::timestamp;

/*+ HashJoin(v ph c pl)
 HashJoin(ph c pl)
 HashJoin(c pl)
 SeqScan(v)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(pl)
 Leading((v (ph (c pl)))) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, postHistory as ph, votes as v WHERE pl.PostId = c.PostId AND c.PostId = ph.PostId AND ph.PostId = v.PostId AND c.CreationDate<='2014-09-12 19:47:14'::timestamp AND pl.LinkTypeId=1 AND pl.CreationDate>='2011-03-13 15:25:27'::timestamp AND pl.CreationDate<='2014-08-20 14:01:57'::timestamp AND v.BountyAmount>=0 AND v.BountyAmount<=100 AND v.CreationDate<='2014-09-09 00:00:00'::timestamp;

/*+ HashJoin(u p pl)
 HashJoin(p pl)
 SeqScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((u (p pl))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, users as u WHERE p.Id = pl.PostId AND p.OwnerUserId = u.Id AND p.PostTypeId=1 AND p.ViewCount>=0 AND p.AnswerCount>=0 AND p.CommentCount>=0 AND u.Reputation>=1 AND u.UpVotes>=0 AND u.CreationDate>='2010-08-20 18:30:38'::timestamp;

/*+ HashJoin(c p u)
 HashJoin(p u)
 SeqScan(c)
 SeqScan(p)
 IndexScan(u)
 Leading((c (p u))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.UserId = u.Id AND u.Id = p.OwnerUserId AND p.ViewCount>=0 AND p.ViewCount<=7733 AND p.CreationDate>='2010-09-08 21:21:58'::timestamp AND u.DownVotes>=0 AND u.DownVotes<=1 AND u.UpVotes>=0 AND u.UpVotes<=347;

/*+ HashJoin(b ph u p)
 HashJoin(ph u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(ph)
 IndexScan(u)
 SeqScan(p)
 Leading((b (ph (u p)))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u, badges as b WHERE u.Id = p.OwnerUserId AND p.OwnerUserId = ph.UserId AND ph.UserId = b.UserId AND ph.CreationDate<='2014-09-09 19:58:20'::timestamp AND p.PostTypeId=1 AND p.ViewCount<=25960 AND p.AnswerCount>=0 AND p.AnswerCount<=4 AND p.CreationDate>='2010-07-19 19:39:06'::timestamp AND u.Views<=37;

/*+ HashJoin(v p pl u)
 NestLoop(p pl u)
 HashJoin(p pl)
 SeqScan(v)
 SeqScan(p)
 SeqScan(pl)
 IndexScan(u)
 Leading((v ((p pl) u))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, votes as v, users as u WHERE p.Id = pl.RelatedPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND pl.LinkTypeId=3 AND p.FavoriteCount>=0 AND p.FavoriteCount<=25 AND p.CreationDate<='2014-08-24 18:45:11'::timestamp AND v.BountyAmount>=0 AND v.BountyAmount<=100 AND u.CreationDate<='2014-09-10 19:33:49'::timestamp;

/*+ HashJoin(c u p)
 HashJoin(u p)
 SeqScan(c)
 IndexScan(u)
 SeqScan(p)
 Leading((c (u p))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.UserId = u.Id AND u.Id = p.OwnerUserId AND c.CreationDate>='2010-08-16 11:45:12'::timestamp AND c.CreationDate<='2014-09-12 09:31:23'::timestamp AND p.CommentCount<=9 AND p.FavoriteCount<=16 AND p.CreationDate<='2014-09-11 18:07:50'::timestamp AND u.Views>=0 AND u.Views<=38;

/*+ NestLoop(v ph u b c)
 MergeJoin(v ph u b)
 HashJoin(ph u b)
 HashJoin(u b)
 IndexScan(v)
 SeqScan(ph)
 IndexScan(u)
 SeqScan(b)
 IndexScan(c)
 Leading(((v (ph (u b))) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, votes as v, users as u WHERE u.Id =b.UserId AND b.UserId = ph.UserId AND ph.UserId = v.UserId AND v.UserId = c.UserId AND ph.PostHistoryTypeId=3 AND ph.CreationDate<='2014-08-11 13:37:39'::timestamp AND v.BountyAmount>=0 AND v.BountyAmount<=100 AND v.CreationDate>='2010-07-19 00:00:00'::timestamp AND u.DownVotes>=0 AND u.UpVotes=0;

/*+ NestLoop(p c)
 SeqScan(p)
 IndexScan(c)
 Leading((p c)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND p.ViewCount>=0 AND p.AnswerCount>=0 AND p.AnswerCount<=5 AND p.FavoriteCount>=0 AND p.FavoriteCount<=5 AND p.CreationDate>='2010-08-02 02:20:30'::timestamp AND p.CreationDate<='2014-09-13 18:06:50'::timestamp;

/*+ MergeJoin(c b pl u p v)
 HashJoin(b pl u p v)
 NestLoop(pl u p v)
 MergeJoin(pl u p)
 HashJoin(u p)
 IndexScan(c)
 SeqScan(b)
 IndexScan(pl)
 IndexScan(u)
 SeqScan(p)
 IndexScan(v)
 Leading((c (b ((pl (u p)) v)))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, votes as v, badges as b, users as u WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>=-1 AND p.CommentCount>=0 AND p.CommentCount<=10 AND v.CreationDate>='2009-02-02 00:00:00'::timestamp AND v.CreationDate<='2014-09-11 00:00:00'::timestamp AND u.Reputation=11 AND u.CreationDate>='2010-07-19 19:25:59'::timestamp;

/*+ HashJoin(b v u)
 MergeJoin(v u)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 Leading((b (v u))) */
SELECT COUNT(*) FROM votes as v, badges as b, users as u WHERE u.Id = v.UserId AND v.UserId = b.UserId AND v.CreationDate>='2010-07-20 00:00:00'::timestamp AND b.Date<='2014-09-12 03:29:35'::timestamp AND u.Reputation<=180 AND u.Views<=671 AND u.UpVotes>=0 AND u.UpVotes<=21 AND u.CreationDate>='2011-01-05 18:12:56'::timestamp;

/*+ HashJoin(v p c pl)
 HashJoin(p c pl)
 HashJoin(c pl)
 SeqScan(v)
 SeqScan(p)
 SeqScan(c)
 SeqScan(pl)
 Leading((v (p (c pl)))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, votes as v WHERE p.Id = c.PostId AND c.PostId = pl.PostId AND pl.PostId = v.PostId AND c.Score=0 AND p.ViewCount>=0 AND p.AnswerCount>=0 AND p.FavoriteCount>=0 AND v.VoteTypeId=2 AND v.CreationDate>='2010-07-19 00:00:00'::timestamp AND v.CreationDate<='2014-09-12 00:00:00'::timestamp;

/*+ HashJoin(pl c p)
 HashJoin(c p)
 SeqScan(pl)
 SeqScan(c)
 SeqScan(p)
 Leading((pl (c p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE c.UserId = p.OwnerUserId AND p.Id = pl.PostId AND c.Score=1 AND p.PostTypeId=1 AND p.Score=0 AND p.AnswerCount<=4 AND p.CommentCount>=0 AND p.CommentCount<=11 AND p.FavoriteCount<=51;

/*+ HashJoin(v ph u p)
 HashJoin(ph u p)
 HashJoin(u p)
 SeqScan(v)
 SeqScan(ph)
 IndexScan(u)
 SeqScan(p)
 Leading((v (ph (u p)))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, votes as v, users as u WHERE p.Id = ph.PostId AND u.Id = p.OwnerUserId AND p.Id = v.PostId AND p.PostTypeId=1 AND p.ViewCount>=0 AND p.AnswerCount<=5 AND p.FavoriteCount<=3 AND p.CreationDate>='2010-07-19 23:13:32'::timestamp AND v.VoteTypeId=2 AND u.Views>=0;

/*+ HashJoin(v b p u)
 HashJoin(b p u)
 MergeJoin(p u)
 SeqScan(v)
 SeqScan(b)
 SeqScan(p)
 IndexScan(u)
 Leading((v (b (p u)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score=0 AND p.ViewCount>=0 AND p.FavoriteCount<=4 AND u.Views>=0 AND u.Views<=9 AND u.DownVotes>=0 AND u.DownVotes<=214;

/*+ HashJoin(v p b u)
 MergeJoin(p b u)
 MergeJoin(b u)
 SeqScan(v)
 SeqScan(p)
 SeqScan(b)
 IndexScan(u)
 Leading((v (p (b u)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND v.VoteTypeId=2 AND p.Score>=-2 AND p.AnswerCount<=5 AND p.CreationDate<='2014-09-09 14:50:09'::timestamp AND u.DownVotes>=0 AND u.UpVotes=0 AND u.CreationDate>='2010-07-19 19:03:57'::timestamp;

/*+ NestLoop(c p pl u)
 HashJoin(c p pl)
 HashJoin(p pl)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 IndexScan(u)
 Leading(((c (p pl)) u)) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, users as u WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.OwnerUserId = u.Id AND c.Score=1 AND p.PostTypeId=1 AND p.Score<=15 AND pl.CreationDate>='2010-09-21 12:01:49'::timestamp AND u.DownVotes=0 AND u.UpVotes>=0 AND u.CreationDate<='2014-09-11 13:13:07'::timestamp;

/*+ HashJoin(ph p u)
 NestLoop(p u)
 SeqScan(ph)
 SeqScan(p)
 IndexScan(u)
 Leading((ph (p u))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.PostId = p.Id AND p.OwnerUserId = u.Id AND p.AnswerCount>=0 AND p.AnswerCount<=4 AND p.FavoriteCount=0 AND u.Views>=0 AND u.Views<=273 AND u.DownVotes<=0 AND u.UpVotes>=0;

/*+ HashJoin(c pl p ph v b)
 NestLoop(c pl p ph v)
 HashJoin(c pl p ph)
 HashJoin(pl p ph)
 HashJoin(pl p)
 SeqScan(c)
 IndexScan(pl)
 SeqScan(p)
 IndexScan(ph)
 IndexScan(v)
 SeqScan(b)
 Leading((((c ((pl p) ph)) v) b)) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, votes as v, badges as b WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.Id = ph.PostId AND p.Id = v.PostId AND b.UserId = c.UserId AND p.ViewCount<=37011 AND p.CreationDate>='2010-09-03 09:41:58'::timestamp AND p.CreationDate<='2014-08-26 02:08:47'::timestamp AND pl.LinkTypeId=1 AND pl.CreationDate<='2014-07-15 19:49:54'::timestamp AND ph.CreationDate<='2014-07-27 16:24:51'::timestamp AND v.VoteTypeId=2;

/*+ MergeJoin(p u)
 SeqScan(p)
 IndexScan(u)
 Leading((p u)) */
SELECT COUNT(*) FROM posts as p, users as u WHERE p.OwnerUserId= u.Id AND p.ViewCount<=7407 AND p.AnswerCount>=0 AND p.AnswerCount<=5 AND p.FavoriteCount>=0 AND p.FavoriteCount<=4 AND u.Views>=0 AND u.UpVotes<=94;

/*+ HashJoin(b u p pl)
 MergeJoin(u p pl)
 HashJoin(p pl)
 SeqScan(b)
 IndexScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((b (u (p pl)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND pl.LinkTypeId=1 AND pl.CreationDate>='2011-02-08 04:09:23'::timestamp AND pl.CreationDate<='2014-07-27 17:01:12'::timestamp AND p.Score>=-2 AND p.Score<=23 AND p.FavoriteCount<=9 AND b.Date='2014-06-30 15:21:10'::timestamp;

/*+ HashJoin(ph c p)
 HashJoin(c p)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(p)
 Leading((ph (c p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph WHERE p.Id = c.PostId AND p.Id = ph.PostId AND c.CreationDate>='2010-08-13 12:33:10'::timestamp AND p.Score>=0 AND p.AnswerCount<=5 AND p.CommentCount<=12 AND p.FavoriteCount>=0 AND p.FavoriteCount<=3 AND ph.CreationDate>='2010-10-05 05:28:39'::timestamp;

/*+ HashJoin(ph c u)
 HashJoin(c u)
 SeqScan(ph)
 SeqScan(c)
 IndexScan(u)
 Leading((ph (c u))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND c.CreationDate>='2010-07-21 10:57:06'::timestamp AND c.CreationDate<='2014-09-03 13:03:36'::timestamp AND ph.PostHistoryTypeId=6 AND ph.CreationDate>='2010-07-30 16:06:54'::timestamp AND ph.CreationDate<='2014-06-22 18:01:35'::timestamp AND u.Reputation<=211 AND u.UpVotes>=0;

/*+ HashJoin(b c u p pl)
 MergeJoin(c u p pl)
 MergeJoin(u p pl)
 MergeJoin(p pl)
 SeqScan(b)
 IndexScan(c)
 IndexScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((b (c (u (p pl))))) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND p.Id = c.PostId AND u.Id = b.UserId AND u.Id = p.OwnerUserId AND pl.LinkTypeId=1 AND p.PostTypeId=1 AND p.CommentCount>=0 AND u.Reputation=101 AND u.DownVotes<=0 AND u.UpVotes>=0 AND b.Date<='2014-07-28 20:45:17'::timestamp;

/*+ HashJoin(p b)
 SeqScan(p)
 SeqScan(b)
 Leading((p b)) */
SELECT COUNT(*) FROM badges as b, posts as p WHERE b.UserId = p.OwnerUserId AND b.Date<='2014-08-26 17:00:58'::timestamp AND p.PostTypeId=1 AND p.Score>=0 AND p.Score<=19 AND p.AnswerCount<=5 AND p.CommentCount>=0 AND p.CommentCount<=17;

/*+ HashJoin(c v p u)
 HashJoin(v p u)
 MergeJoin(p u)
 SeqScan(c)
 SeqScan(v)
 SeqScan(p)
 IndexScan(u)
 Leading((c (v (p u)))) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = v.UserId AND c.Score=0 AND p.PostTypeId=1 AND p.CommentCount=0 AND p.FavoriteCount>=0 AND p.FavoriteCount<=6 AND v.BountyAmount>=0 AND v.BountyAmount<=100;

/*+ HashJoin(c v p u)
 HashJoin(v p u)
 MergeJoin(p u)
 SeqScan(c)
 SeqScan(v)
 SeqScan(p)
 IndexScan(u)
 Leading((c (v (p u)))) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE p.Id = c.PostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND c.Score=1 AND p.CommentCount<=16 AND v.VoteTypeId=16 AND u.Views<=42 AND u.DownVotes>=0 AND u.UpVotes>=0 AND u.UpVotes<=187;

/*+ HashJoin(c p pl)
 HashJoin(p pl)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 Leading((c (p pl))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE p.Id = c.PostId AND p.Id = pl.PostId AND c.CreationDate>='2010-08-18 11:18:07'::timestamp AND p.Score>=0 AND p.Score<=16 AND p.AnswerCount>=0 AND p.AnswerCount<=3 AND p.CommentCount>=0 AND p.FavoriteCount>=0;

/*+ HashJoin(p ph u)
 HashJoin(ph u)
 SeqScan(p)
 SeqScan(ph)
 IndexScan(u)
 Leading((p (ph u))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.UserId = p.OwnerUserId AND ph.UserId = u.Id AND p.PostTypeId=2 AND p.Score<=11 AND p.CommentCount=0 AND p.CreationDate<='2014-09-12 03:39:00'::timestamp AND u.Views<=638 AND u.DownVotes<=0 AND u.UpVotes=0;

/*+ HashJoin(p ph u)
 HashJoin(ph u)
 SeqScan(p)
 SeqScan(ph)
 IndexScan(u)
 Leading((p (ph u))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.UserId = p.OwnerUserId AND ph.UserId = u.Id AND p.ViewCount<=3223 AND p.AnswerCount>=0 AND p.AnswerCount<=4 AND p.FavoriteCount<=6 AND p.CreationDate<='2014-09-09 18:22:50'::timestamp AND u.DownVotes>=0 AND u.CreationDate='2014-01-30 12:24:17'::timestamp;

/*+ HashJoin(v u p pl)
 MergeJoin(u p pl)
 HashJoin(p pl)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((v (u (p pl)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, votes as v, users as u WHERE p.Id = pl.RelatedPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND pl.LinkTypeId=1 AND p.PostTypeId=1 AND p.AnswerCount<=4 AND p.CommentCount<=8 AND p.CreationDate>='2010-07-23 15:02:40'::timestamp AND p.CreationDate<='2014-09-02 13:20:56'::timestamp AND v.CreationDate<='2014-09-12 00:00:00'::timestamp;

/*+ HashJoin(v ph pl c)
 HashJoin(ph pl c)
 NestLoop(pl c)
 SeqScan(v)
 SeqScan(ph)
 IndexScan(pl)
 IndexScan(c)
 Leading((v (ph (pl c)))) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, postHistory as ph, votes as v WHERE pl.PostId = c.PostId AND c.PostId = ph.PostId AND ph.PostId = v.PostId AND c.CreationDate>='2010-07-26 19:53:40'::timestamp AND c.CreationDate<='2014-09-05 05:14:50'::timestamp AND pl.CreationDate>='2011-08-04 05:49:20'::timestamp AND pl.CreationDate<='2014-08-07 07:02:39'::timestamp AND ph.CreationDate>='2011-08-14 22:54:18'::timestamp AND v.VoteTypeId=2 AND v.CreationDate>='2010-08-05 00:00:00'::timestamp;

/*+ HashJoin(b u p pl)
 MergeJoin(u p pl)
 HashJoin(p pl)
 SeqScan(b)
 IndexScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((b (u (p pl)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND pl.LinkTypeId=1 AND p.PostTypeId=1 AND p.CommentCount>=0 AND p.CreationDate>='2010-08-06 15:22:43'::timestamp AND u.UpVotes>=0 AND u.UpVotes<=55 AND b.Date>='2010-07-19 21:19:06'::timestamp;

/*+ HashJoin(c u p)
 HashJoin(u p)
 SeqScan(c)
 IndexScan(u)
 SeqScan(p)
 Leading((c (u p))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.UserId = u.Id AND u.Id = p.OwnerUserId AND p.ViewCount>=0 AND p.AnswerCount>=0 AND p.CommentCount>=0 AND p.CommentCount<=13 AND u.Reputation>=1 AND u.Reputation<=494 AND u.Views>=0;

/*+ HashJoin(c pl p)
 HashJoin(pl p)
 SeqScan(c)
 SeqScan(pl)
 SeqScan(p)
 Leading((c (pl p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE c.UserId = p.OwnerUserId AND p.Id = pl.PostId AND c.Score=0 AND p.PostTypeId=1 AND p.AnswerCount<=5 AND p.FavoriteCount>=0 AND p.FavoriteCount<=5 AND p.CreationDate<='2014-08-24 00:03:01'::timestamp AND pl.CreationDate<='2014-09-07 13:23:38'::timestamp;

/*+ HashJoin(b p)
 SeqScan(b)
 SeqScan(p)
 Leading((b p)) */
SELECT COUNT(*) FROM badges as b, posts as p WHERE b.UserId = p.OwnerUserId AND b.Date>='2010-08-04 03:10:29'::timestamp AND p.PostTypeId=1 AND p.Score>=-1 AND p.Score<=23 AND p.ViewCount>=0 AND p.CreationDate>='2010-07-19 19:51:34'::timestamp AND p.CreationDate<='2014-08-21 05:56:14'::timestamp;

/*+ HashJoin(ph v b u)
 HashJoin(v b u)
 HashJoin(b u)
 SeqScan(ph)
 SeqScan(v)
 SeqScan(b)
 IndexScan(u)
 Leading((ph (v (b u)))) */
SELECT COUNT(*) FROM postHistory as ph, votes as v, users as u, badges as b WHERE u.Id = ph.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND ph.PostHistoryTypeId=5 AND v.BountyAmount>=0 AND u.Reputation>=1 AND u.Reputation<=415 AND u.Views>=0 AND u.UpVotes<=456 AND b.Date<='2014-09-10 11:03:41'::timestamp;

/*+ HashJoin(c p)
 SeqScan(c)
 SeqScan(p)
 Leading((c p)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND c.CreationDate>='2010-08-03 13:52:52'::timestamp AND c.CreationDate<='2014-09-10 15:16:14'::timestamp AND p.Score>=-1 AND p.CommentCount<=13 AND p.FavoriteCount>=0 AND p.CreationDate>='2010-08-04 21:12:03'::timestamp AND p.CreationDate<='2014-09-04 12:41:45'::timestamp;

/*+ HashJoin(ph u b c)
 HashJoin(ph u b)
 HashJoin(u b)
 SeqScan(ph)
 IndexScan(u)
 SeqScan(b)
 IndexScan(c)
 Leading(((ph (u b)) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = ph.UserId AND u.Id = b.UserId AND ph.PostHistoryTypeId=1 AND u.Reputation>=1 AND u.Reputation<=401 AND u.DownVotes>=0 AND u.DownVotes<=0 AND u.UpVotes<=205 AND u.CreationDate<='2014-09-03 19:00:28'::timestamp;

/*+ HashJoin(v p c pl)
 HashJoin(p c pl)
 MergeJoin(c pl)
 SeqScan(v)
 SeqScan(p)
 SeqScan(c)
 SeqScan(pl)
 Leading((v (p (c pl)))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, votes as v WHERE p.Id = c.PostId AND c.PostId = pl.PostId AND pl.PostId = v.PostId AND p.PostTypeId=1 AND p.ViewCount<=3555 AND p.CreationDate<='2014-09-03 14:56:28'::timestamp AND pl.LinkTypeId=1 AND v.BountyAmount>=0 AND v.BountyAmount<=150 AND v.CreationDate>='2010-07-24 00:00:00'::timestamp;

/*+ MergeJoin(c ph u v)
 MergeJoin(ph u v)
 NestLoop(u v)
 SeqScan(c)
 SeqScan(ph)
 SeqScan(u)
 IndexScan(v)
 Leading((c (ph (u v)))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v, users as u WHERE u.Id = v.UserId AND v.UserId = ph.UserId AND ph.UserId =c.UserId AND c.Score=0 AND ph.PostHistoryTypeId=2 AND v.BountyAmount>=0 AND v.BountyAmount<=50 AND u.DownVotes>=0 AND u.CreationDate>='2011-05-19 17:07:50'::timestamp AND u.CreationDate<='2014-08-12 20:14:40'::timestamp;

/*+ HashJoin(v p u)
 NestLoop(p u)
 SeqScan(v)
 SeqScan(p)
 IndexScan(u)
 Leading((v (p u))) */
SELECT COUNT(*) FROM votes as v, posts as p, users as u WHERE v.UserId = p.OwnerUserId AND p.OwnerUserId = u.Id AND v.CreationDate>='2010-07-19 00:00:00'::timestamp AND p.ViewCount>=0 AND p.CommentCount=0 AND p.FavoriteCount<=20 AND p.CreationDate>='2010-07-21 06:28:23'::timestamp AND u.Views>=0 AND u.DownVotes<=11;

/*+ HashJoin(b u p pl)
 MergeJoin(u p pl)
 HashJoin(p pl)
 SeqScan(b)
 IndexScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((b (u (p pl)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.AnswerCount>=0 AND u.Views>=0 AND u.DownVotes<=2 AND u.UpVotes<=187 AND u.CreationDate<='2014-09-02 06:27:19'::timestamp AND b.Date>='2010-07-21 10:48:12'::timestamp AND b.Date<='2014-08-04 02:50:16'::timestamp;

/*+ HashJoin(b ph c u)
 HashJoin(ph c u)
 MergeJoin(c u)
 SeqScan(b)
 SeqScan(ph)
 SeqScan(c)
 IndexScan(u)
 Leading((b (ph (c u)))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = ph.UserId AND u.Id = b.UserId AND c.Score=0 AND c.CreationDate='2012-03-14 07:38:28'::timestamp AND ph.PostHistoryTypeId=5 AND ph.CreationDate<='2014-08-18 14:10:36'::timestamp AND b.Date>='2010-07-27 02:28:43'::timestamp AND u.CreationDate>='2011-03-05 10:48:05'::timestamp AND u.CreationDate<='2014-08-10 11:01:39'::timestamp;

/*+ HashJoin(p v u)
 NestLoop(v u)
 SeqScan(p)
 SeqScan(v)
 IndexScan(u)
 Leading((p (v u))) */
SELECT COUNT(*) FROM votes as v, posts as p, users as u WHERE v.PostId = p.Id AND v.UserId = u.Id AND v.BountyAmount>=0 AND v.BountyAmount<=100 AND p.CommentCount>=0 AND p.CommentCount<=28 AND p.FavoriteCount<=21 AND u.UpVotes>=0 AND u.UpVotes<=123;

/*+ HashJoin(v c p u)
 HashJoin(c p u)
 MergeJoin(p u)
 SeqScan(v)
 SeqScan(c)
 SeqScan(p)
 IndexScan(u)
 Leading((v (c (p u)))) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE p.Id = c.PostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND c.CreationDate>='2010-07-31 11:01:22'::timestamp AND p.ViewCount>=0 AND p.FavoriteCount>=0 AND u.Views>=0 AND u.Views<=293 AND u.UpVotes>=0 AND u.CreationDate<='2014-09-06 07:42:29'::timestamp;

/*+ HashJoin(b c u)
 HashJoin(c u)
 SeqScan(b)
 SeqScan(c)
 IndexScan(u)
 Leading((b (c u))) */
SELECT COUNT(*) FROM comments as c, badges as b, users as u WHERE u.Id = c.UserId AND c.UserId = b.UserId AND c.Score=0 AND c.CreationDate<='2014-09-03 01:27:54'::timestamp AND u.Reputation<=275 AND u.Views>=0 AND u.Views<=16 AND u.CreationDate>='2010-07-29 18:45:30'::timestamp AND u.CreationDate<='2014-09-08 06:35:13'::timestamp;

/*+ HashJoin(c u p v b)
 MergeJoin(c u p v)
 HashJoin(c u p)
 NestLoop(c u)
 SeqScan(c)
 IndexScan(u)
 SeqScan(p)
 SeqScan(v)
 SeqScan(b)
 Leading(((((c u) p) v) b)) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, badges as b, users as u WHERE u.Id =c.UserId AND c.UserId = p.OwnerUserId AND p.OwnerUserId = v.UserId AND v.UserId = b.UserId AND c.CreationDate<='2014-09-12 19:11:19'::timestamp AND v.CreationDate>='2010-07-19 00:00:00'::timestamp AND v.CreationDate<='2014-09-13 00:00:00'::timestamp AND u.Views>=0 AND u.Views<=224 AND u.UpVotes>=0 AND u.UpVotes<=65;

/*+ HashJoin(b u)
 SeqScan(b)
 SeqScan(u)
 Leading((b u)) */
SELECT COUNT(*) FROM badges as b, users as u WHERE b.UserId= u.Id AND b.Date>='2010-08-05 12:51:34'::timestamp AND u.Reputation<=197 AND u.Views<=101 AND u.DownVotes>=0 AND u.DownVotes<=0 AND u.UpVotes>=0 AND u.CreationDate<='2014-08-06 17:56:31'::timestamp;

/*+ HashJoin(v p u)
 MergeJoin(p u)
 SeqScan(v)
 SeqScan(p)
 IndexScan(u)
 Leading((v (p u))) */
SELECT COUNT(*) FROM votes as v, posts as p, users as u WHERE v.UserId = p.OwnerUserId AND p.OwnerUserId = u.Id AND p.Score<=23 AND p.ViewCount>=0 AND p.FavoriteCount<=6 AND p.CreationDate<='2014-09-10 18:14:12'::timestamp AND u.Views=0 AND u.UpVotes>=0 AND u.UpVotes<=33;

/*+ MergeJoin(v c b u p pl)
 HashJoin(c b u p pl)
 HashJoin(b u p pl)
 MergeJoin(u p pl)
 HashJoin(p pl)
 IndexScan(v)
 SeqScan(c)
 SeqScan(b)
 IndexScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((v (c (b (u (p pl)))))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, votes as v, badges as b, users as u WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND c.Score=0 AND c.CreationDate<='2014-09-12 18:02:58'::timestamp AND p.PostTypeId=2 AND p.CreationDate>='2009-12-05 19:06:10'::timestamp AND v.CreationDate<='2014-09-12 00:00:00'::timestamp AND b.Date>='2010-08-05 16:21:35'::timestamp AND u.Views<=70;

/*+ HashJoin(v b p u)
 HashJoin(b p u)
 MergeJoin(p u)
 SeqScan(v)
 SeqScan(b)
 SeqScan(p)
 IndexScan(u)
 Leading((v (b (p u)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.ViewCount>=0 AND p.AnswerCount>=0 AND p.AnswerCount<=7 AND p.CommentCount=7 AND p.FavoriteCount>=0 AND u.Reputation>=1 AND u.Reputation<=16108;

/*+ HashJoin(v c u)
 HashJoin(c u)
 SeqScan(v)
 SeqScan(c)
 IndexScan(u)
 Leading((v (c u))) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND c.PostId = v.PostId AND v.BountyAmount>=0 AND v.BountyAmount<=100 AND u.Reputation>=1 AND u.Reputation<=262 AND u.Views<=206 AND u.CreationDate>='2010-09-10 14:18:01'::timestamp AND u.CreationDate<='2014-08-29 17:32:03'::timestamp;

/*+ HashJoin(ph u c p pl)
 MergeJoin(u c p pl)
 HashJoin(c p pl)
 HashJoin(p pl)
 SeqScan(ph)
 IndexScan(u)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 Leading((ph (u (c (p pl))))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, users as u WHERE p.Id = pl.RelatedPostId AND pl.RelatedPostId = c.PostId AND pl.RelatedPostId = ph.PostId AND u.Id= c.UserId AND p.CommentCount<=16 AND p.FavoriteCount>=0 AND p.FavoriteCount<=14 AND p.CreationDate>='2010-07-26 19:44:44'::timestamp AND p.CreationDate<='2014-09-10 08:48:55'::timestamp AND ph.PostHistoryTypeId=6 AND u.CreationDate<='2014-08-17 11:04:39'::timestamp;

/*+ HashJoin(c v u)
 MergeJoin(v u)
 SeqScan(c)
 SeqScan(v)
 IndexScan(u)
 Leading((c (v u))) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND c.Score=0 AND c.CreationDate>='2010-07-29 18:48:16'::timestamp AND v.BountyAmount>=0 AND v.BountyAmount<=100 AND v.CreationDate>='2010-07-19 00:00:00'::timestamp AND v.CreationDate<='2014-09-09 00:00:00'::timestamp AND u.CreationDate<='2014-09-04 03:07:48'::timestamp;

/*+ HashJoin(ph b u pl p v)
 HashJoin(b u pl p v)
 NestLoop(u pl p v)
 MergeJoin(u pl p)
 HashJoin(pl p)
 SeqScan(ph)
 SeqScan(b)
 IndexScan(u)
 IndexScan(pl)
 SeqScan(p)
 IndexScan(v)
 Leading((ph (b ((u (pl p)) v)))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph, votes as v, badges as b, users as u WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND u.Id = ph.UserId AND u.Id = v.UserId AND p.Score>=0 AND p.ViewCount>=0 AND p.CreationDate>='2010-08-03 14:26:33'::timestamp AND p.CreationDate<='2014-09-11 20:22:41'::timestamp AND ph.CreationDate>='2011-01-08 02:52:10'::timestamp AND u.Reputation<=203 AND u.Views>=0;

/*+ HashJoin(u p pl)
 HashJoin(p pl)
 SeqScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((u (p pl))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, users as u WHERE p.Id = pl.PostId AND p.OwnerUserId = u.Id AND p.AnswerCount>=0 AND p.AnswerCount<=4 AND pl.LinkTypeId=1 AND pl.CreationDate<='2014-08-07 14:02:26'::timestamp AND u.Reputation<=108 AND u.DownVotes>=0 AND u.DownVotes<=0;

/*+ HashJoin(c p pl)
 HashJoin(p pl)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 Leading((c (p pl))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE c.UserId = p.OwnerUserId AND p.Id = pl.PostId AND c.Score=0 AND p.ViewCount>=0 AND p.AnswerCount>=0 AND p.CommentCount<=10 AND p.FavoriteCount>=0 AND p.FavoriteCount<=34 AND p.CreationDate>='2010-11-02 01:47:17'::timestamp;

/*+ HashJoin(c v p u)
 HashJoin(v p u)
 HashJoin(p u)
 SeqScan(c)
 SeqScan(v)
 SeqScan(p)
 IndexScan(u)
 Leading((c (v (p u)))) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = v.UserId AND p.ViewCount<=5574 AND v.BountyAmount<=50 AND u.Views<=16 AND u.UpVotes>=0 AND u.UpVotes<=14 AND u.CreationDate>='2011-03-16 20:55:08'::timestamp AND u.CreationDate<='2014-08-28 18:34:43'::timestamp;

/*+ HashJoin(ph p u)
 NestLoop(p u)
 SeqScan(ph)
 SeqScan(p)
 IndexScan(u)
 Leading((ph (p u))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.PostId = p.Id AND p.OwnerUserId = u.Id AND ph.PostHistoryTypeId=5 AND ph.CreationDate>='2010-07-28 17:40:56'::timestamp AND p.AnswerCount<=7 AND p.CommentCount<=10 AND p.FavoriteCount=2 AND u.DownVotes>=0 AND u.DownVotes<=0;

/*+ HashJoin(v ph u b c)
 MergeJoin(v ph u b)
 HashJoin(ph u b)
 HashJoin(u b)
 IndexScan(v)
 SeqScan(ph)
 IndexScan(u)
 SeqScan(b)
 SeqScan(c)
 Leading(((v (ph (u b))) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, votes as v, users as u WHERE u.Id =b.UserId AND b.UserId = ph.UserId AND ph.UserId = v.UserId AND v.UserId = c.UserId AND b.Date<='2014-09-10 14:43:33'::timestamp AND v.BountyAmount>=0 AND v.CreationDate>='2009-02-02 00:00:00'::timestamp AND v.CreationDate<='2014-09-09 00:00:00'::timestamp AND u.Reputation<=381 AND u.Views<=27 AND u.DownVotes>=0;

/*+ NestLoop(p pl u)
 HashJoin(p pl)
 SeqScan(p)
 SeqScan(pl)
 IndexScan(u)
 Leading(((p pl) u)) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, users as u WHERE p.Id = pl.PostId AND p.OwnerUserId = u.Id AND p.Score=0 AND p.AnswerCount>=0 AND p.AnswerCount<=14 AND p.CommentCount>=0 AND p.CommentCount<=9 AND u.DownVotes>=0 AND u.DownVotes<=1;

/*+ HashJoin(v u p pl)
 MergeJoin(u p pl)
 HashJoin(p pl)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((v (u (p pl)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, votes as v, users as u WHERE p.Id = pl.RelatedPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND p.PostTypeId=1 AND p.ViewCount>=0 AND p.ViewCount<=2251 AND v.BountyAmount>=0 AND v.BountyAmount<=50 AND u.Views>=0 AND u.CreationDate>='2010-07-19 19:08:56'::timestamp;

/*+ HashJoin(ph c u)
 HashJoin(c u)
 SeqScan(ph)
 SeqScan(c)
 IndexScan(u)
 Leading((ph (c u))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND c.CreationDate>='2010-08-19 01:38:51'::timestamp AND c.CreationDate<='2014-09-08 09:03:59'::timestamp AND ph.PostHistoryTypeId=3 AND u.Views<=126 AND u.DownVotes<=7 AND u.UpVotes>=0 AND u.UpVotes<=20;

/*+ HashJoin(ph u c p pl)
 MergeJoin(u c p pl)
 HashJoin(c p pl)
 HashJoin(p pl)
 SeqScan(ph)
 IndexScan(u)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 Leading((ph (u (c (p pl))))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, users as u WHERE p.Id = pl.RelatedPostId AND pl.RelatedPostId = c.PostId AND pl.RelatedPostId = ph.PostId AND u.Id= c.UserId AND c.CreationDate<='2014-08-22 01:19:46'::timestamp AND p.AnswerCount<=4 AND p.FavoriteCount>=0 AND p.FavoriteCount<=24 AND ph.PostHistoryTypeId=2 AND u.UpVotes>=0 AND u.UpVotes<=195;

/*+ HashJoin(v c u)
 HashJoin(c u)
 SeqScan(v)
 SeqScan(c)
 IndexScan(u)
 Leading((v (c u))) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND c.PostId = v.PostId AND c.Score=0 AND c.CreationDate>='2010-07-28 15:59:39'::timestamp AND c.CreationDate<='2014-09-06 22:03:25'::timestamp AND v.CreationDate>='2010-07-20 00:00:00'::timestamp AND v.CreationDate<='2014-09-11 00:00:00'::timestamp AND u.UpVotes=0 AND u.CreationDate<='2014-08-28 16:25:00'::timestamp;

/*+ HashJoin(b ph u p)
 HashJoin(ph u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(ph)
 IndexScan(u)
 SeqScan(p)
 Leading((b (ph (u p)))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u, badges as b WHERE u.Id = p.OwnerUserId AND p.OwnerUserId = ph.UserId AND ph.UserId = b.UserId AND p.PostTypeId=2 AND p.Score<=28 AND p.CommentCount>=0 AND u.Reputation<=1640 AND u.UpVotes>=0 AND u.UpVotes<=37 AND u.CreationDate<='2014-09-11 16:56:14'::timestamp;

/*+ HashJoin(u p ph)
 NestLoop(p ph)
 SeqScan(u)
 IndexScan(p)
 IndexScan(ph)
 Leading((u (p ph))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.UserId = p.OwnerUserId AND ph.UserId = u.Id AND p.PostTypeId=1 AND p.CommentCount>=0 AND p.CommentCount<=12 AND p.FavoriteCount=0 AND p.CreationDate>='2010-07-28 04:26:17'::timestamp AND p.CreationDate<='2014-08-23 02:52:41'::timestamp AND u.DownVotes>=0;

/*+ HashJoin(ph p pl)
 HashJoin(p pl)
 SeqScan(ph)
 SeqScan(p)
 SeqScan(pl)
 Leading((ph (p pl))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph WHERE p.Id = pl.PostId AND pl.PostId = ph.PostId AND p.ViewCount>=0 AND p.AnswerCount<=3 AND p.FavoriteCount<=19 AND pl.LinkTypeId=1 AND pl.CreationDate>='2011-06-05 12:00:28'::timestamp AND pl.CreationDate<='2014-08-14 12:36:34'::timestamp AND ph.PostHistoryTypeId=1;

/*+ HashJoin(c p pl)
 MergeJoin(p pl)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 Leading((c (p pl))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE p.Id = c.PostId AND p.Id = pl.PostId AND c.Score=0 AND p.Score<=22 AND p.ViewCount>=0 AND p.AnswerCount>=0 AND p.CommentCount>=0 AND p.CommentCount<=21 AND p.FavoriteCount<=22;

/*+ HashJoin(v c p u)
 HashJoin(c p u)
 MergeJoin(p u)
 SeqScan(v)
 SeqScan(c)
 SeqScan(p)
 IndexScan(u)
 Leading((v (c (p u)))) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE p.Id = c.PostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND c.Score=0 AND p.Score>=-1 AND p.ViewCount>=0 AND p.FavoriteCount<=35 AND p.CreationDate>='2010-07-22 07:28:42'::timestamp AND p.CreationDate<='2014-08-26 15:38:40'::timestamp AND u.Views>=0;

/*+ HashJoin(c v p u)
 HashJoin(v p u)
 MergeJoin(p u)
 SeqScan(c)
 SeqScan(v)
 SeqScan(p)
 IndexScan(u)
 Leading((c (v (p u)))) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = v.UserId AND c.Score=0 AND p.PostTypeId=1 AND p.AnswerCount>=0 AND p.FavoriteCount>=0 AND p.FavoriteCount<=6 AND u.Reputation<=1148 AND u.DownVotes<=0;

/*+ HashJoin(v p c pl)
 HashJoin(p c pl)
 HashJoin(c pl)
 SeqScan(v)
 SeqScan(p)
 SeqScan(c)
 SeqScan(pl)
 Leading((v (p (c pl)))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, votes as v WHERE p.Id = c.PostId AND c.PostId = pl.PostId AND pl.PostId = v.PostId AND c.Score=2 AND p.Score<=92 AND p.ViewCount>=0 AND p.ViewCount<=2513 AND pl.LinkTypeId=1 AND pl.CreationDate>='2011-04-12 15:23:59'::timestamp AND pl.CreationDate<='2014-08-05 00:44:38'::timestamp;

/*+ HashJoin(c u p pl)
 HashJoin(u p pl)
 MergeJoin(p pl)
 SeqScan(c)
 IndexScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((c (u (p pl)))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, users as u WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.OwnerUserId = u.Id AND p.CommentCount>=0 AND p.FavoriteCount>=0 AND p.CreationDate<='2014-09-11 02:38:16'::timestamp AND pl.CreationDate>='2011-01-21 03:00:17'::timestamp AND u.DownVotes>=0 AND u.DownVotes<=1 AND u.CreationDate>='2010-07-19 19:48:20'::timestamp;

/*+ NestLoop(p c)
 SeqScan(p)
 IndexScan(c)
 Leading((p c)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND p.PostTypeId=1 AND p.Score>=0 AND p.AnswerCount>=0 AND p.CommentCount>=0 AND p.FavoriteCount>=0 AND p.FavoriteCount<=9 AND p.CreationDate<='2014-09-12 06:16:02'::timestamp;

/*+ HashJoin(b p u v)
 NestLoop(p u v)
 NestLoop(p u)
 SeqScan(b)
 SeqScan(p)
 IndexScan(u)
 IndexScan(v)
 Leading((b ((p u) v))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>=0 AND p.CommentCount<=8 AND p.FavoriteCount>=0 AND p.CreationDate<='2014-09-07 00:09:59'::timestamp AND u.Reputation=1 AND u.DownVotes>=0 AND u.DownVotes<=0;

/*+ HashJoin(c p pl)
 HashJoin(p pl)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 Leading((c (p pl))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE p.Id = c.PostId AND p.Id = pl.PostId AND c.Score=0 AND c.CreationDate<='2014-09-06 22:11:38'::timestamp AND p.Score<=61 AND p.AnswerCount>=0 AND p.CommentCount>=0 AND p.CommentCount<=9 AND pl.LinkTypeId=1;

/*+ HashJoin(u p)
 IndexScan(u)
 SeqScan(p)
 Leading((u p)) */
SELECT COUNT(*) FROM posts as p, users as u WHERE p.OwnerUserId= u.Id AND p.ViewCount>=0 AND p.ViewCount<=22258 AND p.FavoriteCount<=6 AND p.CreationDate>='2010-07-20 08:38:38'::timestamp AND u.Reputation<=821 AND u.Views<=203 AND u.UpVotes<=28;

/*+ HashJoin(c p u)
 MergeJoin(p u)
 SeqScan(c)
 SeqScan(p)
 IndexScan(u)
 Leading((c (p u))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.UserId = u.Id AND u.Id = p.OwnerUserId AND p.ViewCount<=12112 AND p.AnswerCount>=0 AND p.CommentCount>=0 AND p.CommentCount<=11 AND p.FavoriteCount>=0 AND p.FavoriteCount<=27 AND u.DownVotes<=18;

/*+ HashJoin(c v u p)
 MergeJoin(v u p)
 HashJoin(u p)
 SeqScan(c)
 IndexScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((c (v (u p)))) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = v.UserId AND p.PostTypeId=1 AND p.AnswerCount<=4 AND v.CreationDate<='2014-09-10 00:00:00'::timestamp AND u.DownVotes>=0 AND u.DownVotes<=1 AND u.UpVotes>=0 AND u.UpVotes<=10;

/*+ HashJoin(v ph c p pl)
 HashJoin(ph c p pl)
 HashJoin(c p pl)
 HashJoin(p pl)
 SeqScan(v)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 Leading((v (ph (c (p pl))))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, votes as v WHERE p.Id = c.PostId AND p.Id = pl.PostId AND p.Id = ph.PostId AND p.Id = v.PostId AND p.PostTypeId=2 AND p.Score>=-2 AND p.Score<=10 AND p.CommentCount<=17 AND pl.LinkTypeId=1 AND ph.PostHistoryTypeId=5 AND v.VoteTypeId=2;

/*+ HashJoin(c u p v b)
 HashJoin(c u p v)
 MergeJoin(c u p)
 MergeJoin(c u)
 SeqScan(c)
 IndexScan(u)
 SeqScan(p)
 SeqScan(v)
 SeqScan(b)
 Leading(((((c u) p) v) b)) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, badges as b, users as u WHERE u.Id =c.UserId AND c.UserId = p.OwnerUserId AND p.OwnerUserId = v.UserId AND v.UserId = b.UserId AND p.PostTypeId=1 AND p.Score<=16 AND p.CommentCount>=0 AND p.CommentCount<=17 AND p.FavoriteCount>=0 AND v.BountyAmount>=0 AND u.DownVotes>=0;

/*+ HashJoin(v u p pl)
 MergeJoin(u p pl)
 MergeJoin(p pl)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((v (u (p pl)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, votes as v, users as u WHERE p.Id = pl.RelatedPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND p.Score>=0 AND p.Score<=18 AND p.ViewCount>=0 AND p.CommentCount<=24 AND p.FavoriteCount=0 AND u.Reputation<=373 AND u.DownVotes<=1;

/*+ HashJoin(ph p u)
 HashJoin(p u)
 SeqScan(ph)
 SeqScan(p)
 IndexScan(u)
 Leading((ph (p u))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.PostId = p.Id AND p.OwnerUserId = u.Id AND ph.PostHistoryTypeId=5 AND p.PostTypeId=1 AND p.Score>=-1 AND p.ViewCount<=10291 AND p.CommentCount>=0 AND u.DownVotes<=65 AND u.UpVotes>=0;

/*+ HashJoin(u v p pl)
 MergeJoin(v p pl)
 HashJoin(p pl)
 IndexScan(u)
 SeqScan(v)
 SeqScan(p)
 SeqScan(pl)
 Leading((u (v (p pl)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, votes as v, users as u WHERE p.Id = pl.RelatedPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND pl.CreationDate>='2011-11-29 15:13:19'::timestamp AND p.CommentCount>=0 AND v.BountyAmount>=0 AND u.Views>=0 AND u.DownVotes>=0 AND u.DownVotes<=0 AND u.UpVotes<=169;

/*+ HashJoin(ph p u)
 MergeJoin(p u)
 SeqScan(ph)
 SeqScan(p)
 IndexScan(u)
 Leading((ph (p u))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.PostId = p.Id AND p.OwnerUserId = u.Id AND p.ViewCount>=0 AND p.CommentCount<=9 AND p.FavoriteCount>=0 AND p.FavoriteCount<=5 AND p.CreationDate<='2014-08-29 13:57:56'::timestamp AND u.DownVotes>=0 AND u.CreationDate<='2014-08-26 23:04:58'::timestamp;

/*+ HashJoin(ph u p c pl)
 MergeJoin(u p c pl)
 HashJoin(p c pl)
 HashJoin(c pl)
 SeqScan(ph)
 IndexScan(u)
 SeqScan(p)
 SeqScan(c)
 SeqScan(pl)
 Leading((ph (u (p (c pl))))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, users as u WHERE p.Id = pl.RelatedPostId AND pl.RelatedPostId = c.PostId AND pl.RelatedPostId = ph.PostId AND u.Id= c.UserId AND c.Score=0 AND p.PostTypeId=2 AND p.FavoriteCount<=9 AND pl.CreationDate>='2011-07-07 06:14:31'::timestamp AND ph.PostHistoryTypeId=3 AND u.UpVotes>=0 AND u.CreationDate<='2014-09-10 20:19:59'::timestamp;

/*+ NestLoop(p c)
 SeqScan(p)
 IndexScan(c)
 Leading((p c)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND p.PostTypeId=1 AND p.Score>=-1 AND p.Score<=87 AND p.AnswerCount>=0 AND p.AnswerCount<=3 AND p.CommentCount<=16 AND p.FavoriteCount=0;

/*+ HashJoin(v c p u)
 HashJoin(c p u)
 NestLoop(p u)
 SeqScan(v)
 SeqScan(c)
 SeqScan(p)
 IndexScan(u)
 Leading((v (c (p u)))) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE p.Id = c.PostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND c.Score=0 AND p.FavoriteCount>=0 AND p.FavoriteCount<=8 AND v.CreationDate>='2010-09-18 00:00:00'::timestamp AND v.CreationDate<='2014-09-11 00:00:00'::timestamp AND u.Reputation>=1 AND u.Reputation<=308;

/*+ HashJoin(v u p)
 NestLoop(u p)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 Leading((v (u p))) */
SELECT COUNT(*) FROM votes as v, posts as p, users as u WHERE v.UserId = p.OwnerUserId AND p.OwnerUserId = u.Id AND p.Score<=47 AND p.FavoriteCount>=0 AND p.FavoriteCount<=6 AND u.Reputation=118 AND u.Views>=0 AND u.DownVotes>=0 AND u.DownVotes<=0;

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
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, votes as v WHERE p.Id = c.PostId AND p.Id = pl.PostId AND p.Id = ph.PostId AND p.Id = v.PostId AND c.CreationDate<='2014-09-10 01:17:10'::timestamp AND p.ViewCount<=5706 AND p.FavoriteCount>=0 AND p.FavoriteCount<=3 AND p.CreationDate<='2014-09-12 07:44:04'::timestamp AND v.BountyAmount<=100 AND v.CreationDate<='2014-09-02 00:00:00'::timestamp;

/*+ HashJoin(c p u)
 HashJoin(p u)
 SeqScan(c)
 SeqScan(p)
 IndexScan(u)
 Leading((c (p u))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.UserId = u.Id AND u.Id = p.OwnerUserId AND c.CreationDate<='2014-09-11 02:47:11'::timestamp AND p.Score>=-1 AND p.CommentCount>=0 AND p.CommentCount<=15 AND p.CreationDate>='2010-07-19 19:33:13'::timestamp AND p.CreationDate<='2014-08-08 21:23:16'::timestamp AND u.Reputation<=590;

/*+ HashJoin(c v u)
 MergeJoin(v u)
 SeqScan(c)
 SeqScan(v)
 IndexScan(u)
 Leading((c (v u))) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND c.Score=0 AND c.CreationDate>='2010-07-26 15:32:58'::timestamp AND v.BountyAmount<=50 AND u.DownVotes>=0 AND u.DownVotes<=2 AND u.UpVotes>=0 AND u.UpVotes<=36;

/*+ HashJoin(p u)
 SeqScan(p)
 IndexScan(u)
 Leading((p u)) */
SELECT COUNT(*) FROM posts as p, users as u WHERE p.OwnerUserId= u.Id AND p.ViewCount>=0 AND p.AnswerCount<=2 AND u.Reputation<=181 AND u.DownVotes>=0 AND u.UpVotes>=0 AND u.UpVotes<=229 AND u.CreationDate<='2014-08-28 05:09:15'::timestamp;

/*+ HashJoin(u p)
 IndexScan(u)
 SeqScan(p)
 Leading((u p)) */
SELECT COUNT(*) FROM posts as p, users as u WHERE p.OwnerUserId= u.Id AND p.ViewCount<=668 AND p.CommentCount>=0 AND p.FavoriteCount>=0 AND p.FavoriteCount<=7 AND u.Reputation>=1 AND u.Reputation<=279 AND u.Views>=0;

/*+ HashJoin(b ph u p)
 MergeJoin(ph u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(ph)
 IndexScan(u)
 SeqScan(p)
 Leading((b (ph (u p)))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u, badges as b WHERE u.Id = p.OwnerUserId AND p.OwnerUserId = ph.UserId AND ph.UserId = b.UserId AND ph.CreationDate<='2014-09-06 22:02:43'::timestamp AND p.PostTypeId=1 AND p.Score<=13 AND p.CommentCount>=0 AND p.CommentCount<=19 AND u.DownVotes>=0 AND u.DownVotes<=0;

/*+ HashJoin(v u p pl)
 MergeJoin(u p pl)
 HashJoin(p pl)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((v (u (p pl)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, votes as v, users as u WHERE p.Id = pl.RelatedPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND pl.LinkTypeId=1 AND pl.CreationDate>='2011-10-21 02:42:24'::timestamp AND p.PostTypeId=1 AND p.AnswerCount>=0 AND p.AnswerCount<=8 AND p.FavoriteCount<=4 AND u.DownVotes>=0;

/*+ HashJoin(b ph p u)
 HashJoin(ph p u)
 HashJoin(p u)
 SeqScan(b)
 SeqScan(ph)
 SeqScan(p)
 IndexScan(u)
 Leading((b (ph (p u)))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u, badges as b WHERE u.Id = p.OwnerUserId AND p.OwnerUserId = ph.UserId AND ph.UserId = b.UserId AND ph.PostHistoryTypeId=6 AND p.CommentCount>=0 AND p.CommentCount<=13 AND p.FavoriteCount>=0 AND p.FavoriteCount<=20 AND u.Reputation<=2526 AND b.Date>='2010-10-29 15:29:29'::timestamp;

/*+ HashJoin(c b u p pl)
 HashJoin(b u p pl)
 MergeJoin(u p pl)
 MergeJoin(p pl)
 SeqScan(c)
 SeqScan(b)
 IndexScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((c (b (u (p pl))))) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND p.Id = c.PostId AND u.Id = b.UserId AND u.Id = p.OwnerUserId AND c.CreationDate<='2014-09-03 15:46:33'::timestamp AND p.AnswerCount>=0 AND p.FavoriteCount>=0 AND p.FavoriteCount<=6 AND p.CreationDate>='2010-08-09 15:51:47'::timestamp AND p.CreationDate<='2014-09-11 03:53:32'::timestamp AND b.Date<='2014-09-10 11:35:56'::timestamp;

/*+ NestLoop(p pl u)
 HashJoin(p pl)
 SeqScan(p)
 SeqScan(pl)
 IndexScan(u)
 Leading(((p pl) u)) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, users as u WHERE p.Id = pl.PostId AND p.OwnerUserId = u.Id AND p.Score<=24 AND p.ViewCount<=2671 AND p.AnswerCount>=0 AND p.AnswerCount<=5 AND p.CommentCount=2 AND u.Views>=0 AND u.CreationDate<='2014-09-09 19:58:15'::timestamp;

/*+ HashJoin(ph u c p pl)
 MergeJoin(u c p pl)
 HashJoin(c p pl)
 MergeJoin(p pl)
 SeqScan(ph)
 IndexScan(u)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 Leading((ph (u (c (p pl))))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, users as u WHERE p.Id = pl.RelatedPostId AND pl.RelatedPostId = c.PostId AND pl.RelatedPostId = ph.PostId AND u.Id= c.UserId AND c.Score=0 AND c.CreationDate>='2010-08-10 14:17:26'::timestamp AND p.PostTypeId=1 AND p.AnswerCount<=4 AND p.FavoriteCount>=0 AND p.CreationDate>='2010-07-20 06:28:47'::timestamp AND p.CreationDate<='2014-09-09 02:38:14'::timestamp;

/*+ HashJoin(c p u)
 HashJoin(p u)
 SeqScan(c)
 SeqScan(p)
 IndexScan(u)
 Leading((c (p u))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.UserId = u.Id AND u.Id = p.OwnerUserId AND c.Score=0 AND p.Score>=-3 AND p.FavoriteCount>=0 AND p.CreationDate>='2010-08-13 15:54:37'::timestamp AND u.DownVotes>=0 AND u.DownVotes<=1 AND u.CreationDate<='2014-09-12 12:09:55'::timestamp;

/*+ HashJoin(c u p pl)
 MergeJoin(u p pl)
 MergeJoin(p pl)
 SeqScan(c)
 IndexScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((c (u (p pl)))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, users as u WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.OwnerUserId = u.Id AND c.CreationDate>='2010-07-28 15:21:55'::timestamp AND p.CreationDate>='2010-08-21 00:04:13'::timestamp AND pl.LinkTypeId=1 AND pl.CreationDate>='2010-12-23 16:59:38'::timestamp AND u.Reputation>=1 AND u.Views>=0 AND u.CreationDate>='2010-09-16 02:25:37'::timestamp;

/*+ MergeJoin(p u)
 SeqScan(p)
 IndexScan(u)
 Leading((p u)) */
SELECT COUNT(*) FROM posts as p, users as u WHERE p.OwnerUserId= u.Id AND p.PostTypeId=1 AND p.AnswerCount=0 AND p.CommentCount<=11 AND u.Reputation>=1 AND u.DownVotes<=1 AND u.CreationDate>='2010-07-22 10:51:54'::timestamp AND u.CreationDate<='2014-09-11 19:38:01'::timestamp;

/*+ HashJoin(b u p pl)
 MergeJoin(u p pl)
 HashJoin(p pl)
 SeqScan(b)
 IndexScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((b (u (p pl)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.ViewCount<=4277 AND p.AnswerCount<=6 AND p.CommentCount<=20 AND p.FavoriteCount>=0 AND p.FavoriteCount<=4 AND p.CreationDate<='2014-09-02 17:40:29'::timestamp AND u.DownVotes<=1;

/*+ MergeJoin(v b u p)
 HashJoin(b u p)
 HashJoin(u p)
 IndexScan(v)
 SeqScan(b)
 IndexScan(u)
 SeqScan(p)
 Leading((v (b (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND v.VoteTypeId=2 AND p.Score>=-2 AND p.CreationDate>='2010-10-04 07:15:14'::timestamp AND p.CreationDate<='2014-09-06 10:53:12'::timestamp AND b.Date>='2010-08-01 09:59:54'::timestamp AND u.Views>=0 AND u.Views<=15;

/*+ HashJoin(ph p c)
 NestLoop(p c)
 SeqScan(ph)
 SeqScan(p)
 IndexScan(c)
 Leading((ph (p c))) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph WHERE p.Id = c.PostId AND p.Id = ph.PostId AND p.ViewCount<=7749 AND p.CommentCount>=0 AND p.CommentCount<=16 AND p.FavoriteCount>=0 AND ph.PostHistoryTypeId=3 AND ph.CreationDate>='2010-09-16 11:47:42'::timestamp AND ph.CreationDate<='2014-07-20 20:40:20'::timestamp;

/*+ HashJoin(ph c p)
 HashJoin(c p)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(p)
 Leading((ph (c p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph WHERE p.Id = c.PostId AND p.Id = ph.PostId AND c.Score=1 AND p.FavoriteCount>=0 AND p.CreationDate>='2010-07-21 13:01:39'::timestamp AND p.CreationDate<='2014-09-03 17:11:40'::timestamp AND ph.PostHistoryTypeId=5 AND ph.CreationDate>='2010-10-19 17:29:33'::timestamp AND ph.CreationDate<='2014-08-07 23:50:35'::timestamp;

/*+ HashJoin(b u p pl)
 MergeJoin(u p pl)
 HashJoin(p pl)
 SeqScan(b)
 IndexScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((b (u (p pl)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND pl.CreationDate>='2010-10-26 20:57:01'::timestamp AND p.AnswerCount>=0 AND p.FavoriteCount<=7 AND p.CreationDate>='2010-08-07 07:35:58'::timestamp AND p.CreationDate<='2014-09-12 18:13:44'::timestamp AND u.CreationDate>='2010-07-21 10:25:49'::timestamp AND u.CreationDate<='2014-09-11 04:34:18'::timestamp;

/*+ HashJoin(ph c u)
 MergeJoin(c u)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(u)
 Leading((ph (c u))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND c.Score=1 AND c.CreationDate>='2010-07-19 21:33:33'::timestamp AND ph.PostHistoryTypeId=2 AND ph.CreationDate>='2010-08-17 11:23:18'::timestamp AND ph.CreationDate<='2014-08-08 05:45:19'::timestamp AND u.Reputation=1 AND u.Views<=36;

/*+ HashJoin(p ph u)
 HashJoin(ph u)
 SeqScan(p)
 SeqScan(ph)
 IndexScan(u)
 Leading((p (ph u))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.UserId = p.OwnerUserId AND ph.UserId = u.Id AND p.PostTypeId=1 AND p.ViewCount<=3519 AND p.FavoriteCount<=6 AND p.CreationDate>='2010-07-26 20:12:15'::timestamp AND p.CreationDate<='2014-09-10 15:44:43'::timestamp AND u.UpVotes>=0 AND u.UpVotes<=39;

/*+ HashJoin(b u c p pl)
 MergeJoin(u c p pl)
 HashJoin(c p pl)
 HashJoin(p pl)
 IndexScan(b)
 IndexScan(u)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 Leading((b (u (c (p pl))))) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND p.Id = c.PostId AND u.Id = b.UserId AND u.Id = p.OwnerUserId AND p.Score>=-6 AND p.Score<=17 AND p.ViewCount=123 AND p.CommentCount>=0 AND p.FavoriteCount<=1 AND u.Views>=0 AND u.UpVotes>=0;

/*+ HashJoin(ph c p)
 HashJoin(c p)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(p)
 Leading((ph (c p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph WHERE p.Id = c.PostId AND p.Id = ph.PostId AND c.Score=2 AND c.CreationDate>='2010-07-19 21:54:08'::timestamp AND p.PostTypeId=2 AND p.Score<=12 AND ph.PostHistoryTypeId=5 AND ph.CreationDate>='2010-08-03 09:04:50'::timestamp AND ph.CreationDate<='2014-09-08 12:18:02'::timestamp;

/*+ HashJoin(c ph v pl p)
 HashJoin(ph v pl p)
 HashJoin(v pl p)
 HashJoin(pl p)
 SeqScan(c)
 SeqScan(ph)
 SeqScan(v)
 SeqScan(pl)
 SeqScan(p)
 Leading((c (ph (v (pl p))))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, votes as v WHERE p.Id = c.PostId AND p.Id = pl.PostId AND p.Id = ph.PostId AND p.Id = v.PostId AND c.Score=0 AND p.ViewCount>=0 AND p.ViewCount<=3906 AND p.CommentCount<=13 AND ph.PostHistoryTypeId=5 AND v.BountyAmount>=0 AND v.CreationDate>='2010-07-20 00:00:00'::timestamp;

/*+ HashJoin(v b p u)
 HashJoin(b p u)
 MergeJoin(p u)
 SeqScan(v)
 SeqScan(b)
 SeqScan(p)
 IndexScan(u)
 Leading((v (b (p u)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND v.BountyAmount>=0 AND p.PostTypeId=1 AND p.Score>=-1 AND p.CreationDate>='2010-07-28 05:55:31'::timestamp AND u.DownVotes=0 AND u.UpVotes>=0 AND u.UpVotes<=13;

/*+ HashJoin(ph u c p pl)
 MergeJoin(u c p pl)
 HashJoin(c p pl)
 HashJoin(p pl)
 SeqScan(ph)
 IndexScan(u)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 Leading((ph (u (c (p pl))))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, users as u WHERE p.Id = pl.RelatedPostId AND pl.RelatedPostId = c.PostId AND pl.RelatedPostId = ph.PostId AND u.Id= c.UserId AND c.CreationDate>='2010-07-20 12:49:37'::timestamp AND p.Score>=0 AND p.ViewCount<=6064 AND p.FavoriteCount>=0 AND p.CreationDate<='2014-09-02 23:09:58'::timestamp AND u.DownVotes>=0 AND u.DownVotes<=1;

/*+ HashJoin(u c ph)
 NestLoop(u c)
 IndexScan(u)
 IndexScan(c)
 SeqScan(ph)
 Leading(((u c) ph)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND c.Score=0 AND c.CreationDate<='2014-09-01 20:28:11'::timestamp AND ph.PostHistoryTypeId=3 AND u.Reputation<=1453 AND u.Views>=0 AND u.UpVotes>=0 AND u.CreationDate='2012-06-29 00:16:46'::timestamp;

/*+ HashJoin(p ph u)
 HashJoin(ph u)
 SeqScan(p)
 SeqScan(ph)
 IndexScan(u)
 Leading((p (ph u))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.UserId = p.OwnerUserId AND ph.UserId = u.Id AND ph.PostHistoryTypeId=2 AND ph.CreationDate>='2010-10-07 10:50:24'::timestamp AND p.FavoriteCount>=0 AND p.FavoriteCount<=5 AND p.CreationDate<='2014-08-30 14:49:00'::timestamp AND u.Views>=0 AND u.Views<=30;

/*+ HashJoin(ph c v pl p)
 HashJoin(c v pl p)
 MergeJoin(v pl p)
 HashJoin(pl p)
 SeqScan(ph)
 SeqScan(c)
 IndexScan(v)
 IndexScan(pl)
 SeqScan(p)
 Leading((ph (c (v (pl p))))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, votes as v WHERE p.Id = c.PostId AND p.Id = pl.PostId AND p.Id = ph.PostId AND p.Id = v.PostId AND p.Score>=-4 AND p.AnswerCount<=42 AND p.FavoriteCount>=0 AND pl.CreationDate<='2014-08-25 02:43:39'::timestamp AND ph.CreationDate>='2011-01-12 05:33:37'::timestamp AND ph.CreationDate<='2014-09-10 22:11:03'::timestamp AND v.VoteTypeId=2;

/*+ MergeJoin(v pl p ph c b)
 NestLoop(v pl p ph c)
 MergeJoin(v pl p ph)
 HashJoin(pl p ph)
 HashJoin(pl p)
 IndexScan(v)
 IndexScan(pl)
 SeqScan(p)
 IndexScan(ph)
 IndexScan(c)
 SeqScan(b)
 Leading((((v ((pl p) ph)) c) b)) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, votes as v, badges as b WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.Id = ph.PostId AND p.Id = v.PostId AND b.UserId = c.UserId AND c.Score=0 AND p.CommentCount>=0 AND p.FavoriteCount>=0 AND pl.LinkTypeId=1 AND pl.CreationDate>='2010-08-30 15:02:01'::timestamp AND pl.CreationDate<='2014-07-10 08:57:37'::timestamp AND v.VoteTypeId=2;

/*+ HashJoin(v u p c)
 MergeJoin(u p c)
 HashJoin(p c)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 SeqScan(c)
 Leading((v (u (p c)))) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE p.Id = c.PostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND c.Score=6 AND p.PostTypeId=2 AND p.CreationDate<='2014-09-11 14:55:26'::timestamp AND v.BountyAmount<=50 AND u.DownVotes>=0 AND u.DownVotes<=1 AND u.UpVotes<=65;

/*+ HashJoin(b ph u p)
 HashJoin(ph u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(ph)
 IndexScan(u)
 SeqScan(p)
 Leading((b (ph (u p)))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u, badges as b WHERE u.Id = p.OwnerUserId AND p.OwnerUserId = ph.UserId AND ph.UserId = b.UserId AND p.ViewCount<=2142 AND p.AnswerCount>=0 AND p.CommentCount>=0 AND u.Reputation=16 AND u.DownVotes=0 AND u.UpVotes>=0 AND u.UpVotes<=55;

/*+ HashJoin(p c u)
 NestLoop(c u)
 SeqScan(p)
 SeqScan(c)
 IndexScan(u)
 Leading((p (c u))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.PostId = p.Id AND c.UserId = u.Id AND c.Score=2 AND p.CreationDate>='2010-07-29 15:57:21'::timestamp AND p.CreationDate<='2014-08-27 14:27:12'::timestamp AND u.Reputation<=1307 AND u.Views>=0 AND u.Views<=18 AND u.DownVotes>=0;

/*+ NestLoop(c pl p u)
 HashJoin(c pl p)
 HashJoin(pl p)
 SeqScan(c)
 SeqScan(pl)
 SeqScan(p)
 IndexScan(u)
 Leading(((c (pl p)) u)) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, users as u WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.OwnerUserId = u.Id AND c.Score=0 AND p.PostTypeId=2 AND p.CommentCount<=13 AND pl.CreationDate>='2012-03-07 00:53:27'::timestamp AND u.DownVotes>=0 AND u.DownVotes<=4 AND u.UpVotes>=0;

/*+ HashJoin(v c u)
 HashJoin(c u)
 SeqScan(v)
 SeqScan(c)
 IndexScan(u)
 Leading((v (c u))) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND c.CreationDate>='2010-07-27 17:15:55'::timestamp AND c.CreationDate<='2014-09-13 08:22:38'::timestamp AND v.CreationDate>='2010-07-19 00:00:00'::timestamp AND v.CreationDate<='2014-09-11 00:00:00'::timestamp AND u.Reputation<=1205 AND u.UpVotes>=0 AND u.CreationDate>='2011-02-16 19:24:28'::timestamp;

/*+ HashJoin(c p pl)
 HashJoin(p pl)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 Leading((c (p pl))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE c.UserId = p.OwnerUserId AND p.Id = pl.PostId AND c.Score=0 AND p.ViewCount=181 AND p.AnswerCount>=0 AND p.AnswerCount<=4 AND p.CommentCount>=0 AND p.CommentCount<=12 AND p.CreationDate<='2014-08-06 15:07:34'::timestamp;

/*+ HashJoin(v ph p u)
 HashJoin(ph p u)
 HashJoin(p u)
 SeqScan(v)
 SeqScan(ph)
 SeqScan(p)
 IndexScan(u)
 Leading((v (ph (p u)))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, votes as v, users as u WHERE p.Id = ph.PostId AND u.Id = p.OwnerUserId AND p.Id = v.PostId AND ph.PostHistoryTypeId=2 AND p.ViewCount<=3098 AND p.CommentCount>=0 AND p.CommentCount<=13 AND p.FavoriteCount>=0 AND p.FavoriteCount<=7 AND p.CreationDate<='2014-09-03 05:07:29'::timestamp;

/*+ HashJoin(v u b p)
 HashJoin(v u b)
 HashJoin(u b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(b)
 SeqScan(p)
 Leading(((v (u b)) p)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE u.Id = v.UserId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND v.VoteTypeId=5 AND v.CreationDate>='2010-08-11 00:00:00'::timestamp AND p.CommentCount>=0 AND p.CommentCount<=11 AND p.CreationDate>='2010-08-12 08:37:45'::timestamp AND u.DownVotes<=2 AND u.CreationDate<='2014-08-06 11:39:08'::timestamp;

/*+ HashJoin(c p pl)
 HashJoin(p pl)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 Leading((c (p pl))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE p.Id = c.PostId AND p.Id = pl.PostId AND c.Score=0 AND p.Score>=-1 AND p.Score<=192 AND p.ViewCount>=0 AND p.ViewCount<=3072 AND p.AnswerCount>=0 AND pl.CreationDate>='2010-09-20 04:14:54'::timestamp;

/*+ HashJoin(p v u)
 HashJoin(v u)
 SeqScan(p)
 SeqScan(v)
 IndexScan(u)
 Leading((p (v u))) */
SELECT COUNT(*) FROM votes as v, posts as p, users as u WHERE v.PostId = p.Id AND v.UserId = u.Id AND p.Score>=-1 AND p.Score<=16 AND p.ViewCount<=2496 AND p.CommentCount>=0 AND p.CommentCount<=14 AND u.Reputation<=388 AND u.UpVotes>=0;

/*+ HashJoin(b u c p pl)
 MergeJoin(u c p pl)
 HashJoin(c p pl)
 HashJoin(p pl)
 SeqScan(b)
 IndexScan(u)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 Leading((b (u (c (p pl))))) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND p.Id = c.PostId AND u.Id = b.UserId AND u.Id = p.OwnerUserId AND c.CreationDate>='2010-07-22 16:26:29'::timestamp AND c.CreationDate<='2014-09-13 10:17:13'::timestamp AND pl.CreationDate<='2014-09-08 13:12:40'::timestamp AND p.PostTypeId=1 AND p.Score>=0 AND p.FavoriteCount>=0 AND b.Date>='2010-07-19 19:39:09'::timestamp;

/*+ HashJoin(v b p u)
 HashJoin(b p u)
 MergeJoin(p u)
 SeqScan(v)
 SeqScan(b)
 SeqScan(p)
 IndexScan(u)
 Leading((v (b (p u)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.CommentCount>=0 AND p.FavoriteCount>=0 AND b.Date>='2010-08-11 15:19:54'::timestamp AND b.Date<='2014-09-09 02:46:20'::timestamp AND u.Reputation>=1 AND u.Reputation<=171 AND u.DownVotes>=0;

/*+ MergeJoin(u c p)
 HashJoin(c p)
 IndexScan(u)
 SeqScan(c)
 SeqScan(p)
 Leading((u (c p))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.PostId = p.Id AND c.UserId = u.Id AND c.CreationDate>='2010-07-20 08:56:46'::timestamp AND c.CreationDate<='2014-09-13 23:32:09'::timestamp AND p.PostTypeId=1 AND p.Score<=16 AND p.AnswerCount<=5 AND p.FavoriteCount<=4 AND u.CreationDate>='2010-07-26 19:11:25'::timestamp;

/*+ MergeJoin(c u p v b)
 MergeJoin(c u p v)
 HashJoin(c u p)
 NestLoop(c u)
 SeqScan(c)
 IndexScan(u)
 SeqScan(p)
 SeqScan(v)
 SeqScan(b)
 Leading(((((c u) p) v) b)) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, badges as b, users as u WHERE u.Id =c.UserId AND c.UserId = p.OwnerUserId AND p.OwnerUserId = v.UserId AND v.UserId = b.UserId AND p.Score<=71 AND p.AnswerCount<=6 AND p.CreationDate<='2014-09-12 09:14:26'::timestamp AND v.BountyAmount>=0 AND v.BountyAmount<=250 AND v.CreationDate<='2014-09-12 00:00:00'::timestamp AND b.Date>='2010-07-21 04:23:12'::timestamp;

/*+ HashJoin(ph p c)
 NestLoop(p c)
 SeqScan(ph)
 SeqScan(p)
 IndexScan(c)
 Leading((ph (p c))) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph WHERE p.Id = c.PostId AND p.Id = ph.PostId AND p.PostTypeId=1 AND p.Score>=-1 AND p.Score<=44 AND p.CommentCount=10 AND p.FavoriteCount<=6 AND ph.CreationDate>='2010-07-27 14:46:49'::timestamp AND ph.CreationDate<='2014-08-21 09:23:26'::timestamp;

/*+ HashJoin(c v u)
 MergeJoin(v u)
 SeqScan(c)
 SeqScan(v)
 IndexScan(u)
 Leading((c (v u))) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND c.Score=0 AND v.BountyAmount>=0 AND v.BountyAmount<=100 AND v.CreationDate<='2014-09-09 00:00:00'::timestamp AND u.Reputation>=1 AND u.Reputation<=610 AND u.CreationDate>='2010-07-20 13:42:27'::timestamp;

/*+ HashJoin(c b u p pl)
 HashJoin(b u p pl)
 MergeJoin(u p pl)
 HashJoin(p pl)
 SeqScan(c)
 SeqScan(b)
 IndexScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((c (b (u (p pl))))) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND p.Id = c.PostId AND u.Id = b.UserId AND u.Id = p.OwnerUserId AND p.Score>=-1 AND p.CommentCount>=0 AND p.CommentCount<=35 AND p.CreationDate>='2010-11-15 11:16:20'::timestamp AND u.UpVotes>=0 AND u.UpVotes<=910 AND u.CreationDate>='2010-07-19 19:27:18'::timestamp;

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
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, votes as v WHERE p.Id = c.PostId AND p.Id = pl.PostId AND p.Id = ph.PostId AND p.Id = v.PostId AND p.Score<=27 AND p.CommentCount>=0 AND p.FavoriteCount>=0 AND pl.CreationDate>='2012-06-08 02:00:49'::timestamp AND pl.CreationDate<='2014-08-05 13:19:55'::timestamp AND ph.PostHistoryTypeId=2 AND v.BountyAmount>=0;

/*+ MergeJoin(u c p)
 HashJoin(c p)
 IndexScan(u)
 SeqScan(c)
 SeqScan(p)
 Leading((u (c p))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.PostId = p.Id AND c.UserId = u.Id AND c.Score=0 AND p.PostTypeId=1 AND p.FavoriteCount<=13 AND p.CreationDate>='2010-07-29 13:43:53'::timestamp AND p.CreationDate<='2014-09-12 21:38:37'::timestamp AND u.Reputation<=637 AND u.CreationDate<='2014-08-22 19:32:20'::timestamp;

/*+ HashJoin(c v u p)
 MergeJoin(v u p)
 HashJoin(u p)
 SeqScan(c)
 IndexScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((c (v (u p)))) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = v.UserId AND c.Score=0 AND p.PostTypeId=1 AND v.CreationDate>='2010-07-29 00:00:00'::timestamp AND v.CreationDate<='2014-09-12 00:00:00'::timestamp AND u.Reputation=1 AND u.Views>=0 AND u.Views<=60;

/*+ HashJoin(ph p pl)
 HashJoin(p pl)
 SeqScan(ph)
 SeqScan(p)
 SeqScan(pl)
 Leading((ph (p pl))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph WHERE p.Id = pl.PostId AND pl.PostId = ph.PostId AND p.Score<=22 AND p.ViewCount<=4902 AND p.AnswerCount>=0 AND p.AnswerCount<=3 AND pl.CreationDate<='2014-08-13 20:59:14'::timestamp AND ph.CreationDate>='2010-07-23 05:55:44'::timestamp AND ph.CreationDate<='2014-09-08 21:14:55'::timestamp;

/*+ HashJoin(ph u c p pl)
 MergeJoin(u c p pl)
 HashJoin(c p pl)
 MergeJoin(p pl)
 SeqScan(ph)
 IndexScan(u)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 Leading((ph (u (c (p pl))))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, users as u WHERE p.Id = pl.RelatedPostId AND pl.RelatedPostId = c.PostId AND pl.RelatedPostId = ph.PostId AND u.Id= c.UserId AND p.ViewCount>=0 AND p.CommentCount>=0 AND p.CommentCount<=8 AND p.FavoriteCount>=0 AND p.CreationDate>='2009-04-12 15:22:27'::timestamp AND p.CreationDate<='2014-09-10 04:05:48'::timestamp AND ph.PostHistoryTypeId=3;

/*+ HashJoin(p v u)
 MergeJoin(v u)
 IndexScan(p)
 SeqScan(v)
 IndexScan(u)
 Leading((p (v u))) */
SELECT COUNT(*) FROM votes as v, posts as p, users as u WHERE v.PostId = p.Id AND v.UserId = u.Id AND v.CreationDate>='2010-07-19 00:00:00'::timestamp AND p.PostTypeId=1 AND p.Score<=18 AND p.ViewCount>=0 AND u.Views>=0 AND u.Views<=72 AND u.UpVotes<=94;

/*+ HashJoin(v b p u)
 HashJoin(b p u)
 MergeJoin(p u)
 SeqScan(v)
 SeqScan(b)
 SeqScan(p)
 IndexScan(u)
 Leading((v (b (p u)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND v.VoteTypeId=2 AND p.PostTypeId=1 AND p.AnswerCount>=0 AND p.FavoriteCount>=0 AND p.FavoriteCount<=3 AND u.Reputation>=1 AND u.UpVotes>=0;

/*+ HashJoin(ph p u)
 HashJoin(p u)
 SeqScan(ph)
 SeqScan(p)
 IndexScan(u)
 Leading((ph (p u))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.PostId = p.Id AND p.OwnerUserId = u.Id AND p.Score>=-4 AND p.AnswerCount>=0 AND p.CreationDate>='2010-08-20 15:35:33'::timestamp AND p.CreationDate<='2014-08-28 13:18:09'::timestamp AND u.Reputation<=172 AND u.Views>=0 AND u.UpVotes>=0;

/*+ HashJoin(ph c u)
 HashJoin(c u)
 SeqScan(ph)
 SeqScan(c)
 IndexScan(u)
 Leading((ph (c u))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND ph.CreationDate='2013-10-15 14:48:21'::timestamp AND u.Reputation>=1 AND u.Reputation<=367 AND u.DownVotes>=0 AND u.DownVotes<=0 AND u.UpVotes>=0 AND u.UpVotes<=126;

/*+ HashJoin(c u ph p b)
 MergeJoin(c u ph p)
 MergeJoin(c u ph)
 NestLoop(c u)
 SeqScan(c)
 IndexScan(u)
 SeqScan(ph)
 SeqScan(p)
 SeqScan(b)
 Leading(((((c u) ph) p) b)) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = ph.UserId AND u.Id = b.UserId AND c.CreationDate>='2010-08-17 16:41:53'::timestamp AND c.CreationDate<='2014-09-11 01:11:51'::timestamp AND p.CommentCount>=0 AND p.CommentCount<=13 AND ph.PostHistoryTypeId=3 AND u.DownVotes>=0 AND u.UpVotes<=3;

/*+ HashJoin(b u p pl)
 MergeJoin(u p pl)
 HashJoin(p pl)
 SeqScan(b)
 IndexScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((b (u (p pl)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND pl.LinkTypeId=1 AND pl.CreationDate>='2011-04-19 20:00:02'::timestamp AND pl.CreationDate<='2014-08-30 18:24:22'::timestamp AND p.ViewCount>=0 AND p.AnswerCount>=0 AND p.AnswerCount<=3 AND p.CreationDate<='2014-08-26 15:04:43'::timestamp;

/*+ HashJoin(c u p v b)
 HashJoin(c u p v)
 HashJoin(c u p)
 NestLoop(c u)
 SeqScan(c)
 IndexScan(u)
 SeqScan(p)
 SeqScan(v)
 SeqScan(b)
 Leading(((((c u) p) v) b)) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, badges as b, users as u WHERE u.Id =c.UserId AND c.UserId = p.OwnerUserId AND p.OwnerUserId = v.UserId AND v.UserId = b.UserId AND c.CreationDate>='2010-08-02 23:49:50'::timestamp AND p.Score<=13 AND p.CommentCount>=0 AND p.CommentCount<=8 AND v.BountyAmount<=50 AND v.CreationDate>='2010-07-23 00:00:00'::timestamp AND u.Views<=83;

/*+ NestLoop(c p pl u)
 HashJoin(c p pl)
 HashJoin(p pl)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 IndexScan(u)
 Leading(((c (p pl)) u)) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, users as u WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.OwnerUserId = u.Id AND c.Score=1 AND c.CreationDate>='2010-08-16 11:45:12'::timestamp AND c.CreationDate<='2014-09-11 04:24:44'::timestamp AND p.PostTypeId=1 AND p.Score>=-6 AND p.CommentCount<=9 AND pl.CreationDate<='2014-08-13 15:13:20'::timestamp;

/*+ MergeJoin(ph b u v)
 MergeJoin(b u v)
 MergeJoin(u v)
 IndexScan(ph)
 SeqScan(b)
 IndexScan(u)
 IndexScan(v)
 Leading((ph (b (u v)))) */
SELECT COUNT(*) FROM postHistory as ph, votes as v, users as u, badges as b WHERE u.Id = ph.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND ph.CreationDate>='2010-11-05 21:32:22'::timestamp AND ph.CreationDate<='2014-09-03 16:50:56'::timestamp AND v.CreationDate='2012-10-04 00:00:00'::timestamp AND u.Reputation>=1 AND u.Views>=0 AND u.Views<=27 AND u.UpVotes<=30;

/*+ HashJoin(v c b u p pl)
 HashJoin(c b u p pl)
 MergeJoin(b u p pl)
 MergeJoin(u p pl)
 HashJoin(p pl)
 SeqScan(v)
 IndexScan(c)
 SeqScan(b)
 IndexScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((v (c (b (u (p pl)))))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, votes as v, badges as b, users as u WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.AnswerCount>=0 AND p.CommentCount>=0 AND p.FavoriteCount>=0 AND p.FavoriteCount<=44 AND pl.LinkTypeId=1 AND v.VoteTypeId=2 AND u.DownVotes<=1;

/*+ HashJoin(c p u)
 HashJoin(p u)
 SeqScan(c)
 SeqScan(p)
 IndexScan(u)
 Leading((c (p u))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.UserId = u.Id AND u.Id = p.OwnerUserId AND c.Score=0 AND p.Score>=0 AND p.Score<=59 AND p.ViewCount>=0 AND p.ViewCount<=6412 AND p.FavoriteCount>=0 AND p.CreationDate<='2014-09-05 14:49:50'::timestamp;

/*+ MergeJoin(ph p u b)
 MergeJoin(ph p u)
 MergeJoin(p u)
 SeqScan(ph)
 IndexScan(p)
 SeqScan(u)
 SeqScan(b)
 Leading(((ph (p u)) b)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u, badges as b WHERE u.Id = p.OwnerUserId AND p.OwnerUserId = ph.UserId AND ph.UserId = b.UserId AND ph.CreationDate<='2014-07-18 20:14:16'::timestamp AND p.PostTypeId=1 AND p.ViewCount<=7415 AND p.AnswerCount>=0 AND p.FavoriteCount<=15 AND b.Date>='2010-07-19 20:14:07'::timestamp AND b.Date<='2014-09-06 07:43:48'::timestamp;

/*+ HashJoin(v b p u)
 HashJoin(b p u)
 MergeJoin(p u)
 SeqScan(v)
 SeqScan(b)
 SeqScan(p)
 IndexScan(u)
 Leading((v (b (p u)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE u.Id = v.UserId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>=0 AND p.Score<=18 AND p.ViewCount=6 AND p.CommentCount>=0 AND p.CommentCount<=9 AND p.CreationDate<='2014-09-09 00:41:41'::timestamp AND b.Date<='2014-08-24 02:16:43'::timestamp;

/*+ HashJoin(p u)
 SeqScan(p)
 IndexScan(u)
 Leading((p u)) */
SELECT COUNT(*) FROM posts as p, users as u WHERE p.OwnerUserId= u.Id AND p.PostTypeId=2 AND p.Score>=0 AND p.CommentCount>=0 AND u.Views<=15 AND u.DownVotes<=5 AND u.UpVotes>=0 AND u.UpVotes<=22;

/*+ HashJoin(c u p v b)
 NestLoop(c u p v)
 HashJoin(c u p)
 NestLoop(c u)
 SeqScan(c)
 IndexScan(u)
 SeqScan(p)
 IndexScan(v)
 SeqScan(b)
 Leading(((((c u) p) v) b)) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, badges as b, users as u WHERE u.Id =c.UserId AND c.UserId = p.OwnerUserId AND p.OwnerUserId = v.UserId AND v.UserId = b.UserId AND c.Score=4 AND p.PostTypeId=1 AND p.AnswerCount>=0 AND p.AnswerCount<=3 AND v.CreationDate>='2010-07-19 00:00:00'::timestamp AND v.CreationDate<='2014-09-12 00:00:00'::timestamp AND u.Views>=0;

/*+ HashJoin(c b u v)
 MergeJoin(b u v)
 MergeJoin(u v)
 IndexScan(c)
 SeqScan(b)
 IndexScan(u)
 IndexScan(v)
 Leading((c (b (u v)))) */
SELECT COUNT(*) FROM comments as c, votes as v, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND c.CreationDate>='2010-08-10 20:34:15'::timestamp AND c.CreationDate<='2014-09-09 03:59:18'::timestamp AND v.BountyAmount>=0 AND b.Date>='2010-08-05 10:41:34'::timestamp AND u.Reputation>=1 AND u.DownVotes>=0 AND u.UpVotes<=198;

/*+ HashJoin(b u p pl)
 HashJoin(u p pl)
 MergeJoin(p pl)
 SeqScan(b)
 IndexScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((b (u (p pl)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND pl.LinkTypeId=1 AND p.ViewCount<=29020 AND p.AnswerCount<=10 AND p.CreationDate>='2010-07-20 00:47:45'::timestamp AND p.CreationDate<='2014-08-25 20:35:15'::timestamp AND b.Date>='2010-07-19 19:39:09'::timestamp AND b.Date<='2014-09-13 12:17:27'::timestamp;

/*+ HashJoin(v c u)
 HashJoin(c u)
 SeqScan(v)
 SeqScan(c)
 IndexScan(u)
 Leading((v (c u))) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND c.PostId = v.PostId AND c.Score=0 AND v.CreationDate>='2010-07-23 00:00:00'::timestamp AND v.CreationDate<='2014-09-08 00:00:00'::timestamp AND u.Reputation=6 AND u.Views>=0 AND u.Views<=54 AND u.DownVotes<=5;

/*+ HashJoin(p v u)
 MergeJoin(v u)
 SeqScan(p)
 SeqScan(v)
 IndexScan(u)
 Leading((p (v u))) */
SELECT COUNT(*) FROM votes as v, posts as p, users as u WHERE v.PostId = p.Id AND v.UserId = u.Id AND p.ViewCount>=0 AND p.ViewCount<=2993 AND p.FavoriteCount<=19 AND u.Reputation>=1 AND u.Reputation<=1282 AND u.Views<=28 AND u.UpVotes>=0;

/*+ HashJoin(c b u p pl)
 HashJoin(b u p pl)
 MergeJoin(u p pl)
 HashJoin(p pl)
 SeqScan(c)
 SeqScan(b)
 IndexScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((c (b (u (p pl))))) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND p.Id = c.PostId AND u.Id = b.UserId AND u.Id = p.OwnerUserId AND c.CreationDate>='2010-07-28 18:44:11'::timestamp AND c.CreationDate<='2014-09-09 08:07:07'::timestamp AND pl.LinkTypeId=1 AND p.CommentCount>=0 AND u.Reputation>=1 AND u.CreationDate>='2010-07-20 11:19:08'::timestamp AND u.CreationDate<='2014-09-09 05:53:58'::timestamp;

/*+ NestLoop(p pl c v)
 HashJoin(p pl c)
 NestLoop(pl c)
 IndexScan(p)
 IndexScan(pl)
 IndexScan(c)
 IndexScan(v)
 Leading(((p (pl c)) v)) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, votes as v WHERE p.Id = c.PostId AND c.PostId = pl.PostId AND pl.PostId = v.PostId AND p.Score<=15 AND p.AnswerCount=0 AND p.CreationDate>='2010-07-27 03:58:22'::timestamp AND p.CreationDate<='2014-09-11 14:55:26'::timestamp AND pl.LinkTypeId=1 AND v.VoteTypeId=2 AND v.CreationDate>='2010-07-19 00:00:00'::timestamp;

/*+ MergeJoin(ph p u)
 HashJoin(p u)
 SeqScan(ph)
 SeqScan(p)
 IndexScan(u)
 Leading((ph (p u))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.PostId = p.Id AND p.OwnerUserId = u.Id AND ph.PostHistoryTypeId=3 AND ph.CreationDate>='2010-07-19 21:35:55'::timestamp AND ph.CreationDate<='2014-07-28 18:03:27'::timestamp AND p.PostTypeId=1 AND u.Reputation<=345 AND u.DownVotes<=0 AND u.UpVotes<=21;

/*+ HashJoin(c p pl)
 HashJoin(p pl)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 Leading((c (p pl))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE p.Id = c.PostId AND p.Id = pl.PostId AND p.Score<=10 AND p.AnswerCount>=0 AND p.AnswerCount<=6 AND p.CreationDate>='2010-08-03 21:30:22'::timestamp AND pl.LinkTypeId=1 AND pl.CreationDate>='2010-10-12 13:03:05'::timestamp AND pl.CreationDate<='2014-08-24 06:40:36'::timestamp;

/*+ HashJoin(b ph p t u)
 HashJoin(ph p t u)
 NestLoop(p t u)
 HashJoin(p t)
 SeqScan(b)
 SeqScan(ph)
 SeqScan(p)
 SeqScan(t)
 IndexScan(u)
 Leading((b (ph ((p t) u)))) */
SELECT COUNT(*) FROM tags as t, posts as p, users as u, postHistory as ph, badges as b WHERE p.Id = t.ExcerptPostId AND u.Id = ph.UserId AND u.Id = b.UserId AND u.Id = p.OwnerUserId AND p.CommentCount=0 AND p.CreationDate>='2010-07-21 14:55:06'::timestamp AND u.Views>=0 AND u.Views<=15 AND u.UpVotes>=0 AND ph.PostHistoryTypeId=3 AND b.Date<='2014-08-29 18:37:20'::timestamp;

/*+ HashJoin(ph u c p pl)
 MergeJoin(u c p pl)
 HashJoin(c p pl)
 HashJoin(p pl)
 SeqScan(ph)
 IndexScan(u)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 Leading((ph (u (c (p pl))))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, users as u WHERE p.Id = pl.RelatedPostId AND pl.RelatedPostId = c.PostId AND pl.RelatedPostId = ph.PostId AND u.Id= c.UserId AND c.Score=0 AND c.CreationDate>='2010-07-25 08:36:42'::timestamp AND c.CreationDate<='2014-09-12 02:23:17'::timestamp AND p.ViewCount>=0 AND p.AnswerCount<=7 AND pl.LinkTypeId=1 AND u.Views<=21;

/*+ HashJoin(c pl u p v b)
 NestLoop(c pl u p v)
 MergeJoin(c pl u p)
 MergeJoin(pl u p)
 HashJoin(u p)
 SeqScan(c)
 IndexScan(pl)
 IndexScan(u)
 SeqScan(p)
 IndexScan(v)
 SeqScan(b)
 Leading((((c (pl (u p))) v) b)) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, votes as v, badges as b, users as u WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND c.CreationDate<='2014-09-13 21:31:12'::timestamp AND p.FavoriteCount>=0 AND p.FavoriteCount<=10 AND p.CreationDate<='2014-09-02 16:39:54'::timestamp AND v.VoteTypeId=2 AND b.Date>='2011-03-14 10:41:08'::timestamp AND u.Reputation<=1981;

/*+ HashJoin(ph c u)
 HashJoin(c u)
 SeqScan(ph)
 SeqScan(c)
 IndexScan(u)
 Leading((ph (c u))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND c.CreationDate>='2010-08-04 10:09:10'::timestamp AND u.Views>=0 AND u.Views<=26 AND u.DownVotes>=0 AND u.DownVotes<=5 AND u.UpVotes<=869 AND u.CreationDate<='2014-08-11 16:16:39'::timestamp;

/*+ MergeJoin(u c p)
 HashJoin(c p)
 IndexScan(u)
 SeqScan(c)
 SeqScan(p)
 Leading((u (c p))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.PostId = p.Id AND c.UserId = u.Id AND p.ViewCount<=5568 AND p.FavoriteCount>=0 AND p.FavoriteCount<=5 AND p.CreationDate>='2010-07-28 20:43:32'::timestamp AND p.CreationDate<='2014-09-09 14:28:16'::timestamp AND u.DownVotes<=1 AND u.CreationDate>='2011-04-20 22:55:41'::timestamp;

/*+ HashJoin(v p c pl)
 HashJoin(p c pl)
 MergeJoin(c pl)
 SeqScan(v)
 SeqScan(p)
 SeqScan(c)
 SeqScan(pl)
 Leading((v (p (c pl)))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, votes as v WHERE p.Id = c.PostId AND c.PostId = pl.PostId AND pl.PostId = v.PostId AND p.Score>=-3 AND p.ViewCount<=2826 AND p.FavoriteCount>=0 AND p.FavoriteCount<=3 AND p.CreationDate<='2014-09-01 14:52:19'::timestamp AND pl.CreationDate>='2010-11-09 20:19:21'::timestamp AND v.BountyAmount<=50;

/*+ MergeJoin(v ph b u pl p)
 HashJoin(ph b u pl p)
 HashJoin(b u pl p)
 MergeJoin(u pl p)
 HashJoin(pl p)
 IndexScan(v)
 SeqScan(ph)
 SeqScan(b)
 IndexScan(u)
 SeqScan(pl)
 SeqScan(p)
 Leading((v (ph (b (u (pl p)))))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph, votes as v, badges as b, users as u WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND u.Id = ph.UserId AND u.Id = v.UserId AND p.PostTypeId=1 AND p.CreationDate<='2014-09-03 23:54:55'::timestamp AND ph.PostHistoryTypeId=5 AND u.Views<=38 AND u.DownVotes<=104 AND u.UpVotes=0 AND u.CreationDate<='2014-09-08 17:18:53'::timestamp;

/*+ MergeJoin(u c p)
 HashJoin(c p)
 IndexScan(u)
 SeqScan(c)
 SeqScan(p)
 Leading((u (c p))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.PostId = p.Id AND c.UserId = u.Id AND p.AnswerCount<=5 AND p.FavoriteCount>=0 AND p.FavoriteCount<=5 AND p.CreationDate>='2010-07-20 12:09:08'::timestamp AND p.CreationDate<='2014-09-10 10:23:56'::timestamp AND u.Reputation>=1 AND u.Reputation<=241;

/*+ HashJoin(v u p)
 MergeJoin(u p)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((v (u p))) */
SELECT COUNT(*) FROM votes as v, posts as p, users as u WHERE v.UserId = p.OwnerUserId AND p.OwnerUserId = u.Id AND p.ViewCount>=0 AND p.ViewCount<=4637 AND p.FavoriteCount>=0 AND p.FavoriteCount<=11 AND p.CreationDate>='2010-07-19 19:34:44'::timestamp AND u.Reputation<=133 AND u.Views<=51;

/*+ HashJoin(c ph pl p b v)
 HashJoin(c ph pl p b)
 MergeJoin(c ph pl p)
 MergeJoin(ph pl p)
 MergeJoin(pl p)
 SeqScan(c)
 SeqScan(ph)
 IndexScan(pl)
 SeqScan(p)
 SeqScan(b)
 IndexScan(v)
 Leading((((c (ph (pl p))) b) v)) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, votes as v, badges as b WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.Id = ph.PostId AND p.Id = v.PostId AND b.UserId = c.UserId AND p.Score>=-1 AND p.ViewCount>=0 AND p.CommentCount>=0 AND p.CommentCount<=10 AND ph.CreationDate>='2011-01-27 14:57:16'::timestamp AND ph.CreationDate<='2014-08-29 11:12:32'::timestamp AND b.Date>='2010-08-02 02:34:56'::timestamp;

/*+ HashJoin(ph b u v)
 MergeJoin(b u v)
 MergeJoin(u v)
 SeqScan(ph)
 SeqScan(b)
 IndexScan(u)
 IndexScan(v)
 Leading((ph (b (u v)))) */
SELECT COUNT(*) FROM postHistory as ph, votes as v, users as u, badges as b WHERE u.Id = ph.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND v.BountyAmount>=0 AND v.CreationDate>='2010-07-20 00:00:00'::timestamp AND u.Reputation>=1 AND u.Reputation<=5564 AND u.DownVotes>=0 AND u.DownVotes<=0 AND u.CreationDate>='2010-07-19 19:12:20'::timestamp;

/*+ MergeJoin(u c p)
 HashJoin(c p)
 IndexScan(u)
 SeqScan(c)
 SeqScan(p)
 Leading((u (c p))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.PostId = p.Id AND c.UserId = u.Id AND c.Score=0 AND c.CreationDate<='2014-09-08 00:18:48'::timestamp AND p.Score>=-1 AND p.Score<=12 AND p.ViewCount>=0 AND p.AnswerCount>=0 AND p.FavoriteCount>=0;

/*+ HashJoin(c p pl)
 HashJoin(p pl)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 Leading((c (p pl))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE p.Id = c.PostId AND p.Id = pl.PostId AND c.Score=1 AND c.CreationDate>='2010-08-10 19:54:25'::timestamp AND p.ViewCount>=0 AND p.ViewCount<=21588 AND p.CreationDate>='2010-07-23 13:58:07'::timestamp AND p.CreationDate<='2014-08-26 03:01:33'::timestamp AND pl.CreationDate<='2014-09-05 11:19:00'::timestamp;

/*+ HashJoin(b p)
 SeqScan(b)
 SeqScan(p)
 Leading((b p)) */
SELECT COUNT(*) FROM badges as b, posts as p WHERE b.UserId = p.OwnerUserId AND p.PostTypeId=1 AND p.ViewCount>=0 AND p.ViewCount<=3948 AND p.CommentCount>=0 AND p.CommentCount<=10 AND p.CreationDate>='2010-09-02 05:45:28'::timestamp AND p.CreationDate<='2014-09-08 16:16:17'::timestamp;

/*+ MergeJoin(c p pl)
 HashJoin(p pl)
 IndexScan(c)
 SeqScan(p)
 SeqScan(pl)
 Leading((c (p pl))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE p.Id = c.PostId AND p.Id = pl.PostId AND c.CreationDate<='2014-09-13 23:52:30'::timestamp AND p.PostTypeId=1 AND p.AnswerCount>=0 AND p.CreationDate>='2010-07-19 19:27:13'::timestamp AND p.CreationDate<='2014-09-07 21:10:59'::timestamp AND pl.LinkTypeId=1 AND pl.CreationDate<='2014-08-27 20:41:58'::timestamp;

/*+ HashJoin(v c b u pl p)
 MergeJoin(c b u pl p)
 HashJoin(b u pl p)
 MergeJoin(u pl p)
 HashJoin(pl p)
 IndexScan(v)
 IndexScan(c)
 SeqScan(b)
 IndexScan(u)
 IndexScan(pl)
 SeqScan(p)
 Leading((v (c (b (u (pl p)))))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, votes as v, badges as b, users as u WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND c.CreationDate<='2014-09-11 13:51:01'::timestamp AND p.CommentCount<=21 AND p.CreationDate>='2010-08-19 14:15:28'::timestamp AND p.CreationDate<='2014-09-03 20:04:24'::timestamp AND pl.CreationDate<='2014-07-22 17:24:12'::timestamp AND u.Reputation>=1 AND u.Reputation<=7663;

/*+ HashJoin(ph v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(ph)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((ph (v (u p)))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, votes as v, users as u WHERE p.Id = ph.PostId AND u.Id = p.OwnerUserId AND p.Id = v.PostId AND ph.CreationDate>='2010-08-05 21:12:50'::timestamp AND ph.CreationDate<='2014-08-29 17:16:42'::timestamp AND p.CommentCount>=0 AND p.CommentCount<=13 AND v.VoteTypeId=2 AND u.UpVotes>=0 AND u.UpVotes<=608;

/*+ NestLoop(p pl u)
 HashJoin(p pl)
 SeqScan(p)
 SeqScan(pl)
 IndexScan(u)
 Leading(((p pl) u)) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, users as u WHERE p.Id = pl.PostId AND p.OwnerUserId = u.Id AND p.Score>=-4 AND p.Score<=29 AND p.CommentCount>=0 AND p.CommentCount<=20 AND pl.CreationDate='2014-09-09 18:13:46'::timestamp AND u.Reputation>=1 AND u.Views<=103;

/*+ HashJoin(p u ph)
 HashJoin(u ph)
 SeqScan(p)
 IndexScan(u)
 SeqScan(ph)
 Leading((p (u ph))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.UserId = p.OwnerUserId AND ph.UserId = u.Id AND p.Score>=-2 AND p.Score<=19 AND p.AnswerCount=0 AND p.CommentCount<=17 AND p.CreationDate<='2014-09-06 18:24:48'::timestamp AND u.Reputation>=1 AND u.DownVotes>=0;

/*+ MergeJoin(v p c u)
 HashJoin(p c u)
 HashJoin(c u)
 IndexScan(v)
 SeqScan(p)
 SeqScan(c)
 IndexScan(u)
 Leading((v (p (c u)))) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = v.UserId AND c.Score=0 AND p.PostTypeId=1 AND p.ViewCount>=0 AND p.ViewCount<=17062 AND p.AnswerCount>=0 AND v.CreationDate>='2010-07-20 00:00:00'::timestamp AND u.UpVotes=2;

/*+ MergeJoin(c u v p)
 MergeJoin(c u v)
 NestLoop(c u)
 SeqScan(c)
 IndexScan(u)
 IndexScan(v)
 SeqScan(p)
 Leading((((c u) v) p)) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = v.UserId AND c.CreationDate<='2014-09-04 08:04:31'::timestamp AND p.CreationDate<='2014-09-08 16:01:17'::timestamp AND v.CreationDate>='2010-08-03 00:00:00'::timestamp AND u.Views>=0 AND u.Views<=1673 AND u.UpVotes>=0 AND u.UpVotes<=238;

/*+ HashJoin(c ph u b)
 HashJoin(ph u b)
 HashJoin(u b)
 SeqScan(c)
 SeqScan(ph)
 IndexScan(u)
 SeqScan(b)
 Leading((c (ph (u b)))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = ph.UserId AND u.Id = b.UserId AND ph.PostHistoryTypeId=2 AND u.Reputation>=1 AND u.Reputation<=391 AND u.Views>=0 AND u.Views<=30 AND u.DownVotes<=30 AND u.CreationDate>='2010-08-09 20:28:47'::timestamp;

/*+ HashJoin(c p u)
 MergeJoin(p u)
 SeqScan(c)
 SeqScan(p)
 IndexScan(u)
 Leading((c (p u))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.UserId = u.Id AND u.Id = p.OwnerUserId AND p.PostTypeId=1 AND p.AnswerCount>=0 AND p.CreationDate>='2010-09-13 15:14:47'::timestamp AND p.CreationDate<='2014-09-11 19:00:08'::timestamp AND u.Reputation>=1 AND u.Reputation<=186 AND u.UpVotes<=16;

/*+ MergeJoin(v b p u)
 HashJoin(b p u)
 NestLoop(p u)
 IndexScan(v)
 SeqScan(b)
 SeqScan(p)
 IndexScan(u)
 Leading((v (b (p u)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE u.Id = v.UserId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.FavoriteCount>=0 AND p.FavoriteCount<=21 AND u.Reputation>=1 AND u.Reputation<=153 AND u.Views<=75 AND u.DownVotes>=0 AND u.DownVotes<=3;

/*+ HashJoin(ph pl p)
 HashJoin(pl p)
 SeqScan(ph)
 IndexScan(pl)
 SeqScan(p)
 Leading((ph (pl p))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph WHERE p.Id = pl.PostId AND pl.PostId = ph.PostId AND p.Score=0 AND p.ViewCount>=0 AND p.FavoriteCount>=0 AND pl.CreationDate>='2011-01-23 21:02:17'::timestamp AND pl.CreationDate<='2014-08-18 17:46:44'::timestamp AND ph.PostHistoryTypeId=2 AND ph.CreationDate>='2010-09-24 02:56:56'::timestamp;

/*+ MergeJoin(u c p pl)
 HashJoin(c p pl)
 HashJoin(p pl)
 IndexScan(u)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 Leading((u (c (p pl)))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, users as u WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.OwnerUserId = u.Id AND p.Score>=-3 AND p.Score<=16 AND p.CommentCount>=0 AND p.CommentCount<=12 AND pl.LinkTypeId=1 AND pl.CreationDate>='2010-08-13 17:42:32'::timestamp AND u.UpVotes=1;

/*+ HashJoin(c p pl)
 HashJoin(p pl)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 Leading((c (p pl))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE c.UserId = p.OwnerUserId AND p.Id = pl.PostId AND p.PostTypeId=1 AND p.ViewCount>=0 AND p.AnswerCount>=0 AND p.AnswerCount<=3 AND p.CreationDate>='2010-08-15 12:30:19'::timestamp AND p.CreationDate<='2014-09-12 10:36:18'::timestamp AND pl.LinkTypeId=1;

/*+ HashJoin(ph c p)
 HashJoin(c p)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(p)
 Leading((ph (c p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph WHERE p.Id = c.PostId AND p.Id = ph.PostId AND c.Score=0 AND c.CreationDate>='2010-07-19 19:59:04'::timestamp AND c.CreationDate<='2014-09-03 02:30:52'::timestamp AND p.PostTypeId=1 AND p.AnswerCount>=0 AND ph.CreationDate>='2010-08-13 05:51:00'::timestamp AND ph.CreationDate<='2014-09-11 09:08:23'::timestamp;

/*+ HashJoin(ph u c pl p)
 HashJoin(u c pl p)
 HashJoin(c pl p)
 HashJoin(pl p)
 SeqScan(ph)
 SeqScan(u)
 SeqScan(c)
 SeqScan(pl)
 SeqScan(p)
 Leading((ph (u (c (pl p))))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, users as u WHERE p.Id = pl.RelatedPostId AND pl.RelatedPostId = c.PostId AND pl.RelatedPostId = ph.PostId AND u.Id= c.UserId AND p.ViewCount>=0 AND p.CreationDate>='2010-08-09 13:36:43'::timestamp AND p.CreationDate<='2014-09-10 20:39:36'::timestamp AND pl.LinkTypeId=1 AND ph.CreationDate>='2010-07-19 19:26:04'::timestamp AND u.Views>=0 AND u.DownVotes>=0;

