/*+ HashJoin(c v ph b u)
 HashJoin(v ph b u)
 HashJoin(ph b u)
 HashJoin(b u)
 SeqScan(c)
 SeqScan(v)
 SeqScan(ph)
 SeqScan(b)
 SeqScan(u)
 Leading((c (v (ph (b u))))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, votes as v, users as u WHERE u.Id =b.UserId AND b.UserId = ph.UserId AND ph.UserId = v.UserId AND v.UserId = c.UserId AND c.Score=0 AND ph.PostHistoryTypeId=5 AND b.Date='2014-07-16 10:47:30'::timestamp;

