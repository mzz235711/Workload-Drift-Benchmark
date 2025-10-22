/*+ HashJoin(ph b u v)
 HashJoin(b u v)
 HashJoin(u v)
 SeqScan(ph)
 SeqScan(b)
 SeqScan(u)
 SeqScan(v)
 Leading((ph (b (u v)))) */
SELECT COUNT(*) FROM postHistory as ph, votes as v, users as u, badges as b WHERE u.Id = ph.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND ph.PostHistoryTypeId=1 AND ph.CreationDate<='2014-08-12 15:00:16'::timestamp AND v.CreationDate>='2010-07-25 00:00:00'::timestamp AND v.CreationDate<='2014-09-09 00:00:00'::timestamp AND u.DownVotes<=1 AND u.CreationDate>='2010-07-26 20:58:01'::timestamp AND u.CreationDate<='2014-09-12 18:13:44'::timestamp AND b.Date>='2010-08-03 20:00:23'::timestamp AND b.Date<='2014-09-01 00:48:03'::timestamp;

