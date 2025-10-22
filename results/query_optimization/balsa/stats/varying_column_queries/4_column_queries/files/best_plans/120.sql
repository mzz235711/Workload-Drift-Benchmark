/*+ HashJoin(ph v u b)
 HashJoin(v u b)
 NestLoop(u b)
 SeqScan(ph)
 IndexScan(v)
 SeqScan(u)
 IndexScan(b)
 Leading((ph (v (u b)))) */
SELECT COUNT(*) FROM postHistory as ph, votes as v, users as u, badges as b WHERE u.Id = ph.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND ph.CreationDate>='2010-08-27 15:07:18'::timestamp AND ph.CreationDate<='2014-08-30 23:14:41'::timestamp AND u.UpVotes<=1586 AND u.CreationDate<='2014-09-11 09:08:23'::timestamp;

