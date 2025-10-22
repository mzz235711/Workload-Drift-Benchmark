/*+ NestLoop(p v pl c ph)
 NestLoop(p v pl c)
 HashJoin(p v pl)
 HashJoin(p v)
 SeqScan(p)
 SeqScan(v)
 SeqScan(pl)
 IndexScan(c)
 IndexScan(ph)
 Leading(((((p v) pl) c) ph)) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, votes as v WHERE p.Id = c.PostId AND p.Id = pl.PostId AND p.Id = ph.PostId AND p.Id = v.PostId AND p.AnswerCount<=7 AND p.FavoriteCount>=0 AND pl.CreationDate>='2011-11-15 20:26:46'::timestamp AND ph.PostHistoryTypeId=5 AND v.BountyAmount>=0;

