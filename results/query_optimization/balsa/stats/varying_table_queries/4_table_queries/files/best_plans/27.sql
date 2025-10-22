/*+ HashJoin(ph v u b)
 HashJoin(v u b)
 HashJoin(u b)
 SeqScan(ph)
 SeqScan(v)
 IndexScan(u)
 IndexScan(b)
 Leading((ph (v (u b)))) */
SELECT COUNT(*) FROM postHistory as ph, votes as v, users as u, badges as b WHERE u.Id = ph.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND v.VoteTypeId=5 AND v.CreationDate<='2014-09-13 00:00:00'::timestamp AND u.Reputation=163 AND u.Views>=0 AND u.DownVotes<=1 AND u.UpVotes<=625 AND b.Date<='2014-07-17 11:47:57'::timestamp;

