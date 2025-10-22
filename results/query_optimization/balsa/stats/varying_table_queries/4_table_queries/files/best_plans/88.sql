/*+ HashJoin(c ph u v)
 HashJoin(ph u v)
 HashJoin(u v)
 SeqScan(c)
 SeqScan(ph)
 SeqScan(u)
 SeqScan(v)
 Leading((c (ph (u v)))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v, users as u WHERE u.Id = v.UserId AND v.UserId = ph.UserId AND ph.UserId =c.UserId AND c.Score=1 AND v.CreationDate='2014-02-04 00:00:00'::timestamp AND u.Views<=123;

