/*+ HashJoin(pl v c p)
 NestLoop(pl v c)
 HashJoin(pl v)
 SeqScan(pl)
 SeqScan(v)
 IndexScan(c)
 SeqScan(p)
 Leading((((pl v) c) p)) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, votes as v WHERE p.Id = c.PostId AND c.PostId = pl.PostId AND pl.PostId = v.PostId AND p.Score>=-2 AND p.ViewCount>=0 AND p.ViewCount<=3353 AND p.AnswerCount>=0 AND p.CreationDate>='2010-07-10 18:56:57'::timestamp AND pl.CreationDate>='2011-07-09 09:57:43'::timestamp AND pl.CreationDate<='2014-09-09 01:04:42'::timestamp AND v.BountyAmount>=0 AND v.BountyAmount<=100;

