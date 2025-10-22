/*+ HashJoin(ph u v c)
 HashJoin(ph u v)
 HashJoin(u v)
 SeqScan(ph)
 IndexScan(u)
 IndexScan(v)
 SeqScan(c)
 Leading(((ph (u v)) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v, users as u WHERE u.Id = v.UserId AND v.UserId = ph.UserId AND ph.UserId =c.UserId AND ph.CreationDate<='2014-08-11 07:36:03'::timestamp AND v.CreationDate>='2010-07-19 00:00:00'::timestamp AND v.CreationDate<='2014-09-10 00:00:00'::timestamp AND u.Reputation<=415 AND u.DownVotes>=0 AND u.DownVotes<=0;

