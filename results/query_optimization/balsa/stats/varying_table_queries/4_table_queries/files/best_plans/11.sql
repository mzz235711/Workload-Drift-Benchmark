/*+ MergeJoin(c v u b)
 HashJoin(v u b)
 HashJoin(u b)
 SeqScan(c)
 SeqScan(v)
 IndexScan(u)
 IndexScan(b)
 Leading((c (v (u b)))) */
SELECT COUNT(*) FROM comments as c, votes as v, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND c.CreationDate>='2010-07-26 20:17:54'::timestamp AND b.Date>='2010-08-04 13:00:34'::timestamp AND b.Date<='2014-08-26 11:12:35'::timestamp AND u.DownVotes<=0 AND u.UpVotes<=2496;

