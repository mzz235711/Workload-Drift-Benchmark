/*+ HashJoin(ph b u v)
 HashJoin(b u v)
 HashJoin(u v)
 SeqScan(ph)
 SeqScan(b)
 SeqScan(u)
 SeqScan(v)
 Leading((ph (b (u v)))) */
SELECT COUNT(*) FROM postHistory as ph, votes as v, users as u, badges as b WHERE u.Id = ph.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND v.BountyAmount<=100 AND u.Reputation>=1 AND u.UpVotes>=0 AND u.UpVotes<=103 AND b.Date>='2010-10-27 13:23:23'::timestamp AND b.Date<='2014-09-04 16:46:09'::timestamp;

