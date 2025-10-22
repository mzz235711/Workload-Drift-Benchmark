/*+ HashJoin(ph u v p)
 HashJoin(u v p)
 HashJoin(v p)
 SeqScan(ph)
 SeqScan(u)
 IndexScan(v)
 IndexScan(p)
 Leading((ph (u (v p)))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, votes as v, users as u WHERE p.Id = ph.PostId AND u.Id = p.OwnerUserId AND p.Id = v.PostId AND v.BountyAmount>=0 AND u.UpVotes>=0;

