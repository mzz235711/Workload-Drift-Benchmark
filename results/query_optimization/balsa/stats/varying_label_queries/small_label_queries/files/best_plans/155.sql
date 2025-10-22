/*+ HashJoin(u p v c b pl)
 HashJoin(u p v c b)
 NestLoop(u p v c)
 NestLoop(u p v)
 HashJoin(u p)
 IndexScan(u)
 SeqScan(p)
 IndexScan(v)
 IndexScan(c)
 SeqScan(b)
 SeqScan(pl)
 Leading((((((u p) v) c) b) pl)) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, votes as v, badges as b, users as u WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>=0 AND p.ViewCount>=0 AND p.FavoriteCount=0 AND pl.LinkTypeId=1 AND pl.CreationDate>='2011-09-21 08:00:03'::timestamp AND u.Views>=0 AND u.Views<=19 AND u.DownVotes<=2 AND u.CreationDate>='2010-07-19 21:04:50'::timestamp AND u.CreationDate<='2014-09-11 03:25:49'::timestamp;

