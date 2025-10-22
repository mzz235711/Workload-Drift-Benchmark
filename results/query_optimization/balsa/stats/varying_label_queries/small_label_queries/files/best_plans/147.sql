/*+ HashJoin(b p pl u c)
 NestLoop(p pl u c)
 HashJoin(p pl u)
 HashJoin(p pl)
 IndexScan(b)
 SeqScan(p)
 SeqScan(pl)
 SeqScan(u)
 IndexScan(c)
 Leading((b (((p pl) u) c))) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND p.Id = c.PostId AND u.Id = b.UserId AND u.Id = p.OwnerUserId AND c.CreationDate>='2010-07-20 14:38:52'::timestamp AND c.CreationDate<='2014-09-03 22:01:10'::timestamp AND p.Score>=0 AND p.ViewCount>=0 AND p.ViewCount<=1677 AND p.CommentCount<=30 AND p.FavoriteCount<=6 AND u.DownVotes<=1 AND u.UpVotes>=0 AND u.CreationDate>='2011-01-10 23:12:44'::timestamp;

