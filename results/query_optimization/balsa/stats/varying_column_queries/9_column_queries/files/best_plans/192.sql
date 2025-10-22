/*+ HashJoin(b ph v u)
 HashJoin(ph v u)
 HashJoin(v u)
 SeqScan(b)
 SeqScan(ph)
 SeqScan(v)
 SeqScan(u)
 Leading((b (ph (v u)))) */
SELECT COUNT(*) FROM postHistory as ph, votes as v, users as u, badges as b WHERE u.Id = ph.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND ph.CreationDate>='2011-03-24 19:02:00'::timestamp AND v.BountyAmount>=0 AND u.Views>=0 AND u.Views<=74 AND u.DownVotes>=0 AND u.UpVotes<=9 AND u.CreationDate>='2010-09-12 18:56:59'::timestamp AND b.Date>='2010-09-16 02:11:36'::timestamp AND b.Date<='2014-09-11 18:35:08'::timestamp;

