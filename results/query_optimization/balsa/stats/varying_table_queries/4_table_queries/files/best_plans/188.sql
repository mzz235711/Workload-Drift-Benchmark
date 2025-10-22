/*+ HashJoin(p c pl v)
 HashJoin(pl v)
 NestLoop(p c)
 SeqScan(p)
 IndexScan(c)
 IndexScan(pl)
 SeqScan(v)
 Leading(((p c) (pl v))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, votes as v WHERE p.Id = c.PostId AND c.PostId = pl.PostId AND pl.PostId = v.PostId AND c.Score=2 AND c.CreationDate>='2010-07-26 19:47:31'::timestamp AND c.CreationDate<='2014-09-11 15:52:29'::timestamp AND p.Score>=-1 AND p.CommentCount=2 AND p.FavoriteCount<=4 AND p.CreationDate>='2010-07-22 12:25:48'::timestamp AND v.BountyAmount<=100 AND v.CreationDate>='2010-07-19 00:00:00'::timestamp;

