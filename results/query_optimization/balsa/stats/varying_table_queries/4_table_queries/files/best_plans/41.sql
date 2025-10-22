/*+ HashJoin(c ph u v)
 MergeJoin(ph u v)
 HashJoin(u v)
 SeqScan(c)
 IndexScan(ph)
 IndexScan(u)
 SeqScan(v)
 Leading((c (ph (u v)))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v, users as u WHERE u.Id = v.UserId AND v.UserId = ph.UserId AND ph.UserId =c.UserId AND v.BountyAmount>=0 AND u.Reputation=44;

