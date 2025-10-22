/*+ HashJoin(ph u v b)
 HashJoin(u v b)
 HashJoin(u v)
 SeqScan(ph)
 IndexScan(u)
 SeqScan(v)
 IndexScan(b)
 Leading((ph ((u v) b))) */
SELECT COUNT(*) FROM postHistory as ph, votes as v, users as u, badges as b WHERE u.Id = ph.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND u.Reputation>=1 AND u.Reputation<=4536 AND u.DownVotes>=0 AND u.CreationDate<='2014-08-25 18:36:43'::timestamp AND b.Date>='2010-07-19 19:39:09'::timestamp AND b.Date<='2014-08-11 15:21:18'::timestamp;

