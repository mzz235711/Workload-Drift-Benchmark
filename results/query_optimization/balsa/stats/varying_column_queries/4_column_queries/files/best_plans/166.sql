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
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, votes as v, users as u WHERE u.Id =b.UserId AND b.UserId = ph.UserId AND ph.UserId = v.UserId AND v.UserId = c.UserId AND c.CreationDate>='2010-07-19 19:20:28'::timestamp AND ph.CreationDate<='2014-08-15 19:35:43'::timestamp AND v.CreationDate='2014-06-25 00:00:00'::timestamp AND u.CreationDate>='2010-08-06 21:02:27'::timestamp;

