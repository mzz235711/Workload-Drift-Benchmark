/*+ HashJoin(c ph v u)
 HashJoin(ph v u)
 HashJoin(v u)
 SeqScan(c)
 SeqScan(ph)
 SeqScan(v)
 SeqScan(u)
 Leading((c (ph (v u)))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v, users as u WHERE u.Id = v.UserId AND v.UserId = ph.UserId AND ph.UserId =c.UserId AND c.CreationDate>='2010-08-05 13:18:39'::timestamp AND c.CreationDate<='2014-09-13 01:37:58'::timestamp AND v.BountyAmount>=0 AND u.Reputation>=1 AND u.Reputation<=1815 AND u.Views>=0 AND u.Views<=25 AND u.UpVotes>=0 AND u.UpVotes<=55 AND u.CreationDate>='2010-07-26 21:31:01'::timestamp;

