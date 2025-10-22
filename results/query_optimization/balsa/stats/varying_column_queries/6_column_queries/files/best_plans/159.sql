/*+ HashJoin(ph b v u p pl)
 HashJoin(b v u p pl)
 HashJoin(v u p pl)
 MergeJoin(u p pl)
 HashJoin(p pl)
 SeqScan(ph)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((ph (b (v (u (p pl)))))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph, votes as v, badges as b, users as u WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND u.Id = ph.UserId AND u.Id = v.UserId AND p.Score=1 AND p.FavoriteCount>=0 AND p.FavoriteCount<=4 AND pl.LinkTypeId=1 AND u.Reputation=11 AND u.DownVotes>=0;

