/*+ HashJoin(v b u ph)
 HashJoin(v b u)
 HashJoin(b u)
 SeqScan(v)
 SeqScan(b)
 SeqScan(u)
 SeqScan(ph)
 Leading(((v (b u)) ph)) */
SELECT COUNT(*) FROM postHistory as ph, votes as v, users as u, badges as b WHERE u.Id = ph.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND v.VoteTypeId=5 AND u.Views<=123 AND b.Date>='2010-09-17 06:39:00'::timestamp;

