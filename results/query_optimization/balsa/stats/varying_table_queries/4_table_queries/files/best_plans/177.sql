/*+ HashJoin(ph u v c)
 HashJoin(ph u v)
 HashJoin(u v)
 SeqScan(ph)
 SeqScan(u)
 SeqScan(v)
 SeqScan(c)
 Leading(((ph (u v)) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v, users as u WHERE u.Id = v.UserId AND v.UserId = ph.UserId AND ph.UserId =c.UserId AND c.Score=3 AND v.BountyAmount<=50 AND u.UpVotes>=0 AND u.CreationDate>='2010-07-27 07:48:22'::timestamp;

