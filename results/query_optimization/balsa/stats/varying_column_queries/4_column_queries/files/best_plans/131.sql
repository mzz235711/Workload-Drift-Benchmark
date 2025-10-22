/*+ HashJoin(ph v u b)
 HashJoin(v u b)
 HashJoin(u b)
 SeqScan(ph)
 SeqScan(v)
 SeqScan(u)
 IndexScan(b)
 Leading((ph (v (u b)))) */
SELECT COUNT(*) FROM postHistory as ph, votes as v, users as u, badges as b WHERE u.Id = ph.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND ph.CreationDate>='2010-08-17 06:22:29'::timestamp AND ph.CreationDate<='2014-08-20 14:56:12'::timestamp AND u.Reputation<=420 AND b.Date<='2014-09-01 20:21:17'::timestamp;

