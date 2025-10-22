/*+ HashJoin(ph v p u)
 HashJoin(v p u)
 MergeJoin(v p)
 SeqScan(ph)
 IndexScan(v)
 IndexScan(p)
 SeqScan(u)
 Leading((ph ((v p) u))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, votes as v, users as u WHERE p.Id = ph.PostId AND u.Id = p.OwnerUserId AND p.Id = v.PostId AND v.VoteTypeId=2 AND u.Reputation>=1;

