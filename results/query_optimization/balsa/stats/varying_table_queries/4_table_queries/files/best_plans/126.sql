/*+ HashJoin(c ph u v)
 MergeJoin(ph u v)
 HashJoin(u v)
 SeqScan(c)
 IndexScan(ph)
 IndexScan(u)
 IndexScan(v)
 Leading((c (ph (u v)))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v, users as u WHERE u.Id = v.UserId AND v.UserId = ph.UserId AND ph.UserId =c.UserId AND v.CreationDate>='2010-07-21 00:00:00'::timestamp AND v.CreationDate<='2014-09-13 00:00:00'::timestamp AND u.Reputation=1;

