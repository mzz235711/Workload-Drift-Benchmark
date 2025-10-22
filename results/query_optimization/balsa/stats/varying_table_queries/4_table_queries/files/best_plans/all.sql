/*+ HashJoin(v b u p)
 HashJoin(b u p)
 HashJoin(u p)
 SeqScan(v)
 SeqScan(b)
 SeqScan(u)
 SeqScan(p)
 Leading((v (b (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>=-6 AND p.AnswerCount>=0 AND p.AnswerCount<=5 AND p.CreationDate>='2010-07-25 20:08:35'::timestamp AND p.CreationDate<='2014-08-22 17:03:08'::timestamp AND u.Reputation<=748 AND u.Views>=0 AND u.Views<=11 AND u.UpVotes>=0 AND u.UpVotes<=58;

/*+ HashJoin(v ph c pl)
 HashJoin(ph c pl)
 HashJoin(c pl)
 SeqScan(v)
 SeqScan(ph)
 SeqScan(c)
 IndexScan(pl)
 Leading((v (ph (c pl)))) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, postHistory as ph, votes as v WHERE pl.PostId = c.PostId AND c.PostId = ph.PostId AND ph.PostId = v.PostId AND c.Score=0 AND c.CreationDate>='2010-07-21 17:52:02'::timestamp AND pl.CreationDate='2011-12-17 13:27:25'::timestamp AND ph.PostHistoryTypeId=3 AND v.VoteTypeId=2 AND v.CreationDate>='2010-07-21 00:00:00'::timestamp AND v.CreationDate<='2014-09-09 00:00:00'::timestamp;

/*+ HashJoin(c b u v)
 HashJoin(b u v)
 HashJoin(u v)
 SeqScan(c)
 SeqScan(b)
 SeqScan(u)
 SeqScan(v)
 Leading((c (b (u v)))) */
SELECT COUNT(*) FROM comments as c, votes as v, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND c.Score=2 AND u.Reputation>=1;

/*+ HashJoin(ph u v p)
 HashJoin(u v p)
 HashJoin(v p)
 SeqScan(ph)
 SeqScan(u)
 SeqScan(v)
 SeqScan(p)
 Leading((ph (u (v p)))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, votes as v, users as u WHERE p.Id = ph.PostId AND u.Id = p.OwnerUserId AND p.Id = v.PostId AND ph.CreationDate>='2010-08-16 05:45:29'::timestamp AND ph.CreationDate<='2014-09-09 01:42:25'::timestamp AND p.ViewCount>=0 AND p.FavoriteCount<=3 AND p.CreationDate>='2010-07-27 19:12:53'::timestamp AND v.CreationDate='2014-06-22 00:00:00'::timestamp AND u.Reputation<=3091 AND u.DownVotes=0;

/*+ MergeJoin(pl u p v)
 HashJoin(u p v)
 HashJoin(p v)
 IndexScan(pl)
 SeqScan(u)
 SeqScan(p)
 SeqScan(v)
 Leading((pl (u (p v)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, votes as v, users as u WHERE p.Id = pl.RelatedPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND p.Score<=11 AND p.AnswerCount>=0 AND p.CommentCount>=0 AND v.CreationDate='2012-08-02 00:00:00'::timestamp AND u.Reputation>=1 AND u.Reputation<=1725 AND u.CreationDate>='2010-07-19 19:31:36'::timestamp AND u.CreationDate<='2014-08-17 21:51:39'::timestamp;

/*+ HashJoin(v u p pl)
 HashJoin(u p pl)
 NestLoop(p pl)
 SeqScan(v)
 SeqScan(u)
 SeqScan(p)
 IndexScan(pl)
 Leading((v (u (p pl)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, votes as v, users as u WHERE p.Id = pl.RelatedPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND p.AnswerCount>=0 AND p.AnswerCount<=5 AND v.CreationDate>='2009-03-03 00:00:00'::timestamp AND v.CreationDate<='2014-09-09 00:00:00'::timestamp AND u.Views=2;

/*+ HashJoin(ph u p b)
 HashJoin(ph u p)
 HashJoin(u p)
 SeqScan(ph)
 IndexScan(u)
 SeqScan(p)
 IndexScan(b)
 Leading(((ph (u p)) b)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u, badges as b WHERE u.Id = p.OwnerUserId AND p.OwnerUserId = ph.UserId AND ph.UserId = b.UserId AND p.Score>=-1 AND p.CommentCount>=0 AND p.CommentCount<=10 AND p.FavoriteCount>=0 AND p.CreationDate<='2014-09-08 14:42:07'::timestamp AND u.Reputation>=1 AND u.Reputation<=133 AND u.Views>=0;

/*+ MergeJoin(c p u v)
 HashJoin(p u v)
 HashJoin(p u)
 IndexScan(c)
 IndexScan(p)
 SeqScan(u)
 IndexScan(v)
 Leading((c ((p u) v))) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = v.UserId AND p.PostTypeId=1 AND p.Score>=0 AND u.UpVotes>=0 AND u.UpVotes<=152 AND u.CreationDate<='2014-09-03 21:18:45'::timestamp;

/*+ HashJoin(ph u p b)
 MergeJoin(ph u p)
 HashJoin(u p)
 SeqScan(ph)
 IndexScan(u)
 SeqScan(p)
 IndexScan(b)
 Leading(((ph (u p)) b)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u, badges as b WHERE u.Id = p.OwnerUserId AND p.OwnerUserId = ph.UserId AND ph.UserId = b.UserId AND p.CreationDate>='2010-07-22 16:32:57'::timestamp AND p.CreationDate<='2014-09-12 20:41:35'::timestamp AND u.Views>=0 AND u.Views<=42 AND u.DownVotes>=0 AND u.DownVotes<=0 AND u.CreationDate<='2014-09-07 05:13:28'::timestamp;

/*+ HashJoin(b u v p)
 HashJoin(u v p)
 HashJoin(v p)
 SeqScan(b)
 SeqScan(u)
 SeqScan(v)
 SeqScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.ViewCount>=0 AND p.FavoriteCount=0 AND u.Reputation>=1 AND u.Reputation<=171;

/*+ HashJoin(v ph c pl)
 HashJoin(ph c pl)
 HashJoin(c pl)
 SeqScan(v)
 SeqScan(ph)
 SeqScan(c)
 IndexScan(pl)
 Leading((v (ph (c pl)))) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, postHistory as ph, votes as v WHERE pl.PostId = c.PostId AND c.PostId = ph.PostId AND ph.PostId = v.PostId AND ph.PostHistoryTypeId=5 AND v.CreationDate<='2014-09-12 00:00:00'::timestamp;

/*+ HashJoin(v ph c pl)
 HashJoin(ph c pl)
 HashJoin(c pl)
 SeqScan(v)
 SeqScan(ph)
 SeqScan(c)
 IndexScan(pl)
 Leading((v (ph (c pl)))) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, postHistory as ph, votes as v WHERE pl.PostId = c.PostId AND c.PostId = ph.PostId AND ph.PostId = v.PostId AND c.CreationDate<='2014-09-13 08:08:01'::timestamp AND pl.CreationDate<='2014-08-22 22:02:12'::timestamp AND v.VoteTypeId=2;

/*+ HashJoin(b u p pl)
 HashJoin(u p pl)
 HashJoin(p pl)
 SeqScan(b)
 SeqScan(u)
 SeqScan(p)
 IndexScan(pl)
 Leading((b (u (p pl)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.PostTypeId=2 AND p.Score<=98 AND p.CommentCount>=0 AND p.CommentCount<=15 AND p.CreationDate<='2014-08-22 02:34:28'::timestamp AND u.UpVotes=0 AND u.CreationDate<='2014-08-21 20:59:22'::timestamp;

/*+ MergeJoin(c v u b)
 HashJoin(v u b)
 HashJoin(u b)
 SeqScan(c)
 SeqScan(v)
 IndexScan(u)
 IndexScan(b)
 Leading((c (v (u b)))) */
SELECT COUNT(*) FROM comments as c, votes as v, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND c.CreationDate>='2010-07-26 20:17:54'::timestamp AND b.Date>='2010-08-04 13:00:34'::timestamp AND b.Date<='2014-08-26 11:12:35'::timestamp AND u.DownVotes<=0 AND u.UpVotes<=2496;

/*+ HashJoin(ph u p b)
 HashJoin(ph u p)
 HashJoin(u p)
 SeqScan(ph)
 IndexScan(u)
 SeqScan(p)
 SeqScan(b)
 Leading(((ph (u p)) b)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u, badges as b WHERE u.Id = p.OwnerUserId AND p.OwnerUserId = ph.UserId AND ph.UserId = b.UserId AND ph.PostHistoryTypeId=5 AND p.AnswerCount>=0 AND p.AnswerCount<=3 AND u.Views=1;

/*+ MergeJoin(u v t p)
 HashJoin(v t p)
 HashJoin(t p)
 IndexScan(u)
 SeqScan(v)
 IndexScan(t)
 SeqScan(p)
 Leading((u (v (t p)))) */
SELECT COUNT(*) FROM tags as t, posts as p, votes as v, users as u WHERE p.Id = t.ExcerptPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND t.Count<=559 AND v.CreationDate<='2014-09-04 00:00:00'::timestamp;

/*+ HashJoin(v u b p)
 HashJoin(u b p)
 HashJoin(u b)
 SeqScan(v)
 IndexScan(u)
 IndexScan(b)
 IndexScan(p)
 Leading((v ((u b) p))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND v.VoteTypeId=2 AND p.AnswerCount<=10 AND u.Reputation=113 AND u.CreationDate<='2014-08-02 16:30:30'::timestamp;

/*+ MergeJoin(c ph u b)
 MergeJoin(ph u b)
 HashJoin(u b)
 SeqScan(c)
 SeqScan(ph)
 IndexScan(u)
 IndexScan(b)
 Leading((c (ph (u b)))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = ph.UserId AND u.Id = b.UserId AND c.Score=1 AND c.CreationDate<='2014-08-27 12:52:00'::timestamp AND ph.PostHistoryTypeId=2 AND ph.CreationDate>='2010-10-01 19:23:05'::timestamp AND ph.CreationDate<='2014-08-13 08:17:37'::timestamp AND u.Reputation>=1 AND u.Views>=0 AND u.Views<=163 AND u.DownVotes<=3 AND u.UpVotes<=27 AND u.CreationDate>='2010-09-01 21:01:18'::timestamp;

/*+ HashJoin(v b u p)
 HashJoin(b u p)
 HashJoin(u p)
 SeqScan(v)
 SeqScan(b)
 SeqScan(u)
 SeqScan(p)
 Leading((v (b (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND v.VoteTypeId=2 AND b.Date>='2010-07-27 09:13:44'::timestamp AND u.Views>=0 AND u.Views<=65;

/*+ HashJoin(v pl c p)
 HashJoin(pl c p)
 MergeJoin(c p)
 SeqScan(v)
 IndexScan(pl)
 IndexScan(c)
 SeqScan(p)
 Leading((v (pl (c p)))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, votes as v WHERE p.Id = c.PostId AND c.PostId = pl.PostId AND pl.PostId = v.PostId AND c.CreationDate>='2010-07-19 19:30:24'::timestamp AND p.CommentCount>=0 AND p.FavoriteCount>=0 AND pl.LinkTypeId=1;

/*+ HashJoin(ph u v c)
 MergeJoin(ph u v)
 MergeJoin(u v)
 SeqScan(ph)
 IndexScan(u)
 IndexScan(v)
 SeqScan(c)
 Leading(((ph (u v)) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v, users as u WHERE u.Id = v.UserId AND v.UserId = ph.UserId AND ph.UserId =c.UserId AND c.CreationDate>='2010-08-01 12:12:41'::timestamp AND v.BountyAmount>=0 AND v.BountyAmount<=150 AND u.DownVotes<=1 AND u.UpVotes>=0 AND u.UpVotes<=28;

/*+ HashJoin(u c p v)
 HashJoin(c p v)
 HashJoin(p v)
 SeqScan(u)
 SeqScan(c)
 SeqScan(p)
 SeqScan(v)
 Leading((u (c (p v)))) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE p.Id = c.PostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND p.ViewCount>=0 AND v.BountyAmount<=100;

/*+ HashJoin(ph u p b)
 HashJoin(ph u p)
 HashJoin(u p)
 SeqScan(ph)
 IndexScan(u)
 SeqScan(p)
 IndexScan(b)
 Leading(((ph (u p)) b)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u, badges as b WHERE u.Id = p.OwnerUserId AND p.OwnerUserId = ph.UserId AND ph.UserId = b.UserId AND p.AnswerCount>=0 AND p.CommentCount>=0 AND p.CommentCount<=16 AND u.Reputation<=311 AND u.Views<=15 AND u.UpVotes>=0 AND u.UpVotes<=103;

/*+ HashJoin(ph u p b)
 HashJoin(ph u p)
 HashJoin(u p)
 SeqScan(ph)
 IndexScan(u)
 SeqScan(p)
 IndexScan(b)
 Leading(((ph (u p)) b)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u, badges as b WHERE u.Id = p.OwnerUserId AND p.OwnerUserId = ph.UserId AND ph.UserId = b.UserId AND p.PostTypeId=1 AND p.Score>=0 AND p.Score<=51 AND p.ViewCount>=0 AND p.ViewCount<=7902 AND p.AnswerCount>=0 AND p.FavoriteCount>=0 AND u.Views<=14 AND u.UpVotes>=0 AND u.UpVotes<=11 AND u.CreationDate<='2014-09-11 22:11:23'::timestamp;

/*+ HashJoin(c u p pl)
 MergeJoin(u p pl)
 HashJoin(p pl)
 SeqScan(c)
 SeqScan(u)
 SeqScan(p)
 IndexScan(pl)
 Leading((c (u (p pl)))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, users as u WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.OwnerUserId = u.Id AND p.PostTypeId=2 AND p.CommentCount>=0 AND p.CreationDate>='2010-08-04 10:38:03'::timestamp AND p.CreationDate<='2014-09-10 13:48:16'::timestamp AND u.Views>=0 AND u.DownVotes<=0 AND u.UpVotes>=0 AND u.UpVotes<=439;

/*+ MergeJoin(ph u b c)
 MergeJoin(ph u b)
 HashJoin(u b)
 SeqScan(ph)
 IndexScan(u)
 IndexScan(b)
 SeqScan(c)
 Leading(((ph (u b)) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = ph.UserId AND u.Id = b.UserId AND c.Score=1 AND ph.PostHistoryTypeId=5 AND ph.CreationDate<='2014-08-27 14:27:12'::timestamp AND b.Date>='2010-07-19 19:39:10'::timestamp AND u.Reputation<=1460 AND u.Views<=34 AND u.CreationDate>='2010-07-20 07:08:11'::timestamp;

/*+ HashJoin(ph u b c)
 MergeJoin(ph u b)
 HashJoin(u b)
 SeqScan(ph)
 IndexScan(u)
 IndexScan(b)
 SeqScan(c)
 Leading(((ph (u b)) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = ph.UserId AND u.Id = b.UserId AND c.CreationDate<='2014-09-04 20:52:45'::timestamp AND ph.PostHistoryTypeId=5 AND u.Reputation>=1 AND u.Reputation<=194 AND u.UpVotes<=4;

/*+ HashJoin(v u pl p)
 HashJoin(u pl p)
 HashJoin(pl p)
 SeqScan(v)
 SeqScan(u)
 IndexScan(pl)
 SeqScan(p)
 Leading((v (u (pl p)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, votes as v, users as u WHERE p.Id = pl.RelatedPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND pl.CreationDate<='2014-08-12 23:19:12'::timestamp AND p.Score>=-9 AND p.CommentCount<=12 AND v.VoteTypeId=2 AND v.CreationDate>='2010-07-20 00:00:00'::timestamp AND u.Views>=0 AND u.Views<=11 AND u.UpVotes<=7;

/*+ HashJoin(v ph c pl)
 HashJoin(ph c pl)
 HashJoin(c pl)
 SeqScan(v)
 SeqScan(ph)
 SeqScan(c)
 IndexScan(pl)
 Leading((v (ph (c pl)))) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, postHistory as ph, votes as v WHERE pl.PostId = c.PostId AND c.PostId = ph.PostId AND ph.PostId = v.PostId AND c.Score=0 AND pl.LinkTypeId=1 AND pl.CreationDate>='2010-08-11 14:59:38'::timestamp AND pl.CreationDate<='2014-07-28 22:10:06'::timestamp AND v.VoteTypeId=2;

/*+ HashJoin(u c v p)
 HashJoin(c v p)
 HashJoin(v p)
 SeqScan(u)
 SeqScan(c)
 SeqScan(v)
 SeqScan(p)
 Leading((u (c (v p)))) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE p.Id = c.PostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND c.Score=1 AND c.CreationDate<='2014-09-11 01:57:32'::timestamp AND p.PostTypeId=2 AND p.Score<=18 AND p.CreationDate>='2010-07-19 19:27:13'::timestamp AND p.CreationDate<='2014-08-25 07:03:56'::timestamp AND v.VoteTypeId=2 AND v.CreationDate>='2010-08-03 00:00:00'::timestamp AND u.Reputation>=1 AND u.CreationDate<='2014-08-02 11:57:47'::timestamp;

/*+ HashJoin(v u c p)
 HashJoin(u c p)
 HashJoin(c p)
 SeqScan(v)
 SeqScan(u)
 SeqScan(c)
 SeqScan(p)
 Leading((v (u (c p)))) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE p.Id = c.PostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND p.PostTypeId=1 AND p.ViewCount<=10802 AND v.CreationDate>='2010-07-20 00:00:00'::timestamp AND u.Reputation<=1236 AND u.UpVotes=0 AND u.CreationDate>='2010-11-03 14:43:38'::timestamp;

/*+ HashJoin(c ph u v)
 MergeJoin(ph u v)
 HashJoin(u v)
 SeqScan(c)
 IndexScan(ph)
 IndexScan(u)
 IndexScan(v)
 Leading((c (ph (u v)))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v, users as u WHERE u.Id = v.UserId AND v.UserId = ph.UserId AND ph.UserId =c.UserId AND v.CreationDate>='2010-07-21 00:00:00'::timestamp AND v.CreationDate<='2014-09-13 00:00:00'::timestamp AND u.Reputation=1;

/*+ HashJoin(v u c p)
 HashJoin(u c p)
 HashJoin(c p)
 SeqScan(v)
 SeqScan(u)
 SeqScan(c)
 SeqScan(p)
 Leading((v (u (c p)))) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE p.Id = c.PostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND c.Score=0 AND p.FavoriteCount>=0 AND v.CreationDate>='2010-07-23 00:00:00'::timestamp AND v.CreationDate<='2014-09-14 00:00:00'::timestamp AND u.Reputation>=1 AND u.Reputation<=370 AND u.DownVotes>=0 AND u.UpVotes>=0;

/*+ HashJoin(ph u v c)
 MergeJoin(ph u v)
 MergeJoin(u v)
 SeqScan(ph)
 IndexScan(u)
 IndexScan(v)
 SeqScan(c)
 Leading(((ph (u v)) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v, users as u WHERE u.Id = v.UserId AND v.UserId = ph.UserId AND ph.UserId =c.UserId AND c.Score=0 AND c.CreationDate>='2010-07-27 12:57:59'::timestamp AND c.CreationDate<='2014-09-09 16:36:07'::timestamp AND ph.PostHistoryTypeId=5 AND v.BountyAmount>=0 AND v.CreationDate<='2014-09-04 00:00:00'::timestamp AND u.Reputation>=1 AND u.DownVotes>=0 AND u.DownVotes<=3 AND u.CreationDate>='2010-07-26 19:27:23'::timestamp;

/*+ HashJoin(b v p u)
 HashJoin(v p u)
 HashJoin(p u)
 SeqScan(b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 Leading((b (v (p u)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE u.Id = v.UserId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND v.BountyAmount<=50 AND p.Score>=-3 AND p.Score<=12 AND p.ViewCount>=0 AND p.ViewCount<=2761 AND p.AnswerCount>=0 AND p.CommentCount<=10 AND p.FavoriteCount>=0 AND p.FavoriteCount<=6 AND p.CreationDate<='2014-09-05 15:42:39'::timestamp AND b.Date>='2010-07-19 19:39:08'::timestamp AND u.Reputation>=1 AND u.Reputation<=1047 AND u.DownVotes<=0 AND u.CreationDate>='2011-07-18 13:17:03'::timestamp;

/*+ HashJoin(b pl p u)
 HashJoin(pl p u)
 MergeJoin(p u)
 SeqScan(b)
 IndexScan(pl)
 SeqScan(p)
 SeqScan(u)
 Leading((b (pl (p u)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND pl.LinkTypeId=1 AND p.ViewCount>=0 AND p.CommentCount>=0 AND p.CommentCount<=16 AND p.FavoriteCount=0 AND u.Views=3;

/*+ HashJoin(u c p pl)
 HashJoin(c p pl)
 HashJoin(p pl)
 SeqScan(u)
 SeqScan(c)
 SeqScan(p)
 IndexScan(pl)
 Leading((u (c (p pl)))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, users as u WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.OwnerUserId = u.Id AND c.Score=0 AND p.Score>=-1 AND p.Score<=128 AND p.FavoriteCount>=0 AND p.CreationDate>='2010-07-28 04:24:05'::timestamp AND u.Reputation>=1 AND u.DownVotes>=0 AND u.CreationDate>='2010-09-24 12:34:57'::timestamp AND u.CreationDate<='2014-09-11 22:11:23'::timestamp;

/*+ HashJoin(b u p pl)
 HashJoin(u p pl)
 HashJoin(p pl)
 SeqScan(b)
 SeqScan(u)
 SeqScan(p)
 IndexScan(pl)
 Leading((b (u (p pl)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND pl.LinkTypeId=1 AND pl.CreationDate>='2011-04-13 17:28:34'::timestamp AND p.ViewCount<=7527 AND p.CommentCount=5 AND p.FavoriteCount>=0 AND p.FavoriteCount<=13 AND u.Reputation<=108 AND u.Views>=0 AND u.Views<=11 AND u.UpVotes>=0 AND u.UpVotes<=15 AND u.CreationDate>='2010-08-06 18:53:54'::timestamp;

/*+ HashJoin(c u p pl)
 MergeJoin(u p pl)
 HashJoin(p pl)
 SeqScan(c)
 SeqScan(u)
 SeqScan(p)
 IndexScan(pl)
 Leading((c (u (p pl)))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, users as u WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.OwnerUserId = u.Id AND p.CommentCount<=24 AND p.FavoriteCount>=0 AND p.FavoriteCount<=7 AND u.Views>=0 AND u.Views<=34;

/*+ MergeJoin(b v ph u)
 MergeJoin(v ph u)
 HashJoin(ph u)
 IndexScan(b)
 IndexScan(v)
 IndexScan(ph)
 SeqScan(u)
 Leading((b (v (ph u)))) */
SELECT COUNT(*) FROM postHistory as ph, votes as v, users as u, badges as b WHERE u.Id = ph.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND ph.PostHistoryTypeId=16 AND v.VoteTypeId=5 AND v.CreationDate>='2010-07-20 00:00:00'::timestamp AND u.Reputation>=1 AND u.CreationDate>='2010-10-20 12:41:52'::timestamp AND u.CreationDate<='2014-08-25 01:46:14'::timestamp;

/*+ MergeJoin(c v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(c)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((c (v (u p)))) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = v.UserId AND p.Score>=-1 AND p.Score<=16 AND p.ViewCount>=0 AND u.Reputation>=1 AND u.Reputation<=163 AND u.UpVotes>=0;

/*+ HashJoin(v b u p)
 HashJoin(b u p)
 HashJoin(u p)
 SeqScan(v)
 SeqScan(b)
 IndexScan(u)
 SeqScan(p)
 Leading((v (b (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE u.Id = v.UserId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.PostTypeId=1 AND p.AnswerCount=0 AND p.CommentCount<=15;

/*+ MergeJoin(u v p pl)
 HashJoin(v p pl)
 HashJoin(p pl)
 SeqScan(u)
 SeqScan(v)
 SeqScan(p)
 IndexScan(pl)
 Leading((u (v (p pl)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, votes as v, users as u WHERE p.Id = pl.RelatedPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND pl.CreationDate>='2011-03-06 09:29:10'::timestamp AND p.Score<=40 AND p.CreationDate<='2014-09-11 02:38:16'::timestamp AND v.VoteTypeId=5 AND u.Reputation<=741 AND u.Views>=0 AND u.Views<=19;

/*+ HashJoin(c v p u)
 HashJoin(v p u)
 HashJoin(p u)
 SeqScan(c)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 Leading((c (v (p u)))) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = v.UserId AND c.Score=0 AND p.PostTypeId=1 AND p.Score>=0 AND p.CommentCount>=0 AND u.Views>=0 AND u.DownVotes>=0 AND u.DownVotes<=0 AND u.UpVotes>=0 AND u.UpVotes<=24;

/*+ HashJoin(v pl c p)
 HashJoin(pl c p)
 MergeJoin(c p)
 SeqScan(v)
 IndexScan(pl)
 IndexScan(c)
 SeqScan(p)
 Leading((v (pl (c p)))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, votes as v WHERE p.Id = c.PostId AND c.PostId = pl.PostId AND pl.PostId = v.PostId AND c.Score=0 AND c.CreationDate<='2014-09-11 02:56:02'::timestamp AND p.PostTypeId=1 AND p.ViewCount>=0 AND pl.CreationDate<='2014-08-31 16:28:08'::timestamp;

/*+ HashJoin(c ph v pl)
 HashJoin(c ph v)
 HashJoin(ph v)
 SeqScan(c)
 SeqScan(ph)
 SeqScan(v)
 IndexScan(pl)
 Leading(((c (ph v)) pl)) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, postHistory as ph, votes as v WHERE pl.PostId = c.PostId AND c.PostId = ph.PostId AND ph.PostId = v.PostId AND pl.CreationDate>='2011-05-10 20:23:43'::timestamp AND ph.PostHistoryTypeId=5 AND v.VoteTypeId=16 AND v.CreationDate>='2010-07-21 00:00:00'::timestamp AND v.CreationDate<='2014-09-12 00:00:00'::timestamp;

/*+ HashJoin(b u p pl)
 MergeJoin(u p pl)
 HashJoin(p pl)
 SeqScan(b)
 SeqScan(u)
 SeqScan(p)
 IndexScan(pl)
 Leading((b (u (p pl)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND pl.LinkTypeId=1 AND pl.CreationDate>='2011-03-28 15:37:13'::timestamp AND pl.CreationDate<='2014-08-08 04:46:39'::timestamp AND p.Score>=0 AND p.ViewCount>=0 AND p.ViewCount<=2762 AND p.AnswerCount>=0 AND p.CommentCount>=0 AND p.FavoriteCount>=0 AND u.UpVotes>=0 AND b.Date<='2014-09-09 18:05:41'::timestamp;

/*+ HashJoin(v ph c pl)
 HashJoin(ph c pl)
 HashJoin(c pl)
 SeqScan(v)
 SeqScan(ph)
 SeqScan(c)
 IndexScan(pl)
 Leading((v (ph (c pl)))) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, postHistory as ph, votes as v WHERE pl.PostId = c.PostId AND c.PostId = ph.PostId AND ph.PostId = v.PostId AND c.Score=0 AND pl.CreationDate>='2012-02-29 18:34:29'::timestamp AND ph.PostHistoryTypeId=2 AND v.CreationDate<='2014-09-04 00:00:00'::timestamp;

/*+ HashJoin(c b u v)
 MergeJoin(b u v)
 HashJoin(u v)
 SeqScan(c)
 SeqScan(b)
 SeqScan(u)
 SeqScan(v)
 Leading((c (b (u v)))) */
SELECT COUNT(*) FROM comments as c, votes as v, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND c.Score=0 AND c.CreationDate>='2010-07-26 00:25:00'::timestamp AND v.BountyAmount>=0 AND v.CreationDate<='2014-09-12 00:00:00'::timestamp AND u.Reputation>=1 AND u.Reputation<=397;

/*+ HashJoin(b u v p)
 HashJoin(u v p)
 HashJoin(v p)
 SeqScan(b)
 SeqScan(u)
 SeqScan(v)
 SeqScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.PostTypeId=1 AND u.Views=0;

/*+ MergeJoin(ph v u p)
 HashJoin(v u p)
 HashJoin(u p)
 IndexScan(ph)
 SeqScan(v)
 SeqScan(u)
 SeqScan(p)
 Leading((ph (v (u p)))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, votes as v, users as u WHERE p.Id = ph.PostId AND u.Id = p.OwnerUserId AND p.Id = v.PostId AND p.Score>=0 AND p.Score<=21 AND p.AnswerCount>=0 AND v.CreationDate<='2014-09-08 00:00:00'::timestamp;

/*+ HashJoin(c pl p u)
 HashJoin(pl p u)
 HashJoin(pl p)
 SeqScan(c)
 IndexScan(pl)
 SeqScan(p)
 SeqScan(u)
 Leading((c ((pl p) u))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, users as u WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.OwnerUserId = u.Id AND c.Score=0 AND p.Score>=-2 AND p.AnswerCount>=0 AND p.CommentCount>=0 AND p.CommentCount<=13 AND pl.LinkTypeId=1 AND u.Reputation>=1 AND u.Reputation<=425 AND u.DownVotes>=0;

/*+ HashJoin(u c p v)
 HashJoin(c p v)
 HashJoin(p v)
 SeqScan(u)
 SeqScan(c)
 SeqScan(p)
 SeqScan(v)
 Leading((u (c (p v)))) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE p.Id = c.PostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND p.PostTypeId=1 AND p.CommentCount>=0 AND p.CommentCount<=8 AND v.BountyAmount>=0 AND v.BountyAmount<=100 AND v.CreationDate>='2010-07-19 00:00:00'::timestamp AND v.CreationDate<='2014-09-09 00:00:00'::timestamp AND u.Views>=0 AND u.UpVotes>=0;

/*+ HashJoin(c v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(c)
 SeqScan(v)
 SeqScan(u)
 SeqScan(p)
 Leading((c (v (u p)))) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = v.UserId AND c.Score=1 AND c.CreationDate<='2014-09-13 06:00:54'::timestamp AND p.CommentCount>=0 AND v.CreationDate<='2014-09-10 00:00:00'::timestamp AND u.Views>=0 AND u.Views<=842;

/*+ HashJoin(v ph c pl)
 HashJoin(ph c pl)
 HashJoin(c pl)
 SeqScan(v)
 SeqScan(ph)
 SeqScan(c)
 IndexScan(pl)
 Leading((v (ph (c pl)))) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, postHistory as ph, votes as v WHERE pl.PostId = c.PostId AND c.PostId = ph.PostId AND ph.PostId = v.PostId AND ph.PostHistoryTypeId=3 AND v.VoteTypeId=2;

/*+ HashJoin(v u ph p)
 HashJoin(u ph p)
 HashJoin(ph p)
 SeqScan(v)
 SeqScan(u)
 IndexScan(ph)
 SeqScan(p)
 Leading((v (u (ph p)))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, votes as v, users as u WHERE p.Id = ph.PostId AND u.Id = p.OwnerUserId AND p.Id = v.PostId AND ph.PostHistoryTypeId=3 AND ph.CreationDate<='2014-07-29 13:53:07'::timestamp AND p.CommentCount>=0 AND p.CreationDate>='2010-08-17 13:18:59'::timestamp AND v.VoteTypeId=2 AND v.CreationDate<='2014-09-09 00:00:00'::timestamp AND u.Reputation>=1 AND u.DownVotes>=0;

/*+ HashJoin(ph u p b)
 MergeJoin(ph u p)
 HashJoin(u p)
 IndexScan(ph)
 IndexScan(u)
 SeqScan(p)
 IndexScan(b)
 Leading(((ph (u p)) b)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u, badges as b WHERE u.Id = p.OwnerUserId AND p.OwnerUserId = ph.UserId AND ph.UserId = b.UserId AND ph.CreationDate>='2010-08-06 13:04:47'::timestamp AND p.PostTypeId=2 AND u.CreationDate>='2010-09-05 03:22:50'::timestamp AND b.Date>='2010-08-07 23:42:38'::timestamp;

/*+ HashJoin(u v c p)
 HashJoin(v c p)
 HashJoin(c p)
 SeqScan(u)
 SeqScan(v)
 SeqScan(c)
 SeqScan(p)
 Leading((u (v (c p)))) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE p.Id = c.PostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND c.CreationDate>='2010-08-12 01:55:20'::timestamp AND c.CreationDate<='2014-09-14 01:49:32'::timestamp AND p.Score<=38 AND p.ViewCount>=0 AND p.AnswerCount<=4 AND p.CommentCount<=10 AND p.FavoriteCount>=0 AND p.FavoriteCount<=5 AND u.Reputation>=1 AND u.Reputation<=293 AND u.Views>=0 AND u.Views<=764 AND u.DownVotes>=0 AND u.DownVotes<=1 AND u.CreationDate>='2010-08-23 16:21:10'::timestamp AND u.CreationDate<='2014-09-09 10:15:44'::timestamp;

/*+ HashJoin(v ph c pl)
 HashJoin(ph c pl)
 HashJoin(c pl)
 SeqScan(v)
 SeqScan(ph)
 SeqScan(c)
 IndexScan(pl)
 Leading((v (ph (c pl)))) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, postHistory as ph, votes as v WHERE pl.PostId = c.PostId AND c.PostId = ph.PostId AND ph.PostId = v.PostId AND pl.LinkTypeId=1 AND pl.CreationDate<='2014-08-05 13:10:59'::timestamp AND ph.CreationDate<='2014-09-08 22:42:14'::timestamp AND v.CreationDate>='2010-08-20 00:00:00'::timestamp;

/*+ HashJoin(ph u v c)
 MergeJoin(ph u v)
 MergeJoin(u v)
 SeqScan(ph)
 IndexScan(u)
 IndexScan(v)
 SeqScan(c)
 Leading(((ph (u v)) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v, users as u WHERE u.Id = v.UserId AND v.UserId = ph.UserId AND ph.UserId =c.UserId AND v.BountyAmount<=50 AND v.CreationDate<='2014-09-08 00:00:00'::timestamp AND u.DownVotes<=0;

/*+ HashJoin(v ph c pl)
 HashJoin(ph c pl)
 HashJoin(c pl)
 SeqScan(v)
 SeqScan(ph)
 SeqScan(c)
 IndexScan(pl)
 Leading((v (ph (c pl)))) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, postHistory as ph, votes as v WHERE pl.PostId = c.PostId AND c.PostId = ph.PostId AND ph.PostId = v.PostId AND pl.LinkTypeId=1 AND pl.CreationDate>='2011-07-05 03:06:08'::timestamp AND pl.CreationDate<='2014-08-13 15:13:20'::timestamp AND ph.CreationDate>='2010-12-01 12:08:32'::timestamp AND v.CreationDate>='2010-07-19 00:00:00'::timestamp;

/*+ HashJoin(v u pl p)
 HashJoin(u pl p)
 HashJoin(pl p)
 SeqScan(v)
 SeqScan(u)
 IndexScan(pl)
 SeqScan(p)
 Leading((v (u (pl p)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, votes as v, users as u WHERE p.Id = pl.RelatedPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND p.CreationDate>='2010-10-28 08:24:14'::timestamp AND p.CreationDate<='2014-09-04 01:23:53'::timestamp;

/*+ MergeJoin(c ph u v)
 MergeJoin(ph u v)
 HashJoin(u v)
 IndexScan(c)
 IndexScan(ph)
 IndexScan(u)
 IndexScan(v)
 Leading((c (ph (u v)))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v, users as u WHERE u.Id = v.UserId AND v.UserId = ph.UserId AND ph.UserId =c.UserId AND c.Score=0 AND v.CreationDate='2011-11-29 00:00:00'::timestamp AND u.Views>=0 AND u.Views<=105 AND u.DownVotes<=212 AND u.CreationDate>='2010-10-06 19:44:06'::timestamp;

/*+ HashJoin(ph v u b)
 HashJoin(v u b)
 HashJoin(u b)
 SeqScan(ph)
 SeqScan(v)
 IndexScan(u)
 IndexScan(b)
 Leading((ph (v (u b)))) */
SELECT COUNT(*) FROM postHistory as ph, votes as v, users as u, badges as b WHERE u.Id = ph.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND u.Reputation<=230 AND u.Views>=0;

/*+ HashJoin(v u c p)
 MergeJoin(v u c)
 MergeJoin(v u)
 SeqScan(v)
 SeqScan(u)
 IndexScan(c)
 SeqScan(p)
 Leading((((v u) c) p)) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = v.UserId AND p.Score<=18 AND p.CommentCount<=18 AND p.CreationDate>='2010-08-17 09:11:30'::timestamp AND p.CreationDate<='2014-09-07 13:21:30'::timestamp AND v.BountyAmount>=0 AND v.BountyAmount<=100 AND v.CreationDate>='2010-07-20 00:00:00'::timestamp;

/*+ HashJoin(c ph v pl)
 HashJoin(c ph v)
 HashJoin(ph v)
 SeqScan(c)
 SeqScan(ph)
 SeqScan(v)
 IndexScan(pl)
 Leading(((c (ph v)) pl)) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, postHistory as ph, votes as v WHERE pl.PostId = c.PostId AND c.PostId = ph.PostId AND ph.PostId = v.PostId AND ph.PostHistoryTypeId=2 AND v.BountyAmount<=50 AND v.CreationDate>='2010-07-19 00:00:00'::timestamp AND v.CreationDate<='2014-09-09 00:00:00'::timestamp;

/*+ HashJoin(ph u v c)
 MergeJoin(ph u v)
 MergeJoin(u v)
 SeqScan(ph)
 IndexScan(u)
 IndexScan(v)
 SeqScan(c)
 Leading(((ph (u v)) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v, users as u WHERE u.Id = v.UserId AND v.UserId = ph.UserId AND ph.UserId =c.UserId AND v.BountyAmount>=0 AND v.BountyAmount<=50 AND u.CreationDate>='2010-07-19 21:55:38'::timestamp;

/*+ HashJoin(b u p pl)
 HashJoin(u p pl)
 HashJoin(p pl)
 SeqScan(b)
 SeqScan(u)
 SeqScan(p)
 IndexScan(pl)
 Leading((b (u (p pl)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score<=32 AND p.ViewCount<=17019 AND p.AnswerCount=1 AND u.Views>=0 AND u.UpVotes<=33 AND b.Date='2012-08-03 14:35:43'::timestamp;

/*+ HashJoin(c v p u)
 HashJoin(v p u)
 HashJoin(p u)
 SeqScan(c)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 Leading((c (v (p u)))) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = v.UserId AND c.Score=0 AND p.PostTypeId=1 AND p.Score>=0 AND p.Score<=26 AND p.ViewCount>=0 AND p.ViewCount<=3650 AND p.AnswerCount>=0 AND p.AnswerCount<=12 AND p.CommentCount<=7 AND p.FavoriteCount=0 AND v.BountyAmount<=50 AND u.CreationDate>='2010-07-27 17:15:57'::timestamp AND u.CreationDate<='2014-08-20 00:41:58'::timestamp;

/*+ HashJoin(ph u v c)
 HashJoin(ph u v)
 HashJoin(u v)
 SeqScan(ph)
 IndexScan(u)
 IndexScan(v)
 SeqScan(c)
 Leading(((ph (u v)) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v, users as u WHERE u.Id = v.UserId AND v.UserId = ph.UserId AND ph.UserId =c.UserId AND ph.CreationDate>='2010-08-29 23:18:38'::timestamp AND ph.CreationDate<='2014-09-11 15:33:16'::timestamp AND v.CreationDate>='2009-02-02 00:00:00'::timestamp AND u.Reputation>=1 AND u.Views>=0 AND u.Views<=24 AND u.DownVotes<=3 AND u.UpVotes>=0 AND u.UpVotes<=9;

/*+ HashJoin(v u p b)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 IndexScan(b)
 Leading(((v (u p)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND v.VoteTypeId=5 AND p.CommentCount<=10;

/*+ HashJoin(u c v p)
 HashJoin(c v p)
 HashJoin(v p)
 SeqScan(u)
 SeqScan(c)
 SeqScan(v)
 SeqScan(p)
 Leading((u (c (v p)))) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE p.Id = c.PostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND c.Score=0 AND c.CreationDate>='2010-07-27 15:10:34'::timestamp AND p.PostTypeId=1 AND p.ViewCount>=0 AND p.ViewCount<=5422 AND p.AnswerCount<=4 AND p.CreationDate>='2010-08-16 15:29:24'::timestamp AND v.VoteTypeId=2 AND v.CreationDate<='2014-09-10 00:00:00'::timestamp AND u.DownVotes<=0 AND u.CreationDate>='2011-01-14 15:14:20'::timestamp AND u.CreationDate<='2014-09-05 14:41:36'::timestamp;

/*+ HashJoin(v u p ph)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 IndexScan(ph)
 Leading(((v (u p)) ph)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, votes as v, users as u WHERE p.Id = ph.PostId AND u.Id = p.OwnerUserId AND p.Id = v.PostId AND ph.PostHistoryTypeId=4 AND p.CommentCount>=0 AND p.CommentCount<=16 AND p.FavoriteCount<=4 AND p.CreationDate>='2010-07-21 11:11:47'::timestamp AND v.VoteTypeId=2 AND v.CreationDate<='2014-09-12 00:00:00'::timestamp AND u.DownVotes>=0 AND u.DownVotes<=0 AND u.UpVotes>=0 AND u.UpVotes<=57 AND u.CreationDate>='2011-02-26 12:17:36'::timestamp AND u.CreationDate<='2014-05-16 02:21:54'::timestamp;

/*+ HashJoin(b u p v)
 HashJoin(u p v)
 HashJoin(p v)
 SeqScan(b)
 SeqScan(u)
 SeqScan(p)
 SeqScan(v)
 Leading((b (u (p v)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND v.BountyAmount<=100 AND p.Score>=0 AND p.Score<=40 AND p.ViewCount<=49948 AND p.CommentCount=1 AND b.Date>='2010-09-03 13:09:15'::timestamp AND u.Views<=56 AND u.UpVotes<=119;

/*+ HashJoin(v ph c pl)
 HashJoin(ph c pl)
 HashJoin(c pl)
 SeqScan(v)
 SeqScan(ph)
 SeqScan(c)
 IndexScan(pl)
 Leading((v (ph (c pl)))) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, postHistory as ph, votes as v WHERE pl.PostId = c.PostId AND c.PostId = ph.PostId AND ph.PostId = v.PostId AND pl.LinkTypeId=1 AND ph.CreationDate>='2011-05-31 03:38:31'::timestamp AND v.VoteTypeId=2 AND v.CreationDate>='2010-08-02 00:00:00'::timestamp AND v.CreationDate<='2014-09-12 00:00:00'::timestamp;

/*+ MergeJoin(ph u p b)
 MergeJoin(ph u p)
 MergeJoin(u p)
 SeqScan(ph)
 IndexScan(u)
 SeqScan(p)
 IndexScan(b)
 Leading(((ph (u p)) b)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u, badges as b WHERE u.Id = p.OwnerUserId AND p.OwnerUserId = ph.UserId AND ph.UserId = b.UserId AND ph.PostHistoryTypeId=2 AND ph.CreationDate>='2010-08-09 08:19:59'::timestamp AND ph.CreationDate<='2014-08-24 12:48:32'::timestamp AND p.CommentCount>=0 AND u.Reputation>=1 AND u.UpVotes>=0 AND u.UpVotes<=196 AND u.CreationDate<='2014-08-25 22:57:38'::timestamp AND b.Date<='2014-09-12 14:06:21'::timestamp;

/*+ HashJoin(ph u b c)
 HashJoin(ph u b)
 HashJoin(u b)
 SeqScan(ph)
 IndexScan(u)
 IndexScan(b)
 SeqScan(c)
 Leading(((ph (u b)) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = ph.UserId AND u.Id = b.UserId AND ph.PostHistoryTypeId=2 AND ph.CreationDate>='2011-02-21 23:51:06'::timestamp AND b.Date>='2010-07-19 19:39:10'::timestamp;

/*+ HashJoin(u c p v)
 HashJoin(c p v)
 HashJoin(p v)
 SeqScan(u)
 SeqScan(c)
 SeqScan(p)
 SeqScan(v)
 Leading((u (c (p v)))) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE p.Id = c.PostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND c.Score=6 AND p.PostTypeId=2 AND p.CreationDate<='2014-09-11 14:55:26'::timestamp AND v.BountyAmount<=50 AND u.DownVotes>=0 AND u.DownVotes<=1 AND u.UpVotes<=65;

/*+ HashJoin(v pl c p)
 HashJoin(pl c p)
 HashJoin(c p)
 SeqScan(v)
 SeqScan(pl)
 SeqScan(c)
 SeqScan(p)
 Leading((v (pl (c p)))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, votes as v WHERE p.Id = c.PostId AND c.PostId = pl.PostId AND pl.PostId = v.PostId AND p.CommentCount>=0;

/*+ HashJoin(c v p u)
 HashJoin(v p u)
 HashJoin(p u)
 SeqScan(c)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 Leading((c (v (p u)))) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = v.UserId AND p.AnswerCount<=6 AND p.FavoriteCount<=5 AND u.Views=6 AND u.UpVotes>=0 AND u.CreationDate>='2011-04-13 06:53:16'::timestamp AND u.CreationDate<='2014-08-24 19:17:58'::timestamp;

/*+ HashJoin(v ph c pl)
 HashJoin(ph c pl)
 HashJoin(c pl)
 SeqScan(v)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(pl)
 Leading((v (ph (c pl)))) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, postHistory as ph, votes as v WHERE pl.PostId = c.PostId AND c.PostId = ph.PostId AND ph.PostId = v.PostId AND c.CreationDate<='2014-09-05 19:33:38'::timestamp;

/*+ HashJoin(b u p pl)
 HashJoin(u p pl)
 HashJoin(p pl)
 SeqScan(b)
 SeqScan(u)
 SeqScan(p)
 IndexScan(pl)
 Leading((b (u (p pl)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.ViewCount<=143055 AND p.AnswerCount>=0 AND p.AnswerCount<=3 AND p.CommentCount>=0 AND p.CommentCount<=10 AND u.DownVotes<=0 AND u.UpVotes>=0;

/*+ HashJoin(c u b v)
 MergeJoin(c u b)
 MergeJoin(u b)
 SeqScan(c)
 IndexScan(u)
 IndexScan(b)
 SeqScan(v)
 Leading(((c (u b)) v)) */
SELECT COUNT(*) FROM comments as c, votes as v, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND c.Score=0 AND u.Reputation<=436 AND u.Views<=44 AND u.UpVotes>=0 AND u.UpVotes<=53 AND u.CreationDate<='2014-08-27 21:30:41'::timestamp;

/*+ HashJoin(b u p pl)
 HashJoin(u p pl)
 HashJoin(p pl)
 SeqScan(b)
 SeqScan(u)
 SeqScan(p)
 IndexScan(pl)
 Leading((b (u (p pl)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.ViewCount<=34044 AND p.AnswerCount>=0 AND p.CommentCount=0 AND p.CreationDate<='2014-08-18 08:39:49'::timestamp AND u.Reputation<=814 AND u.Views<=25 AND u.DownVotes>=0 AND b.Date>='2010-07-19 21:39:06'::timestamp;

/*+ HashJoin(ph u p v)
 HashJoin(ph u p)
 HashJoin(u p)
 SeqScan(ph)
 IndexScan(u)
 SeqScan(p)
 IndexScan(v)
 Leading(((ph (u p)) v)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, votes as v, users as u WHERE p.Id = ph.PostId AND u.Id = p.OwnerUserId AND p.Id = v.PostId AND p.PostTypeId=2 AND v.VoteTypeId=2 AND u.Views>=0;

/*+ HashJoin(p c pl v)
 HashJoin(c pl v)
 HashJoin(pl v)
 SeqScan(p)
 SeqScan(c)
 IndexScan(pl)
 SeqScan(v)
 Leading((p (c (pl v)))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, votes as v WHERE p.Id = c.PostId AND c.PostId = pl.PostId AND pl.PostId = v.PostId AND c.Score=2 AND p.Score>=0 AND v.BountyAmount>=0 AND v.BountyAmount<=200 AND v.CreationDate>='2010-07-20 00:00:00'::timestamp;

/*+ HashJoin(ph u v c)
 MergeJoin(ph u v)
 HashJoin(u v)
 IndexScan(ph)
 IndexScan(u)
 IndexScan(v)
 SeqScan(c)
 Leading(((ph (u v)) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v, users as u WHERE u.Id = v.UserId AND v.UserId = ph.UserId AND ph.UserId =c.UserId AND c.Score=0 AND u.DownVotes=0;

/*+ HashJoin(ph u v c)
 HashJoin(ph u v)
 HashJoin(u v)
 SeqScan(ph)
 SeqScan(u)
 SeqScan(v)
 SeqScan(c)
 Leading(((ph (u v)) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v, users as u WHERE u.Id = v.UserId AND v.UserId = ph.UserId AND ph.UserId =c.UserId AND c.Score=3 AND v.BountyAmount<=50 AND u.UpVotes>=0 AND u.CreationDate>='2010-07-27 07:48:22'::timestamp;

/*+ HashJoin(ph b u v)
 MergeJoin(b u v)
 HashJoin(u v)
 SeqScan(ph)
 IndexScan(b)
 IndexScan(u)
 SeqScan(v)
 Leading((ph (b (u v)))) */
SELECT COUNT(*) FROM postHistory as ph, votes as v, users as u, badges as b WHERE u.Id = ph.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND ph.PostHistoryTypeId=1 AND ph.CreationDate>='2010-09-01 23:57:06'::timestamp AND v.BountyAmount<=50 AND v.CreationDate>='2010-07-19 00:00:00'::timestamp AND v.CreationDate<='2014-09-12 00:00:00'::timestamp AND u.Views>=0 AND u.Views<=2342 AND u.DownVotes<=3;

/*+ NestLoop(u v p b)
 HashJoin(u v p)
 HashJoin(v p)
 SeqScan(u)
 SeqScan(v)
 SeqScan(p)
 IndexScan(b)
 Leading(((u (v p)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND v.BountyAmount>=0 AND v.CreationDate>='2010-07-20 00:00:00'::timestamp AND p.PostTypeId=1 AND p.CommentCount>=0 AND p.CommentCount<=14 AND p.CreationDate<='2014-08-30 02:49:22'::timestamp AND b.Date<='2014-09-10 14:43:33'::timestamp AND u.Reputation<=239 AND u.Views>=0 AND u.DownVotes>=0;

/*+ HashJoin(c v p u)
 HashJoin(v p u)
 HashJoin(p u)
 SeqScan(c)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 Leading((c (v (p u)))) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = v.UserId AND c.Score=0 AND p.Score>=0 AND p.Score<=18 AND p.ViewCount>=0 AND p.CommentCount>=0 AND v.BountyAmount<=50 AND u.DownVotes>=0;

/*+ HashJoin(v u pl p)
 HashJoin(u pl p)
 HashJoin(pl p)
 SeqScan(v)
 SeqScan(u)
 IndexScan(pl)
 SeqScan(p)
 Leading((v (u (pl p)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, votes as v, users as u WHERE p.Id = pl.RelatedPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND pl.LinkTypeId=1 AND p.Score<=27 AND p.ViewCount>=0 AND p.ViewCount<=8908 AND p.AnswerCount<=14 AND p.FavoriteCount>=0 AND p.CreationDate<='2014-08-19 14:06:16'::timestamp AND v.VoteTypeId=2 AND u.Views<=57;

/*+ HashJoin(ph v c pl)
 HashJoin(c pl)
 HashJoin(ph v)
 SeqScan(ph)
 SeqScan(v)
 SeqScan(c)
 IndexScan(pl)
 Leading(((ph v) (c pl))) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, postHistory as ph, votes as v WHERE pl.PostId = c.PostId AND c.PostId = ph.PostId AND ph.PostId = v.PostId AND c.CreationDate<='2014-09-01 00:31:44'::timestamp AND v.BountyAmount>=0 AND v.BountyAmount<=100 AND v.CreationDate>='2010-08-23 00:00:00'::timestamp AND v.CreationDate<='2014-09-14 00:00:00'::timestamp;

/*+ HashJoin(c v p u)
 HashJoin(v p u)
 HashJoin(p u)
 SeqScan(c)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 Leading((c (v (p u)))) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = v.UserId AND c.Score=0 AND c.CreationDate>='2010-08-17 17:18:02'::timestamp AND p.FavoriteCount>=0 AND p.FavoriteCount<=6 AND p.CreationDate>='2010-09-30 16:32:06'::timestamp AND v.CreationDate>='2010-07-20 00:00:00'::timestamp AND v.CreationDate<='2014-09-12 00:00:00'::timestamp AND u.DownVotes<=0;

/*+ HashJoin(c ph v pl)
 HashJoin(c ph v)
 HashJoin(ph v)
 SeqScan(c)
 SeqScan(ph)
 SeqScan(v)
 IndexScan(pl)
 Leading(((c (ph v)) pl)) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, postHistory as ph, votes as v WHERE pl.PostId = c.PostId AND c.PostId = ph.PostId AND ph.PostId = v.PostId AND pl.CreationDate<='2014-08-29 16:49:55'::timestamp AND ph.PostHistoryTypeId=4 AND v.BountyAmount>=0;

/*+ HashJoin(v b u p)
 HashJoin(b u p)
 HashJoin(u p)
 SeqScan(v)
 SeqScan(b)
 SeqScan(u)
 SeqScan(p)
 Leading((v (b (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE u.Id = v.UserId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND v.CreationDate<='2014-09-11 00:00:00'::timestamp AND p.ViewCount<=17403 AND p.AnswerCount>=0 AND p.AnswerCount<=8 AND p.FavoriteCount>=0 AND u.Views<=25 AND u.DownVotes>=0 AND u.CreationDate<='2014-08-07 12:04:18'::timestamp;

/*+ HashJoin(ph v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(ph)
 SeqScan(v)
 SeqScan(u)
 SeqScan(p)
 Leading((ph (v (u p)))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, votes as v, users as u WHERE p.Id = ph.PostId AND u.Id = p.OwnerUserId AND p.Id = v.PostId AND ph.PostHistoryTypeId=2 AND p.PostTypeId=1 AND p.ViewCount>=0 AND u.Reputation>=1 AND u.Reputation<=143 AND u.Views>=0 AND u.Views<=1319;

/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 SeqScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE u.Id = v.UserId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND v.CreationDate<='2014-09-09 00:00:00'::timestamp AND p.ViewCount>=0 AND p.CommentCount=1 AND p.FavoriteCount=0 AND p.CreationDate>='2010-07-20 03:11:36'::timestamp AND b.Date>='2010-07-27 07:53:44'::timestamp AND b.Date<='2014-09-09 15:07:14'::timestamp AND u.Views>=0 AND u.Views<=38 AND u.DownVotes<=0;

/*+ HashJoin(v ph c pl)
 HashJoin(ph c pl)
 HashJoin(c pl)
 SeqScan(v)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(pl)
 Leading((v (ph (c pl)))) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, postHistory as ph, votes as v WHERE pl.PostId = c.PostId AND c.PostId = ph.PostId AND ph.PostId = v.PostId AND c.CreationDate>='2010-07-26 20:06:32'::timestamp AND ph.PostHistoryTypeId=2 AND ph.CreationDate>='2010-09-21 20:59:59'::timestamp AND v.VoteTypeId=2 AND v.CreationDate>='2010-07-19 00:00:00'::timestamp AND v.CreationDate<='2014-09-14 00:00:00'::timestamp;

/*+ HashJoin(p c pl v)
 HashJoin(pl v)
 NestLoop(p c)
 SeqScan(p)
 IndexScan(c)
 IndexScan(pl)
 SeqScan(v)
 Leading(((p c) (pl v))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, votes as v WHERE p.Id = c.PostId AND c.PostId = pl.PostId AND pl.PostId = v.PostId AND c.Score=2 AND c.CreationDate>='2010-07-26 19:47:31'::timestamp AND c.CreationDate<='2014-09-11 15:52:29'::timestamp AND p.Score>=-1 AND p.CommentCount=2 AND p.FavoriteCount<=4 AND p.CreationDate>='2010-07-22 12:25:48'::timestamp AND v.BountyAmount<=100 AND v.CreationDate>='2010-07-19 00:00:00'::timestamp;

/*+ HashJoin(b u p pl)
 HashJoin(u p pl)
 HashJoin(p pl)
 SeqScan(b)
 SeqScan(u)
 SeqScan(p)
 IndexScan(pl)
 Leading((b (u (p pl)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.PostTypeId=1 AND p.ViewCount>=0 AND p.ViewCount<=2816 AND p.AnswerCount>=0 AND p.CommentCount>=0 AND p.CommentCount<=11 AND p.CreationDate<='2014-09-02 17:08:48'::timestamp AND u.Reputation>=1 AND u.DownVotes>=0 AND u.UpVotes<=109 AND u.CreationDate<='2014-08-13 13:39:19'::timestamp AND b.Date<='2014-09-01 22:38:33'::timestamp;

/*+ HashJoin(b u p v)
 MergeJoin(u p v)
 HashJoin(p v)
 SeqScan(b)
 SeqScan(u)
 SeqScan(p)
 SeqScan(v)
 Leading((b (u (p v)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND v.BountyAmount>=0 AND v.BountyAmount<=50 AND p.PostTypeId=1 AND p.AnswerCount<=4 AND p.FavoriteCount>=0 AND p.FavoriteCount<=4 AND p.CreationDate>='2010-08-02 21:50:27'::timestamp AND p.CreationDate<='2014-09-03 18:33:34'::timestamp AND b.Date>='2010-07-21 09:53:12'::timestamp AND u.UpVotes>=0;

/*+ HashJoin(c u p pl)
 HashJoin(u p pl)
 HashJoin(p pl)
 SeqScan(c)
 SeqScan(u)
 SeqScan(p)
 IndexScan(pl)
 Leading((c (u (p pl)))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, users as u WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.OwnerUserId = u.Id AND c.CreationDate>='2010-07-25 20:26:16'::timestamp AND p.CreationDate>='2010-07-29 11:25:13'::timestamp AND pl.CreationDate>='2011-06-24 16:26:57'::timestamp AND pl.CreationDate<='2014-05-17 07:30:03'::timestamp AND u.Views<=45 AND u.DownVotes<=1 AND u.UpVotes=0 AND u.CreationDate>='2010-11-10 01:31:03'::timestamp;

/*+ HashJoin(b u v p)
 HashJoin(u v p)
 HashJoin(v p)
 SeqScan(b)
 SeqScan(u)
 SeqScan(v)
 SeqScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND v.VoteTypeId=2 AND v.CreationDate>='2010-07-21 00:00:00'::timestamp AND v.CreationDate<='2014-09-12 00:00:00'::timestamp AND p.ViewCount>=0 AND p.ViewCount<=5788 AND b.Date>='2010-07-27 22:08:47'::timestamp AND b.Date<='2014-09-08 13:35:11'::timestamp AND u.Reputation>=1 AND u.Reputation<=342 AND u.DownVotes=0;

/*+ HashJoin(ph u p b)
 MergeJoin(ph u p)
 HashJoin(u p)
 SeqScan(ph)
 IndexScan(u)
 SeqScan(p)
 IndexScan(b)
 Leading(((ph (u p)) b)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u, badges as b WHERE u.Id = p.OwnerUserId AND p.OwnerUserId = ph.UserId AND ph.UserId = b.UserId AND ph.CreationDate>='2010-09-06 18:24:38'::timestamp AND ph.CreationDate<='2014-08-25 00:30:26'::timestamp AND p.Score>=-1 AND p.Score<=17 AND p.CreationDate>='2010-07-20 22:26:26'::timestamp AND p.CreationDate<='2014-09-05 14:31:25'::timestamp AND u.Reputation<=213 AND u.Views<=20 AND u.DownVotes=0 AND b.Date<='2014-09-03 14:46:08'::timestamp;

/*+ HashJoin(ph u p b)
 HashJoin(ph u p)
 HashJoin(u p)
 SeqScan(ph)
 IndexScan(u)
 SeqScan(p)
 IndexScan(b)
 Leading(((ph (u p)) b)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u, badges as b WHERE u.Id = p.OwnerUserId AND p.OwnerUserId = ph.UserId AND ph.UserId = b.UserId AND p.ViewCount<=17382 AND u.Reputation>=1 AND u.Reputation<=2725 AND u.Views>=0 AND u.Views<=17;

/*+ HashJoin(v u pl p)
 HashJoin(u pl p)
 HashJoin(pl p)
 SeqScan(v)
 SeqScan(u)
 IndexScan(pl)
 SeqScan(p)
 Leading((v (u (pl p)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, votes as v, users as u WHERE p.Id = pl.RelatedPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND p.ViewCount<=2845 AND p.FavoriteCount<=24 AND v.VoteTypeId=2 AND v.CreationDate>='2010-07-19 00:00:00'::timestamp AND u.Reputation>=1 AND u.Reputation<=3963 AND u.UpVotes>=0 AND u.CreationDate<='2014-08-31 21:52:46'::timestamp;

/*+ MergeJoin(c b u v)
 HashJoin(b u v)
 HashJoin(u v)
 SeqScan(c)
 SeqScan(b)
 SeqScan(u)
 SeqScan(v)
 Leading((c (b (u v)))) */
SELECT COUNT(*) FROM comments as c, votes as v, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND v.VoteTypeId=5 AND b.Date<='2014-09-13 14:49:15'::timestamp AND u.Views=0 AND u.DownVotes<=3 AND u.UpVotes>=0 AND u.UpVotes<=11;

/*+ HashJoin(c v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(c)
 SeqScan(v)
 SeqScan(u)
 SeqScan(p)
 Leading((c (v (u p)))) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = v.UserId AND p.ViewCount>=0 AND p.ViewCount<=6142 AND p.CommentCount<=9 AND p.FavoriteCount>=0 AND p.FavoriteCount<=21 AND v.CreationDate>='2010-07-20 00:00:00'::timestamp AND v.CreationDate<='2014-09-10 00:00:00'::timestamp;

/*+ HashJoin(b u p pl)
 HashJoin(u p pl)
 HashJoin(p pl)
 SeqScan(b)
 SeqScan(u)
 SeqScan(p)
 IndexScan(pl)
 Leading((b (u (p pl)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND pl.LinkTypeId=1 AND pl.CreationDate>='2011-06-07 03:17:45'::timestamp AND pl.CreationDate<='2014-08-12 16:20:24'::timestamp AND p.AnswerCount>=0 AND p.CommentCount<=7 AND p.CreationDate>='2010-07-21 04:30:50'::timestamp AND b.Date>='2010-09-16 06:06:51'::timestamp;

/*+ HashJoin(v b u p)
 HashJoin(b u p)
 HashJoin(u p)
 SeqScan(v)
 SeqScan(b)
 SeqScan(u)
 SeqScan(p)
 Leading((v (b (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.ViewCount>=0 AND p.AnswerCount=0 AND p.FavoriteCount>=0 AND p.FavoriteCount<=6 AND p.CreationDate>='2010-07-21 04:48:50'::timestamp AND p.CreationDate<='2014-09-04 16:26:54'::timestamp AND u.Reputation>=1 AND u.Reputation<=583;

/*+ HashJoin(ph u b c)
 MergeJoin(ph u b)
 HashJoin(u b)
 IndexScan(ph)
 IndexScan(u)
 IndexScan(b)
 SeqScan(c)
 Leading(((ph (u b)) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = ph.UserId AND u.Id = b.UserId AND c.Score=0 AND u.Views>=0 AND u.DownVotes>=0 AND u.DownVotes<=3 AND u.UpVotes>=0;

/*+ HashJoin(ph u b c)
 MergeJoin(ph u b)
 HashJoin(u b)
 SeqScan(ph)
 IndexScan(u)
 IndexScan(b)
 SeqScan(c)
 Leading(((ph (u b)) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = ph.UserId AND u.Id = b.UserId AND c.CreationDate>='2010-07-19 20:19:28'::timestamp AND c.CreationDate<='2014-09-12 11:35:25'::timestamp AND ph.PostHistoryTypeId=5 AND u.Reputation<=121 AND u.UpVotes>=0;

/*+ HashJoin(b u p pl)
 HashJoin(u p pl)
 HashJoin(p pl)
 SeqScan(b)
 SeqScan(u)
 SeqScan(p)
 IndexScan(pl)
 Leading((b (u (p pl)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND pl.LinkTypeId=1 AND p.CreationDate>='2010-08-19 05:56:06'::timestamp AND p.CreationDate<='2014-09-06 18:24:48'::timestamp AND u.UpVotes=0 AND u.CreationDate>='2011-06-20 18:04:47'::timestamp AND b.Date<='2014-09-13 15:45:32'::timestamp;

/*+ HashJoin(ph v c pl)
 HashJoin(c pl)
 HashJoin(ph v)
 SeqScan(ph)
 SeqScan(v)
 SeqScan(c)
 IndexScan(pl)
 Leading(((ph v) (c pl))) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, postHistory as ph, votes as v WHERE pl.PostId = c.PostId AND c.PostId = ph.PostId AND ph.PostId = v.PostId AND c.Score=0 AND pl.LinkTypeId=1 AND ph.PostHistoryTypeId=1 AND v.BountyAmount>=0;

/*+ HashJoin(b u p pl)
 HashJoin(u p pl)
 HashJoin(p pl)
 SeqScan(b)
 SeqScan(u)
 SeqScan(p)
 IndexScan(pl)
 Leading((b (u (p pl)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND pl.LinkTypeId=1 AND pl.CreationDate>='2010-08-27 10:41:43'::timestamp AND pl.CreationDate<='2014-06-17 11:45:20'::timestamp AND p.PostTypeId=2 AND p.CommentCount>=0 AND p.CommentCount<=18 AND u.UpVotes>=0;

/*+ MergeJoin(v b u p)
 HashJoin(b u p)
 HashJoin(u p)
 IndexScan(v)
 SeqScan(b)
 IndexScan(u)
 SeqScan(p)
 Leading((v (b (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE u.Id = v.UserId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND v.CreationDate<='2014-09-13 00:00:00'::timestamp AND p.ViewCount<=9102 AND p.AnswerCount>=0 AND p.AnswerCount<=6 AND p.CommentCount>=0 AND p.CommentCount<=15 AND u.CreationDate>='2010-07-19 19:16:09'::timestamp AND u.CreationDate<='2014-08-30 17:58:36'::timestamp;

/*+ HashJoin(c u p v)
 HashJoin(u p v)
 HashJoin(p v)
 SeqScan(c)
 SeqScan(u)
 SeqScan(p)
 SeqScan(v)
 Leading((c (u (p v)))) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE p.Id = c.PostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND p.PostTypeId=1 AND p.AnswerCount<=4 AND p.CreationDate>='2010-08-25 08:22:06'::timestamp AND p.CreationDate<='2014-08-19 18:02:42'::timestamp AND v.CreationDate='2014-07-24 00:00:00'::timestamp;

/*+ HashJoin(ph u v c)
 HashJoin(ph u v)
 HashJoin(u v)
 SeqScan(ph)
 IndexScan(u)
 IndexScan(v)
 SeqScan(c)
 Leading(((ph (u v)) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v, users as u WHERE u.Id = v.UserId AND v.UserId = ph.UserId AND ph.UserId =c.UserId AND ph.CreationDate<='2014-08-11 07:36:03'::timestamp AND v.CreationDate>='2010-07-19 00:00:00'::timestamp AND v.CreationDate<='2014-09-10 00:00:00'::timestamp AND u.Reputation<=415 AND u.DownVotes>=0 AND u.DownVotes<=0;

/*+ HashJoin(v u pl p)
 HashJoin(u pl p)
 HashJoin(pl p)
 SeqScan(v)
 SeqScan(u)
 IndexScan(pl)
 SeqScan(p)
 Leading((v (u (pl p)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, votes as v, users as u WHERE p.Id = pl.RelatedPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Reputation>=1 AND u.UpVotes<=73;

/*+ HashJoin(ph v u b)
 HashJoin(v u b)
 HashJoin(u b)
 SeqScan(ph)
 SeqScan(v)
 IndexScan(u)
 IndexScan(b)
 Leading((ph (v (u b)))) */
SELECT COUNT(*) FROM postHistory as ph, votes as v, users as u, badges as b WHERE u.Id = ph.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND v.VoteTypeId=5 AND v.CreationDate<='2014-09-13 00:00:00'::timestamp AND u.Reputation=163 AND u.Views>=0 AND u.DownVotes<=1 AND u.UpVotes<=625 AND b.Date<='2014-07-17 11:47:57'::timestamp;

/*+ HashJoin(v pl c p)
 MergeJoin(pl c p)
 HashJoin(c p)
 SeqScan(v)
 IndexScan(pl)
 SeqScan(c)
 SeqScan(p)
 Leading((v (pl (c p)))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, votes as v WHERE p.Id = c.PostId AND c.PostId = pl.PostId AND pl.PostId = v.PostId AND c.Score=2 AND p.PostTypeId=1 AND p.Score<=22 AND p.ViewCount>=0 AND pl.LinkTypeId=1;

/*+ HashJoin(c p u v)
 HashJoin(p u v)
 HashJoin(u v)
 SeqScan(c)
 SeqScan(p)
 SeqScan(u)
 SeqScan(v)
 Leading((c (p (u v)))) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = v.UserId AND c.Score=0 AND p.PostTypeId=1 AND p.Score<=40 AND p.CommentCount<=10 AND p.FavoriteCount<=9 AND p.CreationDate>='2010-07-20 05:35:48'::timestamp AND p.CreationDate<='2014-08-28 07:04:48'::timestamp AND v.BountyAmount<=50 AND u.DownVotes<=4 AND u.UpVotes>=0 AND u.UpVotes<=5;

/*+ HashJoin(ph u b c)
 MergeJoin(ph u b)
 MergeJoin(u b)
 SeqScan(ph)
 IndexScan(u)
 IndexScan(b)
 SeqScan(c)
 Leading(((ph (u b)) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = ph.UserId AND u.Id = b.UserId AND c.Score=0 AND ph.PostHistoryTypeId=2 AND ph.CreationDate<='2014-08-13 02:45:09'::timestamp AND b.Date>='2010-08-01 14:14:55'::timestamp;

/*+ HashJoin(ph v c pl)
 HashJoin(c pl)
 HashJoin(ph v)
 SeqScan(ph)
 SeqScan(v)
 SeqScan(c)
 IndexScan(pl)
 Leading(((ph v) (c pl))) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, postHistory as ph, votes as v WHERE pl.PostId = c.PostId AND c.PostId = ph.PostId AND ph.PostId = v.PostId AND c.Score=0 AND c.CreationDate>='2010-08-05 04:47:04'::timestamp AND c.CreationDate<='2014-09-14 01:07:29'::timestamp AND v.BountyAmount>=0;

/*+ HashJoin(c v p u)
 HashJoin(v p u)
 HashJoin(p u)
 SeqScan(c)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 Leading((c (v (p u)))) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = v.UserId AND p.Score<=29 AND p.ViewCount>=0 AND p.ViewCount<=2197 AND v.BountyAmount>=0 AND v.BountyAmount<=100;

/*+ HashJoin(ph u p b)
 MergeJoin(ph u p)
 HashJoin(u p)
 SeqScan(ph)
 IndexScan(u)
 SeqScan(p)
 IndexScan(b)
 Leading(((ph (u p)) b)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u, badges as b WHERE u.Id = p.OwnerUserId AND p.OwnerUserId = ph.UserId AND ph.UserId = b.UserId AND p.CommentCount>=0 AND p.CommentCount<=18 AND u.Views>=0;

/*+ HashJoin(ph v c pl)
 HashJoin(c pl)
 HashJoin(ph v)
 SeqScan(ph)
 SeqScan(v)
 SeqScan(c)
 IndexScan(pl)
 Leading(((ph v) (c pl))) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, postHistory as ph, votes as v WHERE pl.PostId = c.PostId AND c.PostId = ph.PostId AND ph.PostId = v.PostId AND c.CreationDate>='2010-08-02 20:33:00'::timestamp AND c.CreationDate<='2014-09-12 16:21:58'::timestamp AND pl.LinkTypeId=1 AND pl.CreationDate>='2011-03-15 22:12:37'::timestamp AND pl.CreationDate<='2014-07-29 13:13:06'::timestamp AND v.BountyAmount>=0 AND v.BountyAmount<=50;

/*+ HashJoin(ph b u v)
 HashJoin(b u v)
 HashJoin(u v)
 SeqScan(ph)
 SeqScan(b)
 SeqScan(u)
 SeqScan(v)
 Leading((ph (b (u v)))) */
SELECT COUNT(*) FROM postHistory as ph, votes as v, users as u, badges as b WHERE u.Id = ph.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND ph.PostHistoryTypeId=1 AND ph.CreationDate>='2010-12-04 00:06:11'::timestamp AND v.VoteTypeId=5 AND v.CreationDate<='2014-09-13 00:00:00'::timestamp AND u.Views>=0 AND u.UpVotes<=111 AND b.Date>='2010-07-27 09:13:45'::timestamp;

/*+ HashJoin(ph u b c)
 MergeJoin(ph u b)
 HashJoin(u b)
 IndexScan(ph)
 IndexScan(u)
 IndexScan(b)
 SeqScan(c)
 Leading(((ph (u b)) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = ph.UserId AND u.Id = b.UserId AND c.Score=0 AND c.CreationDate<='2014-09-07 18:28:52'::timestamp AND ph.PostHistoryTypeId=5 AND u.Views<=51 AND u.CreationDate>='2010-07-28 12:51:37'::timestamp;

/*+ HashJoin(ph u b c)
 MergeJoin(ph u b)
 MergeJoin(u b)
 SeqScan(ph)
 IndexScan(u)
 IndexScan(b)
 SeqScan(c)
 Leading(((ph (u b)) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = ph.UserId AND u.Id = b.UserId AND ph.PostHistoryTypeId=2 AND u.DownVotes<=6;

/*+ HashJoin(ph u b v)
 HashJoin(ph u b)
 HashJoin(u b)
 SeqScan(ph)
 IndexScan(u)
 IndexScan(b)
 IndexScan(v)
 Leading(((ph (u b)) v)) */
SELECT COUNT(*) FROM postHistory as ph, votes as v, users as u, badges as b WHERE u.Id = ph.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND ph.PostHistoryTypeId=4 AND u.Reputation>=1 AND u.Views>=0 AND u.Views<=26;

/*+ HashJoin(v ph c pl)
 HashJoin(ph c pl)
 HashJoin(c pl)
 SeqScan(v)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(pl)
 Leading((v (ph (c pl)))) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, postHistory as ph, votes as v WHERE pl.PostId = c.PostId AND c.PostId = ph.PostId AND ph.PostId = v.PostId AND c.CreationDate<='2014-09-07 02:26:52'::timestamp;

/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 SeqScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE u.Id = v.UserId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND v.VoteTypeId=5 AND v.CreationDate>='2010-01-05 00:00:00'::timestamp AND v.CreationDate<='2014-09-13 00:00:00'::timestamp AND p.FavoriteCount>=0 AND p.FavoriteCount<=6 AND u.CreationDate>='2010-07-27 22:00:34'::timestamp AND u.CreationDate<='2014-09-10 19:25:03'::timestamp;

/*+ HashJoin(c v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(c)
 SeqScan(v)
 SeqScan(u)
 SeqScan(p)
 Leading((c (v (u p)))) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = v.UserId AND c.CreationDate>='2010-09-04 03:59:07'::timestamp AND c.CreationDate<='2014-09-02 21:34:17'::timestamp AND v.VoteTypeId=5 AND v.CreationDate>='2010-07-21 00:00:00'::timestamp AND v.CreationDate<='2014-09-10 00:00:00'::timestamp AND u.Reputation<=5859 AND u.Views>=0;

/*+ HashJoin(u pl p v)
 MergeJoin(pl p v)
 HashJoin(p v)
 SeqScan(u)
 IndexScan(pl)
 SeqScan(p)
 SeqScan(v)
 Leading((u (pl (p v)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, votes as v, users as u WHERE p.Id = pl.RelatedPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND p.ViewCount>=0 AND p.ViewCount<=17534 AND p.AnswerCount>=0 AND p.AnswerCount<=2 AND p.CreationDate>='2010-07-26 20:17:17'::timestamp AND p.CreationDate<='2014-09-12 14:50:38'::timestamp AND v.BountyAmount>=0 AND v.BountyAmount<=100 AND u.Reputation>=1 AND u.UpVotes>=0;

/*+ HashJoin(c ph u v)
 MergeJoin(ph u v)
 HashJoin(u v)
 SeqScan(c)
 IndexScan(ph)
 IndexScan(u)
 SeqScan(v)
 Leading((c (ph (u v)))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v, users as u WHERE u.Id = v.UserId AND v.UserId = ph.UserId AND ph.UserId =c.UserId AND v.BountyAmount>=0 AND u.Reputation=44;

/*+ HashJoin(ph v u b)
 HashJoin(v u b)
 HashJoin(u b)
 SeqScan(ph)
 SeqScan(v)
 IndexScan(u)
 IndexScan(b)
 Leading((ph (v (u b)))) */
SELECT COUNT(*) FROM postHistory as ph, votes as v, users as u, badges as b WHERE u.Id = ph.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND v.BountyAmount<=100 AND u.DownVotes=0 AND b.Date>='2010-08-19 11:24:28'::timestamp;

/*+ HashJoin(c u p pl)
 MergeJoin(u p pl)
 HashJoin(p pl)
 SeqScan(c)
 SeqScan(u)
 SeqScan(p)
 IndexScan(pl)
 Leading((c (u (p pl)))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, users as u WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.OwnerUserId = u.Id AND p.Score>=0 AND p.AnswerCount>=0 AND p.FavoriteCount>=0 AND p.CreationDate>='2010-08-10 06:55:21'::timestamp AND pl.CreationDate<='2014-07-23 11:38:59'::timestamp AND u.Views>=0 AND u.DownVotes>=0;

/*+ HashJoin(ph u p b)
 HashJoin(ph u p)
 HashJoin(u p)
 SeqScan(ph)
 IndexScan(u)
 SeqScan(p)
 SeqScan(b)
 Leading(((ph (u p)) b)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u, badges as b WHERE u.Id = p.OwnerUserId AND p.OwnerUserId = ph.UserId AND ph.UserId = b.UserId AND p.ViewCount>=0 AND p.AnswerCount>=0;

/*+ HashJoin(ph u b c)
 MergeJoin(ph u b)
 HashJoin(u b)
 IndexScan(ph)
 IndexScan(u)
 IndexScan(b)
 SeqScan(c)
 Leading(((ph (u b)) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = ph.UserId AND u.Id = b.UserId AND c.Score=0 AND u.Views=0 AND u.DownVotes>=0 AND u.DownVotes<=1;

/*+ HashJoin(b u p pl)
 HashJoin(u p pl)
 HashJoin(p pl)
 SeqScan(b)
 SeqScan(u)
 SeqScan(p)
 IndexScan(pl)
 Leading((b (u (p pl)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.CommentCount<=12 AND u.UpVotes>=0 AND u.CreationDate>='2010-07-20 08:42:22'::timestamp;

/*+ HashJoin(v pl c p)
 HashJoin(pl c p)
 MergeJoin(c p)
 SeqScan(v)
 IndexScan(pl)
 SeqScan(c)
 SeqScan(p)
 Leading((v (pl (c p)))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, votes as v WHERE p.Id = c.PostId AND c.PostId = pl.PostId AND pl.PostId = v.PostId AND c.CreationDate<='2014-09-09 15:51:46'::timestamp AND p.Score=9 AND p.ViewCount>=0 AND p.ViewCount<=6033 AND p.FavoriteCount>=0 AND p.FavoriteCount<=4 AND v.VoteTypeId=2 AND v.CreationDate>='2010-07-20 00:00:00'::timestamp;

/*+ HashJoin(v ph c pl)
 HashJoin(ph c pl)
 HashJoin(c pl)
 SeqScan(v)
 SeqScan(ph)
 SeqScan(c)
 IndexScan(pl)
 Leading((v (ph (c pl)))) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, postHistory as ph, votes as v WHERE pl.PostId = c.PostId AND c.PostId = ph.PostId AND ph.PostId = v.PostId AND c.Score=0 AND c.CreationDate<='2014-09-13 21:08:07'::timestamp AND pl.LinkTypeId=1 AND ph.PostHistoryTypeId=3 AND ph.CreationDate>='2010-11-16 01:27:37'::timestamp AND v.VoteTypeId=2 AND v.CreationDate>='2010-07-19 00:00:00'::timestamp;

/*+ MergeJoin(ph u v c)
 HashJoin(ph u v)
 HashJoin(u v)
 SeqScan(ph)
 IndexScan(u)
 IndexScan(v)
 SeqScan(c)
 Leading(((ph (u v)) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v, users as u WHERE u.Id = v.UserId AND v.UserId = ph.UserId AND ph.UserId =c.UserId AND c.Score=1 AND c.CreationDate<='2014-09-02 11:07:53'::timestamp AND u.Views>=0 AND u.DownVotes<=2 AND u.UpVotes<=463;

/*+ HashJoin(v ph c pl)
 HashJoin(ph c pl)
 HashJoin(c pl)
 SeqScan(v)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(pl)
 Leading((v (ph (c pl)))) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, postHistory as ph, votes as v WHERE pl.PostId = c.PostId AND c.PostId = ph.PostId AND ph.PostId = v.PostId AND c.Score=0 AND ph.CreationDate<='2014-08-23 07:27:00'::timestamp AND v.CreationDate>='2010-07-19 00:00:00'::timestamp;

/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 SeqScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND v.VoteTypeId=2 AND v.CreationDate<='2014-09-13 00:00:00'::timestamp AND p.PostTypeId=1 AND p.CreationDate>='2010-07-27 14:02:37'::timestamp AND p.CreationDate<='2014-09-01 21:20:46'::timestamp AND b.Date>='2010-08-04 07:35:31'::timestamp AND u.Views>=0;

/*+ HashJoin(b v p u)
 HashJoin(v p u)
 HashJoin(p u)
 SeqScan(b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 Leading((b (v (p u)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE u.Id = v.UserId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND v.BountyAmount>=0 AND p.ViewCount>=0 AND p.ViewCount<=5250 AND p.AnswerCount=0 AND p.CommentCount<=12 AND p.FavoriteCount>=0 AND p.FavoriteCount<=4 AND b.Date>='2010-07-20 19:07:26'::timestamp AND b.Date<='2014-09-12 17:42:45'::timestamp AND u.Reputation>=1 AND u.Reputation<=6235 AND u.Views<=335 AND u.UpVotes<=692 AND u.CreationDate>='2011-03-01 17:04:23'::timestamp AND u.CreationDate<='2014-08-26 17:06:16'::timestamp;

/*+ HashJoin(u pl p v)
 MergeJoin(pl p v)
 HashJoin(p v)
 SeqScan(u)
 IndexScan(pl)
 SeqScan(p)
 SeqScan(v)
 Leading((u (pl (p v)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, votes as v, users as u WHERE p.Id = pl.RelatedPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND pl.LinkTypeId=1 AND pl.CreationDate<='2014-08-27 17:00:27'::timestamp AND p.PostTypeId=1 AND p.CommentCount>=0 AND p.CreationDate<='2014-09-05 07:18:43'::timestamp AND v.BountyAmount>=0 AND u.DownVotes=0;

/*+ HashJoin(c u p pl)
 MergeJoin(u p pl)
 HashJoin(p pl)
 SeqScan(c)
 SeqScan(u)
 SeqScan(p)
 IndexScan(pl)
 Leading((c (u (p pl)))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, users as u WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.OwnerUserId = u.Id AND p.AnswerCount>=0 AND p.AnswerCount<=4 AND pl.LinkTypeId=1 AND u.Reputation>=1 AND u.Reputation<=338;

/*+ HashJoin(b u p pl)
 HashJoin(u p pl)
 HashJoin(p pl)
 SeqScan(b)
 SeqScan(u)
 SeqScan(p)
 IndexScan(pl)
 Leading((b (u (p pl)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.PostTypeId=1 AND p.ViewCount>=0 AND p.AnswerCount<=4 AND p.FavoriteCount=0 AND p.CreationDate>='2010-07-26 16:10:45'::timestamp AND b.Date>='2010-07-22 17:33:19'::timestamp AND b.Date<='2014-09-07 08:47:42'::timestamp;

/*+ HashJoin(c u p pl)
 HashJoin(u p pl)
 HashJoin(p pl)
 SeqScan(c)
 SeqScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((c (u (p pl)))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, users as u WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.OwnerUserId = u.Id AND c.Score=0 AND c.CreationDate>='2010-08-19 07:08:13'::timestamp AND c.CreationDate<='2014-09-11 20:58:35'::timestamp AND p.Score>=-1 AND p.Score<=29 AND p.CreationDate>='2010-08-20 08:31:16'::timestamp AND p.CreationDate<='2014-08-26 07:56:06'::timestamp AND pl.LinkTypeId=1 AND u.Views>=0 AND u.Views<=17;

/*+ HashJoin(v u c p)
 HashJoin(u c p)
 HashJoin(c p)
 SeqScan(v)
 SeqScan(u)
 SeqScan(c)
 SeqScan(p)
 Leading((v (u (c p)))) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE p.Id = c.PostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND c.Score=0 AND p.PostTypeId=1 AND p.FavoriteCount>=0 AND u.Views>=0;

/*+ HashJoin(v ph c pl)
 HashJoin(ph c pl)
 HashJoin(c pl)
 SeqScan(v)
 SeqScan(ph)
 SeqScan(c)
 IndexScan(pl)
 Leading((v (ph (c pl)))) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, postHistory as ph, votes as v WHERE pl.PostId = c.PostId AND c.PostId = ph.PostId AND ph.PostId = v.PostId AND pl.LinkTypeId=1 AND pl.CreationDate>='2011-08-23 21:38:51'::timestamp AND pl.CreationDate<='2014-07-04 15:01:51'::timestamp;

/*+ HashJoin(c u b ph)
 NestLoop(u b ph)
 HashJoin(u b)
 IndexScan(c)
 IndexScan(u)
 SeqScan(b)
 IndexScan(ph)
 Leading((c ((u b) ph))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = ph.UserId AND u.Id = b.UserId AND c.Score=0 AND ph.PostHistoryTypeId=2 AND b.Date>='2010-10-14 07:59:36'::timestamp AND b.Date<='2014-09-11 16:13:26'::timestamp AND u.Reputation>=1 AND u.DownVotes>=0;

/*+ HashJoin(v c u p)
 HashJoin(c u p)
 HashJoin(u p)
 SeqScan(v)
 SeqScan(c)
 SeqScan(u)
 SeqScan(p)
 Leading((v (c (u p)))) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = v.UserId AND p.Score>=0 AND p.ViewCount<=11002 AND p.CreationDate>='2010-08-04 16:04:56'::timestamp AND u.Reputation>=1 AND u.Views>=0 AND u.CreationDate<='2014-08-26 12:53:36'::timestamp;

/*+ HashJoin(c u pl p)
 MergeJoin(u pl p)
 HashJoin(pl p)
 SeqScan(c)
 SeqScan(u)
 IndexScan(pl)
 SeqScan(p)
 Leading((c (u (pl p)))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, users as u WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.OwnerUserId = u.Id AND c.Score=0 AND p.Score>=-2 AND p.Score<=16 AND p.ViewCount<=4454 AND p.AnswerCount<=6 AND p.FavoriteCount>=0 AND p.FavoriteCount<=4 AND p.CreationDate>='2010-07-31 15:46:05'::timestamp AND p.CreationDate<='2014-09-06 21:29:15'::timestamp AND u.Views=0 AND u.DownVotes>=0 AND u.DownVotes<=1 AND u.UpVotes<=41 AND u.CreationDate>='2010-10-21 17:42:19'::timestamp;

/*+ HashJoin(b u p pl)
 HashJoin(u p pl)
 HashJoin(p pl)
 SeqScan(b)
 SeqScan(u)
 SeqScan(p)
 IndexScan(pl)
 Leading((b (u (p pl)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND pl.LinkTypeId=1 AND p.PostTypeId=1 AND p.ViewCount<=10068 AND p.CommentCount<=11 AND u.Reputation>=1 AND u.Reputation<=193 AND u.DownVotes>=0 AND u.DownVotes<=0;

/*+ HashJoin(ph u b c)
 MergeJoin(ph u b)
 HashJoin(u b)
 IndexScan(ph)
 IndexScan(u)
 IndexScan(b)
 SeqScan(c)
 Leading(((ph (u b)) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = ph.UserId AND u.Id = b.UserId AND c.Score=0 AND ph.CreationDate>='2010-08-01 22:38:49'::timestamp AND u.UpVotes<=10;

/*+ MergeJoin(c v u b)
 MergeJoin(v u b)
 HashJoin(u b)
 SeqScan(c)
 IndexScan(v)
 IndexScan(u)
 IndexScan(b)
 Leading((c (v (u b)))) */
SELECT COUNT(*) FROM comments as c, votes as v, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND c.CreationDate>='2010-09-08 02:51:52'::timestamp AND u.DownVotes>=0;

/*+ HashJoin(v ph c pl)
 HashJoin(ph c pl)
 HashJoin(c pl)
 SeqScan(v)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(pl)
 Leading((v (ph (c pl)))) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, postHistory as ph, votes as v WHERE pl.PostId = c.PostId AND c.PostId = ph.PostId AND ph.PostId = v.PostId AND pl.CreationDate<='2014-08-27 20:14:39'::timestamp;

/*+ HashJoin(ph u p v)
 HashJoin(u p v)
 HashJoin(p v)
 SeqScan(ph)
 SeqScan(u)
 SeqScan(p)
 SeqScan(v)
 Leading((ph (u (p v)))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, votes as v, users as u WHERE p.Id = ph.PostId AND u.Id = p.OwnerUserId AND p.Id = v.PostId AND p.FavoriteCount>=0 AND v.BountyAmount<=50 AND v.CreationDate>='2010-07-26 00:00:00'::timestamp AND v.CreationDate<='2014-09-11 00:00:00'::timestamp;

/*+ HashJoin(c ph u v)
 HashJoin(ph u v)
 HashJoin(u v)
 SeqScan(c)
 SeqScan(ph)
 SeqScan(u)
 SeqScan(v)
 Leading((c (ph (u v)))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v, users as u WHERE u.Id = v.UserId AND v.UserId = ph.UserId AND ph.UserId =c.UserId AND c.Score=1 AND v.BountyAmount<=50 AND v.CreationDate='2014-05-21 00:00:00'::timestamp AND u.Views>=0 AND u.CreationDate<='2014-08-04 18:46:45'::timestamp;

/*+ MergeJoin(c v u b)
 HashJoin(v u b)
 HashJoin(u b)
 SeqScan(c)
 SeqScan(v)
 IndexScan(u)
 IndexScan(b)
 Leading((c (v (u b)))) */
SELECT COUNT(*) FROM comments as c, votes as v, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND u.Views<=43 AND u.CreationDate<='2014-09-10 19:33:49'::timestamp;

/*+ HashJoin(c u p pl)
 HashJoin(u p pl)
 NestLoop(p pl)
 SeqScan(c)
 SeqScan(u)
 SeqScan(p)
 IndexScan(pl)
 Leading((c (u (p pl)))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, users as u WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.OwnerUserId = u.Id AND c.Score=2 AND p.PostTypeId=1 AND p.FavoriteCount=0 AND u.Reputation>=1 AND u.Reputation<=1530 AND u.CreationDate>='2010-07-19 19:08:13'::timestamp;

/*+ HashJoin(ph u b c)
 MergeJoin(ph u b)
 HashJoin(u b)
 IndexScan(ph)
 IndexScan(u)
 IndexScan(b)
 SeqScan(c)
 Leading(((ph (u b)) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = ph.UserId AND u.Id = b.UserId AND b.Date>='2010-07-21 12:33:12'::timestamp AND b.Date<='2014-08-11 10:41:32'::timestamp AND u.Reputation>=1 AND u.DownVotes<=0;

/*+ HashJoin(ph u p b)
 HashJoin(ph u p)
 HashJoin(u p)
 SeqScan(ph)
 IndexScan(u)
 SeqScan(p)
 IndexScan(b)
 Leading(((ph (u p)) b)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u, badges as b WHERE u.Id = p.OwnerUserId AND p.OwnerUserId = ph.UserId AND ph.UserId = b.UserId AND p.PostTypeId=1 AND p.Score>=0 AND p.Score<=25 AND p.CommentCount>=0 AND p.FavoriteCount>=0 AND p.FavoriteCount<=5 AND u.DownVotes>=0 AND u.CreationDate>='2011-03-09 21:55:06'::timestamp;

/*+ HashJoin(v ph c pl)
 HashJoin(ph c pl)
 HashJoin(c pl)
 SeqScan(v)
 SeqScan(ph)
 SeqScan(c)
 IndexScan(pl)
 Leading((v (ph (c pl)))) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, postHistory as ph, votes as v WHERE pl.PostId = c.PostId AND c.PostId = ph.PostId AND ph.PostId = v.PostId AND c.Score=0 AND pl.LinkTypeId=1;

/*+ MergeJoin(v b u p)
 HashJoin(b u p)
 HashJoin(u p)
 IndexScan(v)
 SeqScan(b)
 IndexScan(u)
 SeqScan(p)
 Leading((v (b (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE u.Id = v.UserId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.ViewCount>=0 AND p.ViewCount<=1532 AND p.CreationDate>='2010-07-23 17:02:28'::timestamp AND u.Views>=0 AND u.DownVotes<=0 AND u.UpVotes=0;

/*+ HashJoin(c v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(c)
 SeqScan(v)
 SeqScan(u)
 SeqScan(p)
 Leading((c (v (u p)))) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = v.UserId AND c.Score=0 AND p.PostTypeId=1 AND p.Score>=0 AND p.Score<=60 AND p.CommentCount<=17 AND p.FavoriteCount>=0 AND p.FavoriteCount<=3 AND p.CreationDate<='2014-09-06 18:24:48'::timestamp AND u.Reputation>=1 AND u.Views<=40;

/*+ HashJoin(c u p v)
 HashJoin(u p v)
 HashJoin(p v)
 SeqScan(c)
 SeqScan(u)
 SeqScan(p)
 SeqScan(v)
 Leading((c (u (p v)))) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE p.Id = c.PostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND p.ViewCount<=4934 AND p.AnswerCount<=4 AND p.CreationDate>='2010-09-04 11:15:48'::timestamp AND p.CreationDate<='2014-09-04 01:36:19'::timestamp AND v.BountyAmount<=100 AND u.DownVotes>=0 AND u.DownVotes<=1 AND u.CreationDate>='2010-12-24 13:10:01'::timestamp;

/*+ HashJoin(c u p pl)
 MergeJoin(u p pl)
 HashJoin(p pl)
 SeqScan(c)
 SeqScan(u)
 SeqScan(p)
 IndexScan(pl)
 Leading((c (u (p pl)))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, users as u WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.OwnerUserId = u.Id AND p.PostTypeId=1 AND p.Score>=-1 AND p.Score<=33 AND pl.CreationDate>='2010-10-19 15:39:26'::timestamp AND u.Reputation>=1 AND u.Views>=0 AND u.Views<=350 AND u.CreationDate>='2010-11-06 01:23:30'::timestamp;

/*+ MergeJoin(c v u b)
 HashJoin(v u b)
 HashJoin(u b)
 SeqScan(c)
 SeqScan(v)
 IndexScan(u)
 IndexScan(b)
 Leading((c (v (u b)))) */
SELECT COUNT(*) FROM comments as c, votes as v, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND c.Score=0 AND b.Date>='2010-09-27 18:39:07'::timestamp AND u.Reputation<=748 AND u.DownVotes>=0 AND u.DownVotes<=7 AND u.UpVotes>=0 AND u.UpVotes<=26 AND u.CreationDate<='2014-08-18 13:42:00'::timestamp;

/*+ HashJoin(p c pl v)
 HashJoin(c pl v)
 HashJoin(pl v)
 SeqScan(p)
 SeqScan(c)
 IndexScan(pl)
 SeqScan(v)
 Leading((p (c (pl v)))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, votes as v WHERE p.Id = c.PostId AND c.PostId = pl.PostId AND pl.PostId = v.PostId AND p.Score>=-3 AND p.Score<=31 AND p.FavoriteCount>=0 AND p.CreationDate>='2010-07-20 12:25:30'::timestamp AND p.CreationDate<='2014-09-08 12:35:43'::timestamp AND v.CreationDate='2012-04-24 00:00:00'::timestamp;

/*+ HashJoin(v u p pl)
 HashJoin(u p pl)
 NestLoop(p pl)
 SeqScan(v)
 SeqScan(u)
 SeqScan(p)
 IndexScan(pl)
 Leading((v (u (p pl)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, votes as v, users as u WHERE p.Id = pl.RelatedPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND p.AnswerCount<=5 AND p.FavoriteCount>=0 AND p.CreationDate>='2010-08-08 18:27:45'::timestamp AND p.CreationDate<='2014-08-20 08:36:08'::timestamp AND v.CreationDate<='2014-09-08 00:00:00'::timestamp AND u.DownVotes>=0 AND u.DownVotes<=0 AND u.CreationDate>='2010-07-19 21:29:03'::timestamp AND u.CreationDate<='2014-07-24 18:11:21'::timestamp;

/*+ HashJoin(b u p pl)
 HashJoin(u p pl)
 HashJoin(p pl)
 SeqScan(b)
 SeqScan(u)
 SeqScan(p)
 IndexScan(pl)
 Leading((b (u (p pl)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND pl.LinkTypeId=1 AND p.PostTypeId=1 AND p.Score>=0 AND p.Score<=46 AND p.AnswerCount<=14 AND p.FavoriteCount<=15 AND u.Views<=20 AND u.DownVotes=0 AND u.CreationDate>='2010-07-26 19:53:07'::timestamp AND u.CreationDate<='2014-07-24 13:51:27'::timestamp AND b.Date>='2010-07-27 09:13:45'::timestamp;

/*+ MergeJoin(pl u p v)
 HashJoin(u p v)
 HashJoin(p v)
 IndexScan(pl)
 SeqScan(u)
 SeqScan(p)
 SeqScan(v)
 Leading((pl (u (p v)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, votes as v, users as u WHERE p.Id = pl.RelatedPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND p.ViewCount>=0 AND p.ViewCount<=66972 AND p.AnswerCount>=0 AND p.AnswerCount<=5 AND p.FavoriteCount>=0 AND v.BountyAmount>=0 AND u.Reputation<=455 AND u.Views>=0 AND u.Views<=19 AND u.DownVotes>=0 AND u.DownVotes<=0;

/*+ HashJoin(b u p pl)
 HashJoin(u p pl)
 HashJoin(p pl)
 SeqScan(b)
 SeqScan(u)
 SeqScan(p)
 IndexScan(pl)
 Leading((b (u (p pl)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND pl.LinkTypeId=1 AND p.CreationDate>='2010-07-19 20:21:35'::timestamp AND u.CreationDate>='2010-11-10 14:06:27'::timestamp;

/*+ HashJoin(v b u p)
 HashJoin(b u p)
 HashJoin(u p)
 SeqScan(v)
 SeqScan(b)
 SeqScan(u)
 SeqScan(p)
 Leading((v (b (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE u.Id = v.UserId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.PostTypeId=1 AND p.Score<=50 AND p.FavoriteCount=17 AND u.Reputation>=1;

/*+ HashJoin(ph v u b)
 HashJoin(v u b)
 HashJoin(u b)
 SeqScan(ph)
 SeqScan(v)
 IndexScan(u)
 IndexScan(b)
 Leading((ph (v (u b)))) */
SELECT COUNT(*) FROM postHistory as ph, votes as v, users as u, badges as b WHERE u.Id = ph.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND u.Reputation<=8164 AND u.UpVotes>=0 AND u.UpVotes<=613 AND b.Date<='2014-09-05 17:29:23'::timestamp;

/*+ HashJoin(v ph c pl)
 HashJoin(ph c pl)
 HashJoin(c pl)
 SeqScan(v)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(pl)
 Leading((v (ph (c pl)))) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, postHistory as ph, votes as v WHERE pl.PostId = c.PostId AND c.PostId = ph.PostId AND ph.PostId = v.PostId AND c.Score=0 AND c.CreationDate>='2010-09-07 15:11:25'::timestamp AND c.CreationDate<='2014-09-11 13:51:01'::timestamp AND pl.LinkTypeId=1 AND pl.CreationDate<='2014-09-08 13:12:40'::timestamp AND ph.CreationDate>='2011-01-18 19:55:40'::timestamp AND ph.CreationDate<='2014-08-20 02:37:46'::timestamp;

/*+ HashJoin(b u p pl)
 HashJoin(u p pl)
 HashJoin(p pl)
 SeqScan(b)
 SeqScan(u)
 SeqScan(p)
 IndexScan(pl)
 Leading((b (u (p pl)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND pl.LinkTypeId=1 AND p.Score>=-2 AND p.FavoriteCount>=0 AND u.Reputation=1 AND u.DownVotes>=0 AND b.Date<='2014-09-12 19:51:43'::timestamp;

/*+ HashJoin(ph u b c)
 MergeJoin(ph u b)
 HashJoin(u b)
 SeqScan(ph)
 IndexScan(u)
 IndexScan(b)
 SeqScan(c)
 Leading(((ph (u b)) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = ph.UserId AND u.Id = b.UserId AND u.Reputation>=1 AND u.Views<=69 AND u.UpVotes>=0 AND u.CreationDate>='2010-08-04 18:21:49'::timestamp;

/*+ MergeJoin(c p u v)
 HashJoin(p u v)
 HashJoin(p u)
 IndexScan(c)
 IndexScan(p)
 SeqScan(u)
 IndexScan(v)
 Leading((c ((p u) v))) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = v.UserId AND p.PostTypeId=1 AND p.Score>=-2 AND u.Views<=94;

/*+ HashJoin(c u p pl)
 MergeJoin(u p pl)
 HashJoin(p pl)
 SeqScan(c)
 SeqScan(u)
 SeqScan(p)
 IndexScan(pl)
 Leading((c (u (p pl)))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, users as u WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.OwnerUserId = u.Id AND p.PostTypeId=1 AND p.Score>=-2 AND p.ViewCount>=0 AND p.CommentCount>=0 AND p.CreationDate>='2010-09-21 04:08:56'::timestamp AND u.DownVotes>=0 AND u.UpVotes<=5;

/*+ HashJoin(v pl c p)
 MergeJoin(pl c p)
 HashJoin(c p)
 SeqScan(v)
 IndexScan(pl)
 IndexScan(c)
 SeqScan(p)
 Leading((v (pl (c p)))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, votes as v WHERE p.Id = c.PostId AND c.PostId = pl.PostId AND pl.PostId = v.PostId AND c.CreationDate<='2014-09-12 15:33:28'::timestamp AND p.AnswerCount>=0 AND p.CommentCount<=11 AND v.VoteTypeId=2 AND v.CreationDate>='2010-07-27 00:00:00'::timestamp AND v.CreationDate<='2014-09-10 00:00:00'::timestamp;

/*+ HashJoin(ph u p v)
 HashJoin(u p v)
 HashJoin(p v)
 SeqScan(ph)
 SeqScan(u)
 SeqScan(p)
 SeqScan(v)
 Leading((ph (u (p v)))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, votes as v, users as u WHERE p.Id = ph.PostId AND u.Id = p.OwnerUserId AND p.Id = v.PostId AND p.PostTypeId=1 AND p.ViewCount>=0 AND p.CommentCount<=11 AND p.FavoriteCount>=0 AND v.BountyAmount>=0 AND v.BountyAmount<=50 AND u.Reputation>=1;

/*+ HashJoin(c ph u v)
 HashJoin(ph u v)
 HashJoin(u v)
 SeqScan(c)
 SeqScan(ph)
 SeqScan(u)
 SeqScan(v)
 Leading((c (ph (u v)))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v, users as u WHERE u.Id = v.UserId AND v.UserId = ph.UserId AND ph.UserId =c.UserId AND c.Score=1 AND v.CreationDate='2014-02-04 00:00:00'::timestamp AND u.Views<=123;

/*+ HashJoin(v pl c p)
 HashJoin(pl c p)
 MergeJoin(c p)
 SeqScan(v)
 IndexScan(pl)
 IndexScan(c)
 SeqScan(p)
 Leading((v (pl (c p)))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, votes as v WHERE p.Id = c.PostId AND c.PostId = pl.PostId AND pl.PostId = v.PostId AND c.Score=0 AND p.ViewCount<=6454 AND p.AnswerCount>=0 AND pl.LinkTypeId=1;

/*+ HashJoin(ph u p v)
 HashJoin(u p v)
 HashJoin(p v)
 SeqScan(ph)
 SeqScan(u)
 SeqScan(p)
 SeqScan(v)
 Leading((ph (u (p v)))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, votes as v, users as u WHERE p.Id = ph.PostId AND u.Id = p.OwnerUserId AND p.Id = v.PostId AND p.FavoriteCount>=0 AND p.FavoriteCount<=25 AND p.CreationDate<='2014-08-07 11:21:10'::timestamp AND v.BountyAmount>=0 AND u.Reputation>=1 AND u.Reputation<=268 AND u.DownVotes<=114 AND u.CreationDate>='2010-07-19 21:34:47'::timestamp AND u.CreationDate<='2014-09-01 02:51:49'::timestamp;

/*+ HashJoin(c u p pl)
 MergeJoin(u p pl)
 HashJoin(p pl)
 SeqScan(c)
 SeqScan(u)
 SeqScan(p)
 IndexScan(pl)
 Leading((c (u (p pl)))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, users as u WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.OwnerUserId = u.Id AND c.CreationDate<='2014-09-07 21:47:22'::timestamp AND p.FavoriteCount>=0 AND p.CreationDate>='2010-07-19 21:29:37'::timestamp AND pl.LinkTypeId=1 AND pl.CreationDate<='2014-09-03 15:35:02'::timestamp AND u.DownVotes>=0 AND u.DownVotes<=2 AND u.UpVotes<=24 AND u.CreationDate>='2010-07-31 11:22:56'::timestamp AND u.CreationDate<='2014-09-04 23:39:57'::timestamp;

/*+ HashJoin(c v u b)
 HashJoin(v u b)
 HashJoin(u b)
 SeqScan(c)
 SeqScan(v)
 IndexScan(u)
 IndexScan(b)
 Leading((c (v (u b)))) */
SELECT COUNT(*) FROM comments as c, votes as v, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND c.Score=0 AND v.CreationDate>='2010-07-27 00:00:00'::timestamp AND v.CreationDate<='2014-09-12 00:00:00'::timestamp AND b.Date<='2014-09-06 13:40:25'::timestamp AND u.Views>=0 AND u.Views<=462 AND u.UpVotes>=0 AND u.CreationDate>='2011-08-02 13:43:09'::timestamp;

/*+ HashJoin(v b u p)
 HashJoin(b u p)
 HashJoin(u p)
 SeqScan(v)
 SeqScan(b)
 SeqScan(u)
 SeqScan(p)
 Leading((v (b (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND v.VoteTypeId=2 AND v.CreationDate>='2010-07-20 00:00:00'::timestamp AND p.Score>=-4 AND p.Score<=14 AND p.ViewCount>=0 AND p.ViewCount<=5344 AND p.AnswerCount>=0 AND p.CommentCount<=11 AND p.FavoriteCount>=0 AND p.FavoriteCount<=10 AND u.DownVotes<=779 AND u.CreationDate<='2014-08-26 07:30:06'::timestamp;

/*+ HashJoin(c v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(c)
 SeqScan(v)
 SeqScan(u)
 SeqScan(p)
 Leading((c (v (u p)))) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = v.UserId AND c.Score=0 AND p.AnswerCount>=0 AND p.AnswerCount<=6 AND p.FavoriteCount>=0 AND p.FavoriteCount<=3 AND p.CreationDate<='2014-09-12 10:46:27'::timestamp AND v.CreationDate>='2010-07-23 00:00:00'::timestamp AND v.CreationDate<='2014-09-12 00:00:00'::timestamp AND u.Reputation>=1 AND u.Views<=20 AND u.DownVotes>=0;

/*+ HashJoin(ph u v c)
 MergeJoin(ph u v)
 HashJoin(u v)
 SeqScan(ph)
 IndexScan(u)
 SeqScan(v)
 SeqScan(c)
 Leading(((ph (u v)) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v, users as u WHERE u.Id = v.UserId AND v.UserId = ph.UserId AND ph.UserId =c.UserId AND c.CreationDate>='2010-08-13 20:07:47'::timestamp AND ph.PostHistoryTypeId=1 AND ph.CreationDate>='2010-07-21 20:53:54'::timestamp AND v.CreationDate<='2014-09-12 00:00:00'::timestamp AND u.UpVotes>=0 AND u.UpVotes<=186;

/*+ HashJoin(c v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(c)
 SeqScan(v)
 SeqScan(u)
 SeqScan(p)
 Leading((c (v (u p)))) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = v.UserId AND p.PostTypeId=1 AND p.ViewCount>=0 AND p.ViewCount<=1872 AND p.CommentCount<=14 AND p.FavoriteCount>=0 AND p.FavoriteCount<=3 AND p.CreationDate<='2014-09-11 22:07:32'::timestamp AND u.Views>=0 AND u.DownVotes=0 AND u.UpVotes>=0;

/*+ HashJoin(v u c p)
 HashJoin(u c p)
 HashJoin(c p)
 SeqScan(v)
 SeqScan(u)
 SeqScan(c)
 SeqScan(p)
 Leading((v (u (c p)))) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE p.Id = c.PostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND c.Score=0 AND p.Score<=121 AND p.AnswerCount<=3 AND v.VoteTypeId=2 AND v.CreationDate<='2014-09-08 00:00:00'::timestamp AND u.Reputation>=1 AND u.DownVotes>=0 AND u.UpVotes<=360 AND u.CreationDate>='2010-10-10 05:22:36'::timestamp;

/*+ HashJoin(v b u p)
 HashJoin(b u p)
 HashJoin(u p)
 SeqScan(v)
 SeqScan(b)
 SeqScan(u)
 SeqScan(p)
 Leading((v (b (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE u.Id = v.UserId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND v.CreationDate>='2010-07-21 00:00:00'::timestamp AND p.AnswerCount>=0 AND p.AnswerCount<=3 AND p.CommentCount>=0 AND p.CreationDate>='2010-09-20 19:11:45'::timestamp AND b.Date>='2010-07-20 07:09:08'::timestamp AND u.Reputation=101;

/*+ HashJoin(ph u p v)
 HashJoin(ph u p)
 HashJoin(u p)
 SeqScan(ph)
 IndexScan(u)
 SeqScan(p)
 IndexScan(v)
 Leading(((ph (u p)) v)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, votes as v, users as u WHERE p.Id = ph.PostId AND u.Id = p.OwnerUserId AND p.Id = v.PostId AND ph.CreationDate<='2014-07-30 18:22:22'::timestamp AND p.ViewCount>=0 AND v.CreationDate<='2014-09-11 00:00:00'::timestamp AND u.DownVotes>=0 AND u.DownVotes<=0;

/*+ HashJoin(u c p pl)
 HashJoin(c p pl)
 HashJoin(p pl)
 SeqScan(u)
 SeqScan(c)
 SeqScan(p)
 IndexScan(pl)
 Leading((u (c (p pl)))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, users as u WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.OwnerUserId = u.Id AND c.Score=0 AND c.CreationDate>='2010-09-03 22:44:20'::timestamp AND c.CreationDate<='2014-09-05 16:56:16'::timestamp AND p.ViewCount>=0 AND p.ViewCount<=3121 AND p.FavoriteCount>=0 AND p.FavoriteCount<=2 AND pl.CreationDate>='2010-10-20 22:08:02'::timestamp AND pl.CreationDate<='2014-09-02 09:46:38'::timestamp AND u.Reputation>=1 AND u.CreationDate<='2014-08-22 05:50:10'::timestamp;

