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
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, votes as v WHERE p.Id = c.PostId AND p.Id = pl.PostId AND p.Id = ph.PostId AND p.Id = v.PostId AND p.PostTypeId=1 AND p.AnswerCount<=4 AND p.CommentCount>=0 AND ph.CreationDate>='2010-11-09 08:55:58'::timestamp AND v.BountyAmount<=0 AND v.CreationDate<='2014-09-09 00:00:00'::timestamp;

