/*+ HashJoin(c v u)
 MergeJoin(v u)
 SeqScan(c)
 SeqScan(v)
 IndexScan(u)
 Leading((c (v u))) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND v.BountyAmount<=100 AND u.DownVotes>=0 AND u.CreationDate<='2014-09-13 16:29:11'::timestamp;

/*+ HashJoin(u pl p)
 MergeJoin(pl p)
 IndexScan(u)
 SeqScan(pl)
 IndexScan(p)
 Leading((u (pl p))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, users as u WHERE p.Id = pl.PostId AND p.OwnerUserId = u.Id AND p.CreationDate>='2010-07-19 19:30:07'::timestamp AND u.Views>=0 AND u.UpVotes>=0;

/*+ HashJoin(ph p c)
 HashJoin(ph p)
 SeqScan(ph)
 IndexScan(p)
 SeqScan(c)
 Leading(((ph p) c)) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph WHERE p.Id = c.PostId AND p.Id = ph.PostId AND c.CreationDate>='2010-07-21 15:50:24'::timestamp AND c.CreationDate<='2014-09-10 13:35:42'::timestamp AND ph.PostHistoryTypeId=25;

/*+ HashJoin(c pl)
 SeqScan(c)
 SeqScan(pl)
 Leading((c pl)) */
SELECT COUNT(*) FROM comments as c, postLinks as pl WHERE c.PostId= pl.PostId AND c.Score=0 AND c.CreationDate<='2014-09-10 21:13:16'::timestamp AND pl.LinkTypeId=1;

/*+ HashJoin(c p u)
 HashJoin(c p)
 SeqScan(c)
 IndexScan(p)
 SeqScan(u)
 Leading(((c p) u)) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.PostId = p.Id AND c.UserId = u.Id AND p.AnswerCount<=5 AND u.Reputation>=1 AND u.Views<=13;

/*+ HashJoin(v b)
 SeqScan(v)
 SeqScan(b)
 Leading((v b)) */
SELECT COUNT(*) FROM badges as b, votes as v WHERE b.UserId = v.UserId AND b.Date>='2010-07-27 09:13:47'::timestamp AND v.CreationDate>='2009-02-02 00:00:00'::timestamp AND v.CreationDate<='2014-09-12 00:00:00'::timestamp;

/*+ HashJoin(b c u)
 HashJoin(c u)
 SeqScan(b)
 SeqScan(c)
 SeqScan(u)
 Leading((b (c u))) */
SELECT COUNT(*) FROM comments as c, badges as b, users as u WHERE u.Id = c.UserId AND c.UserId = b.UserId AND c.Score=1 AND u.DownVotes>=0 AND u.UpVotes>=0;

/*+ MergeJoin(u pl p)
 HashJoin(pl p)
 IndexScan(u)
 SeqScan(pl)
 SeqScan(p)
 Leading((u (pl p))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, users as u WHERE p.Id = pl.PostId AND p.OwnerUserId = u.Id AND p.PostTypeId=1 AND p.AnswerCount=0 AND p.CreationDate<='2014-09-07 15:42:50'::timestamp;

/*+ HashJoin(c b)
 SeqScan(c)
 SeqScan(b)
 Leading((c b)) */
SELECT COUNT(*) FROM comments as c, badges as b WHERE c.UserId = b.UserId AND c.CreationDate>='2010-07-21 20:42:35'::timestamp AND b.Date>='2010-07-27 17:28:44'::timestamp AND b.Date<='2014-09-11 08:55:52'::timestamp;

/*+ HashJoin(c u ph)
 HashJoin(c u)
 IndexScan(c)
 SeqScan(u)
 SeqScan(ph)
 Leading(((c u) ph)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND c.Score=0 AND u.UpVotes>=0 AND u.UpVotes<=68;

/*+ HashJoin(ph c u)
 HashJoin(c u)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(u)
 Leading((ph (c u))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND c.CreationDate>='2010-07-27 17:59:21'::timestamp AND ph.PostHistoryTypeId=1 AND ph.CreationDate<='2014-09-09 08:13:01'::timestamp;

/*+ HashJoin(b v u)
 HashJoin(v u)
 SeqScan(b)
 SeqScan(v)
 SeqScan(u)
 Leading((b (v u))) */
SELECT COUNT(*) FROM votes as v, badges as b, users as u WHERE u.Id = v.UserId AND v.UserId = b.UserId AND v.BountyAmount>=0 AND b.Date>='2010-07-27 07:03:44'::timestamp AND u.CreationDate<='2014-07-24 12:29:07'::timestamp;

/*+ HashJoin(c u b)
 HashJoin(c u)
 SeqScan(c)
 IndexScan(u)
 SeqScan(b)
 Leading(((c u) b)) */
SELECT COUNT(*) FROM comments as c, badges as b, users as u WHERE u.Id = c.UserId AND c.UserId = b.UserId AND c.CreationDate>='2010-07-21 16:09:12'::timestamp AND c.CreationDate<='2014-09-02 01:20:43'::timestamp AND u.DownVotes>=0;

/*+ HashJoin(c u b)
 HashJoin(c u)
 SeqScan(c)
 IndexScan(u)
 SeqScan(b)
 Leading(((c u) b)) */
SELECT COUNT(*) FROM comments as c, badges as b, users as u WHERE u.Id = c.UserId AND c.UserId = b.UserId AND u.Reputation>=1 AND u.DownVotes>=0 AND u.CreationDate<='2014-08-28 12:15:56'::timestamp;

/*+ HashJoin(c pl)
 SeqScan(c)
 SeqScan(pl)
 Leading((c pl)) */
SELECT COUNT(*) FROM comments as c, postLinks as pl WHERE c.PostId= pl.PostId AND c.Score=0 AND c.CreationDate>='2009-03-03 20:11:14'::timestamp AND c.CreationDate<='2014-09-12 21:17:43'::timestamp;

/*+ HashJoin(v b)
 SeqScan(v)
 SeqScan(b)
 Leading((v b)) */
SELECT COUNT(*) FROM badges as b, votes as v WHERE b.UserId = v.UserId AND b.Date>='2010-07-20 14:39:11'::timestamp AND b.Date<='2014-08-29 18:20:49'::timestamp AND v.CreationDate>='2010-07-23 00:00:00'::timestamp;

/*+ HashJoin(ph pl p)
 HashJoin(pl p)
 SeqScan(ph)
 SeqScan(pl)
 SeqScan(p)
 Leading((ph (pl p))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph WHERE p.Id = pl.PostId AND pl.PostId = ph.PostId AND p.FavoriteCount<=3 AND pl.LinkTypeId=1 AND ph.PostHistoryTypeId=5;

/*+ HashJoin(v ph c)
 HashJoin(v ph)
 IndexScan(v)
 SeqScan(ph)
 SeqScan(c)
 Leading(((v ph) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v WHERE ph.PostId = c.PostId AND ph.PostId = v.PostId AND c.Score=0 AND ph.PostHistoryTypeId=2 AND v.VoteTypeId=2;

/*+ HashJoin(v p u)
 HashJoin(p u)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 Leading((v (p u))) */
SELECT COUNT(*) FROM votes as v, posts as p, users as u WHERE v.UserId = p.OwnerUserId AND p.OwnerUserId = u.Id AND p.PostTypeId=1 AND p.AnswerCount<=3 AND u.UpVotes=0;

/*+ HashJoin(v ph c pl)
 HashJoin(ph c pl)
 HashJoin(c pl)
 SeqScan(v)
 SeqScan(ph)
 IndexScan(c)
 IndexScan(pl)
 Leading((v (ph (c pl)))) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, postHistory as ph, votes as v WHERE pl.PostId = c.PostId AND c.PostId = ph.PostId AND ph.PostId = v.PostId AND c.CreationDate>='2010-08-13 21:25:20'::timestamp AND pl.CreationDate>='2010-10-27 10:02:57'::timestamp AND pl.CreationDate<='2014-08-08 14:18:00'::timestamp;

/*+ HashJoin(c b)
 IndexScan(c)
 SeqScan(b)
 Leading((c b)) */
SELECT COUNT(*) FROM comments as c, badges as b WHERE c.UserId = b.UserId AND c.CreationDate>='2010-08-12 20:07:21'::timestamp AND c.CreationDate<='2014-09-11 21:21:39'::timestamp AND b.Date<='2014-09-07 12:35:01'::timestamp;

/*+ HashJoin(u pl p)
 HashJoin(pl p)
 SeqScan(u)
 SeqScan(pl)
 IndexScan(p)
 Leading((u (pl p))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, users as u WHERE p.Id = pl.PostId AND p.OwnerUserId = u.Id AND p.CommentCount>=0 AND u.DownVotes>=0 AND u.DownVotes<=1;

/*+ HashJoin(v b)
 SeqScan(v)
 SeqScan(b)
 Leading((v b)) */
SELECT COUNT(*) FROM badges as b, votes as v WHERE b.UserId = v.UserId AND b.Date<='2014-09-05 15:52:43'::timestamp AND v.CreationDate>='2010-07-20 00:00:00'::timestamp AND v.CreationDate<='2014-09-12 00:00:00'::timestamp;

/*+ HashJoin(c p pl)
 HashJoin(p pl)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 Leading((c (p pl))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE c.UserId = p.OwnerUserId AND p.Id = pl.PostId AND c.Score=0 AND p.PostTypeId=1 AND p.CommentCount=1;

/*+ HashJoin(ph c p)
 MergeJoin(c p)
 SeqScan(ph)
 IndexScan(c)
 SeqScan(p)
 Leading((ph (c p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph WHERE p.Id = c.PostId AND p.Id = ph.PostId AND c.Score=1 AND p.PostTypeId=1 AND p.AnswerCount<=3;

/*+ HashJoin(ph c p)
 MergeJoin(c p)
 SeqScan(ph)
 IndexScan(c)
 SeqScan(p)
 Leading((ph (c p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph WHERE p.Id = c.PostId AND p.Id = ph.PostId AND p.PostTypeId=1 AND p.FavoriteCount>=0 AND p.FavoriteCount<=4;

/*+ HashJoin(v u b)
 MergeJoin(v u)
 SeqScan(v)
 IndexScan(u)
 SeqScan(b)
 Leading(((v u) b)) */
SELECT COUNT(*) FROM votes as v, badges as b, users as u WHERE u.Id = v.UserId AND v.UserId = b.UserId AND u.Views>=0 AND u.Views<=23 AND u.DownVotes<=1;

/*+ MergeJoin(c p pl)
 HashJoin(p pl)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 Leading((c (p pl))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE p.Id = c.PostId AND p.Id = pl.PostId AND c.Score=1 AND p.AnswerCount>=0 AND p.AnswerCount<=6;

/*+ HashJoin(c p u v)
 HashJoin(c p u)
 HashJoin(p u)
 SeqScan(c)
 SeqScan(p)
 SeqScan(u)
 SeqScan(v)
 Leading(((c (p u)) v)) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = v.UserId AND p.CommentCount>=0 AND p.CommentCount<=19 AND p.FavoriteCount<=9;

/*+ HashJoin(v c p pl)
 HashJoin(c p pl)
 HashJoin(c p)
 SeqScan(v)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 Leading((v ((c p) pl))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, votes as v WHERE p.Id = c.PostId AND c.PostId = pl.PostId AND pl.PostId = v.PostId AND p.CommentCount>=0 AND p.CommentCount<=8 AND pl.LinkTypeId=1;

/*+ HashJoin(c v u)
 HashJoin(v u)
 SeqScan(c)
 SeqScan(v)
 SeqScan(u)
 Leading((c (v u))) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND v.CreationDate>='2010-07-18 00:00:00'::timestamp AND v.CreationDate<='2014-09-13 00:00:00'::timestamp AND u.Reputation<=477;

/*+ HashJoin(v c p pl)
 HashJoin(c p pl)
 HashJoin(c p)
 SeqScan(v)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 Leading((v ((c p) pl))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, votes as v WHERE p.Id = c.PostId AND c.PostId = pl.PostId AND pl.PostId = v.PostId AND p.CommentCount>=0 AND p.CommentCount<=11 AND v.CreationDate<='2014-09-12 00:00:00'::timestamp;

/*+ HashJoin(b v)
 SeqScan(b)
 SeqScan(v)
 Leading((b v)) */
SELECT COUNT(*) FROM badges as b, votes as v WHERE b.UserId = v.UserId AND b.Date<='2014-08-02 16:12:36'::timestamp AND v.BountyAmount<=100 AND v.CreationDate>='2010-07-28 00:00:00'::timestamp;

/*+ HashJoin(v u ph c)
 HashJoin(v u ph)
 HashJoin(v u)
 SeqScan(v)
 IndexScan(u)
 SeqScan(ph)
 SeqScan(c)
 Leading((((v u) ph) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v, users as u WHERE u.Id = v.UserId AND v.UserId = ph.UserId AND ph.UserId =c.UserId AND ph.PostHistoryTypeId=3 AND u.UpVotes>=0 AND u.UpVotes<=22;

/*+ HashJoin(ph c p pl u)
 HashJoin(c p pl u)
 MergeJoin(c p pl)
 HashJoin(p pl)
 SeqScan(ph)
 IndexScan(c)
 SeqScan(p)
 SeqScan(pl)
 SeqScan(u)
 Leading((ph ((c (p pl)) u))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, users as u WHERE p.Id = pl.RelatedPostId AND pl.RelatedPostId = c.PostId AND pl.RelatedPostId = ph.PostId AND u.Id= c.UserId AND p.FavoriteCount=0 AND pl.CreationDate<='2014-09-11 18:15:17'::timestamp AND u.Views=0;

/*+ MergeJoin(c ph)
 SeqScan(c)
 IndexScan(ph)
 Leading((c ph)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph WHERE c.UserId = ph.UserId AND c.CreationDate='2013-06-05 12:50:44'::timestamp AND ph.PostHistoryTypeId=2 AND ph.CreationDate>='2010-08-19 04:47:46'::timestamp;

/*+ HashJoin(v pl p c b ph)
 HashJoin(v pl p c b)
 HashJoin(v pl p c)
 HashJoin(v pl p)
 HashJoin(pl p)
 SeqScan(v)
 SeqScan(pl)
 SeqScan(p)
 IndexScan(c)
 SeqScan(b)
 SeqScan(ph)
 Leading(((((v (pl p)) c) b) ph)) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, votes as v, badges as b WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.Id = ph.PostId AND p.Id = v.PostId AND b.UserId = c.UserId AND c.Score=0 AND c.CreationDate>='2010-08-09 21:50:44'::timestamp AND p.FavoriteCount=1;

/*+ HashJoin(v c u)
 HashJoin(c u)
 SeqScan(v)
 SeqScan(c)
 IndexScan(u)
 Leading((v (c u))) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND c.PostId = v.PostId AND v.VoteTypeId=2 AND v.CreationDate>='2010-07-19 00:00:00'::timestamp AND v.CreationDate<='2014-09-10 00:00:00'::timestamp;

/*+ HashJoin(c v u)
 HashJoin(v u)
 SeqScan(c)
 SeqScan(v)
 SeqScan(u)
 Leading((c (v u))) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND c.CreationDate>='2010-07-21 12:20:54'::timestamp AND u.Reputation=152 AND u.CreationDate<='2014-09-10 02:26:20'::timestamp;

/*+ HashJoin(v ph c)
 HashJoin(v ph)
 IndexScan(v)
 IndexScan(ph)
 SeqScan(c)
 Leading(((v ph) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v WHERE ph.PostId = c.PostId AND ph.PostId = v.PostId AND ph.PostHistoryTypeId=5 AND ph.CreationDate>='2010-12-10 20:19:19'::timestamp AND ph.CreationDate<='2014-08-18 15:50:44'::timestamp;

/*+ HashJoin(ph c v p pl)
 HashJoin(c v p pl)
 HashJoin(v p pl)
 HashJoin(p pl)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(v)
 IndexScan(p)
 SeqScan(pl)
 Leading((ph (c (v (p pl))))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, votes as v WHERE p.Id = c.PostId AND p.Id = pl.PostId AND p.Id = ph.PostId AND p.Id = v.PostId AND c.CreationDate<='2014-09-12 07:44:03'::timestamp AND p.FavoriteCount<=21 AND v.VoteTypeId=2;

/*+ HashJoin(ph c u)
 MergeJoin(c u)
 SeqScan(ph)
 SeqScan(c)
 IndexScan(u)
 Leading((ph (c u))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND c.Score=0 AND c.CreationDate='2014-07-07 15:03:33'::timestamp AND ph.CreationDate<='2014-06-23 19:23:22'::timestamp;

/*+ MergeJoin(ph p pl)
 HashJoin(p pl)
 SeqScan(ph)
 SeqScan(p)
 SeqScan(pl)
 Leading((ph (p pl))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph WHERE p.Id = pl.PostId AND pl.PostId = ph.PostId AND p.AnswerCount<=8 AND p.CommentCount>=0 AND ph.PostHistoryTypeId=3;

/*+ HashJoin(c ph)
 SeqScan(c)
 SeqScan(ph)
 Leading((c ph)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph WHERE c.UserId = ph.UserId AND c.CreationDate>='2010-07-19 19:38:30'::timestamp AND c.CreationDate<='2014-08-26 08:48:58'::timestamp AND ph.PostHistoryTypeId=1;

/*+ HashJoin(c b u ph)
 HashJoin(c b u)
 MergeJoin(b u)
 IndexScan(c)
 SeqScan(b)
 SeqScan(u)
 IndexScan(ph)
 Leading(((c (b u)) ph)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = ph.UserId AND u.Id = b.UserId AND c.Score=0 AND u.Views>=0 AND u.DownVotes<=0;

/*+ HashJoin(b v u)
 MergeJoin(v u)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 Leading((b (v u))) */
SELECT COUNT(*) FROM votes as v, badges as b, users as u WHERE u.Id = v.UserId AND v.UserId = b.UserId AND u.DownVotes<=2 AND u.UpVotes>=0 AND u.UpVotes<=14;

/*+ HashJoin(v ph c pl)
 HashJoin(ph c pl)
 HashJoin(c pl)
 SeqScan(v)
 SeqScan(ph)
 IndexScan(c)
 SeqScan(pl)
 Leading((v (ph (c pl)))) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, postHistory as ph, votes as v WHERE pl.PostId = c.PostId AND c.PostId = ph.PostId AND ph.PostId = v.PostId AND c.Score=0 AND pl.LinkTypeId=1 AND v.VoteTypeId=2;

/*+ HashJoin(ph c u)
 HashJoin(c u)
 SeqScan(ph)
 SeqScan(c)
 IndexScan(u)
 Leading((ph (c u))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND c.Score=0 AND u.DownVotes<=1 AND u.CreationDate<='2014-09-04 08:00:36'::timestamp;

/*+ HashJoin(c b)
 IndexScan(c)
 SeqScan(b)
 Leading((c b)) */
SELECT COUNT(*) FROM comments as c, badges as b WHERE c.UserId = b.UserId AND c.Score=1 AND b.Date>='2010-07-21 18:38:12'::timestamp AND b.Date<='2014-09-10 20:00:26'::timestamp;

/*+ HashJoin(c u b)
 HashJoin(c u)
 SeqScan(c)
 IndexScan(u)
 SeqScan(b)
 Leading(((c u) b)) */
SELECT COUNT(*) FROM comments as c, badges as b, users as u WHERE u.Id = c.UserId AND c.UserId = b.UserId AND u.Reputation<=178 AND u.Views<=55 AND u.UpVotes<=93;

/*+ HashJoin(ph c u)
 HashJoin(c u)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(u)
 Leading((ph (c u))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND ph.PostHistoryTypeId=3 AND u.DownVotes<=2 AND u.UpVotes<=26;

/*+ MergeJoin(b u)
 IndexScan(b)
 SeqScan(u)
 Leading((b u)) */
SELECT COUNT(*) FROM badges as b, users as u WHERE b.UserId= u.Id AND b.Date>='2010-09-20 03:59:15'::timestamp AND b.Date<='2014-09-11 01:28:43'::timestamp AND u.Reputation=414;

/*+ HashJoin(v c p pl)
 HashJoin(c p pl)
 HashJoin(c p)
 SeqScan(v)
 SeqScan(c)
 IndexScan(p)
 IndexScan(pl)
 Leading((v ((c p) pl))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, votes as v WHERE p.Id = c.PostId AND c.PostId = pl.PostId AND pl.PostId = v.PostId AND p.Score=3 AND p.CommentCount>=0 AND p.CommentCount<=13;

/*+ HashJoin(ph c p)
 MergeJoin(c p)
 SeqScan(ph)
 IndexScan(c)
 SeqScan(p)
 Leading((ph (c p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph WHERE p.Id = c.PostId AND p.Id = ph.PostId AND p.ViewCount>=0 AND p.ViewCount<=939 AND p.CommentCount<=16;

/*+ HashJoin(c pl)
 SeqScan(c)
 SeqScan(pl)
 Leading((c pl)) */
SELECT COUNT(*) FROM comments as c, postLinks as pl WHERE c.PostId= pl.PostId AND c.CreationDate<='2014-08-26 15:21:28'::timestamp AND pl.LinkTypeId=1 AND pl.CreationDate<='2014-08-30 14:53:54'::timestamp;

/*+ HashJoin(c p pl)
 MergeJoin(p pl)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 Leading((c (p pl))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE c.UserId = p.OwnerUserId AND p.Id = pl.PostId AND p.ViewCount>=0 AND p.FavoriteCount>=0 AND p.FavoriteCount<=4;

/*+ HashJoin(c p)
 SeqScan(c)
 IndexScan(p)
 Leading((c p)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND c.CreationDate<='2014-09-14 01:49:32'::timestamp AND p.Score>=-4 AND p.ViewCount>=0;

/*+ HashJoin(b p)
 SeqScan(b)
 SeqScan(p)
 Leading((b p)) */
SELECT COUNT(*) FROM badges as b, posts as p WHERE b.UserId = p.OwnerUserId AND p.PostTypeId=1 AND p.FavoriteCount>=0 AND p.FavoriteCount<=6;

/*+ HashJoin(c u b)
 MergeJoin(c u)
 IndexScan(c)
 SeqScan(u)
 SeqScan(b)
 Leading(((c u) b)) */
SELECT COUNT(*) FROM comments as c, badges as b, users as u WHERE u.Id = c.UserId AND c.UserId = b.UserId AND c.CreationDate>='2010-07-21 11:58:10'::timestamp AND u.DownVotes>=0 AND u.UpVotes>=0;

/*+ HashJoin(c pl)
 SeqScan(c)
 SeqScan(pl)
 Leading((c pl)) */
SELECT COUNT(*) FROM comments as c, postLinks as pl WHERE c.PostId= pl.PostId AND c.CreationDate>='2010-07-20 10:19:14'::timestamp AND pl.CreationDate>='2011-01-28 21:58:45'::timestamp AND pl.CreationDate<='2014-08-14 22:06:05'::timestamp;

/*+ HashJoin(c u b)
 HashJoin(c u)
 SeqScan(c)
 IndexScan(u)
 SeqScan(b)
 Leading(((c u) b)) */
SELECT COUNT(*) FROM comments as c, badges as b, users as u WHERE u.Id = c.UserId AND c.UserId = b.UserId AND u.DownVotes>=0 AND u.UpVotes>=0 AND u.CreationDate<='2014-08-30 17:23:33'::timestamp;

/*+ HashJoin(c ph)
 SeqScan(c)
 SeqScan(ph)
 Leading((c ph)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph WHERE c.UserId = ph.UserId AND c.CreationDate>='2010-07-19 20:23:01'::timestamp AND ph.PostHistoryTypeId=3 AND ph.CreationDate<='2014-08-13 00:49:50'::timestamp;

/*+ HashJoin(c v)
 SeqScan(c)
 SeqScan(v)
 Leading((c v)) */
SELECT COUNT(*) FROM comments as c, votes as v WHERE c.UserId = v.UserId AND c.CreationDate>='2010-08-19 06:58:32'::timestamp AND c.CreationDate<='2014-09-07 16:55:12'::timestamp AND v.CreationDate<='2014-09-13 00:00:00'::timestamp;

/*+ HashJoin(ph c p)
 MergeJoin(c p)
 SeqScan(ph)
 IndexScan(c)
 SeqScan(p)
 Leading((ph (c p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph WHERE p.Id = c.PostId AND p.Id = ph.PostId AND c.CreationDate<='2014-08-28 15:59:02'::timestamp AND p.PostTypeId=1 AND ph.CreationDate<='2014-09-04 01:09:05'::timestamp;

/*+ HashJoin(v ph c pl)
 HashJoin(ph c pl)
 HashJoin(c pl)
 SeqScan(v)
 SeqScan(ph)
 IndexScan(c)
 SeqScan(pl)
 Leading((v (ph (c pl)))) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, postHistory as ph, votes as v WHERE pl.PostId = c.PostId AND c.PostId = ph.PostId AND ph.PostId = v.PostId AND c.Score=0 AND c.CreationDate>='2010-12-02 08:46:00'::timestamp AND ph.CreationDate<='2014-09-04 15:45:11'::timestamp;

/*+ HashJoin(b u)
 SeqScan(b)
 IndexScan(u)
 Leading((b u)) */
SELECT COUNT(*) FROM badges as b, users as u WHERE b.UserId= u.Id AND u.Views>=0 AND u.Views<=121 AND u.CreationDate<='2014-08-29 13:12:31'::timestamp;

/*+ MergeJoin(ph u p b)
 MergeJoin(ph u p)
 NestLoop(u p)
 IndexScan(ph)
 IndexScan(u)
 IndexScan(p)
 SeqScan(b)
 Leading(((ph (u p)) b)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u, badges as b WHERE u.Id = p.OwnerUserId AND p.OwnerUserId = ph.UserId AND ph.UserId = b.UserId AND u.Views>=0 AND u.DownVotes>=0 AND u.CreationDate<='2014-09-01 02:14:24'::timestamp;

/*+ HashJoin(ph c pl v)
 HashJoin(ph c pl)
 HashJoin(c pl)
 SeqScan(ph)
 IndexScan(c)
 IndexScan(pl)
 SeqScan(v)
 Leading(((ph (c pl)) v)) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, postHistory as ph, votes as v WHERE pl.PostId = c.PostId AND c.PostId = ph.PostId AND ph.PostId = v.PostId AND c.Score=0 AND pl.LinkTypeId=1 AND pl.CreationDate<='2014-07-23 01:56:37'::timestamp;

/*+ HashJoin(c ph)
 SeqScan(c)
 SeqScan(ph)
 Leading((c ph)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph WHERE c.UserId = ph.UserId AND c.Score=0 AND ph.PostHistoryTypeId=3 AND ph.CreationDate<='2014-09-08 05:05:50'::timestamp;

/*+ HashJoin(c u b ph)
 HashJoin(c u b)
 HashJoin(c u)
 IndexScan(c)
 SeqScan(u)
 SeqScan(b)
 IndexScan(ph)
 Leading((((c u) b) ph)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = ph.UserId AND u.Id = b.UserId AND u.Reputation<=576 AND u.CreationDate>='2011-03-10 03:28:23'::timestamp AND u.CreationDate<='2014-08-28 16:25:00'::timestamp;

/*+ NestLoop(c p)
 SeqScan(c)
 IndexScan(p)
 Leading((c p)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND c.Score=1 AND c.CreationDate>='2010-07-23 16:30:00'::timestamp AND p.CommentCount<=17;

/*+ HashJoin(b u)
 SeqScan(b)
 IndexScan(u)
 Leading((b u)) */
SELECT COUNT(*) FROM badges as b, users as u WHERE b.UserId= u.Id AND b.Date>='2010-09-02 04:34:05'::timestamp AND b.Date<='2014-08-28 06:18:00'::timestamp AND u.CreationDate>='2011-05-25 04:30:01'::timestamp;

/*+ HashJoin(c u b ph)
 HashJoin(c u b)
 HashJoin(c u)
 IndexScan(c)
 SeqScan(u)
 SeqScan(b)
 IndexScan(ph)
 Leading((((c u) b) ph)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = ph.UserId AND u.Id = b.UserId AND u.Reputation<=157 AND u.Views>=0 AND u.CreationDate<='2014-08-15 15:51:54'::timestamp;

/*+ HashJoin(c v)
 SeqScan(c)
 SeqScan(v)
 Leading((c v)) */
SELECT COUNT(*) FROM comments as c, votes as v WHERE c.UserId = v.UserId AND c.CreationDate<='2014-09-09 19:58:29'::timestamp AND v.BountyAmount>=0 AND v.CreationDate<='2014-09-02 00:00:00'::timestamp;

/*+ HashJoin(v ph c)
 MergeJoin(v ph)
 IndexScan(v)
 SeqScan(ph)
 SeqScan(c)
 Leading(((v ph) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v WHERE ph.PostId = c.PostId AND ph.PostId = v.PostId AND ph.PostHistoryTypeId=3 AND v.VoteTypeId=2 AND v.CreationDate>='2010-07-20 00:00:00'::timestamp;

/*+ HashJoin(ph c p)
 MergeJoin(c p)
 SeqScan(ph)
 IndexScan(c)
 SeqScan(p)
 Leading((ph (c p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph WHERE p.Id = c.PostId AND p.Id = ph.PostId AND c.Score=0 AND p.Score>=0 AND p.ViewCount>=0;

/*+ HashJoin(c u b ph)
 HashJoin(c u b)
 HashJoin(c u)
 IndexScan(c)
 SeqScan(u)
 SeqScan(b)
 IndexScan(ph)
 Leading((((c u) b) ph)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = ph.UserId AND u.Id = b.UserId AND u.Reputation>=1 AND u.Reputation<=1382 AND u.CreationDate<='2014-08-15 16:43:16'::timestamp;

/*+ HashJoin(c pl)
 SeqScan(c)
 SeqScan(pl)
 Leading((c pl)) */
SELECT COUNT(*) FROM comments as c, postLinks as pl WHERE c.PostId= pl.PostId AND c.Score=1 AND c.CreationDate>='2010-07-28 05:54:26'::timestamp AND c.CreationDate<='2014-09-12 10:01:05'::timestamp;

/*+ HashJoin(ph p c)
 HashJoin(ph p)
 SeqScan(ph)
 IndexScan(p)
 SeqScan(c)
 Leading(((ph p) c)) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph WHERE p.Id = c.PostId AND p.Id = ph.PostId AND c.CreationDate>='2010-07-23 10:37:02'::timestamp AND p.AnswerCount>=0 AND ph.PostHistoryTypeId=5;

/*+ HashJoin(ph c pl v)
 HashJoin(ph c pl)
 HashJoin(c pl)
 SeqScan(ph)
 IndexScan(c)
 SeqScan(pl)
 SeqScan(v)
 Leading(((ph (c pl)) v)) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, postHistory as ph, votes as v WHERE pl.PostId = c.PostId AND c.PostId = ph.PostId AND ph.PostId = v.PostId AND c.CreationDate<='2014-09-10 22:01:55'::timestamp AND pl.LinkTypeId=1 AND v.BountyAmount<=50;

/*+ HashJoin(b p)
 SeqScan(b)
 SeqScan(p)
 Leading((b p)) */
SELECT COUNT(*) FROM badges as b, posts as p WHERE b.UserId = p.OwnerUserId AND p.AnswerCount=0 AND p.CommentCount<=9 AND p.CreationDate>='2010-07-21 13:53:13'::timestamp;

/*+ HashJoin(c u b)
 HashJoin(c u)
 SeqScan(c)
 IndexScan(u)
 SeqScan(b)
 Leading(((c u) b)) */
SELECT COUNT(*) FROM comments as c, badges as b, users as u WHERE u.Id = c.UserId AND c.UserId = b.UserId AND b.Date>='2010-08-10 17:14:51'::timestamp AND b.Date<='2014-08-19 10:27:18'::timestamp AND u.Reputation=1;

/*+ NestLoop(c p)
 SeqScan(c)
 IndexScan(p)
 Leading((c p)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND c.Score=1 AND p.PostTypeId=2 AND p.CommentCount>=0;

/*+ HashJoin(c b)
 SeqScan(c)
 IndexScan(b)
 Leading((c b)) */
SELECT COUNT(*) FROM comments as c, badges as b WHERE c.UserId = b.UserId AND c.Score=0 AND c.CreationDate>='2010-08-19 18:08:06'::timestamp AND c.CreationDate<='2014-09-13 09:51:24'::timestamp;

/*+ HashJoin(ph p u)
 HashJoin(ph p)
 SeqScan(ph)
 IndexScan(p)
 SeqScan(u)
 Leading(((ph p) u)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.UserId = p.OwnerUserId AND ph.UserId = u.Id AND ph.CreationDate<='2014-08-17 07:17:35'::timestamp AND p.PostTypeId=2 AND u.DownVotes>=0;

/*+ HashJoin(c p pl)
 HashJoin(p pl)
 SeqScan(c)
 IndexScan(p)
 SeqScan(pl)
 Leading((c (p pl))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE p.Id = c.PostId AND p.Id = pl.PostId AND c.CreationDate>='2010-07-21 17:52:02'::timestamp AND p.Score<=31 AND p.CommentCount>=0;

/*+ NestLoop(b u)
 SeqScan(b)
 IndexScan(u)
 Leading((b u)) */
SELECT COUNT(*) FROM badges as b, users as u WHERE b.UserId= u.Id AND b.Date='2011-08-29 04:11:14'::timestamp AND u.DownVotes<=2 AND u.CreationDate>='2010-07-19 19:03:57'::timestamp;

/*+ HashJoin(v b c pl p u)
 HashJoin(b c pl p u)
 MergeJoin(c pl p u)
 HashJoin(c pl p)
 MergeJoin(pl p)
 SeqScan(v)
 SeqScan(b)
 IndexScan(c)
 SeqScan(pl)
 SeqScan(p)
 SeqScan(u)
 Leading((v (b ((c (pl p)) u)))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, votes as v, badges as b, users as u WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND c.CreationDate<='2014-09-13 08:44:05'::timestamp AND p.CommentCount<=8 AND u.Views>=0;

/*+ HashJoin(ph p pl)
 HashJoin(p pl)
 SeqScan(ph)
 SeqScan(p)
 SeqScan(pl)
 Leading((ph (p pl))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph WHERE p.Id = pl.PostId AND pl.PostId = ph.PostId AND p.PostTypeId=1 AND p.CommentCount=0 AND ph.CreationDate<='2014-08-13 14:25:16'::timestamp;

/*+ HashJoin(c p ph)
 MergeJoin(c p)
 IndexScan(c)
 IndexScan(p)
 SeqScan(ph)
 Leading(((c p) ph)) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph WHERE p.Id = c.PostId AND p.Id = ph.PostId AND c.CreationDate>='2010-08-13 03:38:38'::timestamp AND p.CreationDate>='2010-07-28 04:21:06'::timestamp AND p.CreationDate<='2014-09-06 02:56:50'::timestamp;

/*+ HashJoin(v u b ph)
 HashJoin(v u b)
 HashJoin(u b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(b)
 SeqScan(ph)
 Leading(((v (u b)) ph)) */
SELECT COUNT(*) FROM postHistory as ph, votes as v, users as u, badges as b WHERE u.Id = ph.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND u.Reputation<=844 AND u.UpVotes>=0 AND u.UpVotes<=41;

/*+ HashJoin(v c u)
 HashJoin(c u)
 SeqScan(v)
 SeqScan(c)
 SeqScan(u)
 Leading((v (c u))) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND c.PostId = v.PostId AND c.Score=0 AND v.CreationDate>='2010-07-19 00:00:00'::timestamp AND u.CreationDate<='2014-09-11 20:30:23'::timestamp;

/*+ HashJoin(b p)
 SeqScan(b)
 SeqScan(p)
 Leading((b p)) */
SELECT COUNT(*) FROM badges as b, posts as p WHERE b.UserId = p.OwnerUserId AND b.Date<='2014-09-01 15:56:24'::timestamp AND p.PostTypeId=1 AND p.AnswerCount>=0;

/*+ HashJoin(c ph v u)
 MergeJoin(ph v u)
 HashJoin(v u)
 SeqScan(c)
 SeqScan(ph)
 IndexScan(v)
 SeqScan(u)
 Leading((c (ph (v u)))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v, users as u WHERE u.Id = v.UserId AND v.UserId = ph.UserId AND ph.UserId =c.UserId AND c.CreationDate>='2010-07-19 20:11:13'::timestamp AND u.Views>=0 AND u.Views<=110;

/*+ HashJoin(b p)
 SeqScan(b)
 SeqScan(p)
 Leading((b p)) */
SELECT COUNT(*) FROM badges as b, posts as p WHERE b.UserId = p.OwnerUserId AND p.ViewCount>=0 AND p.ViewCount<=35854 AND p.CommentCount=0;

/*+ HashJoin(c b)
 SeqScan(c)
 SeqScan(b)
 Leading((c b)) */
SELECT COUNT(*) FROM comments as c, badges as b WHERE c.UserId = b.UserId AND c.Score=0 AND c.CreationDate>='2010-08-18 20:55:13'::timestamp AND c.CreationDate<='2014-09-12 13:47:16'::timestamp;

/*+ NestLoop(c p)
 SeqScan(c)
 IndexScan(p)
 Leading((c p)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND c.CreationDate='2013-10-16 15:16:18'::timestamp AND p.Score>=-6 AND p.Score<=47;

/*+ HashJoin(c v u)
 MergeJoin(v u)
 SeqScan(c)
 SeqScan(v)
 IndexScan(u)
 Leading((c (v u))) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND v.BountyAmount<=100 AND u.UpVotes>=0 AND u.UpVotes<=1146;

/*+ HashJoin(b u)
 SeqScan(b)
 SeqScan(u)
 Leading((b u)) */
SELECT COUNT(*) FROM badges as b, users as u WHERE b.UserId= u.Id AND u.Reputation>=1 AND u.Reputation<=210 AND u.UpVotes<=2319;

/*+ HashJoin(ph c u)
 HashJoin(c u)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(u)
 Leading((ph (c u))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND c.Score=0 AND ph.PostHistoryTypeId=3 AND u.UpVotes<=105;

/*+ HashJoin(c p u)
 MergeJoin(c p)
 SeqScan(c)
 IndexScan(p)
 SeqScan(u)
 Leading(((c p) u)) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.PostId = p.Id AND c.UserId = u.Id AND c.CreationDate='2012-06-06 00:02:42'::timestamp AND u.Views>=0 AND u.CreationDate<='2014-09-02 09:44:18'::timestamp;

/*+ HashJoin(c b)
 SeqScan(c)
 IndexScan(b)
 Leading((c b)) */
SELECT COUNT(*) FROM comments as c, badges as b WHERE c.UserId = b.UserId AND c.Score=0 AND b.Date>='2010-09-17 14:04:06'::timestamp AND b.Date<='2014-09-10 08:13:42'::timestamp;

/*+ MergeJoin(c p u)
 HashJoin(c p)
 SeqScan(c)
 IndexScan(p)
 IndexScan(u)
 Leading(((c p) u)) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.PostId = p.Id AND c.UserId = u.Id AND c.Score=0 AND u.Reputation>=1 AND u.Reputation<=2951;

/*+ MergeJoin(c u p v b)
 MergeJoin(c u p v)
 HashJoin(c u p)
 MergeJoin(c u)
 IndexScan(c)
 IndexScan(u)
 SeqScan(p)
 SeqScan(v)
 SeqScan(b)
 Leading(((((c u) p) v) b)) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, badges as b, users as u WHERE u.Id =c.UserId AND c.UserId = p.OwnerUserId AND p.OwnerUserId = v.UserId AND v.UserId = b.UserId AND u.DownVotes>=0 AND u.UpVotes<=121 AND u.CreationDate<='2014-08-25 23:33:32'::timestamp;

/*+ HashJoin(v ph c)
 HashJoin(v ph)
 IndexScan(v)
 IndexScan(ph)
 IndexScan(c)
 Leading(((v ph) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v WHERE ph.PostId = c.PostId AND ph.PostId = v.PostId AND c.CreationDate<='2014-09-06 04:10:51'::timestamp AND ph.PostHistoryTypeId=2 AND ph.CreationDate>='2010-12-14 05:45:34'::timestamp;

/*+ HashJoin(ph p pl)
 HashJoin(p pl)
 SeqScan(ph)
 IndexScan(p)
 SeqScan(pl)
 Leading((ph (p pl))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph WHERE p.Id = pl.PostId AND pl.PostId = ph.PostId AND p.CommentCount>=0 AND p.CreationDate>='2010-09-02 02:00:45'::timestamp AND pl.CreationDate<='2014-07-22 23:48:56'::timestamp;

/*+ HashJoin(b p)
 SeqScan(b)
 SeqScan(p)
 Leading((b p)) */
SELECT COUNT(*) FROM badges as b, posts as p WHERE b.UserId = p.OwnerUserId AND b.Date>='2010-10-01 18:05:14'::timestamp AND b.Date<='2014-08-22 11:45:57'::timestamp AND p.ViewCount<=4712;

/*+ HashJoin(c b)
 SeqScan(c)
 SeqScan(b)
 Leading((c b)) */
SELECT COUNT(*) FROM comments as c, badges as b WHERE c.UserId = b.UserId AND c.Score=0 AND b.Date>='2010-07-20 14:34:12'::timestamp AND b.Date<='2014-08-26 23:10:40'::timestamp;

/*+ HashJoin(p c u)
 MergeJoin(c u)
 SeqScan(p)
 SeqScan(c)
 IndexScan(u)
 Leading((p (c u))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.PostId = p.Id AND c.UserId = u.Id AND c.Score=0 AND c.CreationDate='2014-05-25 02:51:16'::timestamp AND u.CreationDate>='2010-07-19 19:52:32'::timestamp;

/*+ HashJoin(ph c u)
 HashJoin(c u)
 SeqScan(ph)
 IndexScan(c)
 SeqScan(u)
 Leading((ph (c u))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND ph.PostHistoryTypeId=2 AND u.UpVotes>=0 AND u.UpVotes<=326;

/*+ HashJoin(c pl)
 SeqScan(c)
 SeqScan(pl)
 Leading((c pl)) */
SELECT COUNT(*) FROM comments as c, postLinks as pl WHERE c.PostId= pl.PostId AND c.CreationDate>='2010-07-27 13:41:47'::timestamp AND c.CreationDate<='2014-09-10 15:16:14'::timestamp AND pl.LinkTypeId=1;

/*+ NestLoop(p u)
 SeqScan(p)
 IndexScan(u)
 Leading((p u)) */
SELECT COUNT(*) FROM posts as p, users as u WHERE p.OwnerUserId= u.Id AND p.FavoriteCount=0 AND u.Reputation<=169 AND u.Views>=0;

/*+ HashJoin(ph p u)
 HashJoin(p u)
 SeqScan(ph)
 SeqScan(p)
 SeqScan(u)
 Leading((ph (p u))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.PostId = p.Id AND p.OwnerUserId = u.Id AND p.AnswerCount>=0 AND p.CommentCount<=12 AND u.DownVotes<=0;

/*+ HashJoin(ph c p pl u)
 HashJoin(c p pl u)
 HashJoin(c p pl)
 MergeJoin(p pl)
 SeqScan(ph)
 IndexScan(c)
 IndexScan(p)
 SeqScan(pl)
 SeqScan(u)
 Leading((ph ((c (p pl)) u))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, users as u WHERE p.Id = pl.RelatedPostId AND pl.RelatedPostId = c.PostId AND pl.RelatedPostId = ph.PostId AND u.Id= c.UserId AND p.AnswerCount<=3 AND pl.CreationDate<='2014-08-31 16:50:53'::timestamp AND ph.PostHistoryTypeId=25;

/*+ HashJoin(c p u)
 MergeJoin(p u)
 SeqScan(c)
 SeqScan(p)
 IndexScan(u)
 Leading((c (p u))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.UserId = u.Id AND u.Id = p.OwnerUserId AND p.Score<=18 AND p.ViewCount>=0 AND u.Reputation<=1067;

/*+ HashJoin(b u)
 SeqScan(b)
 IndexScan(u)
 Leading((b u)) */
SELECT COUNT(*) FROM badges as b, users as u WHERE b.UserId= u.Id AND u.Reputation<=1994 AND u.DownVotes>=0 AND u.DownVotes<=18;

/*+ HashJoin(b u)
 SeqScan(b)
 SeqScan(u)
 Leading((b u)) */
SELECT COUNT(*) FROM badges as b, users as u WHERE b.UserId= u.Id AND b.Date>='2010-12-09 01:22:23'::timestamp AND u.CreationDate>='2011-01-04 12:53:58'::timestamp AND u.CreationDate<='2014-09-06 17:48:56'::timestamp;

/*+ HashJoin(c v u)
 HashJoin(v u)
 SeqScan(c)
 SeqScan(v)
 SeqScan(u)
 Leading((c (v u))) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND v.CreationDate>='2010-07-20 00:00:00'::timestamp AND u.Reputation>=1 AND u.UpVotes<=37;

/*+ HashJoin(p v u)
 HashJoin(v u)
 SeqScan(p)
 SeqScan(v)
 SeqScan(u)
 Leading((p (v u))) */
SELECT COUNT(*) FROM votes as v, posts as p, users as u WHERE v.PostId = p.Id AND v.UserId = u.Id AND p.Score>=-2 AND p.Score<=23 AND p.CommentCount>=0;

/*+ HashJoin(b u)
 SeqScan(b)
 SeqScan(u)
 Leading((b u)) */
SELECT COUNT(*) FROM badges as b, users as u WHERE b.UserId= u.Id AND u.Reputation>=1 AND u.CreationDate>='2010-10-22 22:40:35'::timestamp AND u.CreationDate<='2014-07-29 14:59:28'::timestamp;

/*+ HashJoin(c u b ph)
 HashJoin(c u b)
 HashJoin(c u)
 IndexScan(c)
 SeqScan(u)
 SeqScan(b)
 IndexScan(ph)
 Leading((((c u) b) ph)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = ph.UserId AND u.Id = b.UserId AND b.Date>='2010-07-19 21:19:06'::timestamp AND b.Date<='2014-09-09 15:47:22'::timestamp AND u.UpVotes<=7;

/*+ HashJoin(c v u)
 MergeJoin(v u)
 SeqScan(c)
 SeqScan(v)
 IndexScan(u)
 Leading((c (v u))) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND v.BountyAmount>=0 AND v.BountyAmount<=100 AND u.UpVotes<=22;

/*+ HashJoin(ph c)
 IndexScan(ph)
 IndexScan(c)
 Leading((ph c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph WHERE c.UserId = ph.UserId AND c.CreationDate>='2010-07-29 02:45:20'::timestamp AND c.CreationDate<='2014-09-12 04:24:41'::timestamp AND ph.CreationDate<='2014-09-11 17:44:12'::timestamp;

/*+ HashJoin(c p)
 SeqScan(c)
 SeqScan(p)
 Leading((c p)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND p.Score<=31 AND p.AnswerCount>=0 AND p.CreationDate<='2014-08-31 14:46:40'::timestamp;

/*+ HashJoin(v c)
 SeqScan(v)
 IndexScan(c)
 Leading((v c)) */
SELECT COUNT(*) FROM comments as c, votes as v WHERE c.UserId = v.UserId AND c.Score=0 AND v.VoteTypeId=5 AND v.CreationDate>='2010-07-20 00:00:00'::timestamp;

/*+ HashJoin(ph v b u)
 HashJoin(v b u)
 HashJoin(b u)
 SeqScan(ph)
 SeqScan(v)
 SeqScan(b)
 SeqScan(u)
 Leading((ph (v (b u)))) */
SELECT COUNT(*) FROM postHistory as ph, votes as v, users as u, badges as b WHERE u.Id = ph.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND v.CreationDate>='2010-07-19 00:00:00'::timestamp AND v.CreationDate<='2014-09-11 00:00:00'::timestamp AND u.Views<=37;

/*+ HashJoin(b u)
 SeqScan(b)
 SeqScan(u)
 Leading((b u)) */
SELECT COUNT(*) FROM badges as b, users as u WHERE b.UserId= u.Id AND u.Views=6 AND u.UpVotes>=0 AND u.UpVotes<=55;

/*+ HashJoin(c ph)
 SeqScan(c)
 SeqScan(ph)
 Leading((c ph)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph WHERE c.UserId = ph.UserId AND c.Score=0 AND c.CreationDate>='2010-08-15 15:27:11'::timestamp AND ph.PostHistoryTypeId=1;

/*+ HashJoin(c pl p)
 HashJoin(pl p)
 SeqScan(c)
 SeqScan(pl)
 SeqScan(p)
 Leading((c (pl p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE c.UserId = p.OwnerUserId AND p.Id = pl.PostId AND c.CreationDate<='2014-09-10 22:27:10'::timestamp AND p.PostTypeId=1 AND p.AnswerCount=3;

/*+ HashJoin(p b)
 IndexScan(p)
 SeqScan(b)
 Leading((p b)) */
SELECT COUNT(*) FROM badges as b, posts as p WHERE b.UserId = p.OwnerUserId AND p.CommentCount>=0 AND p.CommentCount<=11 AND p.CreationDate>='2010-09-28 14:30:29'::timestamp;

/*+ HashJoin(c ph p)
 MergeJoin(ph p)
 SeqScan(c)
 SeqScan(ph)
 SeqScan(p)
 Leading((c (ph p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph WHERE p.Id = c.PostId AND p.Id = ph.PostId AND p.FavoriteCount<=12 AND ph.PostHistoryTypeId=5 AND ph.CreationDate>='2010-10-21 15:43:30'::timestamp;

/*+ HashJoin(ph p pl)
 HashJoin(p pl)
 SeqScan(ph)
 SeqScan(p)
 SeqScan(pl)
 Leading((ph (p pl))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph WHERE p.Id = pl.PostId AND pl.PostId = ph.PostId AND p.PostTypeId=1 AND p.Score>=0 AND pl.CreationDate<='2014-09-09 22:35:17'::timestamp;

/*+ HashJoin(c u b)
 HashJoin(c u)
 SeqScan(c)
 IndexScan(u)
 SeqScan(b)
 Leading(((c u) b)) */
SELECT COUNT(*) FROM comments as c, badges as b, users as u WHERE u.Id = c.UserId AND c.UserId = b.UserId AND c.CreationDate>='2010-07-28 20:55:03'::timestamp AND c.CreationDate<='2014-09-09 12:17:54'::timestamp AND b.Date<='2014-09-11 17:25:29'::timestamp;

/*+ HashJoin(v b)
 SeqScan(v)
 SeqScan(b)
 Leading((v b)) */
SELECT COUNT(*) FROM badges as b, votes as v WHERE b.UserId = v.UserId AND b.Date<='2014-08-28 22:16:31'::timestamp AND v.CreationDate>='2009-02-02 00:00:00'::timestamp AND v.CreationDate<='2014-09-14 00:00:00'::timestamp;

/*+ HashJoin(c p u)
 HashJoin(c p)
 SeqScan(c)
 IndexScan(p)
 SeqScan(u)
 Leading(((c p) u)) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.PostId = p.Id AND c.UserId = u.Id AND p.ViewCount>=0 AND p.ViewCount<=1417 AND u.UpVotes>=0;

/*+ MergeJoin(p u)
 SeqScan(p)
 IndexScan(u)
 Leading((p u)) */
SELECT COUNT(*) FROM posts as p, users as u WHERE p.OwnerUserId= u.Id AND p.FavoriteCount>=0 AND p.FavoriteCount<=13 AND u.CreationDate<='2014-09-04 15:15:18'::timestamp;

/*+ HashJoin(v t p)
 MergeJoin(t p)
 SeqScan(v)
 IndexScan(t)
 IndexScan(p)
 Leading((v (t p))) */
SELECT COUNT(*) FROM posts as p, tags as t, votes as v WHERE p.Id = t.ExcerptPostId AND p.OwnerUserId = v.UserId AND p.CommentCount<=9 AND p.CreationDate>='2010-07-27 11:04:08'::timestamp AND t.Count=35;

/*+ HashJoin(ph c p)
 MergeJoin(c p)
 SeqScan(ph)
 IndexScan(c)
 SeqScan(p)
 Leading((ph (c p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph WHERE p.Id = c.PostId AND p.Id = ph.PostId AND p.Score<=28 AND p.ViewCount>=0 AND ph.CreationDate<='2014-07-22 08:09:18'::timestamp;

/*+ HashJoin(v u b ph c)
 MergeJoin(v u b ph)
 HashJoin(u b ph)
 HashJoin(u b)
 IndexScan(v)
 IndexScan(u)
 IndexScan(b)
 IndexScan(ph)
 IndexScan(c)
 Leading(((v ((u b) ph)) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, votes as v, users as u WHERE u.Id =b.UserId AND b.UserId = ph.UserId AND ph.UserId = v.UserId AND v.UserId = c.UserId AND c.CreationDate>='2010-08-06 09:48:44'::timestamp AND c.CreationDate<='2014-09-08 11:12:42'::timestamp AND u.Reputation<=135;

/*+ HashJoin(v u p b)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 IndexScan(b)
 Leading(((v (u p)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE u.Id = v.UserId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.FavoriteCount<=17 AND u.Views>=0 AND u.DownVotes>=0;

/*+ HashJoin(v u b ph c)
 MergeJoin(v u b ph)
 HashJoin(u b ph)
 HashJoin(u b)
 IndexScan(v)
 IndexScan(u)
 IndexScan(b)
 IndexScan(ph)
 IndexScan(c)
 Leading(((v ((u b) ph)) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, votes as v, users as u WHERE u.Id =b.UserId AND b.UserId = ph.UserId AND ph.UserId = v.UserId AND v.UserId = c.UserId AND u.Views>=0 AND u.UpVotes<=9 AND u.CreationDate<='2014-08-31 13:11:15'::timestamp;

/*+ HashJoin(v b u ph)
 HashJoin(v b u)
 HashJoin(b u)
 SeqScan(v)
 SeqScan(b)
 SeqScan(u)
 SeqScan(ph)
 Leading(((v (b u)) ph)) */
SELECT COUNT(*) FROM postHistory as ph, votes as v, users as u, badges as b WHERE u.Id = ph.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND v.VoteTypeId=5 AND u.Views<=123 AND b.Date>='2010-09-17 06:39:00'::timestamp;

/*+ HashJoin(p u ph)
 MergeJoin(u ph)
 IndexScan(p)
 IndexScan(u)
 IndexScan(ph)
 Leading((p (u ph))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.UserId = p.OwnerUserId AND ph.UserId = u.Id AND ph.CreationDate<='2014-09-05 19:09:26'::timestamp AND p.CreationDate<='2014-09-09 20:10:25'::timestamp AND u.CreationDate>='2011-05-20 04:35:58'::timestamp;

/*+ HashJoin(c p)
 SeqScan(c)
 SeqScan(p)
 Leading((c p)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND c.CreationDate>='2010-08-01 02:58:57'::timestamp AND p.PostTypeId=1 AND p.CommentCount<=25;

/*+ HashJoin(c u b)
 HashJoin(c u)
 SeqScan(c)
 IndexScan(u)
 SeqScan(b)
 Leading(((c u) b)) */
SELECT COUNT(*) FROM comments as c, badges as b, users as u WHERE u.Id = c.UserId AND c.UserId = b.UserId AND c.CreationDate>='2010-07-26 17:09:48'::timestamp AND u.UpVotes=0 AND u.CreationDate<='2014-09-11 15:13:30'::timestamp;

/*+ HashJoin(c b)
 SeqScan(c)
 SeqScan(b)
 Leading((c b)) */
SELECT COUNT(*) FROM comments as c, badges as b WHERE c.UserId = b.UserId AND c.Score=0 AND b.Date>='2010-10-22 08:58:33'::timestamp AND b.Date<='2014-09-10 22:55:06'::timestamp;

/*+ HashJoin(v ph c pl)
 HashJoin(ph c pl)
 HashJoin(c pl)
 SeqScan(v)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(pl)
 Leading((v (ph (c pl)))) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, postHistory as ph, votes as v WHERE pl.PostId = c.PostId AND c.PostId = ph.PostId AND ph.PostId = v.PostId AND c.Score=0 AND c.CreationDate>='2010-07-21 02:58:14'::timestamp AND ph.PostHistoryTypeId=5;

/*+ HashJoin(ph c u)
 HashJoin(c u)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(u)
 Leading((ph (c u))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND c.Score=0 AND ph.PostHistoryTypeId=1 AND u.DownVotes=0;

/*+ HashJoin(ph c)
 IndexScan(ph)
 IndexScan(c)
 Leading((ph c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph WHERE c.UserId = ph.UserId AND c.Score=0 AND ph.CreationDate>='2011-07-01 06:54:54'::timestamp AND ph.CreationDate<='2014-09-08 15:19:31'::timestamp;

/*+ HashJoin(b u)
 SeqScan(b)
 SeqScan(u)
 Leading((b u)) */
SELECT COUNT(*) FROM badges as b, users as u WHERE b.UserId= u.Id AND u.UpVotes>=0 AND u.CreationDate>='2010-07-27 18:01:17'::timestamp AND u.CreationDate<='2014-08-18 18:01:28'::timestamp;

/*+ HashJoin(b v u)
 HashJoin(v u)
 SeqScan(b)
 SeqScan(v)
 SeqScan(u)
 Leading((b (v u))) */
SELECT COUNT(*) FROM votes as v, badges as b, users as u WHERE u.Id = v.UserId AND v.UserId = b.UserId AND u.UpVotes>=0 AND u.UpVotes<=34 AND u.CreationDate<='2014-09-07 04:46:06'::timestamp;

/*+ HashJoin(c p pl)
 HashJoin(p pl)
 SeqScan(c)
 IndexScan(p)
 SeqScan(pl)
 Leading((c (p pl))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE c.UserId = p.OwnerUserId AND p.Id = pl.PostId AND p.CommentCount<=12 AND pl.LinkTypeId=1 AND pl.CreationDate>='2010-11-09 20:20:10'::timestamp;

/*+ HashJoin(ph c u)
 HashJoin(c u)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(u)
 Leading((ph (c u))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND ph.PostHistoryTypeId=5 AND ph.CreationDate>='2010-08-10 09:02:02'::timestamp AND u.Reputation<=2052;

/*+ HashJoin(v c u)
 HashJoin(c u)
 SeqScan(v)
 SeqScan(c)
 SeqScan(u)
 Leading((v (c u))) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND c.PostId = v.PostId AND c.Score=0 AND v.VoteTypeId=2 AND u.UpVotes<=26;

/*+ HashJoin(b u)
 SeqScan(b)
 SeqScan(u)
 Leading((b u)) */
SELECT COUNT(*) FROM badges as b, users as u WHERE b.UserId= u.Id AND u.Reputation=1 AND u.CreationDate>='2010-08-04 08:57:32'::timestamp AND u.CreationDate<='2014-08-30 06:19:34'::timestamp;

/*+ HashJoin(ph p pl)
 HashJoin(p pl)
 SeqScan(ph)
 SeqScan(p)
 SeqScan(pl)
 Leading((ph (p pl))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph WHERE p.Id = pl.PostId AND pl.PostId = ph.PostId AND p.AnswerCount>=0 AND p.AnswerCount<=4 AND ph.CreationDate<='2014-08-25 09:32:43'::timestamp;

/*+ HashJoin(ph c)
 SeqScan(ph)
 IndexScan(c)
 Leading((ph c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph WHERE c.UserId = ph.UserId AND ph.PostHistoryTypeId=2 AND ph.CreationDate>='2010-11-29 20:54:10'::timestamp AND ph.CreationDate<='2014-08-21 16:33:23'::timestamp;

/*+ HashJoin(v b c u)
 MergeJoin(b c u)
 MergeJoin(c u)
 IndexScan(v)
 SeqScan(b)
 IndexScan(c)
 IndexScan(u)
 Leading((v (b (c u)))) */
SELECT COUNT(*) FROM comments as c, votes as v, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND c.Score=0 AND v.VoteTypeId=5 AND u.CreationDate>='2010-08-04 16:02:56'::timestamp;

/*+ HashJoin(ph c b u)
 MergeJoin(c b u)
 MergeJoin(b u)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(b)
 IndexScan(u)
 Leading((ph (c (b u)))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = ph.UserId AND u.Id = b.UserId AND c.Score=0 AND c.CreationDate='2012-09-29 19:56:44'::timestamp AND u.Views>=0;

/*+ HashJoin(c pl p)
 HashJoin(pl p)
 SeqScan(c)
 SeqScan(pl)
 SeqScan(p)
 Leading((c (pl p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE c.UserId = p.OwnerUserId AND p.Id = pl.PostId AND c.Score=0 AND p.FavoriteCount<=23 AND pl.LinkTypeId=1;

/*+ HashJoin(c p)
 SeqScan(c)
 SeqScan(p)
 Leading((c p)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND c.CreationDate>='2010-07-25 20:02:30'::timestamp AND p.PostTypeId=1 AND p.AnswerCount>=0;

/*+ HashJoin(ph c u)
 MergeJoin(c u)
 SeqScan(ph)
 SeqScan(c)
 IndexScan(u)
 Leading((ph (c u))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND u.Reputation>=1 AND u.DownVotes=0 AND u.CreationDate<='2014-09-10 18:21:34'::timestamp;

/*+ NestLoop(c p)
 SeqScan(c)
 IndexScan(p)
 Leading((c p)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND c.Score=1 AND c.CreationDate<='2014-09-10 21:20:22'::timestamp AND p.CreationDate<='2014-08-28 16:39:27'::timestamp;

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
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, votes as v, users as u WHERE u.Id =b.UserId AND b.UserId = ph.UserId AND ph.UserId = v.UserId AND v.UserId = c.UserId AND c.Score=0 AND ph.PostHistoryTypeId=5 AND b.Date='2014-07-16 10:47:30'::timestamp;

/*+ HashJoin(c b)
 SeqScan(c)
 SeqScan(b)
 Leading((c b)) */
SELECT COUNT(*) FROM comments as c, badges as b WHERE c.UserId = b.UserId AND c.Score=0 AND c.CreationDate>='2010-07-21 01:39:03'::timestamp AND c.CreationDate<='2014-08-24 06:00:30'::timestamp;

/*+ HashJoin(p u)
 SeqScan(p)
 IndexScan(u)
 Leading((p u)) */
SELECT COUNT(*) FROM posts as p, users as u WHERE p.OwnerUserId= u.Id AND p.ViewCount>=0 AND p.ViewCount<=6147 AND p.AnswerCount>=0;

/*+ HashJoin(v ph c pl)
 HashJoin(ph c pl)
 HashJoin(c pl)
 SeqScan(v)
 SeqScan(ph)
 IndexScan(c)
 SeqScan(pl)
 Leading((v (ph (c pl)))) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, postHistory as ph, votes as v WHERE pl.PostId = c.PostId AND c.PostId = ph.PostId AND ph.PostId = v.PostId AND c.Score=0 AND c.CreationDate>='2010-07-19 19:38:30'::timestamp AND pl.LinkTypeId=1;

/*+ HashJoin(ph c)
 SeqScan(ph)
 IndexScan(c)
 Leading((ph c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph WHERE c.UserId = ph.UserId AND c.CreationDate>='2010-08-19 17:13:03'::timestamp AND c.CreationDate<='2014-09-12 00:20:43'::timestamp AND ph.CreationDate>='2010-09-16 12:08:07'::timestamp;

/*+ HashJoin(c p pl)
 MergeJoin(p pl)
 SeqScan(c)
 SeqScan(p)
 IndexScan(pl)
 Leading((c (p pl))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE p.Id = c.PostId AND p.Id = pl.PostId AND p.PostTypeId=1 AND p.FavoriteCount>=0 AND pl.LinkTypeId=1;

/*+ HashJoin(c b)
 SeqScan(c)
 SeqScan(b)
 Leading((c b)) */
SELECT COUNT(*) FROM comments as c, badges as b WHERE c.UserId = b.UserId AND c.Score=1 AND c.CreationDate<='2014-09-13 13:30:56'::timestamp AND b.Date>='2010-07-19 20:24:07'::timestamp;

/*+ HashJoin(v u b)
 MergeJoin(v u)
 SeqScan(v)
 IndexScan(u)
 SeqScan(b)
 Leading(((v u) b)) */
SELECT COUNT(*) FROM votes as v, badges as b, users as u WHERE u.Id = v.UserId AND v.UserId = b.UserId AND v.CreationDate<='2014-09-13 00:00:00'::timestamp AND u.DownVotes>=0 AND u.DownVotes<=0;

/*+ HashJoin(c p pl)
 HashJoin(p pl)
 SeqScan(c)
 SeqScan(p)
 IndexScan(pl)
 Leading((c (p pl))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE p.Id = c.PostId AND p.Id = pl.PostId AND c.Score=0 AND p.Score>=0 AND p.Score<=20;

/*+ HashJoin(c p pl)
 HashJoin(c p)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 Leading(((c p) pl)) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE p.Id = c.PostId AND p.Id = pl.PostId AND p.ViewCount<=1489 AND p.CreationDate>='2010-07-19 19:24:18'::timestamp AND pl.CreationDate<='2014-04-25 20:21:54'::timestamp;

/*+ HashJoin(v ph c)
 HashJoin(ph c)
 SeqScan(v)
 SeqScan(ph)
 IndexScan(c)
 Leading((v (ph c))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v WHERE ph.PostId = c.PostId AND ph.PostId = v.PostId AND c.Score=1 AND c.CreationDate<='2014-09-12 17:38:34'::timestamp AND v.VoteTypeId=2;

/*+ HashJoin(c pl)
 SeqScan(c)
 SeqScan(pl)
 Leading((c pl)) */
SELECT COUNT(*) FROM comments as c, postLinks as pl WHERE c.PostId= pl.PostId AND c.CreationDate>='2009-04-12 08:22:16'::timestamp AND c.CreationDate<='2014-09-10 20:16:21'::timestamp AND pl.LinkTypeId=1;

/*+ HashJoin(ph c pl v)
 HashJoin(ph c pl)
 HashJoin(c pl)
 SeqScan(ph)
 IndexScan(c)
 SeqScan(pl)
 SeqScan(v)
 Leading(((ph (c pl)) v)) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, postHistory as ph, votes as v WHERE pl.PostId = c.PostId AND c.PostId = ph.PostId AND ph.PostId = v.PostId AND pl.LinkTypeId=1 AND pl.CreationDate<='2014-07-15 19:49:54'::timestamp AND v.VoteTypeId=2;

/*+ HashJoin(v ph c pl)
 HashJoin(ph c pl)
 HashJoin(c pl)
 SeqScan(v)
 SeqScan(ph)
 IndexScan(c)
 IndexScan(pl)
 Leading((v (ph (c pl)))) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, postHistory as ph, votes as v WHERE pl.PostId = c.PostId AND c.PostId = ph.PostId AND ph.PostId = v.PostId AND c.Score=0 AND pl.CreationDate>='2011-04-10 09:40:46'::timestamp AND pl.CreationDate<='2014-07-29 01:24:13'::timestamp;

/*+ HashJoin(b c u)
 MergeJoin(c u)
 SeqScan(b)
 SeqScan(c)
 IndexScan(u)
 Leading((b (c u))) */
SELECT COUNT(*) FROM comments as c, badges as b, users as u WHERE u.Id = c.UserId AND c.UserId = b.UserId AND c.Score=1 AND b.Date<='2014-09-04 09:05:04'::timestamp AND u.CreationDate>='2010-12-09 11:08:23'::timestamp;

/*+ HashJoin(v c u)
 HashJoin(c u)
 SeqScan(v)
 SeqScan(c)
 SeqScan(u)
 Leading((v (c u))) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND c.PostId = v.PostId AND c.CreationDate>='2010-07-20 23:17:28'::timestamp AND v.VoteTypeId=2 AND u.CreationDate>='2010-07-27 13:39:31'::timestamp;

/*+ HashJoin(b u)
 SeqScan(b)
 IndexScan(u)
 Leading((b u)) */
SELECT COUNT(*) FROM badges as b, users as u WHERE b.UserId= u.Id AND b.Date>='2010-07-26 19:23:41'::timestamp AND b.Date<='2014-09-10 19:36:34'::timestamp AND u.DownVotes>=0;

/*+ HashJoin(ph c)
 IndexScan(ph)
 IndexScan(c)
 Leading((ph c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph WHERE c.UserId = ph.UserId AND c.Score=0 AND ph.CreationDate>='2011-02-09 11:10:17'::timestamp AND ph.CreationDate<='2014-08-15 17:53:43'::timestamp;

/*+ HashJoin(c p u)
 HashJoin(c p)
 SeqScan(c)
 IndexScan(p)
 SeqScan(u)
 Leading(((c p) u)) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.PostId = p.Id AND c.UserId = u.Id AND p.ViewCount>=0 AND p.CreationDate<='2014-09-13 23:15:00'::timestamp AND u.DownVotes<=6;

/*+ HashJoin(c u p)
 MergeJoin(c u)
 SeqScan(c)
 IndexScan(u)
 SeqScan(p)
 Leading(((c u) p)) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.UserId = u.Id AND u.Id = p.OwnerUserId AND c.Score=0 AND c.CreationDate<='2014-09-12 16:17:46'::timestamp AND p.Score<=18;

/*+ HashJoin(v ph c pl)
 HashJoin(ph c pl)
 HashJoin(c pl)
 SeqScan(v)
 SeqScan(ph)
 IndexScan(c)
 IndexScan(pl)
 Leading((v (ph (c pl)))) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, postHistory as ph, votes as v WHERE pl.PostId = c.PostId AND c.PostId = ph.PostId AND ph.PostId = v.PostId AND c.CreationDate>='2010-07-26 09:45:12'::timestamp AND pl.CreationDate<='2014-09-04 13:37:40'::timestamp AND v.VoteTypeId=2;

/*+ HashJoin(c u b)
 HashJoin(c u)
 SeqScan(c)
 IndexScan(u)
 IndexScan(b)
 Leading(((c u) b)) */
SELECT COUNT(*) FROM comments as c, badges as b, users as u WHERE u.Id = c.UserId AND c.UserId = b.UserId AND c.Score=0 AND u.Views>=0 AND u.Views<=991;

/*+ HashJoin(ph p u)
 HashJoin(p u)
 SeqScan(ph)
 IndexScan(p)
 SeqScan(u)
 Leading((ph (p u))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.PostId = p.Id AND p.OwnerUserId = u.Id AND p.PostTypeId=2 AND u.Views<=65 AND u.DownVotes>=0;

/*+ HashJoin(c p)
 SeqScan(c)
 SeqScan(p)
 Leading((c p)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND p.ViewCount>=0 AND p.ViewCount<=17019 AND p.AnswerCount>=0;

/*+ HashJoin(p t u b ph)
 HashJoin(p t u b)
 NestLoop(p t u)
 HashJoin(p t)
 IndexScan(p)
 IndexScan(t)
 IndexScan(u)
 SeqScan(b)
 IndexScan(ph)
 Leading(((((p t) u) b) ph)) */
SELECT COUNT(*) FROM tags as t, posts as p, users as u, postHistory as ph, badges as b WHERE p.Id = t.ExcerptPostId AND u.Id = ph.UserId AND u.Id = b.UserId AND u.Id = p.OwnerUserId AND u.Views=0 AND u.UpVotes<=165 AND b.Date>='2010-07-27 05:18:44'::timestamp;

/*+ HashJoin(v ph c pl)
 HashJoin(ph c pl)
 HashJoin(c pl)
 SeqScan(v)
 SeqScan(ph)
 IndexScan(c)
 IndexScan(pl)
 Leading((v (ph (c pl)))) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, postHistory as ph, votes as v WHERE pl.PostId = c.PostId AND c.PostId = ph.PostId AND ph.PostId = v.PostId AND c.Score=0 AND v.VoteTypeId=2 AND v.CreationDate<='2014-09-11 00:00:00'::timestamp;

/*+ MergeJoin(u pl p)
 HashJoin(pl p)
 IndexScan(u)
 SeqScan(pl)
 SeqScan(p)
 Leading((u (pl p))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, users as u WHERE p.Id = pl.PostId AND p.OwnerUserId = u.Id AND p.ViewCount>=0 AND p.ViewCount<=1988 AND u.UpVotes>=0;

/*+ HashJoin(b v)
 SeqScan(b)
 SeqScan(v)
 Leading((b v)) */
SELECT COUNT(*) FROM badges as b, votes as v WHERE b.UserId = v.UserId AND v.BountyAmount>=0 AND v.BountyAmount<=100 AND v.CreationDate>='2010-07-20 00:00:00'::timestamp;

/*+ MergeJoin(ph c p u v)
 MergeJoin(ph c p u)
 HashJoin(c p u)
 MergeJoin(c p)
 SeqScan(ph)
 SeqScan(c)
 IndexScan(p)
 IndexScan(u)
 SeqScan(v)
 Leading(((ph ((c p) u)) v)) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph, votes as v, users as u WHERE u.Id = c.UserId AND c.UserId = p.OwnerUserId AND p.OwnerUserId = ph.UserId AND ph.UserId = v.UserId AND p.PostTypeId=1 AND p.ViewCount>=0 AND ph.PostHistoryTypeId=25;

/*+ HashJoin(v c u)
 HashJoin(c u)
 SeqScan(v)
 SeqScan(c)
 SeqScan(u)
 Leading((v (c u))) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND c.PostId = v.PostId AND u.UpVotes>=0 AND u.UpVotes<=3 AND u.CreationDate>='2010-09-14 17:30:20'::timestamp;

/*+ HashJoin(v ph c)
 HashJoin(v ph)
 IndexScan(v)
 IndexScan(ph)
 SeqScan(c)
 Leading(((v ph) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v WHERE ph.PostId = c.PostId AND ph.PostId = v.PostId AND c.CreationDate>='2010-07-30 06:42:57'::timestamp AND c.CreationDate<='2014-09-06 15:24:08'::timestamp AND v.VoteTypeId=2;

/*+ HashJoin(c u b)
 HashJoin(c u)
 SeqScan(c)
 IndexScan(u)
 SeqScan(b)
 Leading(((c u) b)) */
SELECT COUNT(*) FROM comments as c, badges as b, users as u WHERE u.Id = c.UserId AND c.UserId = b.UserId AND c.CreationDate>='2010-07-19 20:11:13'::timestamp AND b.Date<='2014-07-29 19:33:31'::timestamp AND u.UpVotes>=0;

/*+ HashJoin(c u b)
 HashJoin(c u)
 SeqScan(c)
 IndexScan(u)
 SeqScan(b)
 Leading(((c u) b)) */
SELECT COUNT(*) FROM comments as c, badges as b, users as u WHERE u.Id = c.UserId AND c.UserId = b.UserId AND c.Score=0 AND u.Reputation>=1 AND u.Reputation<=208;

/*+ HashJoin(c u b)
 HashJoin(c u)
 SeqScan(c)
 IndexScan(u)
 SeqScan(b)
 Leading(((c u) b)) */
SELECT COUNT(*) FROM comments as c, badges as b, users as u WHERE u.Id = c.UserId AND c.UserId = b.UserId AND b.Date<='2014-09-02 09:23:05'::timestamp AND u.DownVotes=0 AND u.CreationDate>='2010-10-19 07:38:56'::timestamp;

/*+ HashJoin(c ph)
 SeqScan(c)
 IndexScan(ph)
 Leading((c ph)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph WHERE c.UserId = ph.UserId AND c.Score=0 AND ph.CreationDate>='2010-08-06 14:01:57'::timestamp AND ph.CreationDate<='2014-09-13 14:52:22'::timestamp;

/*+ HashJoin(c v)
 IndexScan(c)
 SeqScan(v)
 Leading((c v)) */
SELECT COUNT(*) FROM comments as c, votes as v WHERE c.UserId = v.UserId AND c.Score=0 AND v.CreationDate>='2010-07-20 00:00:00'::timestamp AND v.CreationDate<='2014-09-08 00:00:00'::timestamp;

/*+ MergeJoin(u pl v p)
 HashJoin(pl v p)
 HashJoin(v p)
 IndexScan(u)
 SeqScan(pl)
 SeqScan(v)
 IndexScan(p)
 Leading((u (pl (v p)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, votes as v, users as u WHERE p.Id = pl.RelatedPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND pl.CreationDate<='2014-06-26 20:25:42'::timestamp AND v.BountyAmount>=0 AND v.BountyAmount<=250;

