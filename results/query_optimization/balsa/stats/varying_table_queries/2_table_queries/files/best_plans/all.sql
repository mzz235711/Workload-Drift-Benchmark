/*+ HashJoin(u p)
 SeqScan(u)
 SeqScan(p)
 Leading((u p)) */
SELECT COUNT(*) FROM posts as p, users as u WHERE p.OwnerUserId= u.Id AND p.Score<=20 AND p.CreationDate<='2014-09-05 21:11:22'::timestamp AND u.Views>=0 AND u.CreationDate<='2014-09-01 08:18:14'::timestamp;

/*+ HashJoin(c b)
 SeqScan(c)
 SeqScan(b)
 Leading((c b)) */
SELECT COUNT(*) FROM comments as c, badges as b WHERE c.UserId = b.UserId AND b.Date='2012-10-04 11:53:49'::timestamp;

/*+ HashJoin(c pl)
 SeqScan(c)
 SeqScan(pl)
 Leading((c pl)) */
SELECT COUNT(*) FROM comments as c, postLinks as pl WHERE c.PostId= pl.PostId AND pl.LinkTypeId=3 AND pl.CreationDate>='2011-07-04 22:52:05'::timestamp AND pl.CreationDate<='2014-08-04 22:51:08'::timestamp;

/*+ HashJoin(c p)
 SeqScan(c)
 SeqScan(p)
 Leading((c p)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND c.CreationDate='2012-06-03 02:37:14'::timestamp;

/*+ HashJoin(c pl)
 SeqScan(c)
 SeqScan(pl)
 Leading((c pl)) */
SELECT COUNT(*) FROM comments as c, postLinks as pl WHERE c.PostId= pl.PostId AND pl.LinkTypeId=1;

/*+ HashJoin(v c)
 SeqScan(v)
 IndexScan(c)
 Leading((v c)) */
SELECT COUNT(*) FROM comments as c, votes as v WHERE c.UserId = v.UserId AND c.Score=1 AND v.CreationDate>='2010-07-20 00:00:00'::timestamp;

/*+ HashJoin(c pl)
 SeqScan(c)
 SeqScan(pl)
 Leading((c pl)) */
SELECT COUNT(*) FROM comments as c, postLinks as pl WHERE c.PostId= pl.PostId AND c.Score=0;

/*+ HashJoin(c b)
 IndexScan(c)
 SeqScan(b)
 Leading((c b)) */
SELECT COUNT(*) FROM comments as c, badges as b WHERE c.UserId = b.UserId AND c.Score=0 AND c.CreationDate>='2010-07-23 17:03:23'::timestamp AND c.CreationDate<='2014-09-05 15:26:02'::timestamp;

/*+ HashJoin(u p)
 SeqScan(u)
 SeqScan(p)
 Leading((u p)) */
SELECT COUNT(*) FROM posts as p, users as u WHERE p.OwnerUserId= u.Id AND p.ViewCount<=3555 AND p.AnswerCount<=6 AND p.CreationDate<='2014-09-05 23:29:09'::timestamp AND u.UpVotes>=0 AND u.UpVotes<=46;

/*+ HashJoin(ph c)
 SeqScan(ph)
 IndexScan(c)
 Leading((ph c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph WHERE c.UserId = ph.UserId AND c.Score=1;

/*+ HashJoin(c b)
 SeqScan(c)
 SeqScan(b)
 Leading((c b)) */
SELECT COUNT(*) FROM comments as c, badges as b WHERE c.UserId = b.UserId;

/*+ NestLoop(b c)
 SeqScan(b)
 IndexScan(c)
 Leading((b c)) */
SELECT COUNT(*) FROM comments as c, badges as b WHERE c.UserId = b.UserId AND c.Score=0 AND c.CreationDate>='2010-07-19 20:06:56'::timestamp AND b.Date='2012-12-22 14:19:23'::timestamp;

/*+ HashJoin(u p)
 SeqScan(u)
 SeqScan(p)
 Leading((u p)) */
SELECT COUNT(*) FROM posts as p, users as u WHERE p.OwnerUserId= u.Id AND p.AnswerCount>=0 AND p.AnswerCount<=5 AND p.CommentCount>=0 AND p.CreationDate>='2010-07-19 21:42:57'::timestamp AND u.UpVotes<=71;

/*+ HashJoin(c b)
 SeqScan(c)
 SeqScan(b)
 Leading((c b)) */
SELECT COUNT(*) FROM comments as c, badges as b WHERE c.UserId = b.UserId;

/*+ HashJoin(ph c)
 SeqScan(ph)
 IndexScan(c)
 Leading((ph c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph WHERE c.UserId = ph.UserId;

/*+ HashJoin(c p)
 SeqScan(c)
 SeqScan(p)
 Leading((c p)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND c.CreationDate<='2014-09-08 19:24:35'::timestamp AND p.CommentCount<=33 AND p.FavoriteCount>=0 AND p.FavoriteCount<=30;

/*+ HashJoin(ph c)
 SeqScan(ph)
 IndexScan(c)
 Leading((ph c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph WHERE c.UserId = ph.UserId AND c.Score=0 AND ph.PostHistoryTypeId=33;

/*+ HashJoin(u b)
 SeqScan(u)
 SeqScan(b)
 Leading((u b)) */
SELECT COUNT(*) FROM badges as b, users as u WHERE b.UserId= u.Id AND b.Date>='2010-07-26 20:58:42'::timestamp AND u.UpVotes<=26;

/*+ HashJoin(c p)
 SeqScan(c)
 SeqScan(p)
 Leading((c p)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND c.Score=0 AND c.CreationDate>='2010-08-06 02:44:34'::timestamp AND c.CreationDate<='2014-09-13 17:09:14'::timestamp AND p.ViewCount>=0 AND p.ViewCount<=20374 AND p.AnswerCount>=0 AND p.AnswerCount<=5;

/*+ HashJoin(u b)
 SeqScan(u)
 SeqScan(b)
 Leading((u b)) */
SELECT COUNT(*) FROM badges as b, users as u WHERE b.UserId= u.Id AND b.Date>='2010-07-20 11:59:13'::timestamp AND u.Views>=0 AND u.UpVotes<=30 AND u.CreationDate<='2014-07-28 00:42:50'::timestamp;

/*+ HashJoin(c b)
 SeqScan(c)
 SeqScan(b)
 Leading((c b)) */
SELECT COUNT(*) FROM comments as c, badges as b WHERE c.UserId = b.UserId;

/*+ HashJoin(u b)
 SeqScan(u)
 SeqScan(b)
 Leading((u b)) */
SELECT COUNT(*) FROM badges as b, users as u WHERE b.UserId= u.Id AND b.Date>='2010-07-26 19:23:41'::timestamp AND b.Date<='2014-09-10 19:36:34'::timestamp AND u.DownVotes>=0;

/*+ HashJoin(c pl)
 SeqScan(c)
 SeqScan(pl)
 Leading((c pl)) */
SELECT COUNT(*) FROM comments as c, postLinks as pl WHERE c.PostId= pl.PostId AND c.CreationDate<='2014-09-08 16:50:49'::timestamp;

/*+ HashJoin(u p)
 SeqScan(u)
 SeqScan(p)
 Leading((u p)) */
SELECT COUNT(*) FROM posts as p, users as u WHERE p.OwnerUserId= u.Id AND p.Score<=18 AND p.ViewCount<=10228 AND p.AnswerCount<=2 AND p.CommentCount<=10 AND u.Views>=0 AND u.Views<=36 AND u.DownVotes=0;

/*+ HashJoin(c b)
 SeqScan(c)
 SeqScan(b)
 Leading((c b)) */
SELECT COUNT(*) FROM comments as c, badges as b WHERE c.UserId = b.UserId AND c.Score=0 AND c.CreationDate<='2014-09-10 22:01:55'::timestamp AND b.Date>='2010-07-19 19:49:07'::timestamp;

/*+ HashJoin(c p)
 SeqScan(c)
 SeqScan(p)
 Leading((c p)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id;

/*+ HashJoin(c pl)
 SeqScan(c)
 SeqScan(pl)
 Leading((c pl)) */
SELECT COUNT(*) FROM comments as c, postLinks as pl WHERE c.PostId= pl.PostId AND c.Score=1 AND pl.CreationDate>='2011-02-03 08:54:35'::timestamp AND pl.CreationDate<='2014-09-06 15:24:08'::timestamp;

/*+ HashJoin(c p)
 SeqScan(c)
 SeqScan(p)
 Leading((c p)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND c.Score=1 AND c.CreationDate>='2010-07-21 08:45:38'::timestamp AND c.CreationDate<='2014-09-10 20:26:02'::timestamp;

/*+ HashJoin(c p)
 SeqScan(c)
 SeqScan(p)
 Leading((c p)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND p.ViewCount>=0 AND p.CommentCount<=17;

/*+ HashJoin(u p)
 SeqScan(u)
 SeqScan(p)
 Leading((u p)) */
SELECT COUNT(*) FROM posts as p, users as u WHERE p.OwnerUserId= u.Id AND p.Score<=15 AND u.Reputation>=1;

/*+ HashJoin(c p)
 SeqScan(c)
 SeqScan(p)
 Leading((c p)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND p.ViewCount<=5672 AND p.CommentCount>=0 AND p.CreationDate>='2010-08-26 07:04:58'::timestamp AND p.CreationDate<='2014-09-05 15:44:24'::timestamp;

/*+ HashJoin(c b)
 SeqScan(c)
 SeqScan(b)
 Leading((c b)) */
SELECT COUNT(*) FROM comments as c, badges as b WHERE c.UserId = b.UserId;

/*+ HashJoin(c pl)
 SeqScan(c)
 SeqScan(pl)
 Leading((c pl)) */
SELECT COUNT(*) FROM comments as c, postLinks as pl WHERE c.PostId= pl.PostId AND c.Score=0 AND pl.CreationDate>='2010-08-29 19:18:56'::timestamp AND pl.CreationDate<='2014-08-05 13:07:16'::timestamp;

/*+ HashJoin(c p)
 SeqScan(c)
 SeqScan(p)
 Leading((c p)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND c.Score=0 AND c.CreationDate<='2014-09-04 19:15:40'::timestamp AND p.PostTypeId=1;

/*+ HashJoin(v b)
 SeqScan(v)
 SeqScan(b)
 Leading((v b)) */
SELECT COUNT(*) FROM badges as b, votes as v WHERE b.UserId = v.UserId AND v.VoteTypeId=5 AND v.CreationDate<='2014-09-11 00:00:00'::timestamp;

/*+ HashJoin(b v)
 SeqScan(b)
 SeqScan(v)
 Leading((b v)) */
SELECT COUNT(*) FROM badges as b, votes as v WHERE b.UserId = v.UserId AND b.Date<='2014-09-10 08:46:13'::timestamp AND v.BountyAmount>=0 AND v.BountyAmount<=50 AND v.CreationDate>='2010-07-20 00:00:00'::timestamp AND v.CreationDate<='2014-09-09 00:00:00'::timestamp;

/*+ HashJoin(c pl)
 SeqScan(c)
 SeqScan(pl)
 Leading((c pl)) */
SELECT COUNT(*) FROM comments as c, postLinks as pl WHERE c.PostId= pl.PostId AND c.Score=0 AND pl.LinkTypeId=1;

/*+ HashJoin(b p)
 SeqScan(b)
 SeqScan(p)
 Leading((b p)) */
SELECT COUNT(*) FROM badges as b, posts as p WHERE b.UserId = p.OwnerUserId AND b.Date<='2014-09-03 16:33:07'::timestamp AND p.Score>=0 AND p.Score<=64 AND p.AnswerCount=2 AND p.FavoriteCount>=0 AND p.FavoriteCount<=7 AND p.CreationDate<='2014-08-19 05:44:26'::timestamp;

/*+ HashJoin(c pl)
 SeqScan(c)
 SeqScan(pl)
 Leading((c pl)) */
SELECT COUNT(*) FROM comments as c, postLinks as pl WHERE c.PostId= pl.PostId AND pl.LinkTypeId=1;

/*+ HashJoin(p b)
 SeqScan(p)
 SeqScan(b)
 Leading((p b)) */
SELECT COUNT(*) FROM badges as b, posts as p WHERE b.UserId = p.OwnerUserId AND p.PostTypeId=2 AND p.CommentCount>=0 AND p.CommentCount<=14 AND p.CreationDate>='2010-08-19 13:40:35'::timestamp;

/*+ HashJoin(c v)
 SeqScan(c)
 SeqScan(v)
 Leading((c v)) */
SELECT COUNT(*) FROM comments as c, votes as v WHERE c.UserId = v.UserId AND c.Score=0 AND v.BountyAmount>=0;

/*+ HashJoin(u p)
 SeqScan(u)
 SeqScan(p)
 Leading((u p)) */
SELECT COUNT(*) FROM posts as p, users as u WHERE p.OwnerUserId= u.Id AND p.PostTypeId=2 AND p.Score<=14 AND p.CommentCount>=0 AND p.CommentCount<=13 AND u.Reputation<=735 AND u.DownVotes>=0 AND u.DownVotes<=0 AND u.CreationDate>='2010-09-23 21:40:09'::timestamp AND u.CreationDate<='2014-09-13 20:19:48'::timestamp;

/*+ HashJoin(c p)
 SeqScan(c)
 SeqScan(p)
 Leading((c p)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND c.Score=0 AND p.ViewCount>=0 AND p.AnswerCount<=4;

/*+ HashJoin(c pl)
 SeqScan(c)
 SeqScan(pl)
 Leading((c pl)) */
SELECT COUNT(*) FROM comments as c, postLinks as pl WHERE c.PostId= pl.PostId AND c.Score=0 AND pl.LinkTypeId=1 AND pl.CreationDate>='2011-06-09 07:32:00'::timestamp AND pl.CreationDate<='2014-06-17 20:03:40'::timestamp;

/*+ HashJoin(c b)
 SeqScan(c)
 SeqScan(b)
 Leading((c b)) */
SELECT COUNT(*) FROM comments as c, badges as b WHERE c.UserId = b.UserId AND c.CreationDate>='2010-07-20 09:59:57'::timestamp AND c.CreationDate<='2014-09-12 13:47:49'::timestamp;

/*+ HashJoin(v c)
 SeqScan(v)
 IndexScan(c)
 Leading((v c)) */
SELECT COUNT(*) FROM comments as c, votes as v WHERE c.UserId = v.UserId AND c.CreationDate>='2010-08-01 23:13:24'::timestamp AND v.CreationDate>='2010-07-19 00:00:00'::timestamp;

/*+ HashJoin(c pl)
 SeqScan(c)
 SeqScan(pl)
 Leading((c pl)) */
SELECT COUNT(*) FROM comments as c, postLinks as pl WHERE c.PostId= pl.PostId AND c.CreationDate<='2014-09-13 21:08:07'::timestamp;

/*+ HashJoin(v c)
 SeqScan(v)
 IndexScan(c)
 Leading((v c)) */
SELECT COUNT(*) FROM comments as c, votes as v WHERE c.UserId = v.UserId;

/*+ HashJoin(u b)
 SeqScan(u)
 SeqScan(b)
 Leading((u b)) */
SELECT COUNT(*) FROM badges as b, users as u WHERE b.UserId= u.Id AND u.UpVotes>=0;

/*+ HashJoin(b p)
 SeqScan(b)
 SeqScan(p)
 Leading((b p)) */
SELECT COUNT(*) FROM badges as b, posts as p WHERE b.UserId = p.OwnerUserId AND p.Score>=-1 AND p.Score<=28 AND p.ViewCount>=0 AND p.ViewCount<=9615 AND p.AnswerCount=1;

/*+ HashJoin(ph c)
 SeqScan(ph)
 IndexScan(c)
 Leading((ph c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph WHERE c.UserId = ph.UserId AND ph.CreationDate>='2010-07-24 20:15:20'::timestamp AND ph.CreationDate<='2014-08-13 15:13:20'::timestamp;

/*+ HashJoin(c ph)
 IndexScan(c)
 SeqScan(ph)
 Leading((c ph)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph WHERE c.UserId = ph.UserId AND c.Score=0 AND ph.PostHistoryTypeId=5 AND ph.CreationDate>='2010-10-11 17:17:26'::timestamp AND ph.CreationDate<='2014-06-18 15:46:25'::timestamp;

/*+ HashJoin(v b)
 SeqScan(v)
 SeqScan(b)
 Leading((v b)) */
SELECT COUNT(*) FROM badges as b, votes as v WHERE b.UserId = v.UserId AND v.CreationDate<='2014-09-11 00:00:00'::timestamp;

/*+ HashJoin(c v)
 SeqScan(c)
 SeqScan(v)
 Leading((c v)) */
SELECT COUNT(*) FROM comments as c, votes as v WHERE c.UserId = v.UserId AND c.Score=1 AND c.CreationDate>='2010-07-19 20:54:37'::timestamp AND v.BountyAmount<=50;

/*+ HashJoin(b v)
 SeqScan(b)
 SeqScan(v)
 Leading((b v)) */
SELECT COUNT(*) FROM badges as b, votes as v WHERE b.UserId = v.UserId AND v.BountyAmount>=0;

/*+ HashJoin(ph c)
 SeqScan(ph)
 IndexScan(c)
 Leading((ph c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph WHERE c.UserId = ph.UserId AND c.Score=0 AND c.CreationDate>='2010-07-10 21:43:49'::timestamp;

/*+ HashJoin(c p)
 SeqScan(c)
 SeqScan(p)
 Leading((c p)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND c.Score=0 AND p.PostTypeId=2;

/*+ NestLoop(u p)
 IndexScan(u)
 IndexScan(p)
 Leading((u p)) */
SELECT COUNT(*) FROM posts as p, users as u WHERE p.OwnerUserId= u.Id AND p.Score>=0 AND p.Score<=52 AND p.FavoriteCount<=10 AND u.Reputation<=565 AND u.Views>=0 AND u.Views<=267 AND u.DownVotes<=5 AND u.UpVotes=3 AND u.CreationDate>='2010-08-08 14:52:18'::timestamp;

/*+ HashJoin(c pl)
 SeqScan(c)
 SeqScan(pl)
 Leading((c pl)) */
SELECT COUNT(*) FROM comments as c, postLinks as pl WHERE c.PostId= pl.PostId AND c.CreationDate>='2010-10-18 12:55:33'::timestamp;

/*+ HashJoin(v b)
 SeqScan(v)
 SeqScan(b)
 Leading((v b)) */
SELECT COUNT(*) FROM badges as b, votes as v WHERE b.UserId = v.UserId;

/*+ HashJoin(b v)
 SeqScan(b)
 SeqScan(v)
 Leading((b v)) */
SELECT COUNT(*) FROM badges as b, votes as v WHERE b.UserId = v.UserId AND b.Date<='2014-09-01 08:38:14'::timestamp AND v.BountyAmount<=50;

/*+ HashJoin(c p)
 SeqScan(c)
 IndexScan(p)
 Leading((c p)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND c.CreationDate<='2014-09-07 22:25:17'::timestamp AND p.ViewCount<=2641 AND p.AnswerCount>=0 AND p.AnswerCount<=4 AND p.FavoriteCount<=8 AND p.CreationDate<='2014-08-13 09:20:10'::timestamp;

/*+ HashJoin(c b)
 IndexScan(c)
 SeqScan(b)
 Leading((c b)) */
SELECT COUNT(*) FROM comments as c, badges as b WHERE c.UserId = b.UserId AND c.Score=0;

/*+ HashJoin(v b)
 SeqScan(v)
 SeqScan(b)
 Leading((v b)) */
SELECT COUNT(*) FROM badges as b, votes as v WHERE b.UserId = v.UserId AND b.Date>='2010-07-21 15:23:12'::timestamp;

/*+ HashJoin(b v)
 SeqScan(b)
 SeqScan(v)
 Leading((b v)) */
SELECT COUNT(*) FROM badges as b, votes as v WHERE b.UserId = v.UserId AND b.Date='2012-01-13 01:31:35'::timestamp AND v.BountyAmount>=0;

/*+ HashJoin(c v)
 SeqScan(c)
 SeqScan(v)
 Leading((c v)) */
SELECT COUNT(*) FROM comments as c, votes as v WHERE c.UserId = v.UserId AND c.CreationDate<='2014-09-12 13:18:50'::timestamp AND v.BountyAmount>=0;

/*+ HashJoin(c p)
 SeqScan(c)
 SeqScan(p)
 Leading((c p)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND c.CreationDate>='2010-07-19 20:01:15'::timestamp AND c.CreationDate<='2014-09-07 02:14:32'::timestamp AND p.PostTypeId=1 AND p.CommentCount>=0 AND p.CommentCount<=12;

/*+ HashJoin(u b)
 SeqScan(u)
 SeqScan(b)
 Leading((u b)) */
SELECT COUNT(*) FROM badges as b, users as u WHERE b.UserId= u.Id AND u.DownVotes>=0 AND u.DownVotes<=1;

/*+ HashJoin(c ph)
 IndexScan(c)
 SeqScan(ph)
 Leading((c ph)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph WHERE c.UserId = ph.UserId AND c.Score=0 AND ph.PostHistoryTypeId=5 AND ph.CreationDate>='2010-11-13 14:00:03'::timestamp AND ph.CreationDate<='2014-06-06 22:14:45'::timestamp;

/*+ HashJoin(c pl)
 SeqScan(c)
 SeqScan(pl)
 Leading((c pl)) */
SELECT COUNT(*) FROM comments as c, postLinks as pl WHERE c.PostId= pl.PostId AND c.Score=0;

/*+ HashJoin(c p)
 SeqScan(c)
 SeqScan(p)
 Leading((c p)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND c.CreationDate>='2010-07-20 10:11:50'::timestamp AND p.AnswerCount<=7 AND p.FavoriteCount<=17;

/*+ HashJoin(c pl)
 SeqScan(c)
 SeqScan(pl)
 Leading((c pl)) */
SELECT COUNT(*) FROM comments as c, postLinks as pl WHERE c.PostId= pl.PostId AND c.CreationDate<='2014-09-07 13:10:50'::timestamp;

/*+ HashJoin(c b)
 IndexScan(c)
 SeqScan(b)
 Leading((c b)) */
SELECT COUNT(*) FROM comments as c, badges as b WHERE c.UserId = b.UserId AND c.Score=0 AND b.Date<='2014-08-29 21:49:06'::timestamp;

/*+ HashJoin(c b)
 SeqScan(c)
 SeqScan(b)
 Leading((c b)) */
SELECT COUNT(*) FROM comments as c, badges as b WHERE c.UserId = b.UserId;

/*+ HashJoin(c b)
 IndexScan(c)
 SeqScan(b)
 Leading((c b)) */
SELECT COUNT(*) FROM comments as c, badges as b WHERE c.UserId = b.UserId AND c.Score=0 AND b.Date<='2014-08-26 16:04:05'::timestamp;

/*+ HashJoin(c b)
 SeqScan(c)
 SeqScan(b)
 Leading((c b)) */
SELECT COUNT(*) FROM comments as c, badges as b WHERE c.UserId = b.UserId AND c.CreationDate>='2010-08-26 10:07:01'::timestamp AND c.CreationDate<='2014-09-11 22:27:48'::timestamp AND b.Date>='2010-07-28 07:13:54'::timestamp;

/*+ HashJoin(p b)
 SeqScan(p)
 SeqScan(b)
 Leading((p b)) */
SELECT COUNT(*) FROM badges as b, posts as p WHERE b.UserId = p.OwnerUserId AND b.Date>='2010-08-09 23:59:50'::timestamp AND b.Date<='2014-09-01 20:01:30'::timestamp AND p.Score>=-1 AND p.Score<=109 AND p.ViewCount>=0;

/*+ HashJoin(v b)
 SeqScan(v)
 SeqScan(b)
 Leading((v b)) */
SELECT COUNT(*) FROM badges as b, votes as v WHERE b.UserId = v.UserId;

/*+ HashJoin(c b)
 SeqScan(c)
 SeqScan(b)
 Leading((c b)) */
SELECT COUNT(*) FROM comments as c, badges as b WHERE c.UserId = b.UserId AND c.Score=2;

/*+ HashJoin(p b)
 SeqScan(p)
 SeqScan(b)
 Leading((p b)) */
SELECT COUNT(*) FROM badges as b, posts as p WHERE b.UserId = p.OwnerUserId AND p.PostTypeId=1 AND p.AnswerCount<=3 AND p.CommentCount>=0 AND p.CreationDate<='2014-08-12 16:27:10'::timestamp;

/*+ HashJoin(c b)
 IndexScan(c)
 SeqScan(b)
 Leading((c b)) */
SELECT COUNT(*) FROM comments as c, badges as b WHERE c.UserId = b.UserId AND c.Score=0 AND b.Date>='2010-11-24 16:31:03'::timestamp;

/*+ HashJoin(c p)
 SeqScan(c)
 SeqScan(p)
 Leading((c p)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND c.CreationDate<='2014-09-11 09:34:05'::timestamp AND p.Score=1 AND p.AnswerCount=0 AND p.FavoriteCount>=0;

/*+ HashJoin(ph c)
 SeqScan(ph)
 IndexScan(c)
 Leading((ph c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph WHERE c.UserId = ph.UserId;

/*+ HashJoin(c b)
 SeqScan(c)
 SeqScan(b)
 Leading((c b)) */
SELECT COUNT(*) FROM comments as c, badges as b WHERE c.UserId = b.UserId AND c.CreationDate>='2010-07-25 07:48:30'::timestamp AND c.CreationDate<='2014-09-10 15:10:39'::timestamp;

/*+ HashJoin(b v)
 SeqScan(b)
 SeqScan(v)
 Leading((b v)) */
SELECT COUNT(*) FROM badges as b, votes as v WHERE b.UserId = v.UserId AND v.BountyAmount>=0;

/*+ HashJoin(c p)
 SeqScan(c)
 SeqScan(p)
 Leading((c p)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND c.CreationDate<='2014-09-07 18:28:52'::timestamp AND p.ViewCount>=0 AND p.ViewCount<=3777 AND p.AnswerCount=0;

/*+ HashJoin(c pl)
 SeqScan(c)
 SeqScan(pl)
 Leading((c pl)) */
SELECT COUNT(*) FROM comments as c, postLinks as pl WHERE c.PostId= pl.PostId AND pl.LinkTypeId=1 AND pl.CreationDate>='2010-09-19 23:57:17'::timestamp;

/*+ HashJoin(p b)
 SeqScan(p)
 SeqScan(b)
 Leading((p b)) */
SELECT COUNT(*) FROM badges as b, posts as p WHERE b.UserId = p.OwnerUserId AND p.Score>=-1 AND p.ViewCount<=5704 AND p.AnswerCount>=0 AND p.CommentCount>=0 AND p.CommentCount<=8 AND p.CreationDate>='2010-08-06 05:15:22'::timestamp;

/*+ HashJoin(c pl)
 SeqScan(c)
 SeqScan(pl)
 Leading((c pl)) */
SELECT COUNT(*) FROM comments as c, postLinks as pl WHERE c.PostId= pl.PostId AND pl.CreationDate>='2011-11-10 19:58:44'::timestamp;

/*+ HashJoin(c b)
 SeqScan(c)
 SeqScan(b)
 Leading((c b)) */
SELECT COUNT(*) FROM comments as c, badges as b WHERE c.UserId = b.UserId AND c.CreationDate>='2010-08-14 00:47:50'::timestamp AND c.CreationDate<='2014-09-13 08:22:38'::timestamp;

/*+ HashJoin(c b)
 IndexScan(c)
 SeqScan(b)
 Leading((c b)) */
SELECT COUNT(*) FROM comments as c, badges as b WHERE c.UserId = b.UserId AND c.Score=0;

/*+ HashJoin(v c)
 SeqScan(v)
 IndexScan(c)
 Leading((v c)) */
SELECT COUNT(*) FROM comments as c, votes as v WHERE c.UserId = v.UserId;

/*+ HashJoin(v c)
 SeqScan(v)
 IndexScan(c)
 Leading((v c)) */
SELECT COUNT(*) FROM comments as c, votes as v WHERE c.UserId = v.UserId;

/*+ HashJoin(c p)
 SeqScan(c)
 SeqScan(p)
 Leading((c p)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND c.CreationDate>='2010-07-26 21:44:31'::timestamp AND p.Score<=22 AND p.ViewCount<=2717 AND p.CommentCount>=0 AND p.CommentCount<=13 AND p.CreationDate>='2009-04-12 07:57:36'::timestamp AND p.CreationDate<='2014-08-25 03:25:38'::timestamp;

/*+ HashJoin(b p)
 SeqScan(b)
 SeqScan(p)
 Leading((b p)) */
SELECT COUNT(*) FROM badges as b, posts as p WHERE b.UserId = p.OwnerUserId AND p.AnswerCount>=0 AND p.FavoriteCount>=0 AND p.FavoriteCount<=4 AND p.CreationDate<='2014-08-29 07:27:30'::timestamp;

/*+ HashJoin(c v)
 SeqScan(c)
 IndexScan(v)
 Leading((c v)) */
SELECT COUNT(*) FROM comments as c, votes as v WHERE c.UserId = v.UserId AND v.CreationDate>='2010-07-20 00:00:00'::timestamp;

/*+ HashJoin(c pl)
 SeqScan(c)
 SeqScan(pl)
 Leading((c pl)) */
SELECT COUNT(*) FROM comments as c, postLinks as pl WHERE c.PostId= pl.PostId AND pl.LinkTypeId=1;

/*+ HashJoin(c pl)
 SeqScan(c)
 IndexScan(pl)
 Leading((c pl)) */
SELECT COUNT(*) FROM comments as c, postLinks as pl WHERE c.PostId= pl.PostId AND pl.CreationDate>='2011-02-11 07:49:36'::timestamp AND pl.CreationDate<='2014-09-04 23:30:20'::timestamp;

/*+ HashJoin(c b)
 SeqScan(c)
 SeqScan(b)
 Leading((c b)) */
SELECT COUNT(*) FROM comments as c, badges as b WHERE c.UserId = b.UserId AND b.Date>='2010-07-29 11:54:05'::timestamp AND b.Date<='2014-09-06 15:27:25'::timestamp;

/*+ HashJoin(b v)
 SeqScan(b)
 SeqScan(v)
 Leading((b v)) */
SELECT COUNT(*) FROM badges as b, votes as v WHERE b.UserId = v.UserId AND b.Date<='2014-08-28 20:31:04'::timestamp AND v.VoteTypeId=8 AND v.CreationDate>='2010-07-19 00:00:00'::timestamp;

/*+ HashJoin(u p)
 SeqScan(u)
 SeqScan(p)
 Leading((u p)) */
SELECT COUNT(*) FROM posts as p, users as u WHERE p.OwnerUserId= u.Id AND p.AnswerCount<=8 AND p.FavoriteCount>=0 AND p.CreationDate<='2014-08-29 20:28:54'::timestamp AND u.Reputation=1 AND u.Views>=0 AND u.DownVotes>=0 AND u.CreationDate>='2010-11-29 08:00:03'::timestamp AND u.CreationDate<='2014-08-27 12:43:55'::timestamp;

/*+ HashJoin(c pl)
 SeqScan(c)
 SeqScan(pl)
 Leading((c pl)) */
SELECT COUNT(*) FROM comments as c, postLinks as pl WHERE c.PostId= pl.PostId;

/*+ HashJoin(c pl)
 SeqScan(c)
 SeqScan(pl)
 Leading((c pl)) */
SELECT COUNT(*) FROM comments as c, postLinks as pl WHERE c.PostId= pl.PostId AND c.Score=0 AND c.CreationDate<='2014-09-01 16:06:10'::timestamp AND pl.CreationDate>='2011-04-22 12:58:02'::timestamp AND pl.CreationDate<='2014-08-05 19:36:20'::timestamp;

/*+ HashJoin(b v)
 SeqScan(b)
 SeqScan(v)
 Leading((b v)) */
SELECT COUNT(*) FROM badges as b, votes as v WHERE b.UserId = v.UserId AND b.Date>='2010-07-19 22:09:06'::timestamp AND b.Date<='2014-09-09 07:25:40'::timestamp AND v.BountyAmount>=0;

/*+ HashJoin(c ph)
 IndexScan(c)
 SeqScan(ph)
 Leading((c ph)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph WHERE c.UserId = ph.UserId AND c.CreationDate>='2010-07-22 17:11:24'::timestamp AND ph.PostHistoryTypeId=1;

/*+ HashJoin(u b)
 SeqScan(u)
 SeqScan(b)
 Leading((u b)) */
SELECT COUNT(*) FROM badges as b, users as u WHERE b.UserId= u.Id AND b.Date>='2010-08-08 16:14:19'::timestamp AND b.Date<='2014-09-10 13:54:47'::timestamp AND u.Views>=0;

/*+ HashJoin(c p)
 SeqScan(c)
 SeqScan(p)
 Leading((c p)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND c.CreationDate>='2010-07-25 20:57:47'::timestamp AND p.ViewCount>=0 AND p.AnswerCount>=0 AND p.CommentCount<=17;

/*+ MergeJoin(c p)
 SeqScan(c)
 SeqScan(p)
 Leading((c p)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND c.Score=1 AND p.Score>=0 AND p.Score<=41 AND p.FavoriteCount<=6;

/*+ HashJoin(ph c)
 SeqScan(ph)
 IndexScan(c)
 Leading((ph c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph WHERE c.UserId = ph.UserId AND ph.PostHistoryTypeId=5 AND ph.CreationDate<='2014-06-21 15:11:23'::timestamp;

/*+ HashJoin(c b)
 IndexScan(c)
 SeqScan(b)
 Leading((c b)) */
SELECT COUNT(*) FROM comments as c, badges as b WHERE c.UserId = b.UserId AND c.Score=0 AND c.CreationDate<='2014-09-09 17:53:58'::timestamp AND b.Date>='2010-07-20 00:04:07'::timestamp AND b.Date<='2014-09-05 02:36:14'::timestamp;

/*+ HashJoin(b p)
 SeqScan(b)
 SeqScan(p)
 Leading((b p)) */
SELECT COUNT(*) FROM badges as b, posts as p WHERE b.UserId = p.OwnerUserId AND p.Score=2 AND p.CommentCount=3 AND p.CreationDate>='2010-07-19 21:39:35'::timestamp AND p.CreationDate<='2014-09-03 15:44:54'::timestamp;

/*+ HashJoin(u b)
 SeqScan(u)
 SeqScan(b)
 Leading((u b)) */
SELECT COUNT(*) FROM badges as b, users as u WHERE b.UserId= u.Id AND b.Date>='2010-07-22 05:13:18'::timestamp AND u.DownVotes<=1 AND u.UpVotes>=0 AND u.UpVotes<=3;

/*+ HashJoin(u b)
 SeqScan(u)
 SeqScan(b)
 Leading((u b)) */
SELECT COUNT(*) FROM badges as b, users as u WHERE b.UserId= u.Id AND u.Reputation>=1 AND u.Reputation<=565 AND u.Views<=13;

/*+ HashJoin(u b)
 SeqScan(u)
 SeqScan(b)
 Leading((u b)) */
SELECT COUNT(*) FROM badges as b, users as u WHERE b.UserId= u.Id AND u.Reputation>=1 AND u.Views<=36;

/*+ HashJoin(v b)
 SeqScan(v)
 SeqScan(b)
 Leading((v b)) */
SELECT COUNT(*) FROM badges as b, votes as v WHERE b.UserId = v.UserId AND b.Date>='2010-07-26 19:33:42'::timestamp AND b.Date<='2014-09-08 18:42:27'::timestamp;

/*+ NestLoop(u p)
 IndexScan(u)
 IndexScan(p)
 Leading((u p)) */
SELECT COUNT(*) FROM posts as p, users as u WHERE p.OwnerUserId= u.Id AND p.PostTypeId=1 AND u.Reputation<=1597 AND u.Views=1 AND u.DownVotes<=0 AND u.CreationDate<='2014-09-09 22:15:27'::timestamp;

/*+ HashJoin(u b)
 SeqScan(u)
 SeqScan(b)
 Leading((u b)) */
SELECT COUNT(*) FROM badges as b, users as u WHERE b.UserId= u.Id AND u.Reputation<=456;

/*+ HashJoin(p b)
 SeqScan(p)
 SeqScan(b)
 Leading((p b)) */
SELECT COUNT(*) FROM badges as b, posts as p WHERE b.UserId = p.OwnerUserId AND p.AnswerCount>=0 AND p.AnswerCount<=5;

/*+ HashJoin(c v)
 SeqScan(c)
 SeqScan(v)
 Leading((c v)) */
SELECT COUNT(*) FROM comments as c, votes as v WHERE c.UserId = v.UserId AND c.Score=0 AND c.CreationDate>='2010-07-21 15:50:24'::timestamp AND v.BountyAmount>=0 AND v.BountyAmount<=50 AND v.CreationDate<='2014-09-11 00:00:00'::timestamp;

/*+ HashJoin(v b)
 SeqScan(v)
 SeqScan(b)
 Leading((v b)) */
SELECT COUNT(*) FROM badges as b, votes as v WHERE b.UserId = v.UserId;

/*+ HashJoin(c pl)
 SeqScan(c)
 SeqScan(pl)
 Leading((c pl)) */
SELECT COUNT(*) FROM comments as c, postLinks as pl WHERE c.PostId= pl.PostId AND c.CreationDate>='2010-07-27 12:56:46'::timestamp AND c.CreationDate<='2014-09-08 18:10:12'::timestamp AND pl.LinkTypeId=1;

/*+ HashJoin(u p)
 SeqScan(u)
 SeqScan(p)
 Leading((u p)) */
SELECT COUNT(*) FROM posts as p, users as u WHERE p.OwnerUserId= u.Id AND p.AnswerCount=1 AND u.DownVotes<=0;

/*+ HashJoin(c p)
 SeqScan(c)
 SeqScan(p)
 Leading((c p)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND p.ViewCount<=6283 AND p.CommentCount<=19 AND p.CreationDate<='2014-09-12 12:29:27'::timestamp;

/*+ HashJoin(c pl)
 SeqScan(c)
 SeqScan(pl)
 Leading((c pl)) */
SELECT COUNT(*) FROM comments as c, postLinks as pl WHERE c.PostId= pl.PostId AND c.Score=0;

/*+ HashJoin(b v)
 SeqScan(b)
 SeqScan(v)
 Leading((b v)) */
SELECT COUNT(*) FROM badges as b, votes as v WHERE b.UserId = v.UserId AND b.Date>='2010-07-20 01:49:07'::timestamp AND b.Date<='2014-08-24 03:32:29'::timestamp AND v.BountyAmount>=0;

/*+ HashJoin(u b)
 SeqScan(u)
 SeqScan(b)
 Leading((u b)) */
SELECT COUNT(*) FROM badges as b, users as u WHERE b.UserId= u.Id AND u.Reputation<=737 AND u.UpVotes>=0 AND u.UpVotes<=51 AND u.CreationDate>='2010-12-23 03:50:33'::timestamp;

/*+ HashJoin(c v)
 SeqScan(c)
 SeqScan(v)
 Leading((c v)) */
SELECT COUNT(*) FROM comments as c, votes as v WHERE c.UserId = v.UserId AND v.VoteTypeId=5;

/*+ HashJoin(ph c)
 SeqScan(ph)
 IndexScan(c)
 Leading((ph c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph WHERE c.UserId = ph.UserId AND c.Score=0 AND c.CreationDate>='2010-07-19 19:58:20'::timestamp AND ph.CreationDate>='2011-09-07 03:44:56'::timestamp;

/*+ HashJoin(b v)
 SeqScan(b)
 SeqScan(v)
 Leading((b v)) */
SELECT COUNT(*) FROM badges as b, votes as v WHERE b.UserId = v.UserId AND b.Date>='2010-07-19 19:39:09'::timestamp AND v.BountyAmount>=0 AND v.BountyAmount<=50;

/*+ HashJoin(u p)
 SeqScan(u)
 SeqScan(p)
 Leading((u p)) */
SELECT COUNT(*) FROM posts as p, users as u WHERE p.OwnerUserId= u.Id AND p.Score>=-4 AND p.Score<=17 AND p.AnswerCount<=2 AND p.FavoriteCount>=0 AND p.FavoriteCount<=7 AND u.Reputation>=1 AND u.Views>=0 AND u.Views<=95;

/*+ HashJoin(c b)
 SeqScan(c)
 SeqScan(b)
 Leading((c b)) */
SELECT COUNT(*) FROM comments as c, badges as b WHERE c.UserId = b.UserId;

/*+ HashJoin(c pl)
 SeqScan(c)
 SeqScan(pl)
 Leading((c pl)) */
SELECT COUNT(*) FROM comments as c, postLinks as pl WHERE c.PostId= pl.PostId AND c.CreationDate>='2010-07-27 16:43:12'::timestamp AND c.CreationDate<='2014-09-12 15:55:04'::timestamp AND pl.CreationDate>='2010-09-17 06:40:34'::timestamp;

/*+ HashJoin(c b)
 SeqScan(c)
 SeqScan(b)
 Leading((c b)) */
SELECT COUNT(*) FROM comments as c, badges as b WHERE c.UserId = b.UserId;

/*+ HashJoin(c p)
 SeqScan(c)
 SeqScan(p)
 Leading((c p)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND c.CreationDate<='2014-09-11 02:16:10'::timestamp AND p.PostTypeId=1 AND p.Score>=-4 AND p.ViewCount>=0 AND p.CreationDate>='2010-09-15 00:45:11'::timestamp AND p.CreationDate<='2014-09-06 21:29:15'::timestamp;

/*+ HashJoin(b p)
 SeqScan(b)
 SeqScan(p)
 Leading((b p)) */
SELECT COUNT(*) FROM badges as b, posts as p WHERE b.UserId = p.OwnerUserId AND p.Score>=0 AND p.ViewCount=33 AND p.AnswerCount<=3;

/*+ HashJoin(c pl)
 SeqScan(c)
 SeqScan(pl)
 Leading((c pl)) */
SELECT COUNT(*) FROM comments as c, postLinks as pl WHERE c.PostId= pl.PostId AND pl.CreationDate='2014-05-31 18:06:08'::timestamp;

/*+ HashJoin(c pl)
 SeqScan(c)
 SeqScan(pl)
 Leading((c pl)) */
SELECT COUNT(*) FROM comments as c, postLinks as pl WHERE c.PostId= pl.PostId AND c.CreationDate>='2010-08-19 09:33:49'::timestamp AND c.CreationDate<='2014-09-12 18:03:01'::timestamp AND pl.LinkTypeId=1 AND pl.CreationDate>='2012-10-16 22:02:52'::timestamp AND pl.CreationDate<='2014-08-10 00:22:09'::timestamp;

/*+ HashJoin(b p)
 SeqScan(b)
 SeqScan(p)
 Leading((b p)) */
SELECT COUNT(*) FROM badges as b, posts as p WHERE b.UserId = p.OwnerUserId AND p.Score<=15 AND p.ViewCount<=976 AND p.FavoriteCount>=0;

/*+ HashJoin(c pl)
 SeqScan(c)
 SeqScan(pl)
 Leading((c pl)) */
SELECT COUNT(*) FROM comments as c, postLinks as pl WHERE c.PostId= pl.PostId AND pl.CreationDate<='2014-09-12 11:17:10'::timestamp;

/*+ HashJoin(c b)
 IndexScan(c)
 SeqScan(b)
 Leading((c b)) */
SELECT COUNT(*) FROM comments as c, badges as b WHERE c.UserId = b.UserId AND c.Score=0;

/*+ NestLoop(ph c)
 SeqScan(ph)
 IndexScan(c)
 Leading((ph c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph WHERE c.UserId = ph.UserId AND ph.CreationDate='2012-05-22 17:39:39'::timestamp;

/*+ HashJoin(c v)
 SeqScan(c)
 IndexScan(v)
 Leading((c v)) */
SELECT COUNT(*) FROM comments as c, votes as v WHERE c.UserId = v.UserId AND c.Score=0 AND c.CreationDate<='2014-09-11 09:43:55'::timestamp AND v.BountyAmount>=0 AND v.BountyAmount<=400;

/*+ HashJoin(ph c)
 SeqScan(ph)
 IndexScan(c)
 Leading((ph c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph WHERE c.UserId = ph.UserId AND c.Score=1 AND ph.PostHistoryTypeId=5 AND ph.CreationDate<='2014-09-13 18:44:31'::timestamp;

/*+ HashJoin(u p)
 SeqScan(u)
 SeqScan(p)
 Leading((u p)) */
SELECT COUNT(*) FROM posts as p, users as u WHERE p.OwnerUserId= u.Id AND p.PostTypeId=1 AND p.CommentCount>=0 AND p.FavoriteCount>=0 AND p.FavoriteCount<=3;

/*+ HashJoin(c p)
 SeqScan(c)
 SeqScan(p)
 Leading((c p)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND p.ViewCount<=5727 AND p.AnswerCount>=0 AND p.AnswerCount<=7 AND p.CreationDate>='2010-09-24 15:43:45'::timestamp;

/*+ MergeJoin(c v)
 SeqScan(c)
 IndexScan(v)
 Leading((c v)) */
SELECT COUNT(*) FROM comments as c, votes as v WHERE c.UserId = v.UserId AND c.CreationDate='2010-07-20 08:12:10'::timestamp;

/*+ HashJoin(b p)
 SeqScan(b)
 SeqScan(p)
 Leading((b p)) */
SELECT COUNT(*) FROM badges as b, posts as p WHERE b.UserId = p.OwnerUserId AND p.PostTypeId=1 AND p.FavoriteCount<=5 AND p.CreationDate<='2014-09-11 22:27:55'::timestamp;

/*+ HashJoin(c b)
 SeqScan(c)
 SeqScan(b)
 Leading((c b)) */
SELECT COUNT(*) FROM comments as c, badges as b WHERE c.UserId = b.UserId AND b.Date<='2014-09-06 09:20:42'::timestamp;

/*+ HashJoin(c p)
 SeqScan(c)
 SeqScan(p)
 Leading((c p)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND c.Score=0 AND p.Score<=14 AND p.ViewCount>=0 AND p.ViewCount<=3214 AND p.AnswerCount>=0 AND p.CommentCount=4;

/*+ HashJoin(c pl)
 SeqScan(c)
 SeqScan(pl)
 Leading((c pl)) */
SELECT COUNT(*) FROM comments as c, postLinks as pl WHERE c.PostId= pl.PostId AND pl.LinkTypeId=1;

/*+ HashJoin(v b)
 SeqScan(v)
 SeqScan(b)
 Leading((v b)) */
SELECT COUNT(*) FROM badges as b, votes as v WHERE b.UserId = v.UserId AND b.Date>='2010-07-19 23:04:07'::timestamp AND b.Date<='2014-09-12 12:24:42'::timestamp;

/*+ HashJoin(c pl)
 SeqScan(c)
 SeqScan(pl)
 Leading((c pl)) */
SELECT COUNT(*) FROM comments as c, postLinks as pl WHERE c.PostId= pl.PostId AND pl.LinkTypeId=1;

/*+ HashJoin(c ph)
 IndexScan(c)
 SeqScan(ph)
 Leading((c ph)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph WHERE c.UserId = ph.UserId AND ph.PostHistoryTypeId=4;

/*+ HashJoin(b v)
 SeqScan(b)
 SeqScan(v)
 Leading((b v)) */
SELECT COUNT(*) FROM badges as b, votes as v WHERE b.UserId = v.UserId AND v.BountyAmount<=50 AND v.CreationDate<='2014-09-10 00:00:00'::timestamp;

/*+ HashJoin(ph c)
 SeqScan(ph)
 IndexScan(c)
 Leading((ph c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph WHERE c.UserId = ph.UserId AND c.CreationDate>='2010-08-09 08:32:42'::timestamp AND c.CreationDate<='2014-09-11 22:16:26'::timestamp AND ph.PostHistoryTypeId=2;

/*+ HashJoin(v b)
 SeqScan(v)
 SeqScan(b)
 Leading((v b)) */
SELECT COUNT(*) FROM badges as b, votes as v WHERE b.UserId = v.UserId;

/*+ HashJoin(u p)
 SeqScan(u)
 SeqScan(p)
 Leading((u p)) */
SELECT COUNT(*) FROM posts as p, users as u WHERE p.OwnerUserId= u.Id AND p.PostTypeId=1 AND p.Score>=0 AND p.AnswerCount>=0 AND u.Views>=0 AND u.Views<=73 AND u.UpVotes<=81;

/*+ HashJoin(c b)
 SeqScan(c)
 SeqScan(b)
 Leading((c b)) */
SELECT COUNT(*) FROM comments as c, badges as b WHERE c.UserId = b.UserId AND c.Score=0 AND b.Date>='2010-07-19 19:44:07'::timestamp AND b.Date<='2014-09-07 16:17:20'::timestamp;

/*+ HashJoin(v b)
 SeqScan(v)
 SeqScan(b)
 Leading((v b)) */
SELECT COUNT(*) FROM badges as b, votes as v WHERE b.UserId = v.UserId AND b.Date>='2010-07-20 10:04:09'::timestamp;

/*+ HashJoin(u b)
 SeqScan(u)
 SeqScan(b)
 Leading((u b)) */
SELECT COUNT(*) FROM badges as b, users as u WHERE b.UserId= u.Id AND b.Date>='2010-07-20 19:57:27'::timestamp AND b.Date<='2014-08-21 15:20:12'::timestamp AND u.Reputation>=1 AND u.Reputation<=270 AND u.Views>=0 AND u.Views<=14;

/*+ HashJoin(c p)
 SeqScan(c)
 SeqScan(p)
 Leading((c p)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND p.Score<=30 AND p.CreationDate>='2010-10-19 06:50:40'::timestamp AND p.CreationDate<='2014-09-04 01:57:15'::timestamp;

/*+ HashJoin(u p)
 SeqScan(u)
 SeqScan(p)
 Leading((u p)) */
SELECT COUNT(*) FROM posts as p, users as u WHERE p.OwnerUserId= u.Id AND u.Reputation<=366;

/*+ HashJoin(u p)
 SeqScan(u)
 SeqScan(p)
 Leading((u p)) */
SELECT COUNT(*) FROM posts as p, users as u WHERE p.OwnerUserId= u.Id AND p.ViewCount<=36801 AND p.AnswerCount<=6 AND p.CommentCount>=0 AND p.FavoriteCount>=0 AND p.FavoriteCount<=15 AND p.CreationDate='2014-02-19 22:12:50'::timestamp AND u.Reputation>=1 AND u.Reputation<=128 AND u.UpVotes>=0 AND u.CreationDate>='2010-08-24 02:44:33'::timestamp AND u.CreationDate<='2014-09-03 21:30:55'::timestamp;

/*+ HashJoin(c p)
 SeqScan(c)
 SeqScan(p)
 Leading((c p)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND c.Score=0 AND p.Score<=33 AND p.AnswerCount<=4 AND p.CommentCount<=20 AND p.FavoriteCount<=7;

/*+ HashJoin(u b)
 SeqScan(u)
 SeqScan(b)
 Leading((u b)) */
SELECT COUNT(*) FROM badges as b, users as u WHERE b.UserId= u.Id AND u.Reputation=11;

/*+ HashJoin(c b)
 SeqScan(c)
 SeqScan(b)
 Leading((c b)) */
SELECT COUNT(*) FROM comments as c, badges as b WHERE c.UserId = b.UserId AND c.Score=5 AND c.CreationDate>='2010-08-20 12:42:10'::timestamp;

/*+ HashJoin(u p)
 SeqScan(u)
 SeqScan(p)
 Leading((u p)) */
SELECT COUNT(*) FROM posts as p, users as u WHERE p.OwnerUserId= u.Id AND p.AnswerCount>=0 AND p.FavoriteCount>=0 AND p.FavoriteCount<=8 AND u.CreationDate<='2014-09-02 23:14:42'::timestamp;

/*+ HashJoin(c b)
 IndexScan(c)
 SeqScan(b)
 Leading((c b)) */
SELECT COUNT(*) FROM comments as c, badges as b WHERE c.UserId = b.UserId AND c.Score=0;

/*+ HashJoin(ph c)
 SeqScan(ph)
 IndexScan(c)
 Leading((ph c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph WHERE c.UserId = ph.UserId AND c.Score=0;

/*+ HashJoin(u b)
 SeqScan(u)
 SeqScan(b)
 Leading((u b)) */
SELECT COUNT(*) FROM badges as b, users as u WHERE b.UserId= u.Id AND b.Date>='2010-08-02 21:40:11'::timestamp AND b.Date<='2014-09-12 16:43:19'::timestamp AND u.Reputation>=1 AND u.Reputation<=429 AND u.Views=0 AND u.CreationDate>='2010-07-26 20:48:32'::timestamp AND u.CreationDate<='2014-09-11 21:02:30'::timestamp;

/*+ HashJoin(b p)
 SeqScan(b)
 SeqScan(p)
 Leading((b p)) */
SELECT COUNT(*) FROM badges as b, posts as p WHERE b.UserId = p.OwnerUserId AND p.AnswerCount<=10;

/*+ HashJoin(u p)
 SeqScan(u)
 SeqScan(p)
 Leading((u p)) */
SELECT COUNT(*) FROM posts as p, users as u WHERE p.OwnerUserId= u.Id AND p.PostTypeId=1 AND p.ViewCount<=23545 AND p.CommentCount=0 AND u.CreationDate>='2010-07-19 19:18:14'::timestamp;

/*+ HashJoin(u b)
 SeqScan(u)
 SeqScan(b)
 Leading((u b)) */
SELECT COUNT(*) FROM badges as b, users as u WHERE b.UserId= u.Id AND b.Date<='2014-09-03 10:32:14'::timestamp AND u.Reputation>=1 AND u.Reputation<=4128 AND u.DownVotes>=0 AND u.DownVotes<=9;

/*+ NestLoop(b p)
 IndexScan(b)
 IndexScan(p)
 Leading((b p)) */
SELECT COUNT(*) FROM badges as b, posts as p WHERE b.UserId = p.OwnerUserId AND b.Date='2013-02-19 03:04:26'::timestamp AND p.Score<=47 AND p.AnswerCount>=0 AND p.AnswerCount<=5;

/*+ HashJoin(c v)
 SeqScan(c)
 IndexScan(v)
 Leading((c v)) */
SELECT COUNT(*) FROM comments as c, votes as v WHERE c.UserId = v.UserId;

/*+ HashJoin(v b)
 SeqScan(v)
 SeqScan(b)
 Leading((v b)) */
SELECT COUNT(*) FROM badges as b, votes as v WHERE b.UserId = v.UserId;

/*+ HashJoin(u p)
 SeqScan(u)
 SeqScan(p)
 Leading((u p)) */
SELECT COUNT(*) FROM posts as p, users as u WHERE p.OwnerUserId= u.Id AND p.PostTypeId=1 AND p.AnswerCount<=6 AND p.CreationDate='2013-05-29 05:41:40'::timestamp AND u.Views>=0 AND u.DownVotes>=0;

/*+ HashJoin(ph c)
 SeqScan(ph)
 IndexScan(c)
 Leading((ph c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph WHERE c.UserId = ph.UserId AND c.Score=0 AND ph.CreationDate<='2014-08-15 16:03:04'::timestamp;

/*+ HashJoin(u b)
 SeqScan(u)
 SeqScan(b)
 Leading((u b)) */
SELECT COUNT(*) FROM badges as b, users as u WHERE b.UserId= u.Id AND b.Date>='2010-07-19 22:04:06'::timestamp AND u.Views>=0 AND u.Views<=26 AND u.CreationDate<='2014-09-08 18:52:13'::timestamp;

/*+ HashJoin(c v)
 SeqScan(c)
 SeqScan(v)
 Leading((c v)) */
SELECT COUNT(*) FROM comments as c, votes as v WHERE c.UserId = v.UserId AND v.BountyAmount>=0;

/*+ HashJoin(c p)
 SeqScan(c)
 SeqScan(p)
 Leading((c p)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND c.CreationDate>='2010-07-19 19:48:32'::timestamp AND p.Score>=-2 AND p.AnswerCount<=6 AND p.CreationDate>='2010-08-06 04:50:59'::timestamp AND p.CreationDate<='2014-09-10 19:52:44'::timestamp;

/*+ HashJoin(c pl)
 SeqScan(c)
 SeqScan(pl)
 Leading((c pl)) */
SELECT COUNT(*) FROM comments as c, postLinks as pl WHERE c.PostId= pl.PostId AND pl.CreationDate>='2011-05-11 01:15:29'::timestamp;

/*+ HashJoin(c p)
 SeqScan(c)
 SeqScan(p)
 Leading((c p)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND p.CommentCount>=0 AND p.CommentCount<=14;

/*+ HashJoin(c p)
 SeqScan(c)
 SeqScan(p)
 Leading((c p)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND p.PostTypeId=1 AND p.FavoriteCount>=0 AND p.CreationDate>='2010-08-25 18:37:15'::timestamp AND p.CreationDate<='2014-09-10 09:20:25'::timestamp;

/*+ HashJoin(u b)
 SeqScan(u)
 SeqScan(b)
 Leading((u b)) */
SELECT COUNT(*) FROM badges as b, users as u WHERE b.UserId= u.Id AND u.DownVotes<=2 AND u.CreationDate>='2010-08-03 22:26:27'::timestamp AND u.CreationDate<='2014-09-07 18:58:36'::timestamp;

/*+ HashJoin(b p)
 SeqScan(b)
 SeqScan(p)
 Leading((b p)) */
SELECT COUNT(*) FROM badges as b, posts as p WHERE b.UserId = p.OwnerUserId AND p.AnswerCount>=0 AND p.FavoriteCount<=17;

/*+ HashJoin(v b)
 SeqScan(v)
 SeqScan(b)
 Leading((v b)) */
SELECT COUNT(*) FROM badges as b, votes as v WHERE b.UserId = v.UserId AND b.Date>='2010-07-19 19:39:08'::timestamp;

/*+ HashJoin(u p)
 SeqScan(u)
 SeqScan(p)
 Leading((u p)) */
SELECT COUNT(*) FROM posts as p, users as u WHERE p.OwnerUserId= u.Id AND p.ViewCount<=7257 AND p.FavoriteCount>=0 AND p.FavoriteCount<=5 AND u.Reputation<=185 AND u.Views>=0 AND u.DownVotes<=49;

/*+ HashJoin(u b)
 SeqScan(u)
 SeqScan(b)
 Leading((u b)) */
SELECT COUNT(*) FROM badges as b, users as u WHERE b.UserId= u.Id AND b.Date>='2010-07-19 19:59:07'::timestamp AND u.Reputation>=1 AND u.Reputation<=1775;

/*+ HashJoin(c b)
 SeqScan(c)
 SeqScan(b)
 Leading((c b)) */
SELECT COUNT(*) FROM comments as c, badges as b WHERE c.UserId = b.UserId AND c.Score=1 AND c.CreationDate>='2010-07-26 20:22:54'::timestamp AND c.CreationDate<='2014-09-12 18:19:20'::timestamp;

/*+ HashJoin(c b)
 SeqScan(c)
 SeqScan(b)
 Leading((c b)) */
SELECT COUNT(*) FROM comments as c, badges as b WHERE c.UserId = b.UserId AND c.CreationDate<='2014-09-07 17:21:38'::timestamp;

/*+ HashJoin(ph c)
 SeqScan(ph)
 IndexScan(c)
 Leading((ph c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph WHERE c.UserId = ph.UserId;

/*+ HashJoin(c pl)
 SeqScan(c)
 SeqScan(pl)
 Leading((c pl)) */
SELECT COUNT(*) FROM comments as c, postLinks as pl WHERE c.PostId= pl.PostId AND c.Score=0 AND c.CreationDate>='2010-08-09 18:20:12'::timestamp AND c.CreationDate<='2014-09-04 12:31:11'::timestamp AND pl.LinkTypeId=1;

/*+ HashJoin(b p)
 SeqScan(b)
 SeqScan(p)
 Leading((b p)) */
SELECT COUNT(*) FROM badges as b, posts as p WHERE b.UserId = p.OwnerUserId AND p.AnswerCount>=0;

/*+ HashJoin(c b)
 SeqScan(c)
 SeqScan(b)
 Leading((c b)) */
SELECT COUNT(*) FROM comments as c, badges as b WHERE c.UserId = b.UserId;

/*+ HashJoin(c p)
 SeqScan(c)
 SeqScan(p)
 Leading((c p)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND c.Score=0 AND p.PostTypeId=1 AND p.AnswerCount<=3 AND p.CommentCount<=13;

/*+ HashJoin(u b)
 SeqScan(u)
 SeqScan(b)
 Leading((u b)) */
SELECT COUNT(*) FROM badges as b, users as u WHERE b.UserId= u.Id AND u.Views>=0;

/*+ HashJoin(u b)
 SeqScan(u)
 SeqScan(b)
 Leading((u b)) */
SELECT COUNT(*) FROM badges as b, users as u WHERE b.UserId= u.Id AND b.Date>='2010-07-19 19:39:08'::timestamp AND u.Reputation>=1 AND u.Reputation<=262 AND u.DownVotes<=0;

/*+ HashJoin(c b)
 SeqScan(c)
 SeqScan(b)
 Leading((c b)) */
SELECT COUNT(*) FROM comments as c, badges as b WHERE c.UserId = b.UserId AND c.Score=2 AND b.Date>='2010-08-17 02:43:44'::timestamp AND b.Date<='2014-09-12 03:01:54'::timestamp;

/*+ HashJoin(v b)
 SeqScan(v)
 SeqScan(b)
 Leading((v b)) */
SELECT COUNT(*) FROM badges as b, votes as v WHERE b.UserId = v.UserId AND b.Date>='2010-07-19 19:39:07'::timestamp;

