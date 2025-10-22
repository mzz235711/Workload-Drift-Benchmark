/*+ HashJoin(ph b v u)
 HashJoin(b v u)
 HashJoin(v u)
 SeqScan(ph)
 SeqScan(b)
 SeqScan(v)
 SeqScan(u)
 Leading((ph (b (v u)))) */
SELECT COUNT(*) FROM postHistory as ph, votes as v, users as u, badges as b WHERE u.Id = ph.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND ph.PostHistoryTypeId=5 AND v.CreationDate>='2010-07-19 00:00:00'::timestamp AND v.CreationDate<='2014-09-11 00:00:00'::timestamp AND u.DownVotes<=0 AND u.UpVotes>=0 AND u.CreationDate<='2014-09-09 04:50:10'::timestamp AND b.Date>='2010-08-03 10:15:16'::timestamp;

