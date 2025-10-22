/*+ MergeJoin(v u p pl)
 HashJoin(u p pl)
 HashJoin(p pl)
 SeqScan(v)
 SeqScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((v (u (p pl)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, votes as v, users as u WHERE p.Id = pl.RelatedPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND p.PostTypeId=1 AND p.AnswerCount<=6 AND p.CreationDate<='2014-08-29 11:55:02'::timestamp AND v.BountyAmount>=0 AND v.CreationDate>='2010-07-19 00:00:00'::timestamp AND u.Views>=0;

