/*+ HashJoin(ph v b u)
 HashJoin(v b u)
 HashJoin(b u)
 SeqScan(ph)
 SeqScan(v)
 SeqScan(b)
 SeqScan(u)
 Leading((ph (v (b u)))) */
SELECT COUNT(*) FROM postHistory as ph, votes as v, users as u, badges as b WHERE u.Id = ph.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND v.CreationDate>='2010-07-19 00:00:00'::timestamp AND v.CreationDate<='2014-09-11 00:00:00'::timestamp AND u.Views<=37;

