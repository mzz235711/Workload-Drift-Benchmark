/*+ HashJoin(ph v u b)
 HashJoin(v u b)
 HashJoin(u b)
 SeqScan(ph)
 SeqScan(v)
 SeqScan(u)
 IndexScan(b)
 Leading((ph (v (u b)))) */
SELECT COUNT(*) FROM postHistory as ph, votes as v, users as u, badges as b WHERE u.Id = ph.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND ph.CreationDate<='2014-08-11 10:46:05'::timestamp AND v.BountyAmount<=200 AND u.Views>=0 AND b.Date<='2014-09-09 11:51:14'::timestamp;

