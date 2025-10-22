/*+ HashJoin(u pl p v)
 HashJoin(pl p v)
 HashJoin(p v)
 SeqScan(u)
 SeqScan(pl)
 SeqScan(p)
 SeqScan(v)
 Leading((u (pl (p v)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, votes as v, users as u WHERE p.Id = pl.RelatedPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND pl.LinkTypeId=1 AND pl.CreationDate<='2014-08-05 01:37:58'::timestamp AND p.AnswerCount>=0 AND p.AnswerCount<=8 AND p.FavoriteCount>=0 AND p.FavoriteCount<=10 AND v.BountyAmount<=50 AND v.CreationDate<='2014-09-12 00:00:00'::timestamp AND u.UpVotes<=69;

