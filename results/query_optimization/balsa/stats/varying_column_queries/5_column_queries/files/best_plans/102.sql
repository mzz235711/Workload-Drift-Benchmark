/*+ HashJoin(v u p pl)
 HashJoin(u p pl)
 MergeJoin(p pl)
 SeqScan(v)
 SeqScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((v (u (p pl)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, votes as v, users as u WHERE p.Id = pl.RelatedPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND p.Score>=-2 AND p.Score<=24 AND p.CommentCount>=0 AND u.UpVotes<=53 AND u.CreationDate<='2014-09-02 11:30:04'::timestamp;

