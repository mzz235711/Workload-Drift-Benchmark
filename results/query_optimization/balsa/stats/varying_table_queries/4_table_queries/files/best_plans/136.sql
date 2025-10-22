/*+ MergeJoin(u v p pl)
 HashJoin(v p pl)
 HashJoin(p pl)
 SeqScan(u)
 SeqScan(v)
 SeqScan(p)
 IndexScan(pl)
 Leading((u (v (p pl)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, votes as v, users as u WHERE p.Id = pl.RelatedPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND pl.CreationDate>='2011-03-06 09:29:10'::timestamp AND p.Score<=40 AND p.CreationDate<='2014-09-11 02:38:16'::timestamp AND v.VoteTypeId=5 AND u.Reputation<=741 AND u.Views>=0 AND u.Views<=19;

