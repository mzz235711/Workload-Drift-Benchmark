/*+ HashJoin(ph b u v)
 HashJoin(b u v)
 HashJoin(u v)
 SeqScan(ph)
 SeqScan(b)
 SeqScan(u)
 SeqScan(v)
 Leading((ph (b (u v)))) */
SELECT COUNT(*) FROM postHistory as ph, votes as v, users as u, badges as b WHERE u.Id = ph.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND ph.PostHistoryTypeId=1 AND ph.CreationDate>='2010-12-04 00:06:11'::timestamp AND v.VoteTypeId=5 AND v.CreationDate<='2014-09-13 00:00:00'::timestamp AND u.Views>=0 AND u.UpVotes<=111 AND b.Date>='2010-07-27 09:13:45'::timestamp;

