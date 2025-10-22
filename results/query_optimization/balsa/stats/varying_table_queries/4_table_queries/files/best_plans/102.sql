/*+ HashJoin(v u p pl)
 HashJoin(u p pl)
 NestLoop(p pl)
 SeqScan(v)
 SeqScan(u)
 SeqScan(p)
 IndexScan(pl)
 Leading((v (u (p pl)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, votes as v, users as u WHERE p.Id = pl.RelatedPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND p.AnswerCount>=0 AND p.AnswerCount<=5 AND v.CreationDate>='2009-03-03 00:00:00'::timestamp AND v.CreationDate<='2014-09-09 00:00:00'::timestamp AND u.Views=2;

