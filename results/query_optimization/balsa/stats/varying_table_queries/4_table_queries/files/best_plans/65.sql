/*+ HashJoin(c ph u v)
 HashJoin(ph u v)
 HashJoin(u v)
 SeqScan(c)
 SeqScan(ph)
 SeqScan(u)
 SeqScan(v)
 Leading((c (ph (u v)))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v, users as u WHERE u.Id = v.UserId AND v.UserId = ph.UserId AND ph.UserId =c.UserId AND c.Score=1 AND v.BountyAmount<=50 AND v.CreationDate='2014-05-21 00:00:00'::timestamp AND u.Views>=0 AND u.CreationDate<='2014-08-04 18:46:45'::timestamp;

