/*+ HashJoin(pl v c p)
 NestLoop(pl v c)
 HashJoin(pl v)
 SeqScan(pl)
 SeqScan(v)
 IndexScan(c)
 SeqScan(p)
 Leading((((pl v) c) p)) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, votes as v WHERE p.Id = c.PostId AND c.PostId = pl.PostId AND pl.PostId = v.PostId AND p.ViewCount<=34617 AND p.AnswerCount=1 AND v.BountyAmount>=0 AND v.BountyAmount<=50;

