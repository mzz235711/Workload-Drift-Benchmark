/*+ HashJoin(c v ph b u)
 HashJoin(v ph b u)
 HashJoin(ph b u)
 HashJoin(b u)
 SeqScan(c)
 SeqScan(v)
 SeqScan(ph)
 IndexScan(b)
 SeqScan(u)
 Leading((c (v (ph (b u))))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, votes as v, users as u WHERE u.Id =b.UserId AND b.UserId = ph.UserId AND ph.UserId = v.UserId AND v.UserId = c.UserId AND ph.PostHistoryTypeId=2 AND v.VoteTypeId=5 AND u.Reputation>=1 AND u.UpVotes<=100;

