/*+ HashJoin(v u p pl)
 HashJoin(u p pl)
 HashJoin(p pl)
 SeqScan(v)
 SeqScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((v (u (p pl)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, votes as v, users as u WHERE p.Id = pl.RelatedPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND pl.CreationDate<='2014-08-13 18:23:05'::timestamp AND p.FavoriteCount>=0 AND u.UpVotes>=0 AND u.UpVotes<=613 AND u.CreationDate>='2010-09-02 21:55:24'::timestamp AND u.CreationDate<='2014-08-05 09:49:10'::timestamp;

