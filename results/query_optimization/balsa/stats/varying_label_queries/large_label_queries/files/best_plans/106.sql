/*+ HashJoin(v u pl p)
 HashJoin(u pl p)
 HashJoin(pl p)
 SeqScan(v)
 SeqScan(u)
 SeqScan(pl)
 SeqScan(p)
 Leading((v (u (pl p)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, votes as v, users as u WHERE p.Id = pl.RelatedPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND pl.LinkTypeId=1 AND p.CreationDate<='2014-09-04 19:57:09'::timestamp AND u.UpVotes<=13;

