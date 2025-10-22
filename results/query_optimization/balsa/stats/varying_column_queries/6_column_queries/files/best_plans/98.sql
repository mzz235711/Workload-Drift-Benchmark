/*+ HashJoin(b c v u)
 HashJoin(c v u)
 MergeJoin(v u)
 SeqScan(b)
 SeqScan(c)
 SeqScan(v)
 SeqScan(u)
 Leading((b (c (v u)))) */
SELECT COUNT(*) FROM comments as c, votes as v, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND c.CreationDate>='2010-07-25 04:42:10'::timestamp AND c.CreationDate<='2014-09-10 05:59:19'::timestamp AND v.CreationDate='2013-11-21 00:00:00'::timestamp AND u.Reputation<=345 AND u.UpVotes>=0 AND u.UpVotes<=61;

