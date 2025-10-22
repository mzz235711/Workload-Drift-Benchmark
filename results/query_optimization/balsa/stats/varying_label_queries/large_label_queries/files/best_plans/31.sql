/*+ HashJoin(c v p pl u b)
 HashJoin(c v p pl u)
 HashJoin(v p pl u)
 HashJoin(v p pl)
 HashJoin(v p)
 SeqScan(c)
 SeqScan(v)
 SeqScan(p)
 IndexScan(pl)
 IndexScan(u)
 SeqScan(b)
 Leading(((c (((v p) pl) u)) b)) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, votes as v, badges as b, users as u WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.CommentCount>=0 AND p.FavoriteCount>=0 AND p.FavoriteCount<=4 AND b.Date>='2010-07-28 09:38:54'::timestamp AND b.Date<='2014-09-03 00:13:04'::timestamp;

