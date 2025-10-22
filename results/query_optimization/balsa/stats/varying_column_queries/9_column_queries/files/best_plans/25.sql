/*+ HashJoin(b ph v u)
 HashJoin(ph v u)
 HashJoin(v u)
 SeqScan(b)
 SeqScan(ph)
 SeqScan(v)
 SeqScan(u)
 Leading((b (ph (v u)))) */
SELECT COUNT(*) FROM postHistory as ph, votes as v, users as u, badges as b WHERE u.Id = ph.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND ph.PostHistoryTypeId=3 AND ph.CreationDate>='2010-07-28 16:31:04'::timestamp AND ph.CreationDate<='2014-07-16 17:19:18'::timestamp AND v.BountyAmount>=0 AND v.BountyAmount<=50 AND v.CreationDate>='2010-07-29 00:00:00'::timestamp AND v.CreationDate<='2014-09-11 00:00:00'::timestamp AND u.UpVotes<=2219 AND b.Date>='2010-07-20 03:44:08'::timestamp;

