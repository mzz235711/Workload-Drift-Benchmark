/*+ HashJoin(c v u b)
 HashJoin(v u b)
 HashJoin(v u)
 SeqScan(c)
 IndexScan(v)
 IndexScan(u)
 IndexScan(b)
 Leading((c ((v u) b))) */
SELECT COUNT(*) FROM comments as c, votes as v, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND c.CreationDate>='2010-07-29 16:10:48'::timestamp AND b.Date>='2010-07-27 09:48:44'::timestamp AND u.Reputation<=1406 AND u.DownVotes<=2;

