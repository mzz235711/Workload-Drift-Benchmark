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
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, votes as v WHERE p.Id = c.PostId AND p.Id = pl.PostId AND p.Id = ph.PostId AND p.Id = v.PostId AND c.Score=1 AND p.Score<=17 AND p.ViewCount>=0 AND p.AnswerCount>=0 AND pl.LinkTypeId=1 AND ph.PostHistoryTypeId=5 AND ph.CreationDate>='2011-02-22 07:57:34'::timestamp AND v.BountyAmount<=100 AND v.CreationDate<='2014-09-09 00:00:00'::timestamp;

