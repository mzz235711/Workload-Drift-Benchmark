/*+ HashJoin(b v)
 SeqScan(b)
 SeqScan(v)
 Leading((b v)) */
SELECT COUNT(*) FROM badges as b, votes as v WHERE b.UserId = v.UserId AND v.BountyAmount>=0 AND v.CreationDate<='2014-09-12 00:00:00'::timestamp;

/*+ HashJoin(ph c p)
 HashJoin(c p)
 SeqScan(ph)
 SeqScan(c)
 IndexScan(p)
 Leading((ph (c p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph WHERE p.Id = c.PostId AND p.Id = ph.PostId AND p.CreationDate<='2014-09-12 01:53:02'::timestamp AND ph.PostHistoryTypeId=3;

/*+ HashJoin(ph c)
 IndexScan(ph)
 IndexScan(c)
 Leading((ph c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph WHERE c.UserId = ph.UserId AND c.CreationDate>='2010-07-24 00:07:57'::timestamp AND ph.PostHistoryTypeId=2;

/*+ HashJoin(v ph c pl)
 HashJoin(ph c pl)
 MergeJoin(c pl)
 SeqScan(v)
 SeqScan(ph)
 SeqScan(c)
 IndexScan(pl)
 Leading((v (ph (c pl)))) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, postHistory as ph, votes as v WHERE pl.PostId = c.PostId AND c.PostId = ph.PostId AND ph.PostId = v.PostId AND c.Score=2 AND v.CreationDate<='2014-09-12 00:00:00'::timestamp;

/*+ HashJoin(c v ph)
 HashJoin(v ph)
 SeqScan(c)
 IndexScan(v)
 IndexScan(ph)
 Leading((c (v ph))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v WHERE ph.PostId = c.PostId AND ph.PostId = v.PostId AND ph.CreationDate>='2011-04-29 12:03:17'::timestamp AND ph.CreationDate<='2014-09-05 04:31:44'::timestamp;

/*+ HashJoin(c u p)
 HashJoin(u p)
 SeqScan(c)
 IndexScan(u)
 IndexScan(p)
 Leading((c (u p))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.UserId = u.Id AND u.Id = p.OwnerUserId AND p.Score>=-1 AND p.ViewCount>=0;

/*+ MergeJoin(c ph u v)
 MergeJoin(ph u v)
 NestLoop(u v)
 SeqScan(c)
 IndexScan(ph)
 IndexScan(u)
 IndexScan(v)
 Leading((c (ph (u v)))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v, users as u WHERE u.Id = v.UserId AND v.UserId = ph.UserId AND ph.UserId =c.UserId AND ph.PostHistoryTypeId=5 AND v.BountyAmount>=0;

/*+ HashJoin(ph b u c)
 MergeJoin(b u c)
 NestLoop(u c)
 SeqScan(ph)
 SeqScan(b)
 SeqScan(u)
 IndexScan(c)
 Leading((ph (b (u c)))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = ph.UserId AND u.Id = b.UserId AND u.Views>=0 AND u.CreationDate>='2010-11-27 22:27:41'::timestamp;

/*+ HashJoin(b u)
 SeqScan(b)
 IndexScan(u)
 Leading((b u)) */
SELECT COUNT(*) FROM badges as b, users as u WHERE b.UserId= u.Id AND b.Date>='2010-08-07 00:52:28'::timestamp AND b.Date<='2014-09-13 03:40:33'::timestamp;

/*+ HashJoin(c pl)
 SeqScan(c)
 SeqScan(pl)
 Leading((c pl)) */
SELECT COUNT(*) FROM comments as c, postLinks as pl WHERE c.PostId= pl.PostId AND c.Score=0 AND pl.LinkTypeId=1;

/*+ HashJoin(u v c)
 HashJoin(v c)
 SeqScan(u)
 IndexScan(v)
 SeqScan(c)
 Leading((u (v c))) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND c.PostId = v.PostId AND c.CreationDate<='2014-09-13 02:08:46'::timestamp AND u.Reputation=101;

/*+ HashJoin(v c u)
 MergeJoin(c u)
 SeqScan(v)
 SeqScan(c)
 SeqScan(u)
 Leading((v (c u))) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND c.Score=1 AND u.CreationDate<='2014-08-23 14:04:47'::timestamp;

/*+ HashJoin(b v u)
 MergeJoin(v u)
 SeqScan(b)
 SeqScan(v)
 SeqScan(u)
 Leading((b (v u))) */
SELECT COUNT(*) FROM votes as v, badges as b, users as u WHERE u.Id = v.UserId AND v.UserId = b.UserId AND v.BountyAmount>=0 AND v.BountyAmount<=50;

/*+ HashJoin(c pl)
 SeqScan(c)
 SeqScan(pl)
 Leading((c pl)) */
SELECT COUNT(*) FROM comments as c, postLinks as pl WHERE c.PostId= pl.PostId AND c.CreationDate>='2010-08-30 12:39:31'::timestamp AND pl.CreationDate>='2011-05-01 20:05:45'::timestamp;

/*+ HashJoin(v ph c pl)
 HashJoin(ph c pl)
 MergeJoin(c pl)
 SeqScan(v)
 SeqScan(ph)
 SeqScan(c)
 IndexScan(pl)
 Leading((v (ph (c pl)))) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, postHistory as ph, votes as v WHERE pl.PostId = c.PostId AND c.PostId = ph.PostId AND ph.PostId = v.PostId AND ph.PostHistoryTypeId=2 AND ph.CreationDate<='2014-08-27 12:26:41'::timestamp;

/*+ MergeJoin(ph v pl p u b)
 MergeJoin(v pl p u b)
 MergeJoin(pl p u b)
 MergeJoin(p u b)
 NestLoop(u b)
 SeqScan(ph)
 IndexScan(v)
 IndexScan(pl)
 IndexScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((ph (v (pl (p (u b)))))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph, votes as v, badges as b, users as u WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND u.Id = ph.UserId AND u.Id = v.UserId AND pl.LinkTypeId=1 AND ph.PostHistoryTypeId=1;

/*+ MergeJoin(c b u v)
 MergeJoin(b u v)
 NestLoop(u v)
 IndexScan(c)
 SeqScan(b)
 SeqScan(u)
 IndexScan(v)
 Leading((c (b (u v)))) */
SELECT COUNT(*) FROM comments as c, votes as v, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND v.CreationDate>='2010-07-20 00:00:00'::timestamp AND u.Reputation>=1;

/*+ HashJoin(p b)
 SeqScan(p)
 SeqScan(b)
 Leading((p b)) */
SELECT COUNT(*) FROM badges as b, posts as p WHERE b.UserId = p.OwnerUserId AND b.Date='2011-05-20 11:58:24'::timestamp AND p.Score>=0;

/*+ HashJoin(c b)
 SeqScan(c)
 SeqScan(b)
 Leading((c b)) */
SELECT COUNT(*) FROM comments as c, badges as b WHERE c.UserId = b.UserId AND b.Date>='2010-07-27 13:33:44'::timestamp AND b.Date<='2014-09-03 20:35:23'::timestamp;

/*+ HashJoin(ph c)
 SeqScan(ph)
 SeqScan(c)
 Leading((ph c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph WHERE c.UserId = ph.UserId AND c.CreationDate='2011-03-17 16:53:48'::timestamp AND ph.PostHistoryTypeId=2;

/*+ HashJoin(c ph)
 SeqScan(c)
 IndexScan(ph)
 Leading((c ph)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph WHERE c.UserId = ph.UserId AND c.Score=0 AND c.CreationDate>='2010-07-29 17:52:51'::timestamp;

/*+ HashJoin(c v ph)
 HashJoin(v ph)
 SeqScan(c)
 IndexScan(v)
 IndexScan(ph)
 Leading((c (v ph))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v WHERE ph.PostId = c.PostId AND ph.PostId = v.PostId AND v.VoteTypeId=2 AND v.CreationDate>='2010-07-22 00:00:00'::timestamp;

/*+ HashJoin(ph c)
 IndexScan(ph)
 IndexScan(c)
 Leading((ph c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph WHERE c.UserId = ph.UserId AND c.Score=0 AND ph.PostHistoryTypeId=2;

/*+ HashJoin(b v u)
 MergeJoin(v u)
 SeqScan(b)
 IndexScan(v)
 SeqScan(u)
 Leading((b (v u))) */
SELECT COUNT(*) FROM votes as v, badges as b, users as u WHERE u.Id = v.UserId AND v.UserId = b.UserId AND u.DownVotes<=0 AND u.UpVotes<=366;

/*+ HashJoin(c v u)
 HashJoin(v u)
 SeqScan(c)
 IndexScan(v)
 SeqScan(u)
 Leading((c (v u))) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND u.DownVotes<=7 AND u.UpVotes>=0;

/*+ HashJoin(c v ph)
 HashJoin(v ph)
 SeqScan(c)
 IndexScan(v)
 SeqScan(ph)
 Leading((c (v ph))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v WHERE ph.PostId = c.PostId AND ph.PostId = v.PostId AND ph.PostHistoryTypeId=5 AND v.VoteTypeId=2;

/*+ MergeJoin(p u)
 IndexScan(p)
 IndexScan(u)
 Leading((p u)) */
SELECT COUNT(*) FROM posts as p, users as u WHERE p.OwnerUserId= u.Id AND p.CommentCount<=11 AND u.Reputation>=1;

/*+ HashJoin(u v c)
 HashJoin(v c)
 SeqScan(u)
 IndexScan(v)
 SeqScan(c)
 Leading((u (v c))) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND c.PostId = v.PostId AND u.DownVotes>=0 AND u.CreationDate>='2010-09-15 19:12:26'::timestamp;

/*+ HashJoin(ph v p u)
 HashJoin(v p u)
 MergeJoin(v p)
 SeqScan(ph)
 IndexScan(v)
 IndexScan(p)
 SeqScan(u)
 Leading((ph ((v p) u))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, votes as v, users as u WHERE p.Id = ph.PostId AND u.Id = p.OwnerUserId AND p.Id = v.PostId AND v.VoteTypeId=2 AND u.Reputation>=1;

/*+ MergeJoin(ph b u v)
 MergeJoin(b u v)
 MergeJoin(u v)
 SeqScan(ph)
 IndexScan(b)
 IndexScan(u)
 SeqScan(v)
 Leading((ph (b (u v)))) */
SELECT COUNT(*) FROM postHistory as ph, votes as v, users as u, badges as b WHERE u.Id = ph.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND ph.CreationDate>='2010-07-19 21:50:16'::timestamp AND u.DownVotes<=3;

/*+ HashJoin(c v ph)
 MergeJoin(v ph)
 IndexScan(c)
 IndexScan(v)
 IndexScan(ph)
 Leading((c (v ph))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v WHERE ph.PostId = c.PostId AND ph.PostId = v.PostId AND ph.PostHistoryTypeId=2 AND v.VoteTypeId=2;

/*+ HashJoin(b u)
 SeqScan(b)
 IndexScan(u)
 Leading((b u)) */
SELECT COUNT(*) FROM badges as b, users as u WHERE b.UserId= u.Id AND u.DownVotes=0 AND u.CreationDate<='2014-07-27 13:49:07'::timestamp;

/*+ HashJoin(u v pl p)
 MergeJoin(v pl p)
 MergeJoin(pl p)
 SeqScan(u)
 IndexScan(v)
 SeqScan(pl)
 IndexScan(p)
 Leading((u (v (pl p)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, votes as v, users as u WHERE p.Id = pl.RelatedPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Reputation>=1 AND u.Views<=91;

/*+ HashJoin(c p v u)
 HashJoin(p v u)
 MergeJoin(v u)
 SeqScan(c)
 IndexScan(p)
 IndexScan(v)
 IndexScan(u)
 Leading((c (p (v u)))) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = v.UserId AND p.AnswerCount>=0 AND p.FavoriteCount<=10;

/*+ HashJoin(b u)
 SeqScan(b)
 IndexScan(u)
 Leading((b u)) */
SELECT COUNT(*) FROM badges as b, users as u WHERE b.UserId= u.Id AND u.Views<=113 AND u.UpVotes>=0;

/*+ HashJoin(b v)
 SeqScan(b)
 SeqScan(v)
 Leading((b v)) */
SELECT COUNT(*) FROM badges as b, votes as v WHERE b.UserId = v.UserId AND v.CreationDate>='2010-07-19 00:00:00'::timestamp AND v.CreationDate<='2014-09-10 00:00:00'::timestamp;

/*+ HashJoin(c pl ph p u)
 HashJoin(c pl ph p)
 HashJoin(pl ph p)
 HashJoin(pl ph)
 SeqScan(c)
 IndexScan(pl)
 SeqScan(ph)
 IndexScan(p)
 SeqScan(u)
 Leading(((c ((pl ph) p)) u)) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, users as u WHERE p.Id = pl.RelatedPostId AND pl.RelatedPostId = c.PostId AND pl.RelatedPostId = ph.PostId AND u.Id= c.UserId AND pl.LinkTypeId=1 AND ph.CreationDate<='2014-09-03 19:00:28'::timestamp;

/*+ HashJoin(c b)
 SeqScan(c)
 SeqScan(b)
 Leading((c b)) */
SELECT COUNT(*) FROM comments as c, badges as b WHERE c.UserId = b.UserId AND c.Score=0 AND c.CreationDate<='2014-09-11 02:42:11'::timestamp;

/*+ HashJoin(c v)
 SeqScan(c)
 SeqScan(v)
 Leading((c v)) */
SELECT COUNT(*) FROM comments as c, votes as v WHERE c.UserId = v.UserId AND v.BountyAmount>=0 AND v.CreationDate<='2014-09-12 00:00:00'::timestamp;

/*+ HashJoin(b c u)
 MergeJoin(c u)
 SeqScan(b)
 SeqScan(c)
 IndexScan(u)
 Leading((b (c u))) */
SELECT COUNT(*) FROM comments as c, badges as b, users as u WHERE u.Id = c.UserId AND c.UserId = b.UserId AND b.Date<='2014-09-11 16:18:23'::timestamp AND u.DownVotes>=0;

/*+ HashJoin(v ph c pl)
 HashJoin(ph c pl)
 HashJoin(c pl)
 SeqScan(v)
 SeqScan(ph)
 IndexScan(c)
 IndexScan(pl)
 Leading((v (ph (c pl)))) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, postHistory as ph, votes as v WHERE pl.PostId = c.PostId AND c.PostId = ph.PostId AND ph.PostId = v.PostId AND c.Score=0 AND pl.LinkTypeId=1;

/*+ HashJoin(c v u)
 HashJoin(v u)
 SeqScan(c)
 IndexScan(v)
 SeqScan(u)
 Leading((c (v u))) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND u.Reputation<=2012 AND u.UpVotes>=0;

/*+ HashJoin(u v c)
 HashJoin(v c)
 SeqScan(u)
 IndexScan(v)
 IndexScan(c)
 Leading((u (v c))) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND c.PostId = v.PostId AND u.Reputation>=1 AND u.Views>=0;

/*+ MergeJoin(c v u ph)
 HashJoin(v u ph)
 MergeJoin(v u)
 IndexScan(c)
 IndexScan(v)
 SeqScan(u)
 IndexScan(ph)
 Leading((c ((v u) ph))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v, users as u WHERE u.Id = v.UserId AND v.UserId = ph.UserId AND ph.UserId =c.UserId AND u.UpVotes>=0 AND u.UpVotes<=56;

/*+ HashJoin(c ph)
 SeqScan(c)
 SeqScan(ph)
 Leading((c ph)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph WHERE c.UserId = ph.UserId AND c.Score=0 AND ph.CreationDate='2012-08-16 15:14:58'::timestamp;

/*+ HashJoin(b c u)
 HashJoin(c u)
 SeqScan(b)
 SeqScan(c)
 IndexScan(u)
 Leading((b (c u))) */
SELECT COUNT(*) FROM comments as c, badges as b, users as u WHERE u.Id = c.UserId AND c.UserId = b.UserId AND c.Score=0 AND u.Reputation<=131;

/*+ HashJoin(b u)
 SeqScan(b)
 IndexScan(u)
 Leading((b u)) */
SELECT COUNT(*) FROM badges as b, users as u WHERE b.UserId= u.Id AND u.Reputation>=1 AND u.Reputation<=208;

/*+ HashJoin(b c u)
 MergeJoin(c u)
 SeqScan(b)
 SeqScan(c)
 IndexScan(u)
 Leading((b (c u))) */
SELECT COUNT(*) FROM comments as c, badges as b, users as u WHERE u.Id = c.UserId AND c.UserId = b.UserId AND c.Score=0 AND b.Date>='2010-07-19 20:34:06'::timestamp;

/*+ MergeJoin(ph b u v)
 MergeJoin(b u v)
 MergeJoin(u v)
 SeqScan(ph)
 IndexScan(b)
 IndexScan(u)
 SeqScan(v)
 Leading((ph (b (u v)))) */
SELECT COUNT(*) FROM postHistory as ph, votes as v, users as u, badges as b WHERE u.Id = ph.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND ph.PostHistoryTypeId=2 AND v.CreationDate>='2010-07-20 00:00:00'::timestamp;

/*+ HashJoin(c v ph)
 HashJoin(v ph)
 SeqScan(c)
 IndexScan(v)
 IndexScan(ph)
 Leading((c (v ph))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v WHERE ph.PostId = c.PostId AND ph.PostId = v.PostId AND ph.PostHistoryTypeId=1 AND ph.CreationDate<='2014-07-26 07:06:39'::timestamp;

/*+ HashJoin(c p)
 SeqScan(c)
 SeqScan(p)
 Leading((c p)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND c.Score=0 AND p.AnswerCount<=6;

/*+ HashJoin(b c u)
 HashJoin(c u)
 SeqScan(b)
 SeqScan(c)
 IndexScan(u)
 Leading((b (c u))) */
SELECT COUNT(*) FROM comments as c, badges as b, users as u WHERE u.Id = c.UserId AND c.UserId = b.UserId AND u.DownVotes=0 AND u.CreationDate<='2014-09-09 13:47:41'::timestamp;

/*+ HashJoin(v ph c pl)
 HashJoin(ph c pl)
 HashJoin(c pl)
 SeqScan(v)
 SeqScan(ph)
 IndexScan(c)
 IndexScan(pl)
 Leading((v (ph (c pl)))) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, postHistory as ph, votes as v WHERE pl.PostId = c.PostId AND c.PostId = ph.PostId AND ph.PostId = v.PostId AND pl.CreationDate<='2014-09-10 22:51:39'::timestamp AND v.CreationDate>='2010-07-20 00:00:00'::timestamp;

/*+ MergeJoin(u v p ph c)
 MergeJoin(v p ph c)
 MergeJoin(v p ph)
 MergeJoin(p ph)
 SeqScan(u)
 SeqScan(v)
 IndexScan(p)
 SeqScan(ph)
 SeqScan(c)
 Leading((u ((v (p ph)) c))) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph, votes as v, users as u WHERE u.Id = c.UserId AND c.UserId = p.OwnerUserId AND p.OwnerUserId = ph.UserId AND ph.UserId = v.UserId AND ph.PostHistoryTypeId=3 AND v.CreationDate='2013-05-28 00:00:00'::timestamp;

/*+ HashJoin(c ph)
 SeqScan(c)
 SeqScan(ph)
 Leading((c ph)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph WHERE c.UserId = ph.UserId AND c.Score=0 AND ph.PostHistoryTypeId=1;

/*+ HashJoin(c pl p)
 MergeJoin(pl p)
 SeqScan(c)
 SeqScan(pl)
 IndexScan(p)
 Leading((c (pl p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE c.UserId = p.OwnerUserId AND p.Id = pl.PostId AND p.AnswerCount<=6 AND p.CreationDate<='2014-09-09 16:56:54'::timestamp;

/*+ HashJoin(c v ph)
 HashJoin(v ph)
 SeqScan(c)
 IndexScan(v)
 IndexScan(ph)
 Leading((c (v ph))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v WHERE ph.PostId = c.PostId AND ph.PostId = v.PostId AND c.CreationDate<='2014-09-09 08:11:31'::timestamp AND v.CreationDate<='2014-09-09 00:00:00'::timestamp;

/*+ HashJoin(c v)
 SeqScan(c)
 SeqScan(v)
 Leading((c v)) */
SELECT COUNT(*) FROM comments as c, votes as v WHERE c.UserId = v.UserId AND c.Score=0 AND v.VoteTypeId=5;

/*+ HashJoin(b u)
 SeqScan(b)
 IndexScan(u)
 Leading((b u)) */
SELECT COUNT(*) FROM badges as b, users as u WHERE b.UserId= u.Id AND u.UpVotes>=0 AND u.CreationDate>='2011-01-28 21:57:06'::timestamp;

/*+ HashJoin(c ph)
 SeqScan(c)
 IndexScan(ph)
 Leading((c ph)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph WHERE c.UserId = ph.UserId AND ph.PostHistoryTypeId=5 AND ph.CreationDate<='2014-06-21 15:11:23'::timestamp;

/*+ HashJoin(b c u)
 MergeJoin(c u)
 SeqScan(b)
 SeqScan(c)
 IndexScan(u)
 Leading((b (c u))) */
SELECT COUNT(*) FROM comments as c, badges as b, users as u WHERE u.Id = c.UserId AND c.UserId = b.UserId AND b.Date>='2010-08-09 08:19:31'::timestamp AND u.Reputation>=1;

/*+ HashJoin(c v)
 SeqScan(c)
 SeqScan(v)
 Leading((c v)) */
SELECT COUNT(*) FROM comments as c, votes as v WHERE c.UserId = v.UserId AND c.CreationDate>='2010-08-03 15:20:39'::timestamp AND v.BountyAmount>=0;

/*+ HashJoin(c v ph)
 HashJoin(v ph)
 SeqScan(c)
 IndexScan(v)
 IndexScan(ph)
 Leading((c (v ph))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v WHERE ph.PostId = c.PostId AND ph.PostId = v.PostId AND c.Score=0 AND ph.CreationDate<='2014-09-11 11:50:44'::timestamp;

/*+ HashJoin(b u)
 SeqScan(b)
 IndexScan(u)
 Leading((b u)) */
SELECT COUNT(*) FROM badges as b, users as u WHERE b.UserId= u.Id AND b.Date>='2010-11-05 02:07:33'::timestamp AND u.Views<=48;

/*+ MergeJoin(c ph v)
 HashJoin(ph v)
 IndexScan(c)
 SeqScan(ph)
 SeqScan(v)
 Leading((c (ph v))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v WHERE ph.PostId = c.PostId AND ph.PostId = v.PostId AND ph.CreationDate>='2010-09-17 08:44:09'::timestamp AND ph.CreationDate<='2014-07-04 19:26:01'::timestamp;

/*+ HashJoin(c v ph)
 MergeJoin(v ph)
 SeqScan(c)
 IndexScan(v)
 IndexScan(ph)
 Leading((c (v ph))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v WHERE ph.PostId = c.PostId AND ph.PostId = v.PostId AND c.CreationDate<='2014-09-06 12:41:20'::timestamp AND v.BountyAmount=0;

/*+ HashJoin(v p t)
 HashJoin(p t)
 SeqScan(v)
 SeqScan(p)
 IndexScan(t)
 Leading((v (p t))) */
SELECT COUNT(*) FROM posts as p, tags as t, votes as v WHERE p.Id = t.ExcerptPostId AND p.OwnerUserId = v.UserId AND t.Count>=1 AND v.CreationDate<='2014-09-10 00:00:00'::timestamp;

/*+ HashJoin(c v u)
 MergeJoin(v u)
 SeqScan(c)
 IndexScan(v)
 IndexScan(u)
 Leading((c (v u))) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND v.BountyAmount<=100 AND u.Reputation>=1;

/*+ HashJoin(c pl)
 SeqScan(c)
 SeqScan(pl)
 Leading((c pl)) */
SELECT COUNT(*) FROM comments as c, postLinks as pl WHERE c.PostId= pl.PostId AND c.Score=0 AND pl.LinkTypeId=1;

/*+ HashJoin(ph u v p)
 HashJoin(u v p)
 HashJoin(v p)
 SeqScan(ph)
 SeqScan(u)
 IndexScan(v)
 IndexScan(p)
 Leading((ph (u (v p)))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, votes as v, users as u WHERE p.Id = ph.PostId AND u.Id = p.OwnerUserId AND p.Id = v.PostId AND p.FavoriteCount>=0 AND p.FavoriteCount<=6;

/*+ HashJoin(p b)
 SeqScan(p)
 SeqScan(b)
 Leading((p b)) */
SELECT COUNT(*) FROM badges as b, posts as p WHERE b.UserId = p.OwnerUserId AND p.Score>=0 AND p.AnswerCount<=4;

/*+ HashJoin(c pl)
 SeqScan(c)
 SeqScan(pl)
 Leading((c pl)) */
SELECT COUNT(*) FROM comments as c, postLinks as pl WHERE c.PostId= pl.PostId AND c.Score=0 AND pl.CreationDate>='2011-09-08 14:03:22'::timestamp;

/*+ HashJoin(c v ph)
 HashJoin(v ph)
 SeqScan(c)
 IndexScan(v)
 IndexScan(ph)
 Leading((c (v ph))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v WHERE ph.PostId = c.PostId AND ph.PostId = v.PostId AND ph.PostHistoryTypeId=2 AND v.BountyAmount>=0;

/*+ HashJoin(c v)
 SeqScan(c)
 SeqScan(v)
 Leading((c v)) */
SELECT COUNT(*) FROM comments as c, votes as v WHERE c.UserId = v.UserId AND c.Score=0 AND v.CreationDate>='2010-07-20 00:00:00'::timestamp;

/*+ HashJoin(c b v u)
 HashJoin(b v u)
 MergeJoin(v u)
 SeqScan(c)
 SeqScan(b)
 IndexScan(v)
 SeqScan(u)
 Leading((c (b (v u)))) */
SELECT COUNT(*) FROM comments as c, votes as v, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND c.Score=2 AND u.DownVotes<=0;

/*+ HashJoin(b c u)
 HashJoin(c u)
 SeqScan(b)
 SeqScan(c)
 IndexScan(u)
 Leading((b (c u))) */
SELECT COUNT(*) FROM comments as c, badges as b, users as u WHERE u.Id = c.UserId AND c.UserId = b.UserId AND u.UpVotes<=154 AND u.CreationDate<='2014-08-21 15:53:59'::timestamp;

/*+ HashJoin(b c u)
 HashJoin(c u)
 SeqScan(b)
 SeqScan(c)
 IndexScan(u)
 Leading((b (c u))) */
SELECT COUNT(*) FROM comments as c, badges as b, users as u WHERE u.Id = c.UserId AND c.UserId = b.UserId AND u.Reputation=6 AND u.CreationDate<='2014-08-29 00:06:06'::timestamp;

/*+ HashJoin(b v)
 SeqScan(b)
 SeqScan(v)
 Leading((b v)) */
SELECT COUNT(*) FROM badges as b, votes as v WHERE b.UserId = v.UserId AND v.CreationDate>='2010-07-22 00:00:00'::timestamp AND v.CreationDate<='2014-09-09 00:00:00'::timestamp;

/*+ HashJoin(b v u)
 MergeJoin(v u)
 SeqScan(b)
 IndexScan(v)
 SeqScan(u)
 Leading((b (v u))) */
SELECT COUNT(*) FROM votes as v, badges as b, users as u WHERE u.Id = v.UserId AND v.UserId = b.UserId AND b.Date<='2014-08-20 17:48:38'::timestamp AND u.UpVotes<=244;

/*+ HashJoin(c pl)
 SeqScan(c)
 SeqScan(pl)
 Leading((c pl)) */
SELECT COUNT(*) FROM comments as c, postLinks as pl WHERE c.PostId= pl.PostId AND pl.LinkTypeId=1 AND pl.CreationDate<='2014-08-18 12:13:46'::timestamp;

/*+ HashJoin(ph u c)
 NestLoop(u c)
 SeqScan(ph)
 SeqScan(u)
 IndexScan(c)
 Leading((ph (u c))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND c.CreationDate>='2010-08-05 10:53:24'::timestamp AND ph.PostHistoryTypeId=2;

/*+ HashJoin(c v ph)
 HashJoin(v ph)
 SeqScan(c)
 IndexScan(v)
 IndexScan(ph)
 Leading((c (v ph))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v WHERE ph.PostId = c.PostId AND ph.PostId = v.PostId AND ph.PostHistoryTypeId=6 AND v.VoteTypeId=2;

/*+ HashJoin(u ph p)
 HashJoin(ph p)
 SeqScan(u)
 SeqScan(ph)
 IndexScan(p)
 Leading((u (ph p))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.PostId = p.Id AND p.OwnerUserId = u.Id AND p.FavoriteCount>=0 AND p.CreationDate<='2014-09-08 18:59:26'::timestamp;

/*+ HashJoin(c pl p)
 MergeJoin(pl p)
 SeqScan(c)
 SeqScan(pl)
 IndexScan(p)
 Leading((c (pl p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE c.UserId = p.OwnerUserId AND p.Id = pl.PostId AND p.AnswerCount<=3 AND p.CommentCount<=18;

/*+ HashJoin(v ph c pl)
 HashJoin(ph c pl)
 HashJoin(c pl)
 SeqScan(v)
 SeqScan(ph)
 IndexScan(c)
 IndexScan(pl)
 Leading((v (ph (c pl)))) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, postHistory as ph, votes as v WHERE pl.PostId = c.PostId AND c.PostId = ph.PostId AND ph.PostId = v.PostId AND c.Score=0 AND ph.CreationDate<='2014-09-08 22:48:03'::timestamp;

/*+ HashJoin(v ph c pl)
 HashJoin(ph c pl)
 HashJoin(c pl)
 SeqScan(v)
 SeqScan(ph)
 IndexScan(c)
 IndexScan(pl)
 Leading((v (ph (c pl)))) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, postHistory as ph, votes as v WHERE pl.PostId = c.PostId AND c.PostId = ph.PostId AND ph.PostId = v.PostId AND c.Score=0 AND c.CreationDate<='2014-09-11 21:21:39'::timestamp;

/*+ HashJoin(c p)
 SeqScan(c)
 IndexScan(p)
 Leading((c p)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND c.Score=0 AND p.CommentCount<=11;

/*+ HashJoin(ph u c)
 HashJoin(u c)
 SeqScan(ph)
 SeqScan(u)
 IndexScan(c)
 Leading((ph (u c))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND c.Score=0 AND u.Reputation>=1;

/*+ HashJoin(c pl)
 SeqScan(c)
 SeqScan(pl)
 Leading((c pl)) */
SELECT COUNT(*) FROM comments as c, postLinks as pl WHERE c.PostId= pl.PostId AND c.Score=0 AND pl.LinkTypeId=3;

/*+ HashJoin(c v ph)
 HashJoin(v ph)
 SeqScan(c)
 IndexScan(v)
 IndexScan(ph)
 Leading((c (v ph))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v WHERE ph.PostId = c.PostId AND ph.PostId = v.PostId AND c.Score=0 AND v.CreationDate<='2014-09-01 00:00:00'::timestamp;

/*+ HashJoin(b p)
 SeqScan(b)
 SeqScan(p)
 Leading((b p)) */
SELECT COUNT(*) FROM badges as b, posts as p WHERE b.UserId = p.OwnerUserId AND p.PostTypeId=1 AND p.CommentCount=8;

/*+ HashJoin(p b)
 SeqScan(p)
 SeqScan(b)
 Leading((p b)) */
SELECT COUNT(*) FROM badges as b, posts as p WHERE b.UserId = p.OwnerUserId AND b.Date>='2010-07-20 07:49:08'::timestamp AND p.Score<=23;

/*+ HashJoin(c pl)
 SeqScan(c)
 SeqScan(pl)
 Leading((c pl)) */
SELECT COUNT(*) FROM comments as c, postLinks as pl WHERE c.PostId= pl.PostId AND c.Score=0 AND pl.LinkTypeId=1;

/*+ HashJoin(b u p ph)
 HashJoin(u p ph)
 HashJoin(p ph)
 SeqScan(b)
 SeqScan(u)
 SeqScan(p)
 IndexScan(ph)
 Leading((b (u (p ph)))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u, badges as b WHERE u.Id = p.OwnerUserId AND p.OwnerUserId = ph.UserId AND ph.UserId = b.UserId AND p.FavoriteCount<=18 AND b.Date>='2010-07-27 02:48:44'::timestamp;

/*+ HashJoin(b p)
 SeqScan(b)
 SeqScan(p)
 Leading((b p)) */
SELECT COUNT(*) FROM badges as b, posts as p WHERE b.UserId = p.OwnerUserId AND p.ViewCount<=7537 AND p.FavoriteCount<=10;

/*+ HashJoin(c pl)
 SeqScan(c)
 SeqScan(pl)
 Leading((c pl)) */
SELECT COUNT(*) FROM comments as c, postLinks as pl WHERE c.PostId= pl.PostId AND pl.LinkTypeId=1 AND pl.CreationDate>='2011-03-06 09:29:10'::timestamp;

/*+ HashJoin(b v u)
 MergeJoin(v u)
 SeqScan(b)
 SeqScan(v)
 SeqScan(u)
 Leading((b (v u))) */
SELECT COUNT(*) FROM votes as v, badges as b, users as u WHERE u.Id = v.UserId AND v.UserId = b.UserId AND v.CreationDate='2011-02-21 00:00:00'::timestamp AND u.Reputation>=1;

/*+ HashJoin(b v)
 SeqScan(b)
 SeqScan(v)
 Leading((b v)) */
SELECT COUNT(*) FROM badges as b, votes as v WHERE b.UserId = v.UserId AND b.Date<='2014-09-11 12:08:56'::timestamp AND v.BountyAmount<=50;

/*+ HashJoin(c p)
 SeqScan(c)
 SeqScan(p)
 Leading((c p)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND c.CreationDate<='2014-09-04 00:03:32'::timestamp AND p.Score<=30;

/*+ MergeJoin(p v u)
 MergeJoin(v u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(u)
 Leading((p (v u))) */
SELECT COUNT(*) FROM votes as v, posts as p, users as u WHERE v.PostId = p.Id AND v.UserId = u.Id AND v.BountyAmount>=0 AND p.CommentCount>=0;

/*+ HashJoin(ph p c)
 HashJoin(ph p)
 SeqScan(ph)
 IndexScan(p)
 SeqScan(c)
 Leading(((ph p) c)) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph WHERE p.Id = c.PostId AND p.Id = ph.PostId AND ph.CreationDate>='2010-08-31 21:33:24'::timestamp AND ph.CreationDate<='2014-08-06 16:00:12'::timestamp;

/*+ HashJoin(c v ph)
 HashJoin(v ph)
 SeqScan(c)
 IndexScan(v)
 IndexScan(ph)
 Leading((c (v ph))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v WHERE ph.PostId = c.PostId AND ph.PostId = v.PostId AND c.Score=0 AND v.VoteTypeId=2;

/*+ HashJoin(ph c p)
 HashJoin(c p)
 SeqScan(ph)
 SeqScan(c)
 IndexScan(p)
 Leading((ph (c p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph WHERE p.Id = c.PostId AND p.Id = ph.PostId AND c.CreationDate='2013-07-13 15:10:35'::timestamp AND p.PostTypeId=1;

/*+ HashJoin(p b)
 SeqScan(p)
 SeqScan(b)
 Leading((p b)) */
SELECT COUNT(*) FROM badges as b, posts as p WHERE b.UserId = p.OwnerUserId AND p.Score>=-1 AND p.Score<=38;

/*+ HashJoin(ph c u)
 MergeJoin(c u)
 SeqScan(ph)
 SeqScan(c)
 IndexScan(u)
 Leading((ph (c u))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND c.Score=1 AND ph.PostHistoryTypeId=1;

/*+ HashJoin(b v)
 SeqScan(b)
 SeqScan(v)
 Leading((b v)) */
SELECT COUNT(*) FROM badges as b, votes as v WHERE b.UserId = v.UserId AND v.CreationDate>='2010-07-23 00:00:00'::timestamp AND v.CreationDate<='2014-09-09 00:00:00'::timestamp;

/*+ HashJoin(u v p t)
 MergeJoin(v p t)
 HashJoin(p t)
 IndexScan(u)
 IndexScan(v)
 IndexScan(p)
 IndexScan(t)
 Leading((u (v (p t)))) */
SELECT COUNT(*) FROM tags as t, posts as p, votes as v, users as u WHERE p.Id = t.ExcerptPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Views<=49 AND u.UpVotes<=93;

/*+ HashJoin(v ph c pl)
 HashJoin(ph c pl)
 MergeJoin(c pl)
 SeqScan(v)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(pl)
 Leading((v (ph (c pl)))) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, postHistory as ph, votes as v WHERE pl.PostId = c.PostId AND c.PostId = ph.PostId AND ph.PostId = v.PostId AND c.Score=0 AND ph.PostHistoryTypeId=4;

/*+ HashJoin(b p u v)
 HashJoin(p u v)
 MergeJoin(u v)
 SeqScan(b)
 IndexScan(p)
 IndexScan(u)
 IndexScan(v)
 Leading((b (p (u v)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE u.Id = v.UserId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.CommentCount=1 AND u.Views<=336;

/*+ HashJoin(c pl p)
 MergeJoin(pl p)
 SeqScan(c)
 SeqScan(pl)
 IndexScan(p)
 Leading((c (pl p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE p.Id = c.PostId AND p.Id = pl.PostId AND p.Score<=32 AND p.CommentCount>=0;

/*+ MergeJoin(b ph u p)
 MergeJoin(ph u p)
 MergeJoin(u p)
 SeqScan(b)
 SeqScan(ph)
 SeqScan(u)
 SeqScan(p)
 Leading((b (ph (u p)))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u, badges as b WHERE u.Id = p.OwnerUserId AND p.OwnerUserId = ph.UserId AND ph.UserId = b.UserId AND u.CreationDate>='2011-05-02 13:50:22'::timestamp AND b.Date>='2010-07-21 17:28:12'::timestamp;

/*+ HashJoin(c pl)
 SeqScan(c)
 SeqScan(pl)
 Leading((c pl)) */
SELECT COUNT(*) FROM comments as c, postLinks as pl WHERE c.PostId= pl.PostId AND c.Score=0 AND pl.LinkTypeId=1;

/*+ HashJoin(c b)
 SeqScan(c)
 SeqScan(b)
 Leading((c b)) */
SELECT COUNT(*) FROM comments as c, badges as b WHERE c.UserId = b.UserId AND c.Score=0 AND b.Date>='2010-08-23 03:35:53'::timestamp;

/*+ HashJoin(c pl)
 SeqScan(c)
 SeqScan(pl)
 Leading((c pl)) */
SELECT COUNT(*) FROM comments as c, postLinks as pl WHERE c.PostId= pl.PostId AND pl.LinkTypeId=1 AND pl.CreationDate>='2011-09-18 08:06:19'::timestamp;

/*+ HashJoin(c pl)
 SeqScan(c)
 SeqScan(pl)
 Leading((c pl)) */
SELECT COUNT(*) FROM comments as c, postLinks as pl WHERE c.PostId= pl.PostId AND c.CreationDate<='2014-09-13 02:40:56'::timestamp AND pl.LinkTypeId=1;

/*+ HashJoin(c v ph)
 HashJoin(v ph)
 SeqScan(c)
 IndexScan(v)
 IndexScan(ph)
 Leading((c (v ph))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v WHERE ph.PostId = c.PostId AND ph.PostId = v.PostId AND c.Score=1 AND c.CreationDate<='2014-09-11 15:50:01'::timestamp;

/*+ HashJoin(c v u)
 MergeJoin(v u)
 SeqScan(c)
 IndexScan(v)
 SeqScan(u)
 Leading((c (v u))) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND v.CreationDate<='2014-09-09 00:00:00'::timestamp AND u.UpVotes=1;

/*+ HashJoin(ph c)
 IndexScan(ph)
 IndexScan(c)
 Leading((ph c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph WHERE c.UserId = ph.UserId AND c.CreationDate<='2014-09-11 19:18:57'::timestamp AND ph.PostHistoryTypeId=5;

/*+ HashJoin(c pl)
 SeqScan(c)
 SeqScan(pl)
 Leading((c pl)) */
SELECT COUNT(*) FROM comments as c, postLinks as pl WHERE c.PostId= pl.PostId AND pl.LinkTypeId=1 AND pl.CreationDate>='2012-02-03 13:06:01'::timestamp;

/*+ HashJoin(b u)
 SeqScan(b)
 IndexScan(u)
 Leading((b u)) */
SELECT COUNT(*) FROM badges as b, users as u WHERE b.UserId= u.Id AND u.Reputation>=1 AND u.Views<=35;

/*+ HashJoin(v ph c pl)
 HashJoin(ph c pl)
 MergeJoin(c pl)
 SeqScan(v)
 SeqScan(ph)
 SeqScan(c)
 IndexScan(pl)
 Leading((v (ph (c pl)))) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, postHistory as ph, votes as v WHERE pl.PostId = c.PostId AND c.PostId = ph.PostId AND ph.PostId = v.PostId AND ph.CreationDate<='2014-08-22 18:39:59'::timestamp AND v.BountyAmount>=0;

/*+ MergeJoin(c v u ph)
 HashJoin(v u ph)
 HashJoin(v u)
 IndexScan(c)
 IndexScan(v)
 SeqScan(u)
 IndexScan(ph)
 Leading((c ((v u) ph))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v, users as u WHERE u.Id = v.UserId AND v.UserId = ph.UserId AND ph.UserId =c.UserId AND u.Views=0 AND u.DownVotes>=0;

/*+ HashJoin(c ph)
 SeqScan(c)
 SeqScan(ph)
 Leading((c ph)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph WHERE c.UserId = ph.UserId AND c.CreationDate>='2010-09-13 20:46:57'::timestamp AND ph.PostHistoryTypeId=1;

/*+ HashJoin(c pl)
 SeqScan(c)
 SeqScan(pl)
 Leading((c pl)) */
SELECT COUNT(*) FROM comments as c, postLinks as pl WHERE c.PostId= pl.PostId AND c.Score=0 AND pl.LinkTypeId=1;

/*+ HashJoin(p v u)
 MergeJoin(v u)
 SeqScan(p)
 IndexScan(v)
 SeqScan(u)
 Leading((p (v u))) */
SELECT COUNT(*) FROM votes as v, posts as p, users as u WHERE v.PostId = p.Id AND v.UserId = u.Id AND p.CommentCount<=12 AND p.FavoriteCount=0;

/*+ HashJoin(c pl p)
 MergeJoin(pl p)
 SeqScan(c)
 SeqScan(pl)
 IndexScan(p)
 Leading((c (pl p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE c.UserId = p.OwnerUserId AND p.Id = pl.PostId AND c.CreationDate>='2010-09-03 23:04:10'::timestamp AND pl.LinkTypeId=3;

/*+ HashJoin(u ph p)
 HashJoin(u ph)
 SeqScan(u)
 SeqScan(ph)
 IndexScan(p)
 Leading(((u ph) p)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.UserId = p.OwnerUserId AND ph.UserId = u.Id AND p.PostTypeId=2 AND u.DownVotes>=0;

/*+ HashJoin(c v ph)
 HashJoin(v ph)
 SeqScan(c)
 IndexScan(v)
 IndexScan(ph)
 Leading((c (v ph))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v WHERE ph.PostId = c.PostId AND ph.PostId = v.PostId AND c.CreationDate>='2010-07-22 09:54:23'::timestamp AND v.VoteTypeId=2;

/*+ HashJoin(c p)
 SeqScan(c)
 SeqScan(p)
 Leading((c p)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND c.CreationDate>='2010-07-21 00:26:48'::timestamp AND p.ViewCount<=4486;

/*+ HashJoin(b u)
 SeqScan(b)
 IndexScan(u)
 Leading((b u)) */
SELECT COUNT(*) FROM badges as b, users as u WHERE b.UserId= u.Id AND u.DownVotes<=2 AND u.CreationDate>='2010-07-19 19:04:37'::timestamp;

/*+ HashJoin(b u)
 SeqScan(b)
 IndexScan(u)
 Leading((b u)) */
SELECT COUNT(*) FROM badges as b, users as u WHERE b.UserId= u.Id AND u.Views>=0 AND u.UpVotes>=0;

/*+ HashJoin(b v u ph)
 HashJoin(v u ph)
 HashJoin(v u)
 SeqScan(b)
 IndexScan(v)
 SeqScan(u)
 IndexScan(ph)
 Leading((b ((v u) ph))) */
SELECT COUNT(*) FROM postHistory as ph, votes as v, users as u, badges as b WHERE u.Id = ph.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND ph.PostHistoryTypeId=16 AND v.CreationDate<='2014-09-12 00:00:00'::timestamp;

/*+ HashJoin(c b)
 IndexScan(c)
 SeqScan(b)
 Leading((c b)) */
SELECT COUNT(*) FROM comments as c, badges as b WHERE c.UserId = b.UserId AND c.CreationDate>='2010-09-13 07:39:20'::timestamp AND c.CreationDate<='2014-09-08 17:06:16'::timestamp;

/*+ HashJoin(c pl)
 SeqScan(c)
 SeqScan(pl)
 Leading((c pl)) */
SELECT COUNT(*) FROM comments as c, postLinks as pl WHERE c.PostId= pl.PostId AND c.Score=0 AND c.CreationDate>='2010-07-26 21:25:04'::timestamp;

/*+ HashJoin(c ph)
 SeqScan(c)
 IndexScan(ph)
 Leading((c ph)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph WHERE c.UserId = ph.UserId AND c.Score=0 AND ph.CreationDate>='2010-09-15 06:49:48'::timestamp;

/*+ HashJoin(c b)
 IndexScan(c)
 SeqScan(b)
 Leading((c b)) */
SELECT COUNT(*) FROM comments as c, badges as b WHERE c.UserId = b.UserId AND b.Date>='2011-01-09 11:50:59'::timestamp AND b.Date<='2014-09-04 20:42:17'::timestamp;

/*+ HashJoin(c ph)
 SeqScan(c)
 IndexScan(ph)
 Leading((c ph)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph WHERE c.UserId = ph.UserId AND c.CreationDate>='2010-08-13 15:51:49'::timestamp AND ph.CreationDate>='2011-08-18 13:09:32'::timestamp;

/*+ HashJoin(b v u)
 MergeJoin(v u)
 SeqScan(b)
 IndexScan(v)
 SeqScan(u)
 Leading((b (v u))) */
SELECT COUNT(*) FROM votes as v, badges as b, users as u WHERE u.Id = v.UserId AND v.UserId = b.UserId AND u.DownVotes<=43 AND u.CreationDate>='2011-02-12 07:50:07'::timestamp;

/*+ HashJoin(u v b c)
 HashJoin(u v b)
 HashJoin(u v)
 IndexScan(u)
 IndexScan(v)
 SeqScan(b)
 SeqScan(c)
 Leading((((u v) b) c)) */
SELECT COUNT(*) FROM comments as c, votes as v, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND c.Score=0 AND v.BountyAmount>=0;

/*+ HashJoin(b v)
 SeqScan(b)
 SeqScan(v)
 Leading((b v)) */
SELECT COUNT(*) FROM badges as b, votes as v WHERE b.UserId = v.UserId AND v.CreationDate>='2009-02-02 00:00:00'::timestamp AND v.CreationDate<='2014-09-12 00:00:00'::timestamp;

/*+ HashJoin(b u)
 SeqScan(b)
 IndexScan(u)
 Leading((b u)) */
SELECT COUNT(*) FROM badges as b, users as u WHERE b.UserId= u.Id AND u.DownVotes>=0 AND u.DownVotes<=0;

/*+ HashJoin(c b)
 IndexScan(c)
 SeqScan(b)
 Leading((c b)) */
SELECT COUNT(*) FROM comments as c, badges as b WHERE c.UserId = b.UserId AND c.CreationDate>='2010-07-20 01:59:53'::timestamp AND c.CreationDate<='2014-09-02 18:02:19'::timestamp;

/*+ HashJoin(c b)
 IndexScan(c)
 SeqScan(b)
 Leading((c b)) */
SELECT COUNT(*) FROM comments as c, badges as b WHERE c.UserId = b.UserId AND c.Score=0 AND c.CreationDate>='2010-08-02 22:09:22'::timestamp;

/*+ HashJoin(u v c)
 HashJoin(v c)
 SeqScan(u)
 IndexScan(v)
 SeqScan(c)
 Leading((u (v c))) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND c.PostId = v.PostId AND u.Views<=44 AND u.CreationDate>='2010-07-19 19:11:38'::timestamp;

/*+ HashJoin(ph u c)
 NestLoop(u c)
 SeqScan(ph)
 SeqScan(u)
 IndexScan(c)
 Leading((ph (u c))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND u.Views<=108 AND u.DownVotes=0;

/*+ HashJoin(ph c p)
 HashJoin(c p)
 SeqScan(ph)
 SeqScan(c)
 IndexScan(p)
 Leading((ph (c p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph WHERE p.Id = c.PostId AND p.Id = ph.PostId AND c.Score=1 AND p.CommentCount>=0;

/*+ HashJoin(c v ph)
 HashJoin(v ph)
 SeqScan(c)
 IndexScan(v)
 IndexScan(ph)
 Leading((c (v ph))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v WHERE ph.PostId = c.PostId AND ph.PostId = v.PostId AND ph.PostHistoryTypeId=24 AND v.CreationDate<='2014-09-10 00:00:00'::timestamp;

/*+ HashJoin(c b)
 IndexScan(c)
 SeqScan(b)
 Leading((c b)) */
SELECT COUNT(*) FROM comments as c, badges as b WHERE c.UserId = b.UserId AND b.Date>='2010-08-01 12:29:55'::timestamp AND b.Date<='2014-08-22 21:32:10'::timestamp;

/*+ HashJoin(c b)
 IndexScan(c)
 SeqScan(b)
 Leading((c b)) */
SELECT COUNT(*) FROM comments as c, badges as b WHERE c.UserId = b.UserId AND c.Score=0 AND b.Date<='2014-09-06 14:05:34'::timestamp;

/*+ HashJoin(c ph)
 SeqScan(c)
 IndexScan(ph)
 Leading((c ph)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph WHERE c.UserId = ph.UserId AND c.CreationDate>='2010-07-29 14:31:10'::timestamp AND c.CreationDate<='2014-09-06 15:27:33'::timestamp;

/*+ HashJoin(c v)
 SeqScan(c)
 IndexScan(v)
 Leading((c v)) */
SELECT COUNT(*) FROM comments as c, votes as v WHERE c.UserId = v.UserId AND c.CreationDate<='2014-09-13 18:23:37'::timestamp AND v.CreationDate>='2010-07-21 00:00:00'::timestamp;

/*+ HashJoin(b u)
 SeqScan(b)
 IndexScan(u)
 Leading((b u)) */
SELECT COUNT(*) FROM badges as b, users as u WHERE b.UserId= u.Id AND b.Date<='2014-09-12 07:19:35'::timestamp AND u.UpVotes=0;

/*+ HashJoin(c b)
 SeqScan(c)
 SeqScan(b)
 Leading((c b)) */
SELECT COUNT(*) FROM comments as c, badges as b WHERE c.UserId = b.UserId AND c.CreationDate>='2010-08-21 13:21:08'::timestamp AND c.CreationDate<='2014-09-10 02:17:30'::timestamp;

/*+ HashJoin(c b)
 SeqScan(c)
 SeqScan(b)
 Leading((c b)) */
SELECT COUNT(*) FROM comments as c, badges as b WHERE c.UserId = b.UserId AND c.Score=1 AND c.CreationDate>='2010-07-25 07:40:01'::timestamp;

/*+ HashJoin(c pl)
 SeqScan(c)
 SeqScan(pl)
 Leading((c pl)) */
SELECT COUNT(*) FROM comments as c, postLinks as pl WHERE c.PostId= pl.PostId AND c.Score=0 AND pl.LinkTypeId=1;

/*+ HashJoin(c ph)
 SeqScan(c)
 IndexScan(ph)
 Leading((c ph)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph WHERE c.UserId = ph.UserId AND c.CreationDate>='2010-07-19 19:15:52'::timestamp AND c.CreationDate<='2014-09-10 10:37:26'::timestamp;

/*+ HashJoin(c v u)
 HashJoin(v u)
 SeqScan(c)
 IndexScan(v)
 SeqScan(u)
 Leading((c (v u))) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND c.Score=0 AND v.CreationDate='2012-10-25 00:00:00'::timestamp;

/*+ HashJoin(c pl p)
 HashJoin(pl p)
 SeqScan(c)
 SeqScan(pl)
 IndexScan(p)
 Leading((c (pl p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE p.Id = c.PostId AND p.Id = pl.PostId AND p.Score>=-2 AND p.AnswerCount>=0;

/*+ HashJoin(u v c)
 HashJoin(v c)
 SeqScan(u)
 IndexScan(v)
 SeqScan(c)
 Leading((u (v c))) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND c.PostId = v.PostId AND c.Score=0 AND u.UpVotes<=608;

/*+ HashJoin(ph u v p)
 HashJoin(u v p)
 HashJoin(v p)
 SeqScan(ph)
 SeqScan(u)
 IndexScan(v)
 IndexScan(p)
 Leading((ph (u (v p)))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, votes as v, users as u WHERE p.Id = ph.PostId AND u.Id = p.OwnerUserId AND p.Id = v.PostId AND v.BountyAmount>=0 AND u.UpVotes>=0;

/*+ HashJoin(ph pl p)
 HashJoin(ph pl)
 SeqScan(ph)
 SeqScan(pl)
 SeqScan(p)
 Leading(((ph pl) p)) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph WHERE p.Id = pl.PostId AND pl.PostId = ph.PostId AND p.ViewCount<=7593 AND ph.PostHistoryTypeId=2;

/*+ HashJoin(c p pl)
 HashJoin(p pl)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 Leading((c (p pl))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE p.Id = c.PostId AND p.Id = pl.PostId AND p.FavoriteCount=0 AND pl.CreationDate>='2010-08-16 18:27:32'::timestamp;

/*+ HashJoin(c ph)
 SeqScan(c)
 IndexScan(ph)
 Leading((c ph)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph WHERE c.UserId = ph.UserId AND c.CreationDate<='2014-09-12 10:25:47'::timestamp AND ph.CreationDate>='2011-05-09 11:32:38'::timestamp;

/*+ HashJoin(b v)
 SeqScan(b)
 SeqScan(v)
 Leading((b v)) */
SELECT COUNT(*) FROM badges as b, votes as v WHERE b.UserId = v.UserId AND v.BountyAmount>=0 AND v.BountyAmount<=50;

/*+ HashJoin(ph c)
 SeqScan(ph)
 SeqScan(c)
 Leading((ph c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph WHERE c.UserId = ph.UserId AND c.Score=1 AND ph.PostHistoryTypeId=5;

/*+ HashJoin(c b)
 SeqScan(c)
 SeqScan(b)
 Leading((c b)) */
SELECT COUNT(*) FROM comments as c, badges as b WHERE c.UserId = b.UserId AND c.Score=0 AND b.Date<='2014-09-11 17:10:33'::timestamp;

/*+ HashJoin(v ph c pl)
 HashJoin(ph c pl)
 HashJoin(c pl)
 SeqScan(v)
 SeqScan(ph)
 IndexScan(c)
 IndexScan(pl)
 Leading((v (ph (c pl)))) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, postHistory as ph, votes as v WHERE pl.PostId = c.PostId AND c.PostId = ph.PostId AND ph.PostId = v.PostId AND pl.CreationDate>='2011-07-01 08:40:34'::timestamp AND ph.CreationDate>='2010-12-10 20:53:42'::timestamp;

/*+ HashJoin(c v)
 SeqScan(c)
 SeqScan(v)
 Leading((c v)) */
SELECT COUNT(*) FROM comments as c, votes as v WHERE c.UserId = v.UserId AND c.Score=0 AND v.BountyAmount>=0;

/*+ HashJoin(c u v p)
 HashJoin(u v p)
 MergeJoin(v p)
 SeqScan(c)
 SeqScan(u)
 IndexScan(v)
 IndexScan(p)
 Leading((c (u (v p)))) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE p.Id = c.PostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND p.CreationDate>='2010-08-13 16:11:20'::timestamp AND u.CreationDate<='2014-09-08 20:54:41'::timestamp;

/*+ HashJoin(ph b u c)
 MergeJoin(b u c)
 NestLoop(u c)
 SeqScan(ph)
 SeqScan(b)
 SeqScan(u)
 IndexScan(c)
 Leading((ph (b (u c)))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = ph.UserId AND u.Id = b.UserId AND u.Views<=15 AND u.DownVotes>=0;

/*+ MergeJoin(c b u v)
 MergeJoin(b u v)
 NestLoop(u v)
 IndexScan(c)
 SeqScan(b)
 SeqScan(u)
 IndexScan(v)
 Leading((c (b (u v)))) */
SELECT COUNT(*) FROM comments as c, votes as v, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND u.DownVotes>=0 AND u.DownVotes<=2;

/*+ HashJoin(c b)
 IndexScan(c)
 SeqScan(b)
 Leading((c b)) */
SELECT COUNT(*) FROM comments as c, badges as b WHERE c.UserId = b.UserId AND c.Score=0 AND b.Date<='2014-08-26 16:04:05'::timestamp;

/*+ HashJoin(b v)
 SeqScan(b)
 SeqScan(v)
 Leading((b v)) */
SELECT COUNT(*) FROM badges as b, votes as v WHERE b.UserId = v.UserId AND b.Date>='2010-07-20 03:54:08'::timestamp AND b.Date<='2014-08-21 11:26:28'::timestamp;

/*+ HashJoin(b c u)
 MergeJoin(c u)
 SeqScan(b)
 SeqScan(c)
 IndexScan(u)
 Leading((b (c u))) */
SELECT COUNT(*) FROM comments as c, badges as b, users as u WHERE u.Id = c.UserId AND c.UserId = b.UserId AND u.DownVotes<=214 AND u.CreationDate<='2014-08-27 13:43:22'::timestamp;

/*+ HashJoin(c v u)
 MergeJoin(v u)
 SeqScan(c)
 IndexScan(v)
 IndexScan(u)
 Leading((c (v u))) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND v.VoteTypeId=5 AND u.UpVotes<=6;

/*+ HashJoin(b u)
 SeqScan(b)
 IndexScan(u)
 Leading((b u)) */
SELECT COUNT(*) FROM badges as b, users as u WHERE b.UserId= u.Id AND b.Date>='2010-07-19 19:39:10'::timestamp AND u.Views>=0;

/*+ HashJoin(b v u)
 MergeJoin(v u)
 SeqScan(b)
 IndexScan(v)
 SeqScan(u)
 Leading((b (v u))) */
SELECT COUNT(*) FROM votes as v, badges as b, users as u WHERE u.Id = v.UserId AND v.UserId = b.UserId AND v.CreationDate<='2014-09-13 00:00:00'::timestamp AND u.DownVotes<=54;

/*+ HashJoin(c pl)
 SeqScan(c)
 SeqScan(pl)
 Leading((c pl)) */
SELECT COUNT(*) FROM comments as c, postLinks as pl WHERE c.PostId= pl.PostId AND c.Score=0 AND c.CreationDate>='2010-08-04 10:09:10'::timestamp;

/*+ HashJoin(c pl)
 SeqScan(c)
 SeqScan(pl)
 Leading((c pl)) */
SELECT COUNT(*) FROM comments as c, postLinks as pl WHERE c.PostId= pl.PostId AND c.CreationDate<='2014-09-13 21:49:10'::timestamp AND pl.LinkTypeId=1;

/*+ HashJoin(c ph v)
 HashJoin(ph v)
 SeqScan(c)
 SeqScan(ph)
 IndexScan(v)
 Leading((c (ph v))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v WHERE ph.PostId = c.PostId AND ph.PostId = v.PostId AND c.Score=4 AND ph.PostHistoryTypeId=2;

/*+ HashJoin(b u)
 SeqScan(b)
 IndexScan(u)
 Leading((b u)) */
SELECT COUNT(*) FROM badges as b, users as u WHERE b.UserId= u.Id AND b.Date>='2010-08-09 01:59:21'::timestamp AND u.DownVotes=0;

/*+ HashJoin(c pl p)
 MergeJoin(pl p)
 SeqScan(c)
 SeqScan(pl)
 IndexScan(p)
 Leading((c (pl p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE p.Id = c.PostId AND p.Id = pl.PostId AND p.Score>=-3 AND p.Score<=32;

/*+ HashJoin(c ph)
 SeqScan(c)
 SeqScan(ph)
 Leading((c ph)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph WHERE c.UserId = ph.UserId AND c.Score=0 AND ph.PostHistoryTypeId=3;

/*+ HashJoin(ph c)
 IndexScan(ph)
 IndexScan(c)
 Leading((ph c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph WHERE c.UserId = ph.UserId AND ph.CreationDate>='2011-05-10 17:02:08'::timestamp AND ph.CreationDate<='2014-09-08 13:38:45'::timestamp;

/*+ HashJoin(ph c)
 SeqScan(ph)
 SeqScan(c)
 Leading((ph c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph WHERE c.UserId = ph.UserId AND c.Score=0 AND c.CreationDate='2013-12-13 11:37:16'::timestamp;

/*+ HashJoin(b u)
 SeqScan(b)
 IndexScan(u)
 Leading((b u)) */
SELECT COUNT(*) FROM badges as b, users as u WHERE b.UserId= u.Id AND b.Date>='2010-07-20 16:19:11'::timestamp AND u.DownVotes=0;

/*+ HashJoin(c pl)
 SeqScan(c)
 SeqScan(pl)
 Leading((c pl)) */
SELECT COUNT(*) FROM comments as c, postLinks as pl WHERE c.PostId= pl.PostId AND pl.CreationDate>='2012-01-24 19:31:06'::timestamp AND pl.CreationDate<='2014-07-23 13:31:13'::timestamp;

/*+ HashJoin(b c u)
 HashJoin(c u)
 SeqScan(b)
 SeqScan(c)
 IndexScan(u)
 Leading((b (c u))) */
SELECT COUNT(*) FROM comments as c, badges as b, users as u WHERE u.Id = c.UserId AND c.UserId = b.UserId AND u.Reputation>=1 AND u.UpVotes=0;

/*+ HashJoin(b v u)
 MergeJoin(v u)
 SeqScan(b)
 SeqScan(v)
 SeqScan(u)
 Leading((b (v u))) */
SELECT COUNT(*) FROM votes as v, badges as b, users as u WHERE u.Id = v.UserId AND v.UserId = b.UserId AND v.VoteTypeId=5 AND v.CreationDate<='2014-09-13 00:00:00'::timestamp;

/*+ HashJoin(ph u c)
 NestLoop(u c)
 SeqScan(ph)
 SeqScan(u)
 IndexScan(c)
 Leading((ph (u c))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND ph.CreationDate>='2010-10-13 17:46:39'::timestamp AND u.UpVotes>=0;

/*+ HashJoin(b u)
 SeqScan(b)
 IndexScan(u)
 Leading((b u)) */
SELECT COUNT(*) FROM badges as b, users as u WHERE b.UserId= u.Id AND b.Date<='2014-09-03 22:53:23'::timestamp AND u.Reputation<=173;

/*+ HashJoin(c ph)
 SeqScan(c)
 IndexScan(ph)
 Leading((c ph)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph WHERE c.UserId = ph.UserId AND c.Score=0 AND c.CreationDate>='2010-07-22 10:04:51'::timestamp;

/*+ HashJoin(b u)
 SeqScan(b)
 IndexScan(u)
 Leading((b u)) */
SELECT COUNT(*) FROM badges as b, users as u WHERE b.UserId= u.Id AND u.Views<=228 AND u.DownVotes=0;

/*+ HashJoin(c b)
 SeqScan(c)
 SeqScan(b)
 Leading((c b)) */
SELECT COUNT(*) FROM comments as c, badges as b WHERE c.UserId = b.UserId AND c.Score=0 AND b.Date<='2014-09-11 19:55:51'::timestamp;

/*+ HashJoin(ph pl p)
 HashJoin(pl p)
 SeqScan(ph)
 SeqScan(pl)
 IndexScan(p)
 Leading((ph (pl p))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph WHERE p.Id = pl.PostId AND pl.PostId = ph.PostId AND p.Score>=-1 AND ph.CreationDate>='2010-12-30 21:57:40'::timestamp;

/*+ HashJoin(c v ph)
 HashJoin(v ph)
 SeqScan(c)
 IndexScan(v)
 IndexScan(ph)
 Leading((c (v ph))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v WHERE ph.PostId = c.PostId AND ph.PostId = v.PostId AND ph.PostHistoryTypeId=1 AND v.CreationDate<='2014-09-08 00:00:00'::timestamp;

/*+ HashJoin(b c u ph)
 HashJoin(c u ph)
 HashJoin(u ph)
 SeqScan(b)
 SeqScan(c)
 IndexScan(u)
 IndexScan(ph)
 Leading((b (c (u ph)))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = ph.UserId AND u.Id = b.UserId AND ph.CreationDate='2013-11-26 17:37:43'::timestamp AND u.UpVotes>=0;

/*+ HashJoin(ph u c)
 NestLoop(u c)
 SeqScan(ph)
 SeqScan(u)
 IndexScan(c)
 Leading((ph (u c))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND c.CreationDate>='2010-08-29 00:34:31'::timestamp AND ph.PostHistoryTypeId=5;

/*+ HashJoin(ph c p)
 HashJoin(c p)
 SeqScan(ph)
 SeqScan(c)
 IndexScan(p)
 Leading((ph (c p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph WHERE p.Id = c.PostId AND p.Id = ph.PostId AND ph.CreationDate>='2010-08-11 12:12:35'::timestamp AND ph.CreationDate<='2014-07-22 17:14:50'::timestamp;

/*+ HashJoin(v ph c pl)
 HashJoin(ph c pl)
 HashJoin(c pl)
 SeqScan(v)
 SeqScan(ph)
 SeqScan(c)
 IndexScan(pl)
 Leading((v (ph (c pl)))) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, postHistory as ph, votes as v WHERE pl.PostId = c.PostId AND c.PostId = ph.PostId AND ph.PostId = v.PostId AND pl.LinkTypeId=1 AND v.VoteTypeId=2;

