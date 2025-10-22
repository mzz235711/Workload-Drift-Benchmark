/*+ MergeJoin(c v u b)
 HashJoin(v u b)
 HashJoin(u b)
 SeqScan(c)
 SeqScan(v)
 IndexScan(u)
 IndexScan(b)
 Leading((c (v (u b)))) */
SELECT COUNT(*) FROM comments as c, votes as v, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND c.Score=0 AND b.Date>='2010-09-27 18:39:07'::timestamp AND u.Reputation<=748 AND u.DownVotes>=0 AND u.DownVotes<=7 AND u.UpVotes>=0 AND u.UpVotes<=26 AND u.CreationDate<='2014-08-18 13:42:00'::timestamp;

