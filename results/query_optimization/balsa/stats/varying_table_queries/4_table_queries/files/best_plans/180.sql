/*+ HashJoin(v u pl p)
 HashJoin(u pl p)
 HashJoin(pl p)
 SeqScan(v)
 SeqScan(u)
 IndexScan(pl)
 SeqScan(p)
 Leading((v (u (pl p)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, votes as v, users as u WHERE p.Id = pl.RelatedPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND pl.LinkTypeId=1 AND p.Score<=27 AND p.ViewCount>=0 AND p.ViewCount<=8908 AND p.AnswerCount<=14 AND p.FavoriteCount>=0 AND p.CreationDate<='2014-08-19 14:06:16'::timestamp AND v.VoteTypeId=2 AND u.Views<=57;

